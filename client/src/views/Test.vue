<template>
    <!-- question_table 사용 eval_key , eval_oder, eval_contents, eval_type, eval_image -->
    <div>
        <body id="page-top">
            <!-- body 바로 아래에 추가 스티커 -->
            <div class="menu-toggle rounded">
                <!-- 질문추가 -->

                <div><font-awesome-icon icon="file-signature" /></div>
                <!-- 섹션추가 -->
                <div><font-awesome-icon icon="file-import" /></div>
                <!-- 이미지추가 -->
                <div><font-awesome-icon icon="images" /></div>
                <!-- 저장 -->
                <div><font-awesome-icon icon="save" /></div>
            </div>
            <!-- 스티커 끝 -->

            <!-- Page Wrapper -->
            <div id="wrapper">
                <!-- Sidebar -->
                <ul
                    class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
                    id="accordionSidebar"
                >
                    <!-- Sidebar - Brand -->
                    <a
                        class="sidebar-brand d-flex align-items-center justify-content-center"
                        href="index.html"
                    >
                        <div class="sidebar-brand-icon rotate-n-15">
                            <i class="fas fa-laugh-wink"></i>
                        </div>
                        <div class="sidebar-brand-text mx-3">강사의 품격</div>
                    </a>

                    <!-- Divider -->
                    <hr class="sidebar-divider my-0" />

                    <!-- Nav Item - Dashboard -->
                    <li class="nav-item">
                        <a class="nav-link" href="index.html">
                            <i class="fas fa-home"></i>
                            <span>HOME</span>
                        </a>
                    </li>

                    <!-- Divider -->
                    <hr class="sidebar-divider" />

                    <!-- Nav Item - Pages Collapse Menu -->
                    <li class="nav-item">
                        <a
                            class="nav-link collapsed"
                            href="#"
                            data-toggle="collapse"
                            data-target="#collapseTwo"
                            aria-expanded="true"
                            aria-controls="collapseTwo"
                        >
                            <i class="fas fa-chalkboard-teacher"></i>
                            <!-- <router-link
                                                            to="/test"
                                                            style="text-decoration: none;"
                                                        > -->
                            <router-link
                                to="/classtable"
                                style="text-decoration: none;"
                            >
                                <p style="color:white">과정등록</p>
                            </router-link>
                        </a>
                    </li>

                    <!-- Divider -->
                    <hr class="sidebar-divider" />

                    <!-- Nav Item - Utilities Collapse Menu -->
                    <li class="nav-item">
                        <a
                            class="nav-link collapsed"
                            href="#"
                            data-toggle="collapse"
                            data-target="#collapseUtilities"
                            aria-expanded="true"
                            aria-controls="collapseUtilities"
                        >
                            <i class="far fa-edit"></i>
                            <span>평가지 생성</span>
                        </a>
                    </li>

                    <!-- Divider -->
                    <hr class="sidebar-divider" />

                    <!-- Nav Item - Pages Collapse Menu -->
                    <li class="nav-item active">
                        <a
                            class="nav-link"
                            href="#"
                            data-toggle="collapse"
                            data-target="#collapsePages"
                            aria-expanded="true"
                            aria-controls="collapsePages"
                        >
                            <router-link
                                to="/side"
                                style="text-decoration: none;"
                            >
                                <i class="far fa-list-alt"></i>

                                <span style="color:white">평가지 결과</span>
                            </router-link>
                        </a>
                        <div
                            id="collapsePages"
                            class="collapse show"
                            aria-labelledby="headingPages"
                            data-parent="#accordionSidebar"
                        ></div>
                    </li>

                    <!-- Divider -->
                    <hr class="sidebar-divider d-none d-md-block" />
                </ul>
                <!-- End of Sidebar -->

                <!-- Content Wrapper -->
                <div id="content-wrapper" class="d-flex flex-column">
                    <!-- Main Content -->
                    <div id="content">
                        <!-- Topbar -->
                        <nav
                            class="
              navbar navbar-expand navbar-light
              bg-white
              topbar
              mb-4
              static-top
              shadow
            "
                        >
                            <!-- Sidebar Toggle (Topbar) -->
                            <button
                                id="sidebarToggleTop"
                                class="btn btn-link d-md-none rounded-circle mr-3"
                            >
                                <i class="fa fa-bars"></i>
                            </button>

                            <!-- Topbar Search -->
                            <form
                                class="
                d-none d-sm-inline-block
                form-inline
                mr-auto
                ml-md-3
                my-2 my-md-0
                mw-100
                navbar-search
              "
                            >
                                <div class="input-group">
                                    <!-- 평가지 설문지 (question_table) -->
                                </div>
                            </form>

                            <!-- Topbar Navbar -->
                            <ul class="navbar-nav ml-auto">
                                <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                                <li
                                    class="nav-item dropdown no-arrow d-sm-none"
                                >
                                    <a
                                        class="nav-link dropdown-toggle"
                                        href="#"
                                        id="searchDropdown"
                                        role="button"
                                        data-toggle="dropdown"
                                        aria-haspopup="true"
                                        aria-expanded="false"
                                    >
                                        <i class="fas fa-search fa-fw"></i>
                                    </a>
                                    <!-- Dropdown - Messages -->
                                    <div
                                        class="
                    dropdown-menu dropdown-menu-right
                    p-3
                    shadow
                    animated--grow-in
                  "
                                        aria-labelledby="searchDropdown"
                                    >
                                        <form
                                            class="form-inline mr-auto w-100 navbar-search"
                                        >
                                            <div class="input-group">
                                                <input
                                                    type="text"
                                                    class="form-control bg-light border-0 small"
                                                    placeholder="Search for..."
                                                    aria-label="Search"
                                                    aria-describedby="basic-addon2"
                                                />
                                                <div class="input-group-append">
                                                    <button
                                                        class="btn btn-primary"
                                                        type="button"
                                                    >
                                                        <i
                                                            class="fas fa-search fa-sm"
                                                        ></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </li>

                                <!-- Nav Item - Messages -->
                                <li class="nav-item dropdown no-arrow mx-1">
                                    <a
                                        class="nav-link dropdown-toggle"
                                        href="#"
                                        id="messagesDropdown"
                                        role="button"
                                        data-toggle="dropdown"
                                        aria-haspopup="true"
                                        aria-expanded="false"
                                    >
                                        <i class="fas fa-envelope fa-fw"></i>
                                        <!-- Counter - Messages -->
                                        <span
                                            class="badge badge-danger badge-counter"
                                            >7</span
                                        >
                                    </a>
                                </li>

                                <div
                                    class="topbar-divider d-none d-sm-block"
                                ></div>

                                <!-- Nav Item - User Information -->
                                <li class="nav-item dropdown no-arrow">
                                    <a
                                        class="nav-link dropdown-toggle"
                                        href="#"
                                        id="userDropdown"
                                        role="button"
                                        data-toggle="dropdown"
                                        aria-haspopup="true"
                                        aria-expanded="false"
                                    >
                                        <span
                                            class="mr-2 d-none d-lg-inline text-gray-600 small"
                                            >장태진</span
                                        >
                                        <i class="fas fa-user-tie"></i>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                        <!-- End of Topbar -->
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
            course_name: '2021블록체인비즈니스과정',
            class_name: 'Vue.js',
            class_teacher_key: '고승원',
            eval_order: '설문지 설명 :',
            title: '2주차 강의 평가',
            modal2: false,
            // modal1: false
            studentName: ['장태진', '태진장', '태진태', '진태진', '태진태진']
        }
    },
    setup() {},
    created() {},
    mounted() {},
    unmounted() {},

    methods: {
        // eval_value_key -> :value="1",  :value="2"  ,:value="3"  ,:value="4"  ,:value="5"
    }
}
</script>

<style scoped>
body {
    margin: 0;
}
div {
    box-sizing: border-box;
}
.black-bg {
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.5);
    position: fixed;
    padding: 20px;
}
.white-bg {
    width: 100%;
    background: white;
    border-radius: 8px;
    padding: 20px;
}

.menu-toggle {
    position: fixed;
    right: 15px;
    top: 40vh;
    width: 50px;
    height: 200px;
    text-align: center;
    color: #fff;
    background: rgba(52, 58, 64, 0.5);
    line-height: 50px;
    z-index: 999;
}

.menu-toggle:focus,
.menu-toggle:hover {
    color: #fff;
}
.menu-toggle:hover {
    background: #343a40;
}
</style>
