module.exports = {
    list: {
        query: "select * from t_person",
    },

    //insert into t_person set first_name='john3' ...
    createPerson: {
        query: "insert into t_person set ?",
    },

    //insert into t_person set first_name='john3' ...
    deletePerson: {
        query: "delete from t_person where id = ?",
    },

    // 첫 param이 첫 ?로,, 두 번째 param이 두번째 ?로 들어온다.
    updatePerson: {
        query: "update t_person set ? where id = ?",
    },
    courseList: {
        query: "select * from t_course where user_email = ?",
    },

    // 코스별 정보 조회
    // key = course_id
    classList: {
        query: `select T1.*, T2.eval_status_name, T3.name as teacher_name from t_class T1, t_eval_status_types T2, t_teacher T3
      where T1.course_id = ? and T1.eval_status_id = T2.eval_status_id and T1.class_id  = T3.class_id `,
    },

    // 평가지 생성버튼 눌렀을 때, 해당 수업의 기본 정보 가져오기
    // key = class_id
    classInfo: {
        query: `SELECT T1.*, T2.name as course_name, T3.name  as teacher_name from t_class T1, t_course T2, t_teacher T3
      where T1.course_id  = 1 and T1.course_id = T2.course_id and T1.class_id = 1 and T1.class_id = T3.class_id`,
    },

    // 해당 수업 학생 정보 가져오기
    // key = class_id
    studentList: {
        query: `SELECT T2.* from t_class T1, t_student T2
      where T1.class_id = ? and T1.course_id = T2.course_id`,
    },
};
