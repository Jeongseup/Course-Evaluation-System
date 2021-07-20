<template>
    <!-- question_table 사용 eval_key , eval_oder, eval_contents, eval_type, eval_image -->

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
                            <!-- body 바로 아래에 추가 스티커 -->
                            <div class="menu-toggle rounded">
                                <!-- 질문추가 -->
                                <div @click="addQuetion('Q')" title="질문 추가">
                                    <font-awesome-icon icon="file-signature" />
                                </div>
                                <!-- 섹션추가 -->
                                <div @click="addQuetion('D')" title="섹션 추가">
                                    <font-awesome-icon icon="file-import" />
                                </div>
                                <!-- 이미지추가 -->
                                <!-- <div><font-awesome-icon icon="images" /></div> -->
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

                                <!-- 저장 -->
                                <div @click="saveQuestion" title="저장">
                                    <font-awesome-icon icon="save" />
                                </div>
                            </div>
                            <!-- 스티커 끝 -->

                            <!-- Page Wrapper -->
                            <div id="wrapper">
                                <!-- Sidebar -->
                                <!-- End of Sidebar -->

                                <!-- Content Wrapper -->
                                <div
                                    id="content-wrapper"
                                    class="d-flex flex-column"
                                >
                                    <!-- Main Content -->
                                    <div id="content">
                                        <div class="card-header py-3">
                                            <div style="margin:30px;">
                                                <img
                                                    src="../assets/images/cup.jpg"
                                                    alt=""
                                                    srcset=""
                                                />
                                                <!-- Button trigger modal -->
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
                                                                                            <tfoot>
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
                                                                                            </tfoot>
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
                                                                                                            i
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
                                                                                                                student.email
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
                                                                    @click="
                                                                        sendEvalution
                                                                    "
                                                                >
                                                                    확인
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
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
                                                설문 응답 종료 일 :
                                                <input type="date" />
                                            </div>

                                            <!-- Illustrations -->

                                            <div
                                                class="col-xl-12 col-lg-9 col-md-6 mb-4"
                                                :key="i"
                                                v-for="(img, i) in imageList"
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
                                                                    class="text-lg font-weight-bold text-warning text-uppercase mb-1 text-center"
                                                                >
                                                                    <ul
                                                                        class="img-items"
                                                                    >
                                                                        <li>
                                                                            <div
                                                                                style="position: relative"
                                                                            >
                                                                                <img
                                                                                    :src="
                                                                                        img.src
                                                                                    "
                                                                                    style="height: auto; width: 100%;"
                                                                                />
                                                                                <span
                                                                                    class="del-mark"
                                                                                    @click="
                                                                                        deleteImg(
                                                                                            i
                                                                                        )
                                                                                    "
                                                                                    >X</span
                                                                                >
                                                                            </div>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Dropdown Card Example -->
                                            <div class="row">
                                                <!-- Pending Requests Card Example -->
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
                                                                            <button>
                                                                                <font-awesome-icon
                                                                                    icon="trash-alt"
                                                                                />
                                                                            </button>
                                                                        </div>
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
                                                                                :value="
                                                                                    1
                                                                                "
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
                                                                                :value="
                                                                                    2
                                                                                "
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
                                                                                :value="
                                                                                    3
                                                                                "
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
                                                                                :value="
                                                                                    4
                                                                                "
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
                                                                                :value="
                                                                                    5
                                                                                "
                                                                            />
                                                                            <label
                                                                                class="form-check-label"
                                                                                for="inlineRadio2"
                                                                                >전혀그렇지않다</label
                                                                            >
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- Dropdown Card Example -->
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
                                                                    >
                                                                        <div>
                                                                            섹션
                                                                            설명
                                                                            <button>
                                                                                <font-awesome-icon
                                                                                    icon="trash-alt"
                                                                                />
                                                                            </button>
                                                                        </div>
                                                                    </div>
                                                                    <hr />
                                                                    <div
                                                                        class="h5 mb-0 font-weight-bold text-gray-800 m-5"
                                                                    >
                                                                        <textarea
                                                                            name=""
                                                                            style="width: 100%"
                                                                            rows="5"
                                                                            :placeholder="[
                                                                                `${item.content}`
                                                                            ]"
                                                                        ></textarea>
                                                                    </div>
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
    <!-- End of Page Wrapper -->
