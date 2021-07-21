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
            <a class="nav-link" href="/home">
                <!-- <router-link to="/list" style="text-decoration: none;"> -->
                <font-awesome-icon icon="home" />
                <span style="color:white"> HOME</span>
            </a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider" />
        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="/coursetable">
                <font-awesome-icon icon="chalkboard-teacher" />

                <span style="color:white"> 과정조회</span>
            </a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider" />
        <!-- Nav Item - Utilities Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="/evaltable">
                <!-- <router-link to="/questiontable" style="text-decoration: none;"> -->

                <font-awesome-icon icon="edit" />

                <span style="color:white"> 평가지 관리</span>
            </a>
        </li>
        <!-- Divider -->
        <hr class="sidebar-divider" />
        <!-- Nav Item - Utilities Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="/evaltable">
                <!-- <router-link to="/questiontable" style="text-decoration: none;"> -->

                <font-awesome-icon icon="address-card" />

                <span style="color:white"> 수강생 조회</span>
            </a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider" />
        <!-- Nav Item - Pages Collapse Menu -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="/list">
                <font-awesome-icon icon="list-alt" />

                <span style="color:white"> 평가 완료 리스트</span>
            </a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider" />
    </ul>
    <!-- End of Sidebar -->
</template>
<script>
export default {
    methods: {}
}
</script>
