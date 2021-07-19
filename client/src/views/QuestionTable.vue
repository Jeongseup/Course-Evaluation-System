<template>
    <!-- question_table 사용 eval_key , eval_oder, eval_contents, eval_type, eval_image -->
    <div>
        <body id="page-top">
            <!-- body 바로 아래에 추가 스티커 -->
            <div class="menu-toggle rounded">
                <!-- 질문추가 -->
                <div><font-awesome-icon icon="file-signature" /></div>
                <!-- 섹션추가 -->
                <div><font-awesome-icon icon="file-import" /></div>
                <!-- 이미지추가 -->
                <!-- <div><font-awesome-icon icon="images" /></div> -->
                <div style="clear: none">
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
                <div><font-awesome-icon icon="save" /></div>
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
                            <div style="margin:30px;">
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
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
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
                                                    <span aria-hidden="true"
                                                        >&times;</span
                                                    >
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <!-- 수강생들이 들어갈 공간 -->
                                                <div class="card shadow mb-4">
                                                    <div
                                                        class="card-header py-3"
                                                    >
                                                        <h6
                                                            class="m-0 font-weight-bold text-primary"
                                                        >
                                                            <!-- 우측으로 생성 -->
                                                            <div class="row">
                                                                <!-- 수강생 -->
                                                                <div
                                                                    class="col-xl-3 col-md-6 mb-4"
                                                                    :key="i"
                                                                    v-for="(a,
                                                                    i) in studentName"
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
                                                                                        수강생
                                                                                    </div>
                                                                                    <div
                                                                                        class="h5 mb-0 font-weight-bold text-gray-800"
                                                                                    >
                                                                                        {{
                                                                                            a
                                                                                        }}
                                                                                        <input
                                                                                            type="checkbox"
                                                                                            checked
                                                                                        />
                                                                                    </div>
                                                                                </div>
                                                                                <div
                                                                                    class="col-auto"
                                                                                >
                                                                                    <i
                                                                                        class="fas fa-user-edit fa-2x text-gray-300"
                                                                                    ></i>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
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
                                class="row"
                                :key="i"
                                v-for="(img, i) in imageList"
                            >
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
                                                        <ul class="img-items">
                                                            <li>
                                                                <div
                                                                    style="position: relative"
                                                                >
                                                                    <img
                                                                        :src="
                                                                            img.src
                                                                        "
                                                                        style="height: auto; width: 800px;"
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
                                                        <!-- <div style="width:50%; height:100px;">
                                        <img src="./img/sky.jpg" alt="..." />
                                    </div> -->
                                                        <!-- </div> -->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
                                                                <input
                                                                    type="text"
                                                                    style="width: 600px;"
                                                                    placeholder="해당 섹션의 제목을 적어주세요"
                                                                />
                                                            </h3>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    <h5>
                                                        <textarea
                                                            name=""
                                                            width="100%"
                                                            rows="10"
                                                            placeholder="해당 섹션에 대한 설명을 적어주세요."
                                                        ></textarea>
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
                            ㅇ,ㅇ?
                            <!-- Dropdown Card Example -->
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
                                                        class="text-lg font-weight-bold text-warning text-uppercase mb-1"
                                                    >
                                                        <div>
                                                            {{ eval_order }}
                                                            <input
                                                                type="text"
                                                                style="width: 600px;"
                                                                placeholder="질문 내용을 적어주세요"
                                                            />
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
                                    <!--노랑이 끝-->
                                </div>
                                ㅇ,ㅇ?
                            </div>
                            <!-- Dropdown Card Example -->
                        </div>
                    </div>

                    <!-- End of Main Content -->
                </div>
                <!-- End of Content Wrapper -->
            </div>
            <!-- End of Page Wrapper -->

            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top">
                <i class="fas fa-angle-up"></i>
            </a>
        </body>
    </div>
</template>
<script>
export default {
    name: '',
    components: {},
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
            studentName: ['장태진', '태진장', '태진태', '진태진', '태진태진']
        }
    },
    setup() {},
    created() {},
    mounted() {},
    unmounted() {},
    methods: {
        // eval_value_key -> :value="1",  :value="2"  ,:value="3"  ,:value="4"  ,:value="5"

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
.menu-toggle > div:hover {
    background: #343a40;
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
</style>
