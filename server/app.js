/* 
    ---- Node.js library import part ----

    * framework : express
    * library
    - fs(filesystem) : cmd 
    - dotenv : root 폴더에 있는 '.env.local' 파일 내 값을 변수로 잡아주는 라이브러리
    - path : 변수를 파일명 처럼 합쳐주는 라이브러리
    - multer : 파일 업로드를 쉽게 하기 위한 라이브러리
    - cors : CORS 문제를 해결하기 위한 라이브러리
    - sql.js : db상의 sql 처리를 위해 참조한 javascript 프로그램

*/
const express = require("express");
const fs = require("fs");
const dotenv = require("dotenv");
const path = require("path");
var multer = require("multer");
let sql = require("./sql.js");
const cors = require("cors");

/* 
    ---- Node.js framework & library setting part ----

    * server port 
    3000
    
    * directory setting
    - __dirname : root directory path
    - uploads : static 파일을 저장할 폴더명

    
    * storage file name rule 
    - filename = new Data().valueOf() + path.extname(file.originalname)
    - 파일명은 해당 파일의 저장요청이 들어온 타임스탬프를 파일명으로 한다.
    - 확장자명은 origin 파일의 확장자명을 인용한다.
    
    * multer option
    - storage(파일저장 위치) : storage


    * 약자 설명
    - res : response
    - cb : callback
    - req : request

*/

// create express framework object
const app = express();

// make assets storage
var storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, "uploads/");
    },
    filename: function (req, file, cb) {
        cb(null, new Date().valueOf() + path.extname(file.originalname));
    },
});

// storage in multer option setting : 파일이 저장될 위치를 지정합니다.
// 실제 option 값으로는 storage말고, dest(destination)라는 셋팅도 가능합니다.
var upload = multer({ storage: storage });

// cors option localhost:8080 에 대해서 CORS자격증명(cors credenials)을 허용(true)
const corsOption = {
    origin: "http://localhost:8080",
    credentials: true,
};

// express app 에 multer & cors option 적용
// static file들을 있을 위치 지정(root directory에 uploads 폴더)
app.use("/static", express.static(__dirname + "/uploads"));
app.use(cors(corsOption));
app.use(
    express.json({
        limit: "50mb",
    })
);

// sever setting
// 만약 서버 루트 폴더 내에 '/uploads'라는 폴더가 없다면 fs를 이용하여 해당 폴더를 생성
// 폴더가 생성되지 않은 상태에서 파일 저장 request가 올 수도 있음을 방지
const server = app.listen(3000, () => {
    var dir = __dirname + "/uploads";
    if (!fs.existsSync(dir)) fs.mkdirSync(dir);

    console.log("Server stared. port 3000.");
});

// file system watch file
fs.watchFile(__dirname + "/sql.js", (curr, prev) => {
    console.log("sql 변경시 재시작 없이 반영되도록 함.");
    delete require.cache[require.resolve("./sql.js")];
    sql = require("./sql.js");
});

/*
    ---- Node.js DB setting part ----

    * .env.local variable
    database =  ...
    host = ...
    port = ...
    user = ...
    password = ...
*/

// set env variable in '.env.local'
// path example : C:\Projects\Course-Evaluation-System\server\.env.local
dotenv.config({ path: path.join(__dirname, ".env.local") });

// db setting by dotenv
const dbPool = require("mysql").createPool({
    database: process.env.database,
    host: process.env.host,
    port: process.env.port,
    user: process.env.user,
    password: process.env.password,
});

// 우리가 작성한 것들을 실질적으로 전송하는 역할
const sys = {
    async db(alias, param = [], where = "") {
        return new Promise((resolve, reject) =>
            dbPool.query(sql[alias].query + where, param, (error, rows) => {
                if (error) {
                    if (error.code != "ER_DUP_ENTRY") console.log(error);
                    resolve({
                        error,
                    });
                } else resolve(rows);
            })
        );
    },
};

/*
    ---- Node.js express app object command part ----

    * command type
    post =  ...
    delete = ...
    get = ...
    user = ...
    password = ...
*/

// post function for upload file
app.post("/api/uploadFile", upload.single("attachment"), async (req, res) => {
    console.log(req.file);
    return res.status(200).json(req.file);
});

// delete function for uploaded file
app.delete("/api/deleteFile", async (req, res) => {
    const filePath = path.join(__dirname, "uploads", req.query.filename);
    console.log(path);
    fs.unlink(filePath, (err) => {
        if (err) {
            console.error(err);
            res.status(400).json({
                type: "E",
                msg: "파일을 삭제할 수 없습니다. 다시 시도하세요.",
            });
        }

        res.status(200).json({ type: "S", msg: "성공적으로 삭제되었습니다." });
    });
});

// 평가지 생성 페이지, 질문 리스트 저장
app.post("/api/saveQuestion", async (req, res) => {
    console.log(req.body.param);
    console.log("/api/saveQuestion");

    try {
        for (const question of req.body.param[0]) {
            await sys.db("insertQuestion", {
                eval_id: question.eval_id,
                class_id: question.class_id,
                order: question.order,
                type: question.type,
                content: question.content,
            });
        }

        res.status(200).send("Ok");
    } catch (err) {
        res.status(500).send({
            error: err,
        });
    }
});

// 평가지 생성 페이지 평가지 학생들에게 전송
app.post("/api/sendEvaluationPaper", async (req, res) => {
    console.log(req.body.param[0]);
    console.log(req.body.param[1]);

    const current_eval_id = req.body.param[1];

    try {
        for (const user_email of req.body.param[0]) {
            console.log(user_email);
            await sys.db("updateStudentAbled", [current_eval_id, user_email]);
        }

        res.status(200).send("Ok");
    } catch (err) {
        res.status(500).send({
            error: err,
        });
    }
});

// 평가지 정보 저장
app.post("/api/saveEvaluationInfo", async (req, res) => {
    console.log(req.body.param);

    try {
        await sys.db("insertEvaluationInfo", req.body.param[0]);
        res.status(200).send("Ok");
    } catch (err) {
        res.status(500).send({
            error: err,
        });
    }
});

// 학생 평가 응답저장 함수
app.post("/api/saveAnswer", async (req, res) => {
    console.log(req.body.param);

    try {
        for (const question of req.body.param[0]) {
            await sys.db("insertAnswer", {
                question_id: question.id,
                answer_value: question.answer,
                class_id: question.class_id,
                user_email: question.user_email,
            });
        }

        res.status(200).send("Ok");
    } catch (err) {
        res.status(500).send({
            error: err,
        });
    }
});

app.post("/api/:alias", async (req, res) => {
    console.log("alias computed!");
    console.log(req.params.alias);
    console.log(req.body.param);

    try {
        res.send(
            await sys.db(req.params.alias, req.body.param, req.body.where)
        );
    } catch (err) {
        res.status(500).send({
            error: err,
        });
    }
});
