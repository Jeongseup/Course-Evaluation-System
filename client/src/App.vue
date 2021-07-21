<template>
    <div id="wrapper">
        <sidebar />
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- Main Content -->
            <topbar :userName="user.name" />
            <div id="content">
                <router-view />
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
