<template>
    <div>
        <div class="container">
            <section
                id="main"
                class="mx-auto my-5 py-5 px-3"
                style="background-color:pink"
                border-radius="20px;"
            >
                <h1>평가지입니다</h1>
                <div class="col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
                    <!-- <img src="./img/main.png" alt="mainImage" class="img-fluid" /> -->
                </div>
                <p>
                    평가지 어쩌고저쩌고 <br />
                    평가지 어쩌고저쩌고
                </p>
                <!-- <button
                    type="button"
                    class="btn btn-outline-danger mt-3"
                    onclick="js:begin()"
                >
                    시작하기
                </button> -->
                <!-- question_table 사용 -->
                <div class="form-check form-check-inline">
                    <input
                        class="form-check-input"
                        type="radio"
                        name="inlineRadioOptions"
                        id="inlineRadio1"
                        value="option1"
                    />
                    <label class="form-check-label" for="inlineRadio1"
                        >매우그렇다</label
                    >
                </div>
                <div class="form-check form-check-inline">
                    <input
                        class="form-check-input"
                        type="radio"
                        name="inlineRadioOptions"
                        id="inlineRadio2"
                        value="option2"
                    />
                    <label class="form-check-label" for="inlineRadio2"
                        >그렇다</label
                    >
                </div>
                <div class="form-check form-check-inline">
                    <input
                        class="form-check-input"
                        type="radio"
                        name="inlineRadioOptions"
                        id="inlineRadio2"
                        value="option2"
                    />
                    <label class="form-check-label" for="inlineRadio2"
                        >보통이다</label
                    >
                </div>
                <div class="form-check form-check-inline">
                    <input
                        class="form-check-input"
                        type="radio"
                        name="inlineRadioOptions"
                        id="inlineRadio2"
                        value="option2"
                    />
                    <label class="form-check-label" for="inlineRadio2"
                        >그렇지않다</label
                    >
                </div>
                <div class="form-check form-check-inline">
                    <input
                        class="form-check-input"
                        type="radio"
                        name="inlineRadioOptions"
                        id="inlineRadio2"
                        value="option2"
                    />
                    <label class="form-check-label" for="inlineRadio2"
                        >전혀그렇지않다</label
                    >
                </div>
            </section>
        </div>
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
<style scoped></style>
