<template>
    <!-- question_table 사용 eval_key , eval_oder, eval_contents, eval_type, eval_image -->
    <div>
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
                                    <div class="card" style="width: 18rem;">
                                        <div class="card-body">
                                            <h5 class="card-title">
                                                2021년 혁신성장 블록체인반
                                            </h5>
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
                                                    >
                                                        <router-link
                                                            to="/evaltable"
                                                            style="text-decoration: none;"
                                                        >
                                                            <p
                                                                style="color:white;"
                                                            >
                                                                들어가기
                                                            </p>
                                                        </router-link>
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

            <!-- Logout Modal-->
            <div
                class="modal fade"
                id="logoutModal"
                tabindex="-1"
                role="dialog"
                aria-labelledby="exampleModalLabel"
                aria-hidden="true"
            >
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">
                                Ready to Leave?
                            </h5>
                            <button
                                class="close"
                                type="button"
                                data-dismiss="modal"
                                aria-label="Close"
                            >
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            Select "Logout" below if you are ready to end your
                            current session.
                        </div>
                        <div class="modal-footer">
                            <button
                                class="btn btn-secondary"
                                type="button"
                                data-dismiss="modal"
                            >
                                Cancel
                            </button>
                            <a class="btn btn-primary" href="login.html"
                                >Logout</a
                            >
                        </div>
                    </div>
                </div>
            </div>
        </body>
    </div>
</template>

<script>
export default {
    name: '',
    components: {},
    data() {
        return {
            sampleData: ''
        }
    },
    setup() {},
    created() {},
    mounted() {},
    unmounted() {},
    methods: {}
}
</script>
