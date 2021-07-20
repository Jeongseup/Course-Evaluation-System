<template>
    <div class="container-fluid">
        <!-- Topbar -->

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">
                    <!-- Content Row -->
                    <div class="row">
                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div
                                class="card border-left-primary shadow h-100 py-2"
                            >
                                <div class="card-body">
                                    <div
                                        class="row no-gutters align-items-center"
                                    >
                                        <div class="col mr-2">
                                            <div
                                                class="text-xs font-weight-bold text-primary text-uppercase mb-1"
                                            >
                                                <font-awesome-icon
                                                    icon="chalkboard-teacher"
                                                />

                                                과정 이름
                                            </div>
                                            <div
                                                class="h5 mb-0 font-weight-bold text-gray-800"
                                            >
                                                <select name="">
                                                    <option value=""
                                                        >과정 선택</option
                                                    >
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-auto"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div
                                class="card border-left-primary shadow h-100 py-2"
                            >
                                <div class="card-body">
                                    <div
                                        class="row no-gutters align-items-center"
                                    >
                                        <div class="col mr-2">
                                            <div
                                                class="text-xs font-weight-bold text-primary text-uppercase mb-1"
                                            >
                                                <font-awesome-icon
                                                    icon="file-signature"
                                                />

                                                강의 이름
                                            </div>
                                            <div
                                                class="h5 mb-0 font-weight-bold text-gray-800"
                                            >
                                                <select name="">
                                                    <option value=""
                                                        >강의 선택</option
                                                    >
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-auto"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div
                                class="card border-left-primary shadow h-100 py-2"
                            >
                                <div class="card-body">
                                    <div
                                        class="row no-gutters align-items-center"
                                    >
                                        <div class="col mr-2">
                                            <div
                                                class="text-xs font-weight-bold text-primary text-uppercase mb-1"
                                            >
                                                <font-awesome-icon
                                                    icon="user-edit"
                                                />
                                                강사 명
                                            </div>
                                            <div
                                                class="h5 mb-0 font-weight-bold text-gray-800"
                                            >
                                                <select name="">
                                                    <option value=""
                                                        >강사 선택</option
                                                    >
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-auto"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div
                                class="card border-left-primary shadow h-100 py-2"
                            >
                                <div class="card-body">
                                    <div
                                        class="row no-gutters align-items-center"
                                    >
                                        <div class="col mr-2">
                                            <div
                                                class="text-xs font-weight-bold text-primary text-uppercase mb-1"
                                            >
                                                <font-awesome-icon
                                                    icon="calendar-day"
                                                />

                                                강의 시기
                                            </div>
                                            <div
                                                class="h5 mb-0 font-weight-bold text-gray-800"
                                            >
                                                <select name="">
                                                    <option value=""
                                                        >강의 시기 선택</option
                                                    >
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-auto"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </h6>
            </div>
        </div>

        <!-- Content Row -->
        <div class="row">
            <!-- Content Column -->
            <div class="col-xl-12 col-lg-6 mb-4">
                <!-- Project Card Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <!-- Content Row -->
                        <div class="row">
                            <!-- Pending Requests Card Example -->
                            <!-- <div class="col-xl-4"></div> -->
                            <div class="col-xl-12 col-lg-12 col-md-6 mb-4 ">
                                <div
                                    class="card border-left-warning shadow h-100 py-2"
                                >
                                    <div class="card-body">
                                        <div
                                            class="row no-gutters align-items-center"
                                        >
                                            <div class="col mr-2">
                                                <div
                                                    class="h5 mb-0 font-weight-bold text-gray-800"
                                                >
                                                    <h1
                                                        style="text-align: center;"
                                                    >
                                                        평가 리스트
                                                    </h1>
                                                    <!-- 평가 리스트 -->
                                                </div>
                                            </div>
                                            <div class="col-auto"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 카드 끝-->
                        </div>
                        <!-- Content Row end -->
                    </div>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">
                                평가 리스트
                            </h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table
                                    class="table table-bordered"
                                    id="dataTable"
                                    width="100%"
                                    cellspacing="0"
                                >
                                    <thead>
                                        <tr>
                                            <th>과정 이름</th>
                                            <th>강의 이름</th>
                                            <th>강사 이름</th>
                                            <th>강의 기간</th>
                                            <th>선택</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>과정 이름</th>
                                            <th>강의 이름</th>
                                            <th>강사 이름</th>
                                            <th>강의 기간</th>
                                            <th>선택</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <td>Tiger Nixon</td>
                                            <td>
                                                System Architect
                                            </td>
                                            <td>Edinburgh</td>
                                            <td>61</td>
                                            <td>
                                                <button>
                                                    선택
                                                </button>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <!-- 항목별 평가 있는 공간 -->
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'Home',
    computed: {
        user() {
            return this.$store.state.user
        }
    }
}
</script>
