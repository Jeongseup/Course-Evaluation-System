<template>
    <div>
        <!-- <a class="menu-toggle rounded" href="#"><i class="fas fa-bars"></i></a>
        <nav id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand"><a href="#page-top">Start Bootstrap</a></li>
                <li class="sidebar-nav-item"><a href="#page-top">Home</a></li>
                <li class="sidebar-nav-item"><a href="#about">About</a></li>
                <li class="sidebar-nav-item"><a href="#services">Services</a></li>
                <li class="sidebar-nav-item"><a href="#portfolio">Portfolio</a></li>
                <li class="sidebar-nav-item"><a href="#contact">Contact</a></li>
            </ul>
        </nav> -->

        <!-- <div class="menu-toggle rounded">
            <button>
                <font-awesome-icon icon="edit" />
            </button>
            <button>
                <font-awesome-icon icon="edit" />
            </button>
            <button>
                <font-awesome-icon icon="edit" />
            </button>
        </div> -->

        <!-- body 바로 아래에 추가 스티커 -->
        <div class="menu-toggle rounded">
            <!-- 질문추가 -->

            <div><font-awesome-icon icon="file-signature" /></div>
            <!-- 섹션추가 -->
            <div><font-awesome-icon icon="file-import" /></div>
            <!-- 이미지추가 -->
            <div><font-awesome-icon icon="images" /></div>
            <!-- 저장 -->
            <div><font-awesome-icon icon="save" /></div>
        </div>
        <!-- 스티커 끝 -->
    </div>
</template>
<script>
export default {
    name: '',
    components: {},
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

<style scoped>
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
.menu-toggle:hover {
    background: #343a40;
}
</style>
