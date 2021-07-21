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
                            <!-- 오른쪽 사이드 바, 스티커 시작 -->
                            <div class="menu-toggle rounded">
                                <!-- 질문 추가 버튼 -->
                                <div
                                    @click="addQuestion('Q')"
                                    title="질문 추가"
                                >
                                    <font-awesome-icon icon="file-signature" />
                                </div>
                                <!-- 섹션 추가 버튼 -->
                                <div
                                    @click="addQuestion('D')"
                                    title="섹션 추가"
                                >
                                    <font-awesome-icon icon="file-import" />
                                </div>
                                <!-- 이미지 추가 버튼 -->
                                <div style="clear: none" title="이미지 추가">
                                    <div @click="$refs.file.click()">
                                        <font-awesome-icon icon="images" />
                                    </div>
                                    <input
                                        type="file"
                                        @change="fileSelect"
                                        ref="file"
                                        style="display: none"
                                        accept=".jpg, .png"
                                    />
                                </div>
                                <!-- 저장 버튼 -->
                                <div
                                    @click="
                                        ;[saveEvaluationInfo(), saveQuestion()]
                                    "
                                    title="저장"
                                >
                                    <font-awesome-icon icon="save" />
                                </div>
                                <!-- Button trigger modal -->
                            </div>

                            <!-- Modal -->
                            <div
                                class="modal fade"
                                id="staticBackdrop1"
                                data-backdrop="static"
                                tabindex="-1"
                                role="dialog"
                                aria-labelledby="staticBackdropLabel1"
                                aria-hidden="true"
                            >
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5
                                                class="modal-title"
                                                id="staticBackdropLabel1"
                                            >
                                                저장 완료
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
                                                        작성한 설문지를
                                                        저장했습니다
                                                    </h6>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button
                                                type="button"
                                                class="btn btn-primary"
                                                data-dismiss="modal"
                                            >
                                                확인
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 오른쪽 사이드 바, 스티커 끝 -->

                            <!-- 설문지 부분 시작 -->
                            <div id="wrapper">
                                <!-- Content Wrapper -->
                                <div
                                    id="content-wrapper"
                                    class="d-flex flex-column"
                                >
                                    <!-- 설문지 헤드 -->
                                    <div id="content">
                                        <div class="card-header py-3">
                                            <div style="margin:30px;">
                                                <img
                                                    src="../assets/images/cup.jpg"
                                                    alt=""
                                                    srcset=""
                                                />
                                                <!-- Button trigger modal -->
                                                이것도 위치 바꿀 수 있을까?
                                                <button
                                                    href="#"
                                                    type="button"
                                                    class="btn btn-warning btn-icon-split  btn float-right"
                                                    data-toggle="modal"
                                                    data-target="#staticBackdrop"
                                                >
                                                    완료 및 전송
                                                </button>
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
                                                    <div
                                                        class="modal-dialog"
                                                        role="document"
                                                    >
                                                        <div
                                                            class="modal-content"
                                                        >
                                                            <div
                                                                class="modal-header"
                                                            >
                                                                <h5
                                                                    class="modal-title"
                                                                    id="staticBackdropLabel"
                                                                >
                                                                    수강생 선택
                                                                </h5>
                                                                <button
                                                                    type="button"
                                                                    class="close"
                                                                    data-dismiss="modal"
                                                                    aria-label="Close"
                                                                >
                                                                    <span
                                                                        aria-hidden="true"
                                                                        >&times;</span
                                                                    >
                                                                </button>
                                                            </div>
                                                            <div
                                                                class="modal-body"
                                                            >
                                                                <!-- 수강생들이 들어갈 공간 -->
                                                                <div
                                                                    class="card shadow mb-4"
                                                                >
                                                                    <div
                                                                        class="card-header py-3"
                                                                    >
                                                                        <h6
                                                                            class="m-0 font-weight-bold text-primary"
                                                                        >
                                                                            <!-- 우측으로 생성 -->
                                                                            <div
                                                                                class="row"
                                                                            >
                                                                                <!-- 표 -->
                                                                                <div
                                                                                    class="card-body"
                                                                                >
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
                                                                                                        번호
                                                                                                    </th>
                                                                                                    <th>
                                                                                                        수강생
                                                                                                        이름
                                                                                                    </th>

                                                                                                    <th>
                                                                                                        선택
                                                                                                    </th>
                                                                                                </tr>
                                                                                            </thead>
                                                                                            <tbody>
                                                                                                <tr
                                                                                                    :key="
                                                                                                        i
                                                                                                    "
                                                                                                    v-for="(student,
                                                                                                    i) in students"
                                                                                                >
                                                                                                    <td>
                                                                                                        {{
                                                                                                            i +
                                                                                                                1
                                                                                                        }}
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        {{
                                                                                                            student.name
                                                                                                        }}
                                                                                                    </td>

                                                                                                    <td>
                                                                                                        <input
                                                                                                            type="checkbox"
                                                                                                            :value="
                                                                                                                student.user_email
                                                                                                            "
                                                                                                            v-model="
                                                                                                                checkedStudents
                                                                                                            "
                                                                                                        />
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </tbody>
                                                                                        </table>
                                                                                    </div>
                                                                                </div>
                                                                                <!-- 표 끝 -->
                                                                            </div>
                                                                        </h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="modal-footer"
                                                            >
                                                                <button
                                                                    type="button"
                                                                    class="btn btn-secondary"
                                                                    data-dismiss="modal"
                                                                >
                                                                    닫기
                                                                </button>
                                                                <button
                                                                    type="button"
                                                                    class="btn btn-primary"
                                                                    data-dismiss="modal"
                                                                    @click="
                                                                        sendEvaluationPaper
                                                                    "
                                                                >
                                                                    확인
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- class_table -->
                                            {{ classInfo }}
                                            <div style="margin:5px;">
                                                강좌명:
                                                {{ classInfo[0].course_name }}
                                            </div>
                                            <div style="margin:5px;">
                                                수업명: {{ classInfo[0].name }}
                                            </div>
                                            <div style="margin:5px;">
                                                강사명:
                                                {{ classInfo[0].teacher_name }}
                                            </div>
                                            <div style="margin:10px;">
                                                설문 응답 시작 :
                                                <input
                                                    type="datetime-local"
                                                    v-model="evalStartTime"
                                                />
                                            </div>
                                            <div style="margin:10px;">
                                                설문 응답 종료 :
                                                <input
                                                    type="datetime-local"
                                                    v-model="evalEndTime"
                                                />
                                            </div>
                                            <div>
                                                <input
                                                    type="text"
                                                    style="width: 100%;"
                                                    placeholder="해당 평가지의 제목을 적어주세요."
                                                    v-model="evalTitle"
                                                />
                                                <textarea
                                                    name=""
                                                    style="width: 100%"
                                                    rows="10"
                                                    placeholder="해당 평가지에  세부 설명을 적어주세요."
                                                    v-model="evalDescription"
                                                ></textarea>
                                            </div>
                                            <!-- 질문지 시작 -->
                                            <!-- 이미지 리스트 -->
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
                                                                                    disabled
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
                                                                                    disabled
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
                                                                                    disabled
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
                                                                                    disabled
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
                                                                                    disabled
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
export default {
    name: '',
    components: { sidebar: Sidebar, topbar: Topbar },
    data() {
        return {
            classInfo: [],
            students: [],
            checkedStudents: [],

            questions: [],
            evalTitle: '',
            evalImageAddress: null,
            evalDescription: '',
            evalStartTime: null,
            evalEndTime: null,
            selectedIndex: -1
        }
    },
    computed: {
        user() {
            return this.$store.state.user
        }
    },
    setup() {},
    created() {
        this.classId = this.$route.query.classId
        this.courseId = this.$route.query.courseId

        this.getStudentList()
        this.getClassInfo()
    },
    mounted() {
        console.log(this.classInfo[0].course_name)

        const checkedStudents = []
        for (const student of this.students) {
            checkedStudents.push(student.user_email)
        }
        this.checkedStudents = checkedStudents
        console.log('default students', this.checkedStudents)
    },
    unmounted() {},
    methods: {
        // created method : DB에서 학생 데이터 가져오기
        async getStudentList() {
            this.students = await this.$api('/api/studentList', 'post', {
                param: [this.courseId, this.classId]
            })
            // console.log(this.students)
        },

        // created method : DB에서 현재 수업 정보 가져오기
        async getClassInfo() {
            this.classInfo = await this.$api('/api/getClassInfo', 'post', {
                param: [this.classId]
            })
            console.log(this.classInfo)
        },
        async sendEvalution() {
            console.log(this.checkedStudents)

            const r = await this.$api('/api/sendEvaluation', 'post', {
                param: [this.checkedStudents]
            })

            console.log(r)
        },
        // 현재 수정 중인 질문박스 활성화 함수
        setCurrentNo(idx) {
            this.selectedIndex = idx
            this.questions.forEach(item => {
                item.isSelected = false
            })
            this.questions[idx].isSelected = true
            console.log(this.questions[idx])
        },
        // 질문 추가 함수
        addQuestion(type) {
            this.questions.splice(this.selectedIndex + 1, 0, {
                type: type,
                content: '',
                isSelected: false
            })

            this.setCurrentNo(this.selectedIndex + 1)
        },
        // 질문 삭제 함수
        deleteQuestion() {
            this.questions.splice(this.selectedIndex, 1)
        },

        // 학생에게 평가지를 열람 가능하도록 업데이트하는 함수
        async sendEvalutionPaper() {
            console.log(this.checkedStudents)

            const res = await this.$api('/api/sendEvaluationPaper', 'post', {
                param: [this.checkedStudents, this.classId]
            })

            console.log(res)
        },

        // 작성된 평가지 정보를 DB에 저장하는 함수
        async saveEvaluationInfo() {
            var oEvaluationPaper = {}
            oEvaluationPaper.class_id = this.classId
            oEvaluationPaper.title = this.evalTitle
            oEvaluationPaper.information = this.evalDescription
            oEvaluationPaper.start_time = this.evalStartTime
            oEvaluationPaper.end_time = this.evalEndTime
            oEvaluationPaper.image_address = this.evalImageAddress

            const res = await this.$api('/api/saveEvaluationInfo', 'post', {
                param: [oEvaluationPaper]
            })

            console.log(res)
        },

        // 평가지에 작성된 질문들을 DB에 저장하는 함수
        async saveQuestion() {
            var questionData = []
            const questionList = this.questions

            for (var idx in questionList) {
                questionList[idx].order = idx
                questionList[idx].class_id = this.classId
                questionList[idx].eval_id = this.classId

                questionData.push(questionList[idx])
            }

            console.log(questionData)
            const r = await this.$api('/api/saveQuestion', 'post', {
                param: [questionData]
            })
            console.log(r)
        }
    }
}
</script>

<style scoped>
.form-check-input {
    width: 80px;
}

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
    top: 35vh;
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
.menu-toggle > div:hover {
    background: #343a40;
}

.active {
    border: 5px solid rgba(255, 0, 0, 0.918);
    border-radius: 10px;
}

.del-mark {
    position: absolute;
    top: 5px;
    right: 5px;
    color: white;
    z-index: 9999;
    cursor: pointer;
    background-color: #343a40;
}

.img-items > li {
    list-style-type: none;
    float: center;
    text-align: center;
    margin-right: 10px;
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
