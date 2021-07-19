<template>
    <!-- Sidebar -->
    <ul
        class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
        id="accordionSidebar"
    >
        <!-- Sidebar - Brand -->
        <a
            class="sidebar-brand d-flex align-items-center justify-content-center"
            href="index.html"
        >
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
            </div>
            <div class="sidebar-brand-text mx-3">강사의 품격</div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0" />

        <!-- Nav Item - Dashboard -->
        <li class="nav-item">
            <router-link to="/list" style="text-decoration: none;">
                <p style="color:white">HOME</p>
            </router-link>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider" />

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a
                class="nav-link collapsed"
                href="#"
                data-toggle="collapse"
                data-target="#collapseTwo"
                aria-expanded="true"
                aria-controls="collapseTwo"
            >
                <i class="fas fa-chalkboard-teacher"></i>
                <router-link to="/classtable" style="text-decoration: none;">
                    <p style="color:white">과정등록</p>
                </router-link>
            </a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider" />

        <!-- Nav Item - Utilities Collapse Menu -->
        <li class="nav-item">
            <a
                class="nav-link collapsed"
                href="#"
                data-toggle="collapse"
                data-target="#collapseUtilities"
                aria-expanded="true"
                aria-controls="collapseUtilities"
            >
                <i class="far fa-edit"></i>
                <router-link to="/questiontable" style="text-decoration: none;">
                    <p style="color:white">평가지 생성</p>
                </router-link>
            </a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider" />

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item active">
            <a
                class="nav-link"
                href="#"
                data-toggle="collapse"
                data-target="#collapsePages"
                aria-expanded="true"
                aria-controls="collapsePages"
            >
                <router-link to="/sidetest" style="text-decoration: none;">
                    <i class="far fa-list-alt"></i>

                    <span style="color:white">평가지 결과</span>
                </router-link>
            </a>
            <div
                id="collapsePages"
                class="collapse show"
                aria-labelledby="headingPages"
                data-parent="#accordionSidebar"
            ></div>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block" />
    </ul>
    <!-- End of Sidebar -->
</template>
