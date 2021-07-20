<template>
    <div>
        <router-view />
    </div>
</template>

<script>
export default {}
</script>

<style>
/* googlefont */
/* @import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css); */
/* @import url(http://fonts.googleapis.com/earlyaccess/nanumgothiccoding.css); */

#app {
    font-family: 'Nanum Gothic Coding', 'Nanum Gothic', Avenir, sans-serif;
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
