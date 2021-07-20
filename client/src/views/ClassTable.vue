<template>
    <div>
        안녕하세요, {{ user.name }} 님!
        <body id="page-top">
            <!-- Page Wrapper -->
            <div id="wrapper">
                <!-- Content Wrapper -->
                <div id="content-wrapper" class="d-flex flex-column">
                    <!-- Main Content -->
                    <div id="content">
                        <div class="container">
                            <div class="row g-3">
                                <div class="col-xl-3 col-lg-4 col-md-6">
                                    <div
                                        class="card-header py-3"
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

                                    <!-- 과정추가_card -->
                                    <div
                                        class="card"
                                        style="width: 18rem;"
                                        :key="course.course_id"
                                        v-for="course in courseList"
                                    >
                                        <div class="card-body">
                                            <h5 class="card-title">
                                                {{ course.name }}
                                            </h5>
                                            <h6>
                                                기간 : {{ course.start_date }} ~
                                                {{ course.end_date }} <br />
                                                장소 : {{ course.place }} <br />
                                                설명 :
                                                {{ course.information }}
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
                                                        class="btn  btn-sm btn-dark"
                                                        style="[text-decoration: none; color:white;]"
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

                    <!-- End of Main Content -->

                    <!-- Footer -->
                    <footer class="sticky-footer bg-white">
                        <div class="container my-auto">
                            <div class="copyright text-center my-auto">
                                <span>Copyright &copy; Your Website 2020</span>
                            </div>
                        </div>
                    </footer>
                    <!-- End of Footer -->
                </div>
                <!-- End of Content Wrapper -->
            </div>
            <!-- End of Page Wrapper -->

            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top">
                <i class="fas fa-angle-up"></i>
            </a>

            <!-- Logout Modal -->
        </body>
    </div>
</template>

<script>
export default {
    name: '',
    components: {},
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
