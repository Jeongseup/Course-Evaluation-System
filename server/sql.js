module.exports = {
    list: {
        query: "select * from t_person",
    },

    getUsertb: {
        query: "select * from user",
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
};
