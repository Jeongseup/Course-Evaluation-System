<template>
    <div>
        <div>
            왜 여기서는 폰트 적용이 안되지?
        </div>
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
                        <div :class="['sidebar-brand-text', 'mx-3']">
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

                        <!-- DataTales Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">
                                    <!-- Content Row -->
                                    <div class="row">
                                        <!-- Earnings (Monthly) Card Example -->
                                        <div class="col-xl-3 col-md-6 mb-4">
                                            <div
                                                class="card border-left-primary shadow h-100 py-2"
                                            >
                                                <div class="card-body">
                                                    <div
                                                        class="row no-gutters align-items-center"
                                                    >
                                                        <div class="col mr-2">
                                                            <div
                                                                class="text-xs font-weight-bold text-primary text-uppercase mb-1"
                                                            >
                                                                강사명
                                                            </div>
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-gray-800"
                                                            >
                                                                {{
                                                                    teacherName
                                                                }}
                                                            </div>
                                                        </div>
                                                        <div class="col-auto">
                                                            <i
                                                                class="fas fa-user-edit fa-2x text-gray-300"
                                                            ></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Earnings (Monthly) Card Example -->
                                        <div class="col-xl-3 col-md-6 mb-4">
                                            <div
                                                class="card border-left-success shadow h-100 py-2"
                                            >
                                                <div class="card-body">
                                                    <div
                                                        class="row no-gutters align-items-center"
                                                    >
                                                        <div class="col mr-2">
                                                            <div
                                                                class="text-xs font-weight-bold text-success text-uppercase mb-1"
                                                            >
                                                                강의 이름
                                                            </div>
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-gray-800"
                                                            >
                                                                {{ className }}
                                                            </div>
                                                        </div>
                                                        <div class="col-auto">
                                                            <i
                                                                class="fas fa-book-reader fa-2x text-gray-300"
                                                            ></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Earnings (Monthly) Card Example -->
                                        <div class="col-xl-6 col-md-6 mb-4">
                                            <div
                                                class="card border-left-info shadow h-100 py-2"
                                            >
                                                <div class="card-body">
                                                    <div
                                                        class="row no-gutters align-items-center"
                                                    >
                                                        <div class="col mr-2">
                                                            <div
                                                                class="text-xs font-weight-bold text-gray-800 text-uppercase mb-1"
                                                            >
                                                                강의 주최기관 :
                                                                {{ courseName }}
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-gray-800 text-uppercase mb-1"
                                                            >
                                                                강의 장소 :
                                                                {{ classPlace }}
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-gray-800 text-uppercase mb-1"
                                                            >
                                                                강의 시기:{{
                                                                    classStart
                                                                }}
                                                                ~ {{ classEnd }}
                                                            </div>
                                                        </div>
                                                        <div class="col-auto">
                                                            <i
                                                                class="fas fa-clipboard-list fa-2x text-gray-300"
                                                            ></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Content Row -->
                                    <div class="row">
                                        <!-- Earnings (Monthly) Card Example -->
                                        <div class="col-xl-3 col-md-6 mb-4">
                                            <div
                                                class="card border-left-primary shadow h-100 py-2"
                                            >
                                                <div class="card-body">
                                                    <div
                                                        class="row no-gutters align-items-center"
                                                    >
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-gray-800"
                                                            >
                                                                강의 만족도
                                                            </div>
                                                        </div>
                                                        <div class="col-auto">
                                                            <i
                                                                class="far fa-thumbs-up fa-2x text-gray-300"
                                                            ></i>
                                                            <i
                                                                class="fas fa-grip-lines-vertical fa-2x text-gray-300"
                                                            ></i>
                                                            <i
                                                                class="far fa-thumbs-down fa-2x text-gray-300"
                                                            ></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Earnings (Monthly) Card Example -->
                                        <div class="col-xl-9 col-md-6 mb-4">
                                            <div
                                                class="card border-left-info shadow h-100 py-2"
                                            >
                                                <div class="card-body">
                                                    <div
                                                        class="row no-gutters align-items-center"
                                                    >
                                                        <div class="col mr-2">
                                                            <div
                                                                class="text-xs font-weight-bold text-info text-uppercase mb-1 text-center"
                                                            >
                                                                {{ average }}%
                                                            </div>
                                                            <div
                                                                class="row no-gutters align-items-center"
                                                            >
                                                                <div
                                                                    class="col-auto"
                                                                >
                                                                    <div
                                                                        class="h5 mb-0 mr-3 font-weight-bold text-info-800"
                                                                    >
                                                                        <i
                                                                            class="fas fa-chevron-right"
                                                                        ></i>
                                                                    </div>
                                                                </div>
                                                                <div
                                                                    class="col"
                                                                >
                                                                    <div
                                                                        class="progress progress-sm mr-2"
                                                                    >
                                                                        <div
                                                                            class="progress-bar bg-info"
                                                                            role="progressbar"
                                                                            :style="[
                                                                                `width: ${average}%`
                                                                            ]"
                                                                            aria-valuemin="0"
                                                                            aria-valuemax="100"
                                                                        ></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </h6>
                            </div>
                        </div>

                        <!-- Content Row -->
                        <div class="row">
                            <!-- Content Column -->
                            <div class="col-xl-12 col-lg-6 mb-4">
                                <!-- Project Card Example -->
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <!-- Content Row -->
                                        <div class="row">
                                            <!-- Pending Requests Card Example -->
                                            <div
                                                class="col-xl-4 col-md-6 mb-4 "
                                            ></div>
                                            <div
                                                class="col-xl-4 col-md-6 mb-4 "
                                            >
                                                <div
                                                    class="card border-left-warning shadow h-100 py-2"
                                                >
                                                    <div class="card-body">
                                                        <div
                                                            class="row no-gutters align-items-center"
                                                        >
                                                            <div
                                                                class="col mr-2"
                                                            >
                                                                <div
                                                                    class="h5 mb-0 font-weight-bold text-gray-800"
                                                                >
                                                                    항목별 평가
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="col-auto"
                                                            >
                                                                <i
                                                                    class="fas fa-comments fa-2x text-gray-300"
                                                                ></i>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div
                                        class="card-body"
                                        :key="i"
                                        v-for="(a, i) of result"
                                    >
                                        <h4 class="small font-weight-bold">
                                            {{ a.resultName }}
                                            <span class="float-right"
                                                >평균
                                                {{ a.resultValue }} 점</span
                                            >
                                        </h4>
                                        <div class="progress mb-4">
                                            <div
                                                class="progress-bar bg-info                                                 ]"
                                                role="progressbar"
                                                :style="[
                                                    `width: ${a.resultValue}%`
                                                ]"
                                                aria-valuenow="20"
                                                aria-valuemin="0"
                                                aria-valuemax="100"
                                            ></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- End of Topbar -->

                        <!-- Begin Page Content -->
                        <div :class="container - fluid">
                            <!-- 404 Error Text -->
                        </div>
                        <!-- /.container-fluid -->
                    </div>
                    <!-- End of Main Content -->
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
            teacherName: '서버에서 받은 생님 이름',
            className: '서버에서 받은 강의 이름',
            courseName: '서버에서 받은 과정 이름',
            classPlace: '서버에서 받은 강의 장소',
            classStart: '서버에서 받은 강의 시작일',
            classEnd: '서버에서 받은 강의 종료일',
            average1: '서버에서 받은 평균(0~10)',
            average: 40,

            barColor: ['success', 'danger', 'warning', 'primary', 'info'],
            barColor1: 'bg-primary',

            result: [
                {
                    resultName: '서버에서 받아온 질문 1   ',
                    resultValue: 80
                },
                {
                    resultName: '서버에서 받아온 질문 2   ',
                    resultValue: 60
                },
                {
                    resultName: '서버에서 받아온 질문 3   ',
                    resultValue: 40
                },
                {
                    resultName: '서버에서 받아온 질문 4   ',
                    resultValue: 20
                },
                {
                    resultName: '서버에서 받아온 질문 5   ',
                    resultValue: 100
                }
            ]
        }
    },
    setup() {},
    created() {},
    mounted() {},
    unmounted() {},
    methods: {}
}
</script>
