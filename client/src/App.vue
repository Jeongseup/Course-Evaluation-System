<template>
    <div id="wrapper">
        <sidebar />

        <div id="content-wrapper" class="d-flex flex-column">
            <div id="content">
                <!-- Topbar -->
                <nav
                    class="
                navbar navbar-expand navbar-light
                bg-white
                topbar
                mb-4
                static-top
                shadow
                "
                >
                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a
                                class="nav-link dropdown-toggle"
                                href="#"
                                role="button"
                                data-toggle="dropdown"
                                aria-haspopup="true"
                                aria-expanded="false"
                            >
                                <font-awesome-icon icon="envelope" />
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter"
                                    >7</span
                                >
                            </a>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a
                                class="nav-link dropdown-toggle"
                                href="#"
                                role="button"
                                data-toggle="dropdown"
                                aria-haspopup="true"
                                aria-expanded="false"
                                >；
                                <span
                                    class="mr-2 d-none d-lg-inline text-gray-600 small"
                                    >장태진</span
                                >
                                <font-awesome-icon icon="user-tie" />
                            </a>
                        </li>
                    </ul>
                </nav>
                <!-- Main Content -->
                <router-view />
            </div>
        </div>
    </div>
</template>

<script>
import Sidebar from '@/components/layouts/Sidebar'
export default {
    components: { sidebar: Sidebar }
}
</script>

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