</template>
<script>
import Sidebar from '../components/layouts/Sidebar.vue'
import Topbar from '../components/layouts/Topbar.vue'
export default {
    name: '',
    components: { sidebar: Sidebar, topbar: Topbar },
    data() {
        return {
            files: null,
            imageList: [],

            course_name: '2021블록체인비즈니스과정',
            class_name: 'Vue.js',
            class_teacher_key: '고승원',
            eval_order: '설문지 설명 :',
            title: '2주차 강의 평가',
            modal2: false,
            // modal1: false
            // studentName: ['장태진', '태진장', '태진태', '진태진', '태진태진'],
            students: [
                { name: '장태진', email: 'a@aa.com' },
                { name: '태진태진', email: 'tetea@aa.com' }
            ],
            checkedStudents: [],
            questions: [
                {
                    type: 'Q',
                    content: '강사의 강의 속도는 적절했나요?',
                    isSelected: false
                },
                {
                    type: 'D',
                    content: '다음은 강사에 대한 평가 질문입니다.',
                    isSelected: false
                },
                {
                    type: 'Q',
                    content: '강사의 교수법은 적절했나요?',
                    isSelected: false
                },
                {
                    type: 'Q',
                    content: '강사는 적절한 예제를 제시했나요?',
                    isSelected: false
                }
            ],
            selectedIndex: -1
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
        async getStudentList() {
            this.students = await this.$api('/api/studentList', 'post', {
                param: [this.courseId, this.classId]
            })

            // console.log(this.students)
        },

        async getClassInfo() {
            this.classInfo = await this.$api('/api/classInfo', 'post', {
                param: [this.classId]
            })
            // console.log(this.classInfo)
        },

        setCurrentNo(idx) {
            this.selectedIndex = idx
            this.questions.forEach(item => {
                item.isSelected = false
            })
            this.questions[idx].isSelected = true
            console.log(this.questions[idx])
        },

        addQuetion(type) {
            this.questions.splice(this.selectedIndex + 1, 0, {
                type: type,
                content: ''
            })
        },

        addDescription(type) {
            this.questions.splice(this.selectedIndex + 1, 0, {
                type: type,
                content: ''
            })
        },

        async sendEvalution() {
            console.log(this.checkedStudents)
            const r = await this.$api('/api/sendEvalPaper', 'post', {
                param: [this.checkedStudents]
            })

            console.log(r)
        },

        // async saveEvaluationPaper() {
        //     var oEvaluationPaper = {}
        //     oEvaluationPaper.class_id = this.classId
        //     oEvaluationPaper.title = this.evalTitle
        //     oEvaluationPaper.information = this.evalDescription
        //     oEvaluationPaper.end_time = this.evalEndtime

        //     console.log(oEvaluationPaper)

        //     const r = await this.$api('/api/saveEvaluationPaper', 'post', {
        //         param: [oEvaluationPaper]
        //     })

        //     console.log(r)
        // },

        async fileSelect(e) {
            const r = await this.$upload('/api/uploadFile', e.target.files[0])
            console.log(r)
            this.imageList.push({
                src: `http://localhost:3000/static/${r.filename}`,
                filename: r.filename
            })
        },
        async deleteImg(idx) {
            var filename = this.imageList[idx].filename
            const r = await this.$delete('/api/deleteFile?filename=' + filename)
            console.log(r)
            this.imageList = this.imageList.filter(
                img => img.filename !== filename
            )
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
