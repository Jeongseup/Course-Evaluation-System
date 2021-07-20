<template>
    <div>
        <div>
            <p>강좌명 : {{ evaluation_paper[classId].courseName }}</p>
            <p>수업명 : {{ evaluation_paper[classId].title }}</p>
            <p>강사명 : {{ evaluation_paper[classId].teacherName }}</p>
            평가종료 일자 :
            <input type="date" name="" id="" />
        </div>
        <div>
            <button @click="studentPopup">완료 및 전송</button>
        </div>
    </div>
</template>
<script>
export default {
    name: '',
    components: {},
    data() {
        return {
            sampleData: '',
            classId: null,
            evaluation_paper: [
                {
                    class_id: 1,
                    eval_id: 1,
                    start_time: '2021-07-18 00:00:00',
                    end_time: '2021-07-19 00:00:00',
                    eval_count: 0,
                    title: '블록체인수업1 평가지',
                    information:
                        '블록체인수업1 평가에 대한 소개입니다 블록체인수업1 평가에 대한 소개입니다 블록체인수업1 평가에 대한 소개입니다 블록체인수업1 평가에 대한 소개입니다\r\n',
                    image_address: null
                },
                {
                    class_id: 2,
                    eval_id: 2,
                    start_time: '2021-07-21 00:00:00',
                    end_time: '2021-07-22 00:00:00',
                    eval_count: 0,
                    courseName: '블록체인 비즈니스 개발',
                    title: '블록체인수업2 평가지',
                    teacherName: '고승원',
                    information:
                        '블록체인수업2 평가에 대한 소개입니다 블록체인수업2 평가에 대한 소개입니다 블록체인수업2 평가에 대한 소개입니다 블록체인수업2 평가에 대한 소개입니다 블록체인수업2 평가에 대한 소개입니다 블록체인수업2 평가에 대한 소개입니다\r\n',
                    image_address: null
                },
                {
                    class_id: 3,
                    eval_id: 3,
                    start_time: '2021-07-24 00:00:00',
                    end_time: '2021-07-25 00:00:00',
                    eval_count: 0,
                    title: '블록체인수업3 평가지',
                    information:
                        '블록체인수업3 평가에 대한 소개입니다 블록체인수업3 평가에 대한 소개입니다 블록체인수업3 평가에 대한 소개입니다 블록체인수업3 평가에 대한 소개입니다 블록체인수업3 평가에 대한 소개입니다',
                    image_address: null
                }
            ],
            studentList: ['장태진', '태진장', '태진태', '진태진', '태진태진']
        }
    },
    setup() {},
    created() {
        this.classId = this.$route.query.classId
        console.log(this.classId)
    },
    mounted() {},
    unmounted() {},
    methods: {
        async studentPopup() {}
    }
}
</script>
