<template>
    <div>
        <body>
            <a class="scroll rounded" href="#">
                <font-awesome-icon icon="angle-up" />
            </a>

            <!-- Page Wrapper -->

            <div class="wrapper">
                <!-- Sidebar -->
                <ul
                    class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
                >
                    <!-- Sidebar - Brand -->
                    <a
                        class="sidebar-brand d-flex align-items-center justify-content-center"
                        href="index.html"
                    >
                        <div class="sidebar-brand-icon rotate-n-15">
                            <font-awesome-icon icon="laugh-wink" />
                        </div>
                        <div class="sidebar-brand-text mx-3">강사의 품격</div>
                    </a>

                    <!-- Divider -->
                    <hr class="sidebar-divider my-0" />

                    <!-- Nav Item - Dashboard -->
                    <li class="nav-item">
                        <a class="nav-link" href="index.html">
                            <font-awesome-icon icon="home" />
                            <span> HOME</span>
                        </a>
                    </li>

                    <!-- Divider -->
                    <hr class="sidebar-divider" />

                    <!-- Nav Item - Pages Collapse Menu -->
                    <li class="nav-item">
                        <a class="nav-link collapsed" href="#">
                            <!-- data-toggle="collapse"
                            data-target="#collapseUtilities"
                            aria-expanded="true"
                            aria-controls="collapseUtilities" -->
                            <font-awesome-icon icon="chalkboard-teacher" />

                            <span> 과정등록</span>
                        </a>
                    </li>

                    <!-- Divider -->
                    <hr class="sidebar-divider" />

                    <!-- Nav Item - Utilities Collapse Menu -->
                    <li class="nav-item">
                        <a class="nav-link collapsed" href="#">
                            <font-awesome-icon icon="edit" />
                            <span> 평가지 생성</span>
                        </a>
                    </li>

                    <!-- Divider -->
                    <hr class="sidebar-divider" />

                    <!-- Nav Item - Pages Collapse Menu -->
                    <li class="nav-item">
                        <a class="nav-link collapsed" href="#">
                            <font-awesome-icon icon="clipboard-list" />
                            <span> 평가 리스트</span>
                        </a>
                    </li>

                    <!-- Divider -->
                    <hr class="sidebar-divider" />

                    <!-- Nav Item - Pages Collapse Menu -->
                    <li class="nav-item">
                        <a class="nav-link collapsed" href="#">
                            <font-awesome-icon icon="list-alt" />
                            <span> 평가지 결과</span>
                        </a>
                    </li>

                    <!-- Divider -->
                    <hr class="sidebar-divider d-none d-md-block" />
                </ul>
                <!-- End of Sidebar -->

                <!-- Content Wrapper -->
                <div class="d-flex flex-column content-wrapper">
                    <!-- Main Content -->
                    <div class="content">
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
                                <!-- Nav Item - Messages -->
                                <li class="nav-item dropdown no-arrow mx-1">
                                    <a
                                        class="nav-link dropdown-toggle"
                                        href="#"
                                        role="button"
                                        data-toggle="dropdown"
                                        aria-haspopup="true"
                                        aria-expanded="false"
                                    >
                                        <font-awesome-icon icon="envelope" />
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
                                        role="button"
                                        data-toggle="dropdown"
                                        aria-haspopup="true"
                                        aria-expanded="false"
                                    >
                                        <span
                                            class="mr-2 d-none d-lg-inline text-gray-600 small"
                                            >장태진</span
                                        >
                                        <font-awesome-icon icon="user-tie" />
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
                                                                <font-awesome-icon
                                                                    icon="chalkboard-teacher"
                                                                />

                                                                과정 이름
                                                            </div>
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-gray-800"
                                                            >
                                                                <select name="">
                                                                    <option
                                                                        value=""
                                                                        >과정
                                                                        선택</option
                                                                    >
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="col-auto"
                                                        ></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
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
                                                                <font-awesome-icon
                                                                    icon="file-signature"
                                                                />

                                                                강의 이름
                                                            </div>
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-gray-800"
                                                            >
                                                                <select name="">
                                                                    <option
                                                                        value=""
                                                                        >강의
                                                                        선택</option
                                                                    >
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="col-auto"
                                                        ></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
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
                                                                <font-awesome-icon
                                                                    icon="user-edit"
                                                                />
                                                                강사 명
                                                            </div>
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-gray-800"
                                                            >
                                                                <select name="">
                                                                    <option
                                                                        value=""
                                                                        >강사
                                                                        선택</option
                                                                    >
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="col-auto"
                                                        ></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
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
                                                                <font-awesome-icon
                                                                    icon="calendar-day"
                                                                />

                                                                강의 시기
                                                            </div>
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-gray-800"
                                                            >
                                                                <select name="">
                                                                    <option
                                                                        value=""
                                                                        >강의
                                                                        시기
                                                                        선택</option
                                                                    >
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="col-auto"
                                                        ></div>
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
                                            <div class="col-xl-4"></div>
                                            <div
                                                class="col-xl-4 col-lg-12 col-md-6 mb-4 "
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
                                                                    평가 리스트
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="col-auto"
                                                            ></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- 카드 끝-->
                                        </div>
                                        <!-- Content Row end -->
                                    </div>

                                    <!-- DataTales Example -->
                                    <div class="card shadow mb-4">
                                        <div class="card-header py-3">
                                            <h6
                                                class="m-0 font-weight-bold text-primary"
                                            >
                                                평가 리스트
                                            </h6>
                                        </div>
                                        <div class="card-body">
                                            <div class="table-responsive">
                                                <table
                                                    class="table table-bordered"
                                                    id="dataTable"
                                                    width="100%"
                                                    cellspacing="0"
                                                >
                                                    <thead>
                                                        <tr>
                                                            <th>과정 이름</th>
                                                            <th>강의 이름</th>
                                                            <th>강사 이름</th>
                                                            <th>강의 기간</th>
                                                            <th>선택</th>
                                                        </tr>
                                                    </thead>
                                                    <tfoot>
                                                        <tr>
                                                            <th>과정 이름</th>
                                                            <th>강의 이름</th>
                                                            <th>강사 이름</th>
                                                            <th>강의 기간</th>
                                                            <th>선택</th>
                                                        </tr>
                                                    </tfoot>
                                                    <tbody>
                                                        <tr>
                                                            <td>Tiger Nixon</td>
                                                            <td>
                                                                System Architect
                                                            </td>
                                                            <td>Edinburgh</td>
                                                            <td>61</td>
                                                            <td>
                                                                <button>
                                                                    선택
                                                                </button>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- 항목별 평가 있는 공간 -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End of Main Content -->
                </div>
            </div>
        </body>
    </div>
</template>
<script>
// ;<link href="css/sb-admin-2.min.css" rel="stylesheet" />

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
.scroll {
    position: fixed;
    right: 15px;
    bottom: 15px;
    /* display: none; */
    width: 50px;
    height: 50px;
    text-align: center;
    color: #fff;
    background: rgba(52, 58, 64, 0.5);
    line-height: 45px;
    z-index: 999;
}

.scroll:focus,
.scroll:hover {
    color: #fff;
}
.scroll:hover {
    background: #343a40;
}
</style>
