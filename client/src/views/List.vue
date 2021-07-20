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
                        <body>
                            <a class="scroll rounded" href="#">
                                <font-awesome-icon icon="angle-up" />
                            </a>

                            <!-- Page Wrapper -->

                            <div class="wrapper">
                                <!-- Sidebar -->
                                <!-- End of Sidebar -->
                                <!-- Content Wrapper -->
                                <div class="d-flex flex-column content-wrapper">
                                    <!-- Main Content -->
                                    <div class="content">
                                        <!-- Topbar -->

                                        <!-- DataTales Example -->
                                        <div class="card shadow mb-4">
                                            <div class="card-header py-3">
                                                <h6
                                                    class="m-0 font-weight-bold text-primary"
                                                >
                                                    <!-- Content Row -->
                                                    <div class="row">
                                                        <!-- Earnings (Monthly) Card Example -->
                                                        <div
                                                            class="col-xl-3 col-md-6 mb-4"
                                                        >
                                                            <div
                                                                class="card border-left-primary shadow h-100 py-2"
                                                            >
                                                                <div
                                                                    class="card-body"
                                                                >
                                                                    <div
                                                                        class="row no-gutters align-items-center"
                                                                    >
                                                                        <div
                                                                            class="col mr-2"
                                                                        >
                                                                            <div
                                                                                class="text-xs font-weight-bold text-primary text-uppercase mb-1"
                                                                            >
                                                                                <font-awesome-icon
                                                                                    icon="chalkboard-teacher"
                                                                                />

                                                                                과정
                                                                                이름
                                                                            </div>
                                                                            <div
                                                                                class="h5 mb-0 font-weight-bold text-gray-800"
                                                                            >
                                                                                <select
                                                                                    name=""
                                                                                >
                                                                                    <option
                                                                                        value="0"
                                                                                        >과정
                                                                                        선택</option
                                                                                    >
                                                                                    <option
                                                                                        :key="
                                                                                            j
                                                                                        "
                                                                                        v-for="(a,
                                                                                        j) of courseNameList"
                                                                                        value=""
                                                                                        >{{
                                                                                            a.courseName
                                                                                        }}</option
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
                                                        <div
                                                            class="col-xl-3 col-md-6 mb-4"
                                                        >
                                                            <div
                                                                class="card border-left-primary shadow h-100 py-2"
                                                            >
                                                                <div
                                                                    class="card-body"
                                                                >
                                                                    <div
                                                                        class="row no-gutters align-items-center"
                                                                    >
                                                                        <div
                                                                            class="col mr-2"
                                                                        >
                                                                            <div
                                                                                class="text-xs font-weight-bold text-primary text-uppercase mb-1"
                                                                            >
                                                                                <font-awesome-icon
                                                                                    icon="file-signature"
                                                                                />

                                                                                강의
                                                                                이름
                                                                            </div>
                                                                            <div
                                                                                class="h5 mb-0 font-weight-bold text-gray-800"
                                                                            >
                                                                                <select
                                                                                    name=""
                                                                                >
                                                                                    <option
                                                                                        value=""
                                                                                        >강의
                                                                                        선택</option
                                                                                    >
                                                                                    <option
                                                                                        :key="
                                                                                            j
                                                                                        "
                                                                                        v-for="(a,
                                                                                        j) of classNameList"
                                                                                        value=""
                                                                                        >{{
                                                                                            a.className
                                                                                        }}</option
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
                                                        <div
                                                            class="col-xl-3 col-md-6 mb-4"
                                                        >
                                                            <div
                                                                class="card border-left-primary shadow h-100 py-2"
                                                            >
                                                                <div
                                                                    class="card-body"
                                                                >
                                                                    <div
                                                                        class="row no-gutters align-items-center"
                                                                    >
                                                                        <div
                                                                            class="col mr-2"
                                                                        >
                                                                            <div
                                                                                class="text-xs font-weight-bold text-primary text-uppercase mb-1"
                                                                            >
                                                                                <font-awesome-icon
                                                                                    icon="user-edit"
                                                                                />
                                                                                강사
                                                                                명
                                                                            </div>
                                                                            <div
                                                                                class="h5 mb-0 font-weight-bold text-gray-800"
                                                                            >
                                                                                <select
                                                                                    name=""
                                                                                >
                                                                                    <option
                                                                                        value=""
                                                                                        >강사
                                                                                        선택</option
                                                                                    >
                                                                                    <option
                                                                                        :key="
                                                                                            j
                                                                                        "
                                                                                        v-for="(a,
                                                                                        j) of teacherNameList"
                                                                                        value=""
                                                                                        >{{
                                                                                            a.teacherName
                                                                                        }}</option
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
                                                        <div
                                                            class="col-xl-3 col-md-6 mb-4"
                                                        >
                                                            <div
                                                                class="card border-left-primary shadow h-100 py-2"
                                                            >
                                                                <div
                                                                    class="card-body"
                                                                >
                                                                    <div
                                                                        class="row no-gutters align-items-center"
                                                                    >
                                                                        <div
                                                                            class="col mr-2"
                                                                        >
                                                                            <div
                                                                                class="text-xs font-weight-bold text-primary text-uppercase mb-1"
                                                                            >
                                                                                <font-awesome-icon
                                                                                    icon="calendar-day"
                                                                                />

                                                                                강의
                                                                                시기
                                                                            </div>
                                                                            <div
                                                                                class="h5 mb-0 font-weight-bold text-gray-800"
                                                                            >
                                                                                <select
                                                                                    name=""
                                                                                >
                                                                                    <option
                                                                                        value=""
                                                                                        >강의
                                                                                        시기
                                                                                        선택</option
                                                                                    >
                                                                                    <!-- 다시해야함 -->
                                                                                    <option
                                                                                        :key="
                                                                                            j
                                                                                        "
                                                                                        v-for="(a,
                                                                                        j) of dateList"
                                                                                        value=""
                                                                                        >{{
                                                                                            a.classStart
                                                                                        }}
                                                                                        ~
                                                                                        {{
                                                                                            a.classEnd
                                                                                        }}</option
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
                                            <div
                                                class="col-xl-12 col-lg-6 mb-4"
                                            >
                                                <!-- Project Card Example -->
                                                <div class="card shadow mb-4">
                                                    <div
                                                        class="card-header py-3"
                                                    >
                                                        <!-- Content Row -->
                                                        <div class="row">
                                                            <!-- Pending Requests Card Example -->
                                                            <!-- <div class="col-xl-4"></div> -->
                                                            <div
                                                                class="col-xl-12 col-lg-12 col-md-6 mb-4 "
                                                            >
                                                                <div
                                                                    class="card border-left-warning shadow h-100 py-2"
                                                                >
                                                                    <div
                                                                        class="card-body"
                                                                    >
                                                                        <div
                                                                            class="row no-gutters align-items-center"
                                                                        >
                                                                            <div
                                                                                class="col mr-2"
                                                                            >
                                                                                <div
                                                                                    class="h5 mb-0 font-weight-bold text-gray-800"
                                                                                >
                                                                                    <h1
                                                                                        style="text-align: center;"
                                                                                    >
                                                                                        평가
                                                                                        리스트
                                                                                    </h1>
                                                                                    <!-- 평가 리스트 -->
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
                                                    <div
                                                        class="card shadow mb-4"
                                                    >
                                                        <div
                                                            class="card-header py-3"
                                                        >
                                                            <h6
                                                                class="m-0 font-weight-bold text-primary"
                                                            >
                                                                평가 리스트
                                                            </h6>
                                                        </div>
                                                        <div class="card-body">
                                                            <div
                                                                class="table-responsive"
                                                            >
                                                                <table
                                                                    class="table table-bordered"
                                                                    id="dataTable"
                                                                    width="100%"
                                                                    cellspacing="0"
                                                                >
                                                                    <thead>
                                                                        <tr>
                                                                            <th>
                                                                                과정
                                                                                이름
                                                                            </th>
                                                                            <th>
                                                                                강의
                                                                                이름
                                                                            </th>
                                                                            <th>
                                                                                강사
                                                                                이름
                                                                            </th>
                                                                            <th>
                                                                                강의
                                                                                기간
                                                                            </th>
                                                                            <th>
                                                                                선택
                                                                            </th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tfoot>
                                                                        <tr>
                                                                            <th>
                                                                                과정
                                                                                이름
                                                                            </th>
                                                                            <th>
                                                                                강의
                                                                                이름
                                                                            </th>
                                                                            <th>
                                                                                강사
                                                                                이름
                                                                            </th>
                                                                            <th>
                                                                                강의
                                                                                기간
                                                                            </th>
                                                                            <th>
                                                                                선택
                                                                            </th>
                                                                        </tr>
                                                                    </tfoot>
                                                                    <tbody>
                                                                        <tr
                                                                            :key="
                                                                                i
                                                                            "
                                                                            v-for="(a,
                                                                            i) of listPageData"
                                                                        >
                                                                            <td>
                                                                                {{
                                                                                    a.courseName
                                                                                }}
                                                                            </td>
                                                                            <td>
                                                                                {{
                                                                                    a.className
                                                                                }}
                                                                            </td>
                                                                            <td>
                                                                                {{
                                                                                    a.teacherName
                                                                                }}
                                                                            </td>
                                                                            <td>
                                                                                {{
                                                                                    a.classStart
                                                                                }}
                                                                                ~
                                                                                {{
                                                                                    a.classEnd
                                                                                }}
                                                                            </td>
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
                        <!-- 컴포넌트 -->
                    </div>
                </div>
            </div>
        </div>
        <!-- 컴포넌트 끝 -->
    </div>
