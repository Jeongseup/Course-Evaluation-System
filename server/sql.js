module.exports = {
    /* 

    데이터 업데이트 SQL

    */
    // 학생이 응답한 평가지 데이터 추가
    insertAnswer: {
        query: "insert into t_answer set ?",
    },
    // 응답한 학생의 데이터 변경
    updateStudent: {
        query: `update t_student
        SET eval_abled = false, current_eval_id = null
        where user_email = ?`,
    },
    // 교육기관이 작성한 평가지 저장
    // key =
    insertEvaluationPaper: {
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
    /* 

    데이터 불러오기 SQL

    */
    // 한 평가지 데이터 가져오기
    // key = [eval_id]
    getEvaluationPaper: {
        query: "select * from t_evaluation_paper where eval_id = ?",
    },
    // 한 학생의 데이터 가져오기
    // key = [user_email]
    getStudent: {
        query: "select * from t_student where user_email = ?",
    },
    // 한 클래스의 데이터 + 강사 데이터 가져오기
    // key = [class_id]
    getClass: {
        query: `select T3.name as course_name, T1.*, T2.name as teacher_name from t_class T1, t_teacher T2, t_course T3
        where T1.class_id = ? and T1.class_id = T2.class_id and T1.course_id = T3.course_id `,
    },
    // 한 유저의 데이터 가져오기
    // key = [user_email]
    getUser: {
        query: "select * from t_user where user_email = ?",
    },
    // 유저가 담당한 모든 코스 정보 가져오기
    // key = [user_email]
    // getCourseList: {
    //     query: "select * from t_course where user_email = ?",
    // },
    getCourseList: {
        query: `select name, course_id, date_format(start_date, '%Y-%m-%d') as start_date , date_format(end_date , '%Y-%m-%d') as end_date , information, place, user_email 
        from t_course where user_email = ?`,
    },
    // 코스별 정보 가져오기
    // key = [course_id]
    getClassList: {
        query: `select T1.*, T2.eval_status_name, T3.name as teacher_name from t_class T1, t_eval_status_types T2, t_teacher T3
        where T1.course_id = ? and T1.eval_status_id = T2.eval_status_id and T1.class_id  = T3.class_id `,
    },
    // 평가지 생성버튼 눌렀을 때, 해당 수업의 기본 정보 가져오기
    // key = [course_id, class_id]
    getClassInfo: {
        query: `SELECT T1.*, T2.name as course_name, T3.name  as teacher_name from t_class T1, t_course T2, t_teacher T3
        where T1.course_id  = ? and T1.course_id = T2.course_id and T1.class_id = ? and T1.class_id = T3.class_id`,
    },
    // 해당 수업 학생 리스트 가져오기
    // key = [class_id]
    getStudentList: {
        query: `SELECT T2.* from t_class T1, t_student T2
        where T1.class_id = ? and T1.course_id = T2.course_id`,
    },
    // 전체 학생 리스트 가져오기
    getAllStudentList: {
        query: `select T1.name as student_name, T2.name as course_name from t_student T1, t_course T2
        where T1.course_id = T2.course_id`,
    },
    // 해당 수업의 평가지 리스트 가져오기
    /// key = [class_id]
    getQuestionList: {
        query: `select * from t_question where class_id = ?`,
    },
    // list page에서 완료된 평가지 가져오기
    // key = [user_email]
    getCompleteClassList: {
        query: `SELECT 
        T1.course_id ,T1.name as course_name, 
        T2.class_id, T2.name as class_name, 
        date_format(T2.start_date, '%Y-%m-%d') as start_date, 
        date_format(T2.end_date, '%Y-%m-%d') as end_date, 
        T2.eval_status_id,
        T3.name as teacher_name
        from t_course T1, t_class T2, t_teacher T3
        where T1.user_email = ? and T1.course_id  = T2.course_id and T2.class_id = T3.class_id and eval_status_id = 4`,
    },
    // Report page에서 완료된 평가지의 상세 정보 가져오기
    // key = [class_id, class_id]
    getAnswerList: {
        query: `SELECT T1.question_id, T1.answer_value, count(*) AS count, 
        ((SELECT (CASE WHEN T1.answer_value = 1 THEN value_1 WHEN T1.answer_value = 2 THEN value_2 WHEN T1.answer_value = 3 THEN value_3 WHEN T1.answer_value = 4 THEN value_4 ELSE value_5 END) 
        FROM t_eval_values WHERE class_id = ?) * count(*)) AS value_point 
        FROM t_answer T1, t_eval_values T2
        WHERE T1.class_id = ? AND T1.class_id = T2.class_id
        GROUP BY T1.class_id, T1.question_id, T1.answer_value`,
    },
    checkEvaluationPaper: {
        query: `SELECT count(DISTINCT(user_email)) AS eval_count, (SELECT count(*) FROM t_student WHERE current_eval_id = ?) AS student_count FROM t_answer WHERE class_id = ?`,
    },
    updateEvaluationStatus: {
        query: `update t_class
        SET eval_status_id = ?
        where class_id = ?`,
    },
};
