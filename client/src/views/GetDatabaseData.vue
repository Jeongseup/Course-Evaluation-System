<template>
    <div>
        <h1>Get Maria DB Callback Test</h1>
        <p>{{ userList }}</p>
    </div>
</template>
<script>
export default {
    name: '',
    components: {},
    data() {
        return {
            userList: []
        }
    },
    setup() {},
    created() {},
    mounted() {
        this.getTable()
    },
    unmounted() {},
    methods: {
        //  async $api function argument (url, method, data)
        // 'http://localhost:3000 + /api/getList

        async getTable() {
            this.list = await this.$api('/api/getUserTable', 'get', {})

            console.log(this.list)
        }
    }
}
</script>
