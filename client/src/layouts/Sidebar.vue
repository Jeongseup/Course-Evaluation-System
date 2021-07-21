<template>
    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion">
        <!-- Sidebar - Brand -->
        <a
            class="sidebar-brand d-flex align-items-center justify-content-center"
            href="#"
        >
            <div class="sidebar-brand-icon rotate-n-15">
                <font-awesome-icon icon="laugh-wink" />
            </div>
            <div class="sidebar-brand-text mx-3">강사의 품격</div>
        </a>
        <!-- Divider -->
        <hr class="sidebar-divider my-0" />

        <!-- Nav Item - Dashboard -->
        <li class="nav-item">
            <a class="nav-link" @click="goToListPage()">
                <!-- <router-link to="/list" style="text-decoration: none;"> -->
                <font-awesome-icon icon="home" />
                <span style="color:white"> HOME</span>
            </a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider" />
        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed">
                <font-awesome-icon icon="chalkboard-teacher" />
                <router-link to="/coursetable" style="text-decoration: none;">
                    <span style="color:white"> 과정등록</span>
                </router-link>
            </a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider" />
        <!-- Nav Item - Utilities Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed">
                <!-- <router-link to="/questiontable" style="text-decoration: none;"> -->

                <font-awesome-icon icon="edit" />
                <router-link to="/evaltable" style="text-decoration: none;">
                    <span style="color:white"> 평가지 생성</span>
                </router-link>
            </a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider" />
        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#">
                <font-awesome-icon icon="clipboard-list" />
                <router-link to="/list" style="text-decoration: none;">
                    <span style="color:white"> 평가 리스트</span>
                </router-link>
            </a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider" />
        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#">
                <font-awesome-icon icon="list-alt" />
                <router-link to="/sidetest" style="text-decoration: none;">
                    <span style="color:white"> 평가지 결과</span>
                </router-link>
            </a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block" />
    </ul>
    <!-- End of Sidebar -->
</template>
<script>
export default {
    methods: {
        goToListPage() {
            this.$router.push({
                path: '/list'
            })
        }
    }
}
</script>
