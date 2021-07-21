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
                        <body class="align-center">
                            <div class="align-center-top">
                                <div class="top-title">
                                    <div class="top-title">
                                        <div style="margin:10px;">
                                            <h3 style="margin:10px;">
                                                고승원 강사님,<br />
                                                <br />
                                                부족한 저희를 정성껏
                                                지도해주셔서 정말 감사드립니다.
                                            </h3>
                                        </div>
                                        <br />
                                        <br />
                                        <div>
                                            <h5>
                                                기술만 가지고는 품격이 쌓이지
                                                않는다!<br />
                                                기술을 가지고 세상에 가치를
                                                돌려줄 수 있는 개발자, 참된
                                                사람이 되어야 한다.
                                            </h5>
                                        </div>
                                        <br />
                                    </div>
                                </div>
                            </div>
                            <p align="middle">
                                <iframe
                                    width="740"
                                    height="416"
                                    src="https://www.youtube.com/embed/tPEZmEz6tNg"
                                    title="YouTube video player"
                                    frameborder="0"
                                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                    allowfullscreen
                                ></iframe>
                            </p>
                            <!-- Page Wrapper -->
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
        return {}
    },
    computed: {
        user() {
            return this.$store.state.user
        }
    },
    setup() {},
    created() {},
    mounted() {
        // 클래스 스타트 최소값
        // 클라스 엔드 최대값
    },
    unmounted() {},
    methods: {
        // 조회한것 결과 나오도록
    }
}
</script>

<style scoped>
.top-title {
    margin: 20px auto;
    display: block;
    /* display: flex; */
    /* justify-content: space-between; */
}

.align-center-top {
    text-align: center;
}
/* .top-title_el {
    margin: 100px;
} */
</style>