</template>
<script>
// ;<link href="css/sb-admin-2.min.css" rel="stylesheet" />
import Sidebar from '../components/layouts/Sidebar.vue'
import Topbar from '../components/layouts/Topbar.vue'
export default {
    name: '',
    components: { sidebar: Sidebar, topbar: Topbar },

    data() {
        return {
            listPageData: [
                {
                    teacherName: 'a',
                    className: 'b',
                    courseName: 'c',
                    classStart: 'd',
                    classEnd: 'e'
                },
                {
                    teacherName: '장태진',
                    className: '뷰',
                    courseName: '블록체인',
                    classStart: '21.07.01',
                    classEnd: '21.07.20'
                },
                {
                    teacherName: '가나다',
                    className: '뷰우',
                    courseName: '블록',
                    classStart: '21.07.20',
                    classEnd: '21.07.30'
                },
                {
                    teacherName: '지금은',
                    className: '새벽',
                    courseName: '한시반',
                    classStart: '20.07.01',
                    classEnd: '21.07.20'
                }
            ],

            teacherNameList: [
                { teacherId: 1, teacherName: '장태진' },
                { teacherId: 3, teacherName: '탵태진' },
                { teacherId: 7, teacherName: '태진태진' }
            ],
            classNameList: [
                { classId: 1, className: '자바스크립트' },
                { classId: 3, className: '뷰' },
                { classId: 7, className: '서버' }
            ],
            courseNameList: [
                { courseId: 1, courseName: '블록체인' },
                { courseId: 3, courseName: '빅데이터' },
                { courseId: 7, courseName: '인공지능' }
            ],
            dateList: [
                { classId: 1, classStart: 2104, classEnd: 2106 },
                { classId: 3, classStart: 2106, classEnd: 2109 },
                { classId: 7, classStart: 2104, classEnd: 2112 }
            ]
        }
    },
    setup() {},
    created() {},
    mounted() {
        // 클래스 스타트 최소값
        // 클라스 엔드 최대값
    },
    unmounted() {},
    methods: {
        // 조회한것 결과 나오도록
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
