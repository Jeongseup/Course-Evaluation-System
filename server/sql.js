module.exports = {
    // 학생이 평가지 응답 시 실행되는 SQL
    insertAnswer: {
        query: "insert into t_answer set ?",
    },
    updateStudent: {
        query: `update t_student
        SET eval_abled = false, current_eval_id = null
        where user_email = ?`,
    },

    getEvaluationPaper: {
        query: "select * from t_evaluation_paper where eval_id = ?",
    },

    getStudentData: {
        query: "select * from t_student where user_email = ?",
    },

    getUserData: {
        query: "select * from t_user where user_email = ?",
    },

    // EvalTable page 사용자가 진행 중인 과정 데이터 전송
    // key = user_email
    courseList: {
        query: "select * from t_course where user_email = ?",
    },

    getCourseInfo: {
        query: `SELECT T1.course_id ,T1.name as course_name, 
        T2.class_id, T2.name as class_name, T2.start_date, T2.end_date,
        T3.name as teacher_name
        from t_course T1, t_class T2, t_teacher T3
        where T1.user_email = ? and T1.course_id  = T2.course_id and T2.class_id = T3.class_id`,
    },
    // 코스별 정보 조회
    // key = course_id
    classList: {
        query: `select T1.*, T2.eval_status_name, T3.name as teacher_name from t_class T1, t_eval_status_types T2, t_teacher T3
        where T1.course_id = ? and T1.eval_status_id = T2.eval_status_id and T1.class_id  = T3.class_id `,
    },

    // 평가지 생성버튼 눌렀을 때, 해당 수업의 기본 정보 가져오기
    // key = class_id
    getClassInfo: {
        query: `SELECT T1.*, T2.name as course_name, T3.name  as teacher_name from t_class T1, t_course T2, t_teacher T3
        where T1.course_id  = ? and T1.course_id = T2.course_id and T1.class_id = ? and T1.class_id = T3.class_id`,
    },

    // 해당 수업 학생 정보 가져오기
    // key = class_id
    studentList: {
        query: `SELECT T2.* from t_class T1, t_student T2
        where T1.class_id = ? and T1.course_id = T2.course_id`,
    },

    // 평가지 저장
    // key =
    insertEvaluationInfo: {
        query: `insert into t_evaluation_paper set ?`,
    },

    // 평가지 전송
    updateStudentAbled: {
        query: `UPDATE t_student 
        SET eval_abled = true, current_eval_id = ?
        WHERE user_email = ?`,
    },

    // 평가완료하면 평가지 접근 방지
    updateStudentDisabled: {
        query: `UPDATE t_student 
        SET eval_abled = false, current_eval_id = null
        WHERE user_email = ?`,
    },

    insertQuestion: {
        query: `insert into t_question set ?`,
    },

    questionList: {
        query: `select * from t_question where class_id=?`,
    },

    getReportList: {
        query: `SELECT T1.question_id, T1.answer_value, count(*) AS count, ((SELECT (CASE WHEN T1.answer_value = 1 THEN value_1 WHEN T1.answer_value = 2 THEN value_2 WHEN T1.answer_value = 3 THEN value_3 WHEN T1.answer_value = 4 THEN value_4 ELSE value_5 END) FROM t_eval_values WHERE class_id = 1) * count(*)) AS value_point 
        FROM t_answer T1, t_eval_values T2
        WHERE T1.class_id = 1 AND T1.class_id = T2.class_id
        GROUP BY T1.class_id, T1.question_id, T1.answer_value
        `,
    },
};
