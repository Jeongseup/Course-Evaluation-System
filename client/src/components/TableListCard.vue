<template>
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
                            <th>
                                과정 이름
                            </th>
                            <th>
                                강의 이름
                            </th>
                            <th>
                                강사 이름
                            </th>
                            <th>
                                강의 기간
                            </th>
                            <th>
                                선택
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr :key="i" v-for="(a, i) of courseList">
                            <td>
                                {{ a.course_name }}
                            </td>
                            <td>
                                {{ a.class_name }}
                            </td>
                            <td>
                                {{ a.teacher_name }}
                            </td>
                            <td>
                                {{ a.start_date }}
                                ~
                                {{ a.end_date }}
                            </td>
                            <td>
                                <button
                                    type="button"
                                    class="btn  btn-sm btn-primary"
                                    style="[text-decoration: none; color:white;]"
                                    @click="goToResultPage(1, 1)"
                                >
                                    선택
                                </button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    props: {
        courseList: {
            type: Array,
            default: function() {
                return []
            }
        }
    },
    methods: {
        goToResultPage(classId, courseId) {
            console.log(classId, courseId)
            this.$router.push({
                path: '/sidetest',
                query: { classId: classId, courseId: courseId }
            })
        }
    }
}
</script>
