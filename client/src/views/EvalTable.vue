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
                                            <!-- <div class="row g-4"> -->
                                            <!-- <div
                                                class="col-xl-3 col-md-6 mb-4"
                                            > -->
                                            <!--과정_select_Box_Start -->
                                            <div class="dropdown">
                                                <select
                                                    name="one"
                                                    class="dropdown-select"
                                                    aria-label="Default select example"
                                                    v-model="courseId"
                                                    @click="
                                                        getClassList(courseId)
                                                    "
                                                >
                                                    <option
                                                        :key="i"
                                                        :value="item.course_id"
                                                        v-for="(item,
                                                        i) in courseList"
                                                    >
                                                        현재 선택된 과정은
                                                        {{ item.name }}
                                                        입니다.
                                                    </option>
                                                </select>
                                            </div>
                                            <!--과정_select_Box_End -->

                                            <div class="card shadow mb-4 ">
                                                <div class="card-header py-4">
                                                    <div class="row ">
                                                        <!-- <div
                                                            class="col-xl-4 col-md-12 mb-4"
                                                        > -->
                                                        <!-- <div> -->
                                                        <div
                                                            class="card border-bottom-primary shadow h-100 py-2"
                                                            style="width: 15rem; margin:auto"
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
                                                                    {{
                                                                        item.name
                                                                    }}
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
                                                                            class="btn btn-success btn-sm"
                                                                            style="[color:white; text-decoration:none; width:150px;]"
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
                                                                    {{
                                                                        item.name
                                                                    }}
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
                                                                            class="btn btn-info btn-sm"
                                                                            style="[color:white; text-decoration:none; width:150px;]"
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
                                                                    {{
                                                                        item.name
                                                                    }}
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
                                                                            class="btn btn-danger btn-sm"
                                                                            style="[color:white; text-decoration:none; width:150px;]"
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
                                                                    {{
                                                                        item.name
                                                                    }}
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
                                                                            class="btn btn-primary btn-sm"
                                                                            style="[color:white; text-decoration:none; width:150px;]"
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
                                                        <!-- </div> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- </div> -->
                                            <!-- </div> -->
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
<style scoped>
/* .container {
    margin: 80px auto;
    width: 400px;
    text-align: center;
} */
.container > .dropdown {
    /* margin: 0 20px; */
    vertical-align: top;
}
.dropdown {
    display: inline-block;
    position: relative;
    overflow: hidden;
    height: 28px;
    width: 320px;
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
