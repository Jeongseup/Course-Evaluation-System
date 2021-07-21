<template>
    <div id="content">
        <!-- 컴포넌트 끝 -->
        <angleupsticker />

        <!-- Page Wrapper -->

        <div class="wrapper">
            <!-- Sidebar -->

            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div class="d-flex flex-column content-wrapper">
                <!-- Main Content -->
                <div class="content">
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">
                                <!-- Content Row -->
                                <div class="row">
                                    <!-- Earnings (Monthly) Card Example -->
                                    <div class="col-xl-3 col-md-6 mb-4">
                                        <div
                                            class="card border-left-primary shadow h-100 py-2"
                                        >
                                            <div class="card-body">
                                                <div
                                                    class="row no-gutters align-items-center"
                                                >
                                                    <div class="col mr-2">
                                                        <div
                                                            class="text-xs font-weight-bold text-primary text-uppercase mb-1"
                                                        >
                                                            <font-awesome-icon
                                                                icon="user-edit"
                                                            />
                                                            강사명
                                                        </div>
                                                        <div
                                                            class="h5 mb-0 font-weight-bold text-gray-800"
                                                        >
                                                            {{
                                                                resultPageData[0]
                                                                    .teacherName
                                                            }}
                                                        </div>
                                                    </div>
                                                    <div class="col-auto"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Earnings (Monthly) Card Example -->
                                    <div class="col-xl-3 col-md-6 mb-4">
                                        <div
                                            class="card border-left-success shadow h-100 py-2"
                                        >
                                            <div class="card-body">
                                                <div
                                                    class="row no-gutters align-items-center"
                                                >
                                                    <div class="col mr-2">
                                                        <div
                                                            class="text-xs font-weight-bold text-success text-uppercase mb-1"
                                                        >
                                                            <font-awesome-icon
                                                                icon="book-reader"
                                                            />
                                                            강의 이름
                                                        </div>
                                                        <div
                                                            class="h5 mb-0 font-weight-bold text-gray-800"
                                                        >
                                                            {{
                                                                resultPageData[0]
                                                                    .className
                                                            }}
                                                        </div>
                                                    </div>
                                                    <div class="col-auto"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Earnings (Monthly) Card Example -->
                                    <div class="col-xl-6 col-md-6 mb-4">
                                        <div
                                            class="card border-left-info shadow h-100 py-2"
                                        >
                                            <div class="card-body">
                                                <div
                                                    class="row no-gutters align-items-center"
                                                >
                                                    <div class="col mr-2">
                                                        <div
                                                            class="text-xs font-weight-bold text-gray-800 text-uppercase mb-1"
                                                        >
                                                            강의 주최기관 :
                                                            {{
                                                                resultPageData[0]
                                                                    .courseName
                                                            }}
                                                        </div>
                                                        <div
                                                            class="text-xs font-weight-bold text-gray-800 text-uppercase mb-1"
                                                        >
                                                            강의 장소 :
                                                            {{
                                                                resultPageData[0]
                                                                    .classPlace
                                                            }}
                                                        </div>
                                                        <div
                                                            class="text-xs font-weight-bold text-gray-800 text-uppercase mb-1"
                                                        >
                                                            강의 시기:{{
                                                                resultPageData[0]
                                                                    .classStart
                                                            }}
                                                            ~
                                                            {{
                                                                resultPageData[0]
                                                                    .classEnd
                                                            }}
                                                        </div>
                                                    </div>
                                                    <div class="col-auto"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Content Row -->
                                <div class="row">
                                    <!-- Earnings (Monthly) Card Example -->
                                    <div class="col-xl-3 col-md-6 mb-4">
                                        <div
                                            class="card border-left-primary shadow h-100 py-2"
                                        >
                                            <div class="card-body">
                                                <div
                                                    class="row no-gutters align-items-center"
                                                >
                                                    <div class="col mr-2">
                                                        <div
                                                            class="h5 mb-0 font-weight-bold text-gray-800"
                                                        >
                                                            강의 만족도
                                                        </div>
                                                    </div>
                                                    <div class="col-auto"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Earnings (Monthly) Card Example -->
                                    <div class="col-xl-9 col-md-6 mb-4">
                                        <div
                                            class="card border-left-info shadow h-100 py-2"
                                        >
                                            <div class="card-body">
                                                <div
                                                    class="row no-gutters align-items-center"
                                                >
                                                    <div class="col mr-2">
                                                        <div
                                                            class="text-xs font-weight-bold text-info text-uppercase mb-1 text-center"
                                                        >
                                                            {{ average }}%
                                                        </div>
                                                        <div
                                                            class="row no-gutters align-items-center"
                                                        >
                                                            <div
                                                                class="col-auto"
                                                            >
                                                                <div
                                                                    class="h5 mb-0 mr-3 font-weight-bold text-info-800"
                                                                ></div>
                                                            </div>
                                                            <div class="col">
                                                                <div
                                                                    class="progress progress-sm mr-2"
                                                                >
                                                                    <div
                                                                        class="progress-bar bg-info"
                                                                        role="progressbar"
                                                                        :style="[
                                                                            `width: ${average}%`
                                                                        ]"
                                                                        aria-valuemin="0"
                                                                        aria-valuemax="100"
                                                                    ></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
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
                        <div class="col-xl-12 col-lg-6 mb-4">
                            <!-- Project Card Example -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <!-- Content Row -->
                                    <div class="row">
                                        <!-- Pending Requests Card Example -->
                                        <div class="col-xl-4"></div>
                                        <div
                                            class="col-xl-4 col-lg-12 col-md-6 mb-4 "
                                        >
                                            <div
                                                class="card border-left-warning shadow h-100 py-2"
                                            >
                                                <div class="card-body">
                                                    <div
                                                        class="row no-gutters align-items-center"
                                                    >
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-gray-800"
                                                            >
                                                                항목별 평가
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
                                </div>
                                <div
                                    class="card-body"
                                    :key="i"
                                    v-for="(a, i) of result"
                                >
                                    <h4 class="small font-weight-bold">
                                        {{ a.resultName }}
                                        <span class="float-right"
                                            >평균
                                            {{ a.resultValue }}
                                            점</span
                                        >
                                    </h4>
                                    <div class="progress mb-4">
                                        <div
                                            class="progress-bar bg-info                                                 ]"
                                            role="progressbar"
                                            :style="[
                                                `width: ${a.resultValue}%`
                                            ]"
                                            aria-valuenow="20"
                                            aria-valuemin="0"
                                            aria-valuemax="100"
                                        ></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End of Main Content -->
            </div>
        </div>
    </div>
