<template>
    <div>
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
                        <h5 class="modal-title" id="staticBackdropLabel">
                            수강생 선택
                        </h5>
                        <button
                            type="button"
                            class="close"
                            data-dismiss="modal"
                            aria-label="Close"
                        >
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <!-- 수강생들이 들어갈 공간 -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">
                                    <!-- 우측으로 생성 -->
                                    <div class="row">
                                        <!-- 수강생 -->
                                        <div
                                            class="col-xl-3 col-md-6 mb-4"
                                            :key="i"
                                            v-for="(a, i) in studentName"
                                        >
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
                                                                수강생
                                                            </div>
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-gray-800"
                                                            >
                                                                {{ a }}
                                                                <input
                                                                    type="checkbox"
                                                                    checked
                                                                />
                                                            </div>
                                                        </div>
                                                        <div class="col-auto">
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
                        <button type="button" class="btn btn-primary">
                            확인
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <input
            type="image"
            src="http://www.hkbs.co.kr/news/photo/202104/628798_374207_2710.png"
            alt=""
        />
        <br />

        안녕
    </div>
</template>

<script>
export default {
    name: '',
    components: {},
    data() {
        return {
            modal2: false,
            // modal1: false
            studentName: ['장태진', '장태진1', '장태진2', '장태진3', '장태진4']
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
</style>
