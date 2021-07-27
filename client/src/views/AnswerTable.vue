<template>
    <div class="box">
        <angleupsticker />
        <!-- 스티커 끝 -->
        <div class="menu-toggle rounded">
            <!-- Button trigger modal -->
            <div
                @click="saveAnswer"
                title="저장"
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
        <answermodal @callSaveAnswer="saveAnswer" />
        <!-- Page Wrapper -->
        <div id="wrapper">
            <!-- 설문지 부분 -->
            <div id="content-wrapper" class="d-flex flex-column">
                <!-- Main Content -->
                <div id="content">
                    <div class="card-header py-3">
                        <div
                            class="text-lg font-weight-bold text-warning text-uppercase mb-1 text-center"
                        >
                            <h1>
                                {{ evaluationInfo.title }}
                            </h1>
                            <h5>
                                {{ evaluationInfo.information }}
                            </h5>
                            <div class="card shadow mb-4 rounded">
                                <img src="../assets/images/cup.jpg" alt="..." />
                            </div>
                        </div>
                        <div class="row">
                            <!-- 가운데 평가지 -->
                            <div
                                class="col-xl-12 col-lg-9 col-md-6 mb-4"
                                :key="i"
                                v-for="(item, i) in answers"
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
                                                    {{ item.content }}
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
                                                        >
                                                            <input
                                                                class="form-check-input"
                                                                type="radio"
                                                                v-model="
                                                                    item.answer
                                                                "
                                                                :value="1"
                                                            />
                                                            매우 그렇다
                                                        </label>
                                                    </div>
                                                    <div
                                                        class="form-check form-check-inline"
                                                    >
                                                        <label
                                                            class="form-check-label"
                                                        >
                                                            <input
                                                                class="form-check-input"
                                                                type="radio"
                                                                v-model="
                                                                    item.answer
                                                                "
                                                                :value="2"
                                                            />
                                                            그렇다
                                                        </label>
                                                    </div>
                                                    <div
                                                        class="form-check form-check-inline"
                                                    >
                                                        <label
                                                            class="form-check-label"
                                                        >
                                                            <input
                                                                class="form-check-input"
                                                                type="radio"
                                                                v-model="
                                                                    item.answer
                                                                "
                                                                :value="3"
                                                            />
                                                            보통이다
                                                        </label>
                                                    </div>
                                                    <div
                                                        class="form-check form-check-inline"
                                                    >
                                                        <label
                                                            class="form-check-label"
                                                        >
                                                            <input
                                                                class="form-check-input"
                                                                type="radio"
                                                                v-model="
                                                                    item.answer
                                                                "
                                                                :value="4"
                                                            />
                                                            그렇지 않다
                                                        </label>
                                                    </div>
                                                    <div
                                                        class="form-check form-check-inline"
                                                    >
                                                        <label
                                                            class="form-check-label"
                                                        >
                                                            <input
                                                                class="form-check-input"
                                                                type="radio"
                                                                v-model="
                                                                    item.answer
                                                                "
                                                                :value="5"
                                                            />
                                                            전혀 그렇지 않다
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 설문지 부분 끝 -->
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
                                                    {{ item.content }}
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
    </div>
</template>
<script>
import AnswerModal from '../components/AnswerModal.vue'
import AngleUpSticker from '../components/AngleUpSticker.vue'
export default {
    name: '',
    components: { answermodal: AnswerModal, angleupsticker: AngleUpSticker },
    data() {
        return {
            eval_id: null,
            answers: [],
            evaluationInfo: {}
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
        this.user_email = this.$route.query.user_email
        this.getQuestionList()
        this.getEvaluationPaper()
    },
    mounted() {},
    unmounted() {},
    methods: {
        async getQuestionList() {
            // 평가 질문지 가져오기
            const questions = await this.$api('/api/getQuestionList', 'post', {
                param: [this.eval_id]
            })

            console.log(questions)
            // 평가 질문지를 응답지로 바꾸기
            this.answers = questions.map(q => {
                return {
                    class_id: q.class_id,
                    content: q.content,
                    question_id: q.question_id,
                    type: q.type,
                    answer: 0,
                    user_email: this.user_email
                }
            })
        },

        // 평가지 정보 불러오기
        async getEvaluationPaper() {
            this.evaluationInfo = (
                await this.$api('/api/getEvaluationPaper', 'post', {
                    param: [this.eval_id]
                })
            )[0]

            console.log(this.evaluationInfo)
        },

        // 평가 응답 DB 저장 함수
        async saveAnswer() {
            console.log('answer is ', this.answers)

            var classId = this.answers[0].class_id
            // await this.$api('/api/saveAnswer', 'post', {
            //     param: [this.answers.filter(a => a.type === 'Q')]
            // })
            const res = await this.$api('/api/updateEvaluationStatus', 'post', {
                param: [4, classId]
            })

            // const res = await this.$api('/api/updateEvaluationStatus', 'post', {
            //     param: [2, this.classId]
            // })

            console.log(res)
        }
    }
}
</script>
<style scoped>
.box {
    height: 800px;
    width: 1200px;
    text-align: center;
    margin: auto;
    /* justify-content: center; */
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
