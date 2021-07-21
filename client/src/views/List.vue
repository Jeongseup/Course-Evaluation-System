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
                        <body>
                            <!-- 바디에 Angle up 스티커 추가 -->
                            <angleupsticker />
                            <!-- Page Wrapper -->
                            <div class="wrapper">
                                <!-- Content Wrapper -->
                                <div class="d-flex flex-column content-wrapper">
                                    <!-- Main Content -->
                                    <div class="content">
                                        <!-- Topbar -->
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
                                                                                <div
                                                                                    class="dropdown"
                                                                                >
                                                                                    <select
                                                                                        name="one"
                                                                                        class="dropdown-select"
                                                                                    >
                                                                                        <option
                                                                                            value="0"
                                                                                        >
                                                                                            과정선택
                                                                                        </option>

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
                                                                                <!-- </section> -->
                                                                            </div>
                                                                        </div>
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
                                                                                <div
                                                                                    class="dropdown"
                                                                                >
                                                                                    <select
                                                                                        name="one"
                                                                                        class="dropdown-select"
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
                                                                        </div>
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
                                                                                <div
                                                                                    class="dropdown"
                                                                                >
                                                                                    <select
                                                                                        name="one"
                                                                                        class="dropdown-select"
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
                                                                                <div
                                                                                    class="dropdown"
                                                                                >
                                                                                    <select
                                                                                        name="one"
                                                                                        class="dropdown-select"
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
import Sidebar from '../layouts/Sidebar.vue'
import Topbar from '../layouts/Topbar.vue'
import AngleUpSticker from '../components/AngleUpSticker.vue'
export default {
    name: '',
    components: {
        sidebar: Sidebar,
        topbar: Topbar,
        angleupsticker: AngleUpSticker
    },

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
    computed: {
        user() {
            return this.$store.state.user
        }
    },
    setup() {},
    created() {},
    mounted() {
        this.getCourseInfo()
    },
    unmounted() {},
    methods: {
        // list page에서 완료된 평가지 가져오기
        // key = [user_email]
        // getCompleteClassList
        async getCourseInfo() {
            console.log(this.user.email)
            this.CompleteClassList = await this.$api(
                '/api/getCompleteClassList',
                'post',
                {
                    param: [this.user.email]
                }
            )

            console.table(this.CompleteClassList)
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

.container {
    /* margin: 80px auto; */
    width: 400px;
    text-align: center;
}

.container > .dropdown {
    /* margin: 0 20px; */
    vertical-align: top;
}

.dropdown {
    display: inline-block;
    position: relative;
    overflow: hidden;
    height: 28px;
    width: 150px;
    background: hsl(207, 83%, 68%);
    border: 1px solid;
    border-color: white #f7f7f7 whitesmoke;
    border-radius: 3px;
    background-image: -webkit-linear-gradient(
        top,
        transparent,
        rgba(0, 0, 0, 0.06)
    );
    background-image: -moz-linear-gradient(
        top,
        transparent,
        rgba(0, 0, 0, 0.06)
    );
    background-image: -o-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));
    background-image: linear-gradient(
        to bottom,
        transparent,
        rgba(0, 0, 0, 0.06)
    );
    -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.08);
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.08);
}

.dropdown:before,
.dropdown:after {
    content: '';
    position: absolute;
    z-index: 2;
    top: 9px;
    right: 10px;
    width: 0;
    height: 0;
    border: 4px dashed;
    border-color: #ffffff transparent;
    pointer-events: none;
}

.dropdown:before {
    border-bottom-style: solid;
    border-top: none;
}

.dropdown:after {
    margin-top: 7px;
    border-top-style: solid;
    border-bottom: none;
}

.dropdown-select {
    position: relative;
    width: 130%;
    margin: 0;
    padding: 6px 8px 6px 10px;
    height: 28px;
    line-height: 14px;
    font-size: 12px;
    color: #ffffff;
    text-shadow: 0 1px white;
    background: #f2f2f2; /* Fallback for IE 8 */
    background: rgba(
        0,
        0,
        0,
        0
    ) !important; /* "transparent" doesn't work with Opera */
    border: 0;
    border-radius: 0;
    -webkit-appearance: none;
}

.dropdown-select:focus {
    z-index: 3;
    width: 100%;
    color: #ffffff;
    outline: 2px solid #49aff2;
    outline: 2px solid;
    outline-offset: -2px;
}

.dropdown-select > option {
    margin: 3px;
    padding: 6px 8px;
    text-shadow: none;
    background: hsl(207, 83%, 68%);
    border-radius: 3px;
    cursor: pointer;
}

/* Fix for IE 8 putting the arrows behind the select element. */

.lt-ie9 .dropdown {
    z-index: 1;
}

.lt-ie9 .dropdown-select {
    z-index: -1;
}

.lt-ie9 .dropdown-select:focus {
    z-index: 3;
}

/* Dirty fix for Firefox adding padding where it shouldn't. */

@-moz-document url-prefix() {
    .dropdown-select {
        padding-left: 6px;
    }
}
</style>
