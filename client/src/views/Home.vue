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
                            <a class="scroll rounded" href="#">
                                <font-awesome-icon icon="angle-up" />
                            </a>
                            <div>
                                <a
                                    href="https://www.youtube.com/c/%EA%B0%9C%EB%B0%9C%EC%9E%90%EC%9D%98%ED%92%88%EA%B2%A9/videos"
                                >
                                </a>
                            </div>

                            <!-- Page Wrapper -->
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
    computed: {
        user() {
            return this.$store.state.user
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
