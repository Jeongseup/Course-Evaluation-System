<template>
    <!-- question_table 사용 eval_key , eval_oder, eval_contents, eval_type, eval_image -->
    <div>
        <body id="page-top">
            <!-- body 바로 아래에 추가 스티커 -->
            <div class="menu-toggle rounded">
                <div>
                    <font-awesome-icon icon="save" @click="saveAnswer" />
                </div>
            </div>
            <!-- 스티커 끝 -->

            <!-- Page Wrapper -->
            <div id="wrapper">
                <!-- Sidebar -->

                <!-- End of Sidebar -->

                <!-- Content Wrapper -->
                <div id="content-wrapper" class="d-flex flex-column">
                    <!-- Main Content -->
                    <div id="content">
                        <div class="card-header py-3">
                            <!--class_table, course_table이용하여, 강좌명 class_name / course_name /class_teacher_key / start_date and end_date-->
                            <div style="margin:5px;">
                                강좌명: {{ course_name }}
                            </div>
                            <div style="margin:5px;">
                                수업명: {{ class_name }}
                            </div>
                            <div style="margin:5px;">
                                강사명: {{ class_teacher_key }}
                            </div>
                            <div style="margin:10px;">
                                개강 : <input type="date" /> 종강 :
                                <input type="date" />
                            </div>

                            <!-- Illustrations -->
                            <div class="card shadow mb-4 rounded">
                                <!-- <div class="img-rounded"> -->
                                <img src="../assets/cup.jpg" alt="..." />
                                <!-- <div style="width:50%; height:100px;">
                                        <img src="./img/sky.jpg" alt="..." />
                                    </div> -->
                                <!-- </div> -->
                            </div>

                            <!-- Content Row -->
                            <div class="row">
                                <!-- Pending Requests Card Example -->
                                <!-- 가운데 평가지 -->

                                <div class="col-xl-2 col-md-6 mb-4 "></div>
                                <div class="col-xl-8 col-md-6 mb-4 ">
                                    <div
                                        class="card border-left-warning shadow h-100 py-2"
                                    >
                                        <div class="card-body">
                                            <div
                                                class="row no-gutters align-items-center"
                                            >
                                                <div class="col mr-2">
                                                    <div
                                                        class="text-lg font-weight-bold text-warning text-uppercase mb-1 text-center"
                                                    >
                                                        <div>
                                                            <h3>
                                                                {{ title }}
                                                            </h3>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    <h5>
                                                        본 설문조사는 강의
                                                        내용을 평가하고 더 나은
                                                        수업을준비하기 위한
                                                        자료로만 쓰여집니다. 각
                                                        항문에 대한
                                                        만족도(1=낮음, 5=높음)에
                                                        표시해 주십시오.
                                                    </h5>
                                                </div>
                                                <div class="col-auto">
                                                    <!-- <i
                                                        class="fas fa-comments fa-2x text-gray-300"
                                                    ></i> -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Dropdown Card Example -->
                                    </div>
                                    <!--노랑이 끝-->
                                </div>
                            </div>
                            <!-- Dropdown Card Example -->
                            <div class="row">
                                <!-- Pending Requests Card Example -->
                                <!-- 가운데 평가지 -->

                                <div
                                    class="col-xl-8 col-md-6 mb-4"
                                    @click="setCurrentNo(i)"
                                    :key="i"
                                    v-for="(item, i) in questions"
                                >
                                    <div
                                        v-if="item.type == 'Q'"
                                        class="card border-left-warning shadow h-100 py-2"
                                    >
                                        <div class="card-body">
                                            <div
                                                class="row no-gutters align-items-center"
                                            >
                                                <div class="col mr-2">
                                                    <div
                                                        class="text-lg font-weight-bold text-warning text-uppercase mb-1"
                                                    >
                                                        <div>
                                                            {{ item.content }}
                                                        </div>
                                                        <i
                                                            class="fas fa-trash-alt"
                                                        ></i>
                                                    </div>
                                                    <hr />
                                                    <div
                                                        class="h5 mb-0 font-weight-bold text-gray-800 m-5"
                                                    >
                                                        <div
                                                            class="form-check form-check-inline"
                                                        >
                                                            <input
                                                                class="form-check-input"
                                                                type="radio"
                                                                name="inlineRadioOptions"
                                                                id="inlineRadio1"
                                                                :value="1"
                                                            />
                                                            <label
                                                                class="form-check-label"
                                                                for="inlineRadio1"
                                                                >매우그렇다</label
                                                            >
                                                        </div>
                                                        <div
                                                            class="form-check form-check-inline"
                                                        >
                                                            <input
                                                                class="form-check-input"
                                                                type="radio"
                                                                name="inlineRadioOptions"
                                                                id="inlineRadio2"
                                                                :value="2"
                                                            />
                                                            <label
                                                                class="form-check-label"
                                                                for="inlineRadio2"
                                                                >그렇다</label
                                                            >
                                                        </div>
                                                        <div
                                                            class="form-check form-check-inline"
                                                        >
                                                            <input
                                                                class="form-check-input"
                                                                type="radio"
                                                                name="inlineRadioOptions"
                                                                id="inlineRadio2"
                                                                :value="3"
                                                            />
                                                            <label
                                                                class="form-check-label"
                                                                for="inlineRadio2"
                                                                >보통이다</label
                                                            >
                                                        </div>
                                                        <div
                                                            class="form-check form-check-inline"
                                                        >
                                                            <input
                                                                class="form-check-input"
                                                                type="radio"
                                                                name="inlineRadioOptions"
                                                                id="inlineRadio2"
                                                                :value="4"
                                                            />
                                                            <label
                                                                class="form-check-label"
                                                                for="inlineRadio2"
                                                                >그렇지않다</label
                                                            >
                                                        </div>
                                                        <div
                                                            class="form-check form-check-inline"
                                                        >
                                                            <input
                                                                class="form-check-input"
                                                                type="radio"
                                                                name="inlineRadioOptions"
                                                                id="inlineRadio2"
                                                                :value="5"
                                                            />
                                                            <label
                                                                class="form-check-label"
                                                                for="inlineRadio2"
                                                                >전혀그렇지않다</label
                                                            >
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-auto">
                                                    <!-- <i
                                                        class="fas fa-comments fa-2x text-gray-300"
                                                    ></i> -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Dropdown Card Example -->
                                    </div>
                                    <div
                                        v-else-if="item.type == 'D'"
                                        class="card border-left-warning shadow h-100 py-2"
                                    >
                                        <div class="card-body">
                                            <div
                                                class="row no-gutters align-items-center"
                                            >
                                                <div class="col mr-2">
                                                    <div
                                                        class="text-lg font-weight-bold text-warning text-uppercase mb-1"
                                                    >
                                                        <div>
                                                            설명
                                                        </div>
                                                        <i
                                                            class="fas fa-trash-alt"
                                                        ></i>
                                                    </div>
                                                    <hr />
                                                    <div
                                                        class="h5 mb-0 font-weight-bold text-gray-800 m-5"
                                                    >
                                                        {{ item.content }}
                                                    </div>
                                                </div>
                                                <div class="col-auto">
                                                    <!-- <i
                                                        class="fas fa-comments fa-2x text-gray-300"
                                                    ></i> -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Dropdown Card Example -->
                                    </div>
                                    <!--노랑이 끝-->
                                </div>
                            </div>
                            <!-- Dropdown Card Example -->
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
            course_name: '2021블록체인비즈니스과정',
            class_name: 'Vue.js',
            class_teacher_key: '고승원',
            eval_order: '설문지 설명 :',
            title: '2주차 강의 평가',
            // modal1: false
            questions: [],
            classId: 1
        }
    },
    setup() {},
    created() {},
    mounted() {
        this.getList()
    },
    unmounted() {},
    methods: {
        async getList() {
            this.questions = await this.$api('/api/questionList', 'post', {
                param: [this.classId]
            })

            console.log(this.questions)
        },
        async saveAnswer() {}
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

.active {
    border: 2px solid red;
}
</style>
