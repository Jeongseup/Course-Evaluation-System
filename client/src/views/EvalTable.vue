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
                            <!-- Page Wrapper -->
                            <div>
                                <!-- Content Wrapper -->
                                <div
                                    id="content-wrapper"
                                    class="d-flex flex-column"
                                >
                                    <!-- Main Content -->
                                    <div id="content">
                                        <div class="container">
                                            <div class="row g-3">
                                                <div
                                                    class="col-xl-3 col-lg-4 col-md-6"
                                                >
                                                    <main class="mt-3">
                                                        <div class="container">
                                                            <div
                                                                class="row g-3"
                                                            >
                                                                <div
                                                                    class="col-xl-3 col-lg-4 col-md-6"
                                                                >
                                                                    <div
                                                                        class="dropdown"
                                                                    >
                                                                        <select
                                                                            name="one"
                                                                            class="dropdown-select"
                                                                        >
                                                                            <!-- eval_table -> class_key  -->
                                                                            <option
                                                                                selected
                                                                                >2021년
                                                                                혁신성장
                                                                                블록체인반</option
                                                                            >
                                                                            <option
                                                                                value="1"
                                                                                >2021년
                                                                                혁신성장
                                                                                빅데이터반</option
                                                                            >
                                                                            <option
                                                                                value="2"
                                                                                >2021년
                                                                                혁신성장
                                                                                VR기술반</option
                                                                            >
                                                                            <div>
                                                                                여기는
                                                                                해당과정
                                                                                설명하는
                                                                                곳입니다.
                                                                                블록체인
                                                                                기술을
                                                                                이용한
                                                                                ....
                                                                                개발자
                                                                                양성을
                                                                                위한
                                                                                프로젝트입니다.
                                                                            </div>
                                                                        </select>
                                                                    </div>

                                                                    <!-- eval_table -> eval_status  -->
                                                                    <div
                                                                        class="card m-3"
                                                                        style="width: 18rem;"
                                                                    >
                                                                        <div
                                                                            class="card-body"
                                                                        >
                                                                            <h5
                                                                                class="card-title"
                                                                            >
                                                                                HTML
                                                                                <br />고승원
                                                                                강사
                                                                            </h5>
                                                                            <div
                                                                                class="d-flex justify-content-between align-items-center"
                                                                            >
                                                                                <div
                                                                                    class="d-grid gap-1 col-14 mx-auto"
                                                                                    role="group"
                                                                                >
                                                                                    <button
                                                                                        type="button"
                                                                                        class="btn btn-success btn-lg"
                                                                                    >
                                                                                        <router-link
                                                                                            to="/questiontable"
                                                                                            style="text-decoration: none;"
                                                                                        >
                                                                                            <p
                                                                                                style="color:white;"
                                                                                            >
                                                                                                강의
                                                                                                평가지
                                                                                                생성
                                                                                            </p>
                                                                                        </router-link>
                                                                                    </button>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div
                                                                        class="card m-3"
                                                                        style="width: 18rem;"
                                                                    >
                                                                        <div
                                                                            class="card-body"
                                                                        >
                                                                            <h5
                                                                                class="card-title"
                                                                            >
                                                                                HTML
                                                                                <br />고승원
                                                                                강사
                                                                            </h5>
                                                                            <div
                                                                                class="d-flex justify-content-between align-items-center"
                                                                            >
                                                                                <div
                                                                                    class="d-grid gap-1 col-14 mx-auto"
                                                                                    role="group"
                                                                                >
                                                                                    <button
                                                                                        type="button"
                                                                                        class="btn btn-info btn-lg"
                                                                                    >
                                                                                        <router-link
                                                                                            to="/questiontable"
                                                                                            style="text-decoration: none;"
                                                                                        >
                                                                                            <p
                                                                                                style="color:white;"
                                                                                            >
                                                                                                강의
                                                                                                평가지
                                                                                                수정
                                                                                            </p>
                                                                                        </router-link>
                                                                                    </button>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div
                                                                        class="card m-3"
                                                                        style="width: 18rem;"
                                                                    >
                                                                        <div
                                                                            class="card-body"
                                                                        >
                                                                            <h5
                                                                                class="card-title"
                                                                            >
                                                                                HTML
                                                                                <br />고승원
                                                                                강사
                                                                            </h5>
                                                                            <div
                                                                                class="d-flex justify-content-between align-items-center"
                                                                            >
                                                                                <div
                                                                                    class="d-grid gap-1 col-14 mx-auto"
                                                                                    role="group"
                                                                                >
                                                                                    <button
                                                                                        type="button"
                                                                                        class="btn btn-danger btn-lg"
                                                                                        disabled="disabled"
                                                                                    >
                                                                                        <p
                                                                                            style="color:white;"
                                                                                        >
                                                                                            강의
                                                                                            평가지
                                                                                            진행중
                                                                                        </p>
                                                                                    </button>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!-- eval_table -> eval_status  -->
                                                                    <div
                                                                        class="card m-3"
                                                                        style="width: 18rem;"
                                                                    >
                                                                        <div
                                                                            class="card-body"
                                                                        >
                                                                            <h5
                                                                                class="card-title"
                                                                            >
                                                                                JavaScript
                                                                                <br />고승원
                                                                                강사
                                                                            </h5>
                                                                            <div
                                                                                class="d-flex justify-content-between align-items-center"
                                                                            >
                                                                                <div
                                                                                    class="d-grid gap-1 col-14 mx-auto"
                                                                                    role="group"
                                                                                >
                                                                                    <button
                                                                                        type="button"
                                                                                        class="btn btn-primary btn-lg"
                                                                                    >
                                                                                        <router-link
                                                                                            to="/test"
                                                                                            style="text-decoration: none;"
                                                                                        >
                                                                                            <p
                                                                                                style="color:white;"
                                                                                            >
                                                                                                결과
                                                                                                조회
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
                                                    </main>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
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
            sampleData: ''
            // 평가 진행사항 데이터 받아서 화면에 노출시킬지
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
/* .container {
    margin: 80px auto;
    width: 400px;
    text-align: center;
} */

.container > .dropdown {
    /* margin: 0 20px; */
    vertical-align: top;
}

.dropdown {
    display: inline-block;
    position: relative;
    overflow: hidden;
    height: 28px;
    width: 320px;
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
