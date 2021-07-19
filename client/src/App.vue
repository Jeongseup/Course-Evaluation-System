<template>
    <div id="nav">
        <font-awesome-icon icon="user-secret" />
    </div>

    <div id="nav">
        <font-awesome-icon icon="user-secret" />
        <router-link to="/"> Home</router-link> |
        <font-awesome-icon icon="user-secret" />
        <router-link to="/sidetest"> Template Test Page</router-link> |
        <font-awesome-icon icon="user-secret" />
        <router-link to="/mocktest"> Mockserver Test Page</router-link> |
        <font-awesome-icon icon="user-secret" />
        <router-link to="/dbtest"> Database Test Page</router-link>
    </div>
    <router-view />
</template>

<style>
/* googlefont */
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothiccoding.css);

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
