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
                        <topbar />
                        <!-- 컴포넌트 끝 -->
                        안녕하세요, {{ user.name }} 님!
                        <body id="page-top">
                            <!-- Page Wrapper -->
                            <div id="wrapper">
                                <!-- Content Wrapper -->
                                <div
                                    id="content-wrapper"
                                    class="d-flex flex-column"
                                >
                                    <!-- Main Content -->
                                    <div class="content">
                                        <div class="container">
                                            <div class="row g-3">
                                                <div
                                                    style="margin:30px;  btn float-right;"
                                                >
                                                    <a
                                                        href="#"
                                                        class="btn btn-primary  btn-icon-split "
                                                    >
                                                        <span class="text">
                                                            + 새 과정 추가</span
                                                        >
                                                    </a>
                                                </div>

                                                <!-- 과정추가_card -->

                                                <div class="card shadow mb-4">
                                                    <div
                                                        class="card-header py-3"
                                                    >
                                                        <div class="row">
                                                            <div
                                                                class="col-xl-4 col-md-12 mb-4"
                                                                :key="
                                                                    course.course_id
                                                                "
                                                                v-for="course in courseList"
                                                            >
                                                                <div
                                                                    class="card border-bottom-primary shadow h-100 py-2"
                                                                >
                                                                    <!--여기부분이 box안에 padding주는 부분이다!-->
                                                                    <div
                                                                        class="card-body "
                                                                    >
                                                                        <div
                                                                            class="row no-gutters align-items-center"
                                                                        >
                                                                            <h6
                                                                                style="color:blue"
                                                                                class="col mr-7"
                                                                            >
                                                                                과정명
                                                                                :
                                                                                {{
                                                                                    course.name
                                                                                }}
                                                                            </h6>
                                                                            <h6>
                                                                                기간
                                                                                :
                                                                                {{
                                                                                    course.start_date
                                                                                }}
                                                                                ~
                                                                                {{
                                                                                    course.end_date
                                                                                }}
                                                                                <br />
                                                                                장소
                                                                                :
                                                                                {{
                                                                                    course.place
                                                                                }}
                                                                                <br />
                                                                                설명
                                                                                :
                                                                                {{
                                                                                    course.information
                                                                                }}
                                                                            </h6>
                                                                            <div
                                                                                class="d-flex justify-content-between align-items-center"
                                                                            >
                                                                                <div
                                                                                    class="btn-group"
                                                                                    role="group"
                                                                                >
                                                                                    <button
                                                                                        type="button"
                                                                                        class="btn  btn-sm btn-primary "
                                                                                        style="[text-decoration: none; color:white;  ]"
                                                                                        @click="
                                                                                            goToCourse(
                                                                                                course.course_id
                                                                                            )
                                                                                        "
                                                                                    >
                                                                                        들어가기
                                                                                    </button>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
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
import Sidebar from '../components/layouts/Sidebar.vue'
import Topbar from '../components/layouts/Topbar.vue'
export default {
    name: '',
    components: { sidebar: Sidebar, topbar: Topbar },
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
        },
        goToCourse(courseId) {
            this.$router.push({
                path: '/evaltable',
                query: { courseId: courseId }
            })
        }
    }
}
</script>
<style scoped>
.wrapper {
    display: flex;
}

.wrapper .content-wrapper {
    background-color: #f8f9fc;
    width: 100%;
    overflow-x: hidden;
}

.wrapper .content-wrapper .content {
    flex: 1 0 auto;
}
</style>
