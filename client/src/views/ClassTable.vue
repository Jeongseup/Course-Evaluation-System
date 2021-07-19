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
                                                    <div
                                                        class="card-header py-3"
                                                        style="margin:30px;  btn float-right;"
                                                    >
                                                        <a
                                                            href="#"
                                                            class="btn btn-warning btn-icon-split "
                                                        >
                                                            <span class="text">
                                                                + 새 과정
                                                                추가</span
                                                            >
                                                        </a>
                                                    </div>

                                                    <!-- 과정추가_card -->
                                                    <div
                                                        class="card"
                                                        style="width: 18rem;"
                                                    >
                                                        <div class="card-body">
                                                            <h5
                                                                class="card-title"
                                                            >
                                                                2021년 혁신성장
                                                                블록체인반
                                                            </h5>
                                                            <div
                                                                class="d-flex justify-content-between align-items-center"
                                                            >
                                                                <div
                                                                    class="btn-group"
                                                                    role="group"
                                                                >
                                                                    <button
                                                                        type="button"
                                                                        class="btn  btn-sm btn-dark"
                                                                    >
                                                                        <router-link
                                                                            to="/evaltable"
                                                                            style="text-decoration: none;"
                                                                        >
                                                                            <p
                                                                                style="color:white;"
                                                                            >
                                                                                들어가기
                                                                            </p>
                                                                        </router-link>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
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
</template>

<script>
import Sidebar from '../components/layouts/Sidebar.vue'
import Topbar from '../components/layouts/Topbar.vue'
export default {
    name: '',
    components: { sidebar: Sidebar, topbar: Topbar },
    data() {
        return {
            sampleData: ''
        }
    },
    setup() {},
    created() {},
    mounted() {},
    unmounted() {},
    methods: {}
}
</script>
