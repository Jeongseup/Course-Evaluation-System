<template>
    <div>
        <!-- 컴포넌트 -->
        <div id="page-top">
            <!-- Page Wrapper -->
            <div id="wrapper">
                <!-- <sidebar /> -->
                <div id="content-wrapper" class="d-flex flex-column">
                    <!-- Main Content -->
                    <div id="content">
                        <topbar :userName="user.name" />
                        <!-- 컴포넌트 끝 -->
                        <body>
                            <a class="scroll rounded" href="#">
                                <font-awesome-icon icon="angle-up" />
                            </a>
                            <!-- body 바로 아래에 추가 스티커 -->
                            <div class="menu-toggle rounded">
                                <!-- Button trigger modal -->
                                <div
                                    @click="saveAnswer"
                                    href="#"
                                    type="button"
                                    data-toggle="modal"
                                    data-target="#staticBackdrop"
                                >
                                    <font-awesome-icon icon="save" />
                                </div>
                                <!-- Button trigger modal -->
                            </div>
                            <!-- 스티커 끝 -->

                            <!-- Modal -->
                            <div
                                class="modal fade"
                                id="staticBackdrop"
                                data-backdrop="static"
                                tabindex="-1"
                                role="dialog"
                                aria-labelledby="staticBackdropLabel"
                                aria-hidden="true"
                            >
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5
                                                class="modal-title"
                                                id="staticBackdropLabel"
                                            >
                                                응답 완료
                                            </h5>
                                            <button
                                                type="button"
                                                class="close"
                                                data-dismiss="modal"
                                                aria-label="Close"
                                            >
                                                <span aria-hidden="true"
                                                    >&times;</span
                                                >
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <!-- 수강생들이 들어갈 공간 -->
                                            <div class="card shadow mb-4">
                                                <div class="card-header py-3">
                                                    <h6
                                                        class="m-0 font-weight-bold text-primary"
                                                    >
                                                        응답이 모두
                                                        완료되었습니다. <br />
                                                        읍답해주셔서 감사합니다!
                                                    </h6>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <router-link
                                                to="/"
                                                style="text-decoration: none;"
                                            >
                                                <button
                                                    type="button"
                                                    class="btn btn-primary"
                                                    data-dismiss="modal"
                                                    @click="sendEvalution"
                                                >
                                                    확인
                                                </button>
                                            </router-link>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Page Wrapper -->
                            <div id="wrapper">
                                <!-- 설문지 부분 -->
                                <div
                                    id="content-wrapper"
                                    class="d-flex flex-column"
                                >
                                    <!-- Main Content -->
                                    <div id="content">
                                        <div class="card-header py-3">
                                            <div
                                                class="text-lg font-weight-bold text-warning text-uppercase mb-1 text-center"
                                            >
                                                <h1>
                                                    {{
                                                        evaluationInfo[0].title
                                                    }}
                                                </h1>
                                                <h5>
                                                    {{
                                                        evaluationInfo[0]
                                                            .information
                                                    }}
                                                </h5>
                                                <div
                                                    class="card shadow mb-4 rounded"
                                                >
                                                    <img
                                                        src="../assets/images/cup.jpg"
                                                        alt="..."
                                                    />
                                                </div>
                                            </div>
                                            <div style="margin:10px;">
                                                설문 응답 시작 :
                                                {{
                                                    evaluationInfo[0].start_time
                                                }}
                                                <br />
                                                설문 응답 종료 :
                                                {{ evaluationInfo[0].end_time }}
                                            </div>
                                            <div class="row">
                                                <!-- 가운데 평가지 -->
                                                <div
                                                    class="col-xl-12 col-lg-9 col-md-6 mb-4"
                                                    @click="setCurrentNo(i)"
                                                    :key="i"
                                                    v-for="(item,
                                                    i) in questions"
                                                >
                                                    <div
                                                        v-if="item.type == 'Q'"
                                                        class="card border-left-warning shadow h-100 py-2"
                                                    >
                                                        <div
                                                            class="card-body"
                                                            :class="{
                                                                active:
                                                                    item.isSelected
                                                            }"
                                                        >
                                                            <div
                                                                class="row no-gutters align-items-center"
                                                            >
                                                                <div
                                                                    class="col mr-2"
                                                                >
                                                                    <div
                                                                        class="text-lg font-weight-bold text-warning text-uppercase mb-1"
                                                                        v-if="
                                                                            item.isSelected
                                                                        "
                                                                    >
                                                                        <div>
                                                                            질문
                                                                            <input
                                                                                type="text"
                                                                                style="width:91%;"
                                                                                v-model="
                                                                                    item.content
                                                                                "
                                                                            />
                                                                            <button
                                                                                @click="
                                                                                    deleteQuestion()
                                                                                "
                                                                            >
                                                                                <font-awesome-icon
                                                                                    icon="trash-alt"
                                                                                />
                                                                            </button>
                                                                        </div>
                                                                    </div>
                                                                    <div
                                                                        class="text-lg font-weight-bold text-warning text-uppercase mb-1"
                                                                        v-else
                                                                    >
                                                                        {{
                                                                            item.content
                                                                        }}
                                                                    </div>

                                                                    <hr />
                                                                    <div
                                                                        class="h5 mb-0 font-weight-bold text-gray-800 m-5"
                                                                    >
                                                                        <div
                                                                            class="form-check form-check-inline"
                                                                        >
                                                                            <label
                                                                                class="form-check-label"
                                                                                for="inlineRadio1"
                                                                            >
                                                                                <input
                                                                                    class="form-check-input"
                                                                                    type="radio"
                                                                                    name="inlineRadioOptions"
                                                                                    id="inlineRadio1"
                                                                                    :value="
                                                                                        1
                                                                                    "
                                                                                />
                                                                                매우
                                                                                그렇다</label
                                                                            >
                                                                        </div>
                                                                        <div
                                                                            class="form-check form-check-inline"
                                                                        >
                                                                            <label
                                                                                class="form-check-label"
                                                                                for="inlineRadio2"
                                                                            >
                                                                                <input
                                                                                    class="form-check-input"
                                                                                    type="radio"
                                                                                    name="inlineRadioOptions"
                                                                                    id="inlineRadio2"
                                                                                    :value="
                                                                                        2
                                                                                    "
                                                                                />
                                                                                그렇다</label
                                                                            >
                                                                        </div>
                                                                        <div
                                                                            class="form-check form-check-inline"
                                                                        >
                                                                            <label
                                                                                class="form-check-label"
                                                                                for="inlineRadio2"
                                                                            >
                                                                                <input
                                                                                    class="form-check-input"
                                                                                    type="radio"
                                                                                    name="inlineRadioOptions"
                                                                                    id="inlineRadio2"
                                                                                    :value="
                                                                                        3
                                                                                    "
                                                                                />
                                                                                보통이다</label
                                                                            >
                                                                        </div>
                                                                        <div
                                                                            class="form-check form-check-inline"
                                                                        >
                                                                            <label
                                                                                class="form-check-label"
                                                                                for="inlineRadio2"
                                                                            >
                                                                                <input
                                                                                    class="form-check-input"
                                                                                    type="radio"
                                                                                    name="inlineRadioOptions"
                                                                                    id="inlineRadio2"
                                                                                    :value="
                                                                                        4
                                                                                    "
                                                                                />
                                                                                그렇지
                                                                                않다</label
                                                                            >
                                                                        </div>
                                                                        <div
                                                                            class="form-check form-check-inline"
                                                                        >
                                                                            <label
                                                                                class="form-check-label"
                                                                                for="inlineRadio2"
                                                                            >
                                                                                <input
                                                                                    class="form-check-input"
                                                                                    type="radio"
                                                                                    name="inlineRadioOptions"
                                                                                    id="inlineRadio2"
                                                                                    :value="
                                                                                        5
                                                                                    "
                                                                                />
                                                                                전혀
                                                                                그렇지
                                                                                않다</label
                                                                            >
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- 설문지 부분 끝 -->
                                                    </div>
                                                    <div
                                                        v-else-if="
                                                            item.type == 'D'
                                                        "
                                                        class="card border-left-warning shadow h-100 py-2"
                                                    >
                                                        <div
                                                            class="card-body"
                                                            :class="{
                                                                active:
                                                                    item.isSelected
                                                            }"
                                                        >
                                                            <div
                                                                class="row no-gutters align-items-center"
                                                            >
                                                                <div
                                                                    class="col mr-2"
                                                                >
                                                                    <div
                                                                        class="text-lg font-weight-bold text-warning text-uppercase mb-1"
                                                                        v-if="
                                                                            item.isSelected
                                                                        "
                                                                    >
                                                                        <div>
                                                                            섹션
                                                                            설명
                                                                            <input
                                                                                type="text"
                                                                                style="width:87%;"
                                                                                v-model="
                                                                                    item.content
                                                                                "
                                                                            />
                                                                            <button
                                                                                class="buttonSection"
                                                                                @click="
                                                                                    deleteQuestion()
                                                                                "
                                                                            >
                                                                                <font-awesome-icon
                                                                                    icon="trash-alt"
                                                                                />
                                                                            </button>
                                                                        </div>
                                                                    </div>
                                                                    <div
                                                                        class="text-lg font-weight-bold text-warning text-uppercase mb-1"
                                                                        v-else
                                                                    >
                                                                        {{
                                                                            item.content
                                                                        }}
                                                                    </div>
                                                                    <hr />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- Dropdown Card Example -->
                                                    </div>
                                                    <!--노랑이 끝-->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End of Main Content -->
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
import Topbar from '../layouts/Topbar.vue'
export default {
    name: '',
    components: { topbar: Topbar },
    data() {
        return {
            eval_id: null,
            questions: [],
            evaluationInfo: []
        }
    },
    computed: {
        user() {
            return this.$store.state.user
        }
    },
    setup() {},
    created() {
        this.eval_id = this.$route.query.eval_id
        this.getQuestions()
        this.getEvaluationPaper()
    },
    mounted() {},
    unmounted() {},
    methods: {
        async getQuestions() {
            this.questions = await this.$api('/api/questionList', 'post', {
                param: [this.eval_id]
            })

            console.log(this.questions)
        },

        // 평가지 정보 불러오기
        async getEvaluationPaper() {
            this.evaluationInfo = await this.$api(
                '/api/getEvaluationPaper',
                'post',
                {
                    param: [this.eval_id]
                }
            )

            console.log(this.evaluationInfo)
        },

        // 평가 응답 DB 저장 함수
        async saveAnswer() {
            console.log(this.questions)

            await this.$api('/api/saveAnswer', 'post', {
                param: [this.questions.filter(q => q.type === 'Q')]
            })
        }
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
    height: 50px;
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
