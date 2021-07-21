<template>
    <div id="wrapper">
        <sidebar v-if="bShow != 0 ? false : true" />
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- Main Content -->
            <topbar
                :userName="user.name"
                v-if="bShow == 2 ? true : bShow == 1 ? false : true"
            />
            <div id="content">
                <router-view @change-path="changePath" />
            </div>
        </div>
    </div>
</template>
<script>
import Sidebar from '@/layouts/Sidebar'
import Topbar from '@/layouts/Topbar'
export default {
    components: { sidebar: Sidebar, topbar: Topbar },
    computed: {
        user() {
            return this.$store.state.user
        }
    },
    data() {
        return {
            bShow: 0
        }
    },
    mounted() {},
    methods: {
        changePath(path) {
            // console.log(path)
            // console.log('user', this.user.type)
            if (path === '/') {
                this.bShow = 1
            } else if (this.user.type === 3) {
                this.bShow = 2
            } else {
                this.bShow = 0
            }
            console.log('path', this.bShow)
        }
    }
}
</script>
<style>
#app {
    font-family: Avenir, Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: center;
    color: #2c3e50;
}

#nav {
    padding: 30px;
}

#nav a {
    font-weight: bold;
    color: #2c3e50;
}

#nav a.router-link-exact-active {
    color: #42b983;
}
</style>
