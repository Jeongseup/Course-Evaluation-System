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
                                                            {{ teacherName }} 님
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
                                                            {{ className }}
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
                                                            {{ courseName }}
                                                        </div>
                                                        <div
                                                            class="text-xs font-weight-bold text-gray-800 text-uppercase mb-1"
                                                        >
                                                            강의 장소 :
                                                            {{ classPlace }}
                                                        </div>
                                                        <div
                                                            class="text-xs font-weight-bold text-gray-800 text-uppercase mb-1"
                                                        >
                                                            강의 시기:{{
                                                                classStart
                                                            }}
                                                            ~
                                                            {{ classEnd }}
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
            teacherName: null,
            className: null,
            courseName: null,
            classPlace: null,
            classStart: null,
            classEnd: null,

            // 평균 다시해야함
            averageTitle: '서버에서 받은 평균(0~100)',
            averageScore: 40,

            result: [
                {
                    resultName: '강사의 교수법은 적절했나요?'
                },
                {
                    resultName: '강사는 수업진행방식은 어땠나요?'
                },
                {
                    resultName: '강사는 전문성이 있었나요?'
                },
                {
                    resultName: '강사는 적절한 예시를 사용했나요?'
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
            const res = (
                await this.$api('/api/getClass', 'post', {
                    param: [this.classId]
                })
            )[0]

            this.teacher_name = res.teacher_name
            this.class_name = res.name
            this.course_name = res.course_name
            this.place = res.place
            this.start_date = res.start_date
            this.end_date = res.end_date
            console.log(res)
        },

        // Report page에서 완료된 평가지의 상세 정보 가져오기
        // key = [class_id, class_id]
        // SQL : getAnswerList
        async getAnswerList() {
            const res = await this.$api('/api/getAnswerList', 'post', {
                param: [this.classId, this.classId]
            })

            console.table(res)
            var resultScoreList = this.groupBy(res, 'question_id')
            console.log('result', resultScoreList)
        },

        groupBy(objectArray, property) {
            return objectArray.reduce(function(acc, obj) {
                var key = obj[property]
                if (!acc[key]) {
                    acc[key] = []
                }
                acc[key].push(obj)
                return acc
            }, {})
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
