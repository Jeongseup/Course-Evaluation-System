<template>
    <div>
        <!-- 컴포넌트 -->
        <div id="page-top">
            <!-- Page Wrapper -->
            <div id="wrapper">
                <sidebar />
                <div id="content-wrapper" class="d-flex flex-column">
                    <!-- Main Content -->
                    <div id="content">
                        <topbar :userName="user.name" />
                        <!-- 컴포넌트 끝 -->
                        <body id="page-top">
                            <!-- Page Wrapper -->
                            <div id="wrapper">
                                <!-- Content Wrapper -->
                                <div
                                    id="content-wrapper"
                                    class="d-flex flex-column"
                                >
                                    <!-- Main Content -->
                                    <div id="content">
                                        <div class="container">
                                            <div
                                                style="margin:30px;  btn float-right;"
                                            >
                                                <a
                                                    href="#"
                                                    class="btn btn-warning btn-icon-split "
                                                >
                                                    <span class="text">
                                                        + 새 과정 추가</span
                                                    >
                                                </a>
                                            </div>
                                            <div class="row g-3">
                                                <!-- Course Card Component -->
                                                <coursecard
                                                    :courseList="courseList"
                                                />
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End of Main Content -->
                                </div>
                                <!-- End of Content Wrapper -->
                            </div>
                            <!-- End of Page Wrapper -->
                        </body>
                        <!-- 컴포넌트 -->
                    </div>
                </div>
            </div>
        </div>
        <!-- 컴포넌트 끝 -->
    </div>
</template>

<script>
import Sidebar from '../layouts/Sidebar.vue'
import Topbar from '../layouts/Topbar.vue'
import CourseCard from '../components/CourseCard.vue'

export default {
    name: '',
    components: { sidebar: Sidebar, topbar: Topbar, coursecard: CourseCard },
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
    },
    mounted() {},
    unmounted() {},
    methods: {
        async getCourseList() {
            this.courseList = await this.$api('/api/courseList', 'post', {
                param: [this.user.email]
            })

            console.log(this.courseList)
        }
    }
}
</script>
