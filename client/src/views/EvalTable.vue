<template>
    <div>
        <main class="mt-3">
            <div class="container">
                <div class="row g-3">
                    <div class="col-xl-3 col-lg-4 col-md-6">
                        <select
                            class="form-select m-3"
                            aria-label="Default select example"
                        >
                            <option selected>2021년 혁신성장 블록체인반</option>
                            <option value="1"
                                >2021년 혁신성장 빅데이터반</option
                            >
                            <option value="2">2021년 혁신성장 VR기술반</option>
                        </select>

                        <div>
                            여기는 해당과정 설명하는 곳입니다. 블록체인 기술을
                            이용한 .... 개발자 양성을 위한 프로젝트입니다.
                        </div>
                        <!-- 과정추가_card -->
                        <div class="card m-3" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">
                                    HTML <br />고승원 강사
                                </h5>
                                <div
                                    class="d-flex justify-content-between align-items-center"
                                >
                                    <div
                                        class="d-grid gap-2 col-6 mx-auto"
                                        role="group"
                                    >
                                        <button
                                            type="button"
                                            class="btn btn-primary"
                                        >
                                            <router-link
                                                to="/test"
                                                style="text-decoration: none;"
                                            >
                                                <p style="color:white;">
                                                    들어가기
                                                </p>
                                            </router-link>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card m-3" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">
                                    JavaScript <br />고승원 강사
                                </h5>
                                <div
                                    class="d-flex justify-content-between align-items-center"
                                >
                                    <div
                                        class="d-grid gap-2 col-6 mx-auto"
                                        role="group"
                                    >
                                        <button
                                            type="button"
                                            class="btn btn-primary"
                                        >
                                            <router-link
                                                to="/test"
                                                style="text-decoration: none;"
                                            >
                                                <p style="color:white;">
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
        </main>
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
