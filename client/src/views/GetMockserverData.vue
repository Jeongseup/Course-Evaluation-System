<template>
    <div>
        <div>
            <h1>Here is Mockserver request test page.</h1>
        </div>
        <div>
            {{ evaluationPaperList[0] }}
        </div>
        <div>
            {{ evaluationPaperList[1] }}
        </div>
        <div>
            {{ evaluationPaperList[2] }}
        </div>
    </div>
</template>

<script>
import axios from 'axios'
export default {
    name: '',
    components: {},
    data() {
        return {
            evaluationPaperList: [],
            url:
                // 'https://021382de-6838-47cd-b6bb-3b0fc09fa7c4.mock.pstmn.io/getEvaluationPaperList'
                'https://ca6ec645-a4d6-4572-82a1-6768e39df010.mock.pstmn.io/getEvaluationPaperList'
        }
    },
    setup() {},
    created() {},
    mounted() {
        this.getEvaluationPaper()
    },
    unmounted() {},
    methods: {
        async getEvaluationPaper() {
            this.evaluationPaperList = (
                await axios.get(this.url)
            ).data.evaluation_paper
            console.log(this.evaluationPaperList)
        }
    }
}
</script>
