<template>
    <div id="content">
        <!-- 바디에 Angle up 스티커 추가 -->
        <angleupsticker />
        <div class="content">
            <!-- Topbar -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">
                        <!-- Content Row -->
                        <div class="row">
                            <!-- Earnings (Monthly) Card Example -->
                            <courselistcard :courseList="CompleteClassList" />
                            <classlistcard :courseList="CompleteClassList" />
                            <teacherlistcard :courseList="CompleteClassList" />
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
                                <!-- <div class="col-xl-4"></div> -->
                                <div class="col-xl-12 col-lg-12 col-md-6 mb-4 ">
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
                                                        <h4
                                                            style="text-align: center;"
                                                        >
                                                            '{{ user.name }}'
                                                            님의 평가 리스트
                                                        </h4>
                                                        <!-- 평가 리스트 -->
                                                    </div>
                                                </div>
                                                <div class="col-auto"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 카드 끝-->
                            </div>
                            <!-- Content Row end -->
                        </div>
                        <!-- DataTales Example -->
                        <!-- 테이블 -->
                        <tablelistcard :courseList="CompleteClassList" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import AngleUpSticker from '../components/AngleUpSticker.vue'
import CourseListCard from '../components/CourseListCard.vue'
import ClassListCard from '../components/ClassListCard.vue'
import TeacherListCard from '../components/TeacherListCard.vue'
import TableListCard from '../components/TableListCard.vue'

export default {
    name: '',
    components: {
        angleupsticker: AngleUpSticker,
        courselistcard: CourseListCard,
        classlistcard: ClassListCard,
        teacherlistcard: TeacherListCard,
        tablelistcard: TableListCard
    },
    data() {
        return {
            CompleteClassList: [],
            listPageData: []
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
        this.getCompleteClassList()
    },
    unmounted() {},
    methods: {
        // list page에서 완료된 평가지 가져오기
        // key = [user_email]
        // getCompleteClassList
        async getCompleteClassList() {
            console.log(this.user.email)
            var CompleteClassList = await this.$api(
                '/api/getCompleteClassList',
                'post',
                {
                    param: [this.user.email]
                }
            )
            // var startDate = CompleteClassList.start_date
            // console.log(startDate)

            // var endDate = CompleteClassList.end_date
            // console.log(endDate)

            // console.table(CompleteClassList)
            this.CompleteClassList = CompleteClassList
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