</template>
<script>
import AngleUpSticker from '../components/AngleUpSticker.vue'
export default {
    components: { angleupsticker: AngleUpSticker },
    name: '',

    data() {
        return {
            resultPageData: [
                {
                    teacherName: '서버에서 받은 생님 이름',
                    className: '서버에서 받은 강의 이름',
                    courseName: '서버에서 받은 과정 이름',
                    classPlace: '서버에서 받은 강의 장소',
                    classStart: '서버에서 받은 강의 시작일',
                    classEnd: '서버에서 받은 강의 종료일'
                }
            ],
            // 평균 다시해야함
            average1: '서버에서 받은 평균(0~100)',
            average: 40,

            result: [
                {
                    resultName: '서버에서 받아온 질문 1   ',
                    resultValue: 80
                },
                {
                    resultName: '서버에서 받아온 질문 2   ',
                    resultValue: 60
                },
                {
                    resultName: '서버에서 받아온 질문 3   ',
                    resultValue: 40
                },
                {
                    resultName: '서버에서 받아온 질문 4   ',
                    resultValue: 20
                },
                {
                    resultName: '서버에서 받아온 질문 5   ',
                    resultValue: 100
                }
            ]
        }
    },
    setup() {},
    created() {
        this.classId = 1
        this.getClass()
        this.getAnswerList()
    },
    mounted() {},
    unmounted() {},
    methods: {
        // 한 클래스의 데이터 가져오기
        // key = [class_id]
        // SQL : getClass
        async getClass() {
            const res = await this.$api('/api/getClass', 'post', {
                param: [this.classId]
            })

            this.teacherName = res[0].teacher_name
            this.className = res[0].name
            this.courseName = res[0].course_name
            this.classPlace = res[0].place
            this.classStart = res[0].start_date
            this.classEnd = res[0].end_date
            console.table(res)
        },

        // Report page에서 완료된 평가지의 상세 정보 가져오기
        // key = [class_id, class_id]
        // SQL : getAnswerList
        async getAnswerList() {
            const res = await this.$api('/api/getAnswerList', 'post', {
                param: [this.classId, this.classId]
            })

            console.table(res)
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
</style>
