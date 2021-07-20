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
                                                    <select
                                                        class="form-select m-3"
                                                        aria-label="Default select example"
                                                        v-model="courseId"
                                                        @click="
                                                            getClassList(
                                                                courseId
                                                            )
                                                        "
                                                    >
                                                        <option
                                                            :key="i"
                                                            :value="
                                                                item.course_id
                                                            "
                                                            v-for="(item,
                                                            i) in courseList"
                                                        >
                                                            현재 선택된 과정은
                                                            {{ item.name }}
                                                            입니다.
                                                        </option>
                                                    </select>

                                                    <!-- eval_table -> eval_status  -->
                                                    <div
                                                        class="card m-3"
                                                        style="width: 18rem;"
                                                        :key="i"
                                                        v-for="(item,
                                                        i) in classList"
                                                    >
                                                        <div
                                                            v-if="
                                                                item.eval_status_id ==
                                                                    1
                                                            "
                                                            class="card-body"
                                                        >
                                                            <h5
                                                                class="card-title"
                                                            >
                                                                강의명 :
                                                                {{ item.name }}
                                                                <br />
                                                                강사명 :
                                                                {{
                                                                    item.teacher_name
                                                                }}
                                                            </h5>
                                                            <div
                                                                class="row g-3"
                                                            >
                                                                <div
                                                                    class="col-xl-3 col-lg-4 col-md-6"
                                                                >
                                                                    <button
                                                                        type="button"
                                                                        class="btn btn-success btn-lg"
                                                                        style="[color:white; text-decoration:none; width:250px;]"
                                                                        @click="
                                                                            goToEvalCreatePage(
                                                                                item.class_id
                                                                            )
                                                                        "
                                                                    >
                                                                        {{
                                                                            item.eval_status_name
                                                                        }}
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div
                                                            v-else-if="
                                                                item.eval_status_id ==
                                                                    2
                                                            "
                                                            class="card-body"
                                                        >
                                                            <h5
                                                                class="card-title"
                                                            >
                                                                강의명 :
                                                                {{ item.name }}
                                                                <br />
                                                                강사명 :
                                                                {{
                                                                    item.teacher_name
                                                                }}
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
                                                                        style="[color:white; text-decoration:none; width:250px;]"
                                                                        @click="
                                                                            goToEvalCreatePage(
                                                                                item.class_id
                                                                            )
                                                                        "
                                                                    >
                                                                        {{
                                                                            item.eval_status_name
                                                                        }}
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div
                                                            v-else-if="
                                                                item.eval_status_id ==
                                                                    3
                                                            "
                                                            class="card-body"
                                                        >
                                                            <h5
                                                                class="card-title"
                                                            >
                                                                강의명 :
                                                                {{ item.name }}
                                                                <br />
                                                                강사명 :
                                                                {{
                                                                    item.teacher_name
                                                                }}
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
                                                                        style="[color:white; text-decoration:none; width:250px;]"
                                                                        @click="
                                                                            goToEvalCreatePage(
                                                                                item.class_id
                                                                            )
                                                                        "
                                                                    >
                                                                        {{
                                                                            item.eval_status_name
                                                                        }}
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div
                                                            v-else
                                                            class="card-body"
                                                        >
                                                            <h5
                                                                class="card-title"
                                                            >
                                                                강의명 :
                                                                {{ item.name }}
                                                                <br />
                                                                강사명 :
                                                                {{
                                                                    item.teacher_name
                                                                }}
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
                                                                        style="[color:white; text-decoration:none; width:250px;]"
                                                                        @click="
                                                                            goToEvalCreatePage(
                                                                                item.class_id
                                                                            )
                                                                        "
                                                                    >
                                                                        {{
                                                                            item.eval_status_name
                                                                        }}
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
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
            courseId: null,
            courseList: [],
            classList: []
        }
    },
    computed: {
        user() {
            return this.$store.state.user
        }
    },
    setup() {},
    created() {
        this.courseId = this.$route.query.courseId
        // console.log(this.courseId)
        this.getCourseList()
        this.getClassList()
    },
    mounted() {},
    unmounted() {},
    methods: {
        async getCourseList() {
            this.courseList = await this.$api('/api/courseList', 'post', {
                param: [this.user.email]
            })
        },
        async getClassList() {
            this.classList = await this.$api('/api/classList', 'post', {
                param: [this.courseId]
            })
        },
        goToEvalCreatePage(classId) {
            this.$router.push({
                path: '/questiontable',
                query: { classId: classId, courseId: this.courseId }
            })
        }
    }
}
</script>
