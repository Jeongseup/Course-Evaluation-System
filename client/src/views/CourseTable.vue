<template>
    <div class="container">
        <div style="margin:30px;  btn float-right;">
            <a href="#" class="btn btn-warning btn-icon-split ">
                <span class="text"> + 새 과정 추가</span>
            </a>
        </div>
        <div class="row g-3">
            <!-- Course Card Component -->
            <coursecard :courseList="courseList" />
        </div>
    </div>
</template>
<script>
import CourseCard from '../components/CourseCard.vue'
export default {
    name: '',
    components: { coursecard: CourseCard },
    data() {
        return {
            courseList: []
        }
    },
    computed: {
        user() {
            return this.$store.state.user
        }
    },
    setup() {},
    created() {
        this.getCourseList()
        console.log(this.courseList)
    },
    mounted() {},
    unmounted() {},
    methods: {
        // 유저가 담당한 모든 코스 정보 가져오기
        // key = [user_email]
        // getCourseList: {}
        async getCourseList() {
            this.courseList = await this.$api('/api/getCourseList', 'post', {
                param: [this.user.email]
            })
            console.log(this.courseList)
        }
    }
}
</script>
