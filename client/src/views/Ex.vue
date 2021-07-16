<template>
    <div>
        <form>
            <table>
                <tr>
                    <th>
                        <div style="background-color: black; color: white;">
                            강사명 : {{ teacherName }}
                        </div>
                    </th>
                    <th><div>강의 이름 : 강사의 품격</div></th>
                    <th>
                        <div>
                            강의 주최 기관 : 한경닷컴 <br />
                            강의 장소 : 205호 강의실 <br />
                            강의 시기:2021.07.13 ~ 2021.12.25
                        </div>
                    </th>
                </tr>
                <tr>
                    <td><div>강의 만족도</div></td>
                    <td colspan="2">
                        <div style="background-color: yellow; width: 200px">
                            a
                        </div>

                        <div style="background-color: white; width: 20px">
                            a
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="3"><div>항목별 평가</div></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <div>
                            1번 질문 <br />
                            <div style="background-color: yellow; width: 200px">
                                a
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    a
                </tr>
                <tr>
                    <td colspan="3">
                        <div>
                            2번 질문 <br />
                            <div style="background-color: yellow; width: 200px">
                                a
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    a
                </tr>
                <tr>
                    <td colspan="3">
                        <div>
                            3번 질문 <br />
                            <input
                                type="image"
                                src="https://cdn-skill.splashmath.com/panel-uploads/GlossaryTerm/b2f3475d17de4e72bd5a561d1980553a/1559810829_line-on-centimeter-scale.png"
                                alt=""
                            />
                            <div style="background-color: yellow; width: 200px">
                                a
                            </div>
                        </div>
                    </td>
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
            teacherName: '장태진'
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
    flex-wrap: wrap;
}
</style>
