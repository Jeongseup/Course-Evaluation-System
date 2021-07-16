<template>
    <div>
        <div>
            <body id="page-top">
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
                            <div class="sidebar-brand-text mx-3">
                                강사의 품격
                            </div>
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
                                <span>과정등록</span>
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
                                <i class="far fa-list-alt"></i>
                                <span>평가지 결과</span>
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
                                    <div class="input-group">평가지 결과</div>
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
                                                    <div
                                                        class="input-group-append"
                                                    >
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
                                            <i
                                                class="fas fa-envelope fa-fw"
                                            ></i>
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
                            니러ㅏㅁ나ㅣㅇ러미ㅏㄴㅇ럼니아러민아ㅓ리ㅏㄴ어림낭러
                            <i class="fab fa-accusoft"></i>
                            <div style="background:red;">sdfsdfdsfsdf</div>
                            <!-- End of Topbar -->

                            <!-- Begin Page Content -->
                            <div class="container-fluid">
                                <!-- 404 Error Text -->
                            </div>
                            <!-- /.container-fluid -->
                        </div>
                        <!-- End of Main Content -->
                    </div>
                </div>
            </body>
        </div>
    </div>
</template>
<script>
// ;<link href="css/sb-admin-2.min.css" rel="stylesheet" />

import '../../node_modules/bootstrap/dist/css/sb-admin-2.css'
import '../../node_modules/bootstrap/dist/css/sb-admin-2.min.css'
import '../../node_modules/bootstrap/dist/css/all.css'
import '../../node_modules/bootstrap/dist/css/all.min.css'

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
