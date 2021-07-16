<template>
    <div>
        <h1>Get list example</h1>
        <p>{{ list }}</p>
    </div>
</template>
<script>
export default {
    name: '',
    components: {},
    data() {
        return {
            list: [],
            firstName: '',
            lastName: '',
            email: ''
        }
    },
    setup() {},
    created() {},
    mounted() {
        this.getList()
    },
    unmounted() {},
    methods: {
        async getList() {
            // 'http://localhost:3000 + /api/getList
            this.list = await this.$api('/api/getUserList', 'get', {})
            console.log(this.list)
            // this.list = await this.$api('/api/getList', 'get', {})
        }

        // async createPerson() {
        //     const r = await this.$api('/api/createPerson', 'post', {
        //         param: [
        //             {
        //                 first_name: this.firstName,
        //                 last_name: this.lastName,
        //                 email: this.email
        //             }
        //         ]
        //     })
        //     this.getList()
        //     console.log(r)
        // },
        // async deletePerson(id) {
        //     const r = await this.$api('/api/deletePerson', 'post', {
        //         param: [id]
        //     })
        //     this.getList()
        //     console.log(r)
        // },
        // async updatePerson(idx) {
        //     const r = await this.$api('/api/updatePerson', 'post', {
        //         param: [
        //             {
        //                 first_name: this.list[idx].first_name,
        //                 last_name: this.list[idx].last_name,
        //                 email: this.list[idx].email
        //             },
        //             this.list[idx].id
        //         ]
        //     })
        //     this.getList()
        //     console.log(r)
        // }
    }
}
</script>
