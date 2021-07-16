<template>
    <div>
        <form>
            <table>
                <tr>
                    <th>
                        <div
                            class="col-xl-5"
                            style="background-color: black; color: white;"
                        >
                            강사명 : {{ teacherName }}
                        </div>
                    </th>
                    <th>
                        <div
                            class="col-xl-5"
                            style="background-color: black; color: white;"
                        >
                            강의 이름 : {{ className }}
                        </div>
                    </th>
                    <th>
                        <div style="text-align: left;">
                            강의 주최 기관 : {{ courseName }} <br />
                            강의 장소 : {{ classPlace }} <br />
                            강의 시기:{{ classStart }} ~ {{ classEnd }}
                        </div>
                    </th>
                </tr>
                <tr>
                    <td>
                        <div
                            class="col-xl-5"
                            style="background-color: black; color: white;"
                        >
                            강의 만족도
                        </div>
                    </td>
                    <td class="row">
                        <div :class="[`col-xl-${average} bg-info`]">
                            {{ average1 }}
                        </div>
                        <div :class="[`col-xl-${10 - average} bg-primary`]">
                            10 - {{ average1 }}
                        </div>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <div
                            class="col-xl-5"
                            style="background-color: black; color: white;"
                        >
                            항목별 평가
                        </div>
                    </td>
                    <td></td>
                </tr>

                <!-- v-for  -->

                <!-- 평가 결과 데이터를 서버에서 받아 result 부분에 넣어야한다. -->
                <tr :key="i" v-for="(a, i) of result">
                    <td></td>
                    <td class="row">
                        <div>{{ a.resultName }} <br /></div>
                    </td>

                    <td class="row">
                        <div :class="[`col-xl-${a.resultValue} bg-info`]">
                            질문에 대한 평균 점수
                        </div>
                        <div
                            :class="[`col-xl-${10 - a.resultValue} bg-primary`]"
                        >
                            10 - 질문에 대한 평균 점수
                        </div>
                    </td>
                    <td></td>
                </tr>
            </table>
        </form>
    </div>
</template>
<script>
export default {
    name: '',

    components: {},
    data() {
        return {
            teacherName: '서버에서 받은 선생님 이름',

            className: '서버에서 받은 강의 이름',
            courseName: '서버에서 받은 과정 이름',
            classPlace: '서버에서 받은 강의 장소',
            classStart: '서버에서 받은 강의 시작일',
            classEnd: '서버에서 받은 강의 종료일',
            average1: '서버에서 받은 평균(0~10)',
            average: 4,

            result: [
                {
                    resultName: '서버에서 받아온 질문 1   ',
                    resultValue: 8
                },
                {
                    resultName: '서버에서 받아온 질문 2   ',
                    resultValue: 6
                }
            ]
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
table {
    width: 100%;
}
table,
th,
td {
    /* background-color: yellow; */
}
th {
    width: 33%;
    background-color: gray;
    text-align: center;
}
td {
    background-color: gray;
    /* flex-wrap: wrap; */
}
</style>
