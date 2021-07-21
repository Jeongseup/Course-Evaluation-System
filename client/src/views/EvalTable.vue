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
                                            <!-- <div class="row g-3">
                                                <div
                                                    class="col-xl-3 col-lg-4 col-md-6"
                                                > -->
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
                                            <!-- 클래스 카드가 들어갈 공간 -->
                                            <div class="card shadow mb-4 ">
                                                <div class="card-header py-4">
                                                    <div class="row ">
                                                        <!-- Class Card Component  -->
                                                        <classcard
                                                            :classList="
                                                                classList
                                                            "
                                                            :courseId="courseId"
                                                        />
                                                        <!-- 컴포넌트 끝 -->
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- 클래스 카드가 들어갈 공간 끝 -->
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
import Sidebar from '../layouts/Sidebar.vue'
import Topbar from '../layouts/Topbar.vue'
import ClassCard from '../components/ClassCard.vue'
export default {
    name: '',
    components: { sidebar: Sidebar, topbar: Topbar, classcard: ClassCard },
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
