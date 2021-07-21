<template>
    <div
        class="card m-3"
        style="width: 18rem;"
        :key="i"
        v-for="(item, i) in classList"
    >
        <div v-if="item.eval_status_id == 1" class="card-body">
            <h5 class="card-title">
                강의명 :
                {{ item.name }}
                <br />
                강사명 :
                {{ item.teacher_name }}
            </h5>
            <div class="row g-3">
                <div class="col-xl-3 col-lg-4 col-md-6">
                    <button
                        type="button"
                        class="btn btn-success btn-lg"
                        style="[color:white; text-decoration:none; width:250px;]"
                        @click="goToEvalCreatePage(item.class_id)"
                    >
                        {{ item.eval_status_name }}
                    </button>
                </div>
            </div>
        </div>
        <div v-else-if="item.eval_status_id == 2" class="card-body">
            <h5 class="card-title">
                강의명 :
                {{ item.name }}
                <br />
                강사명 :
                {{ item.teacher_name }}
            </h5>
            <div class="d-flex justify-content-between align-items-center">
                <div class="d-grid gap-1 col-14 mx-auto" role="group">
                    <button
                        type="button"
                        class="btn btn-info btn-lg"
                        style="[color:white; text-decoration:none; width:250px;]"
                        @click="goToEvalCreatePage(item.class_id)"
                    >
                        {{ item.eval_status_name }}
                    </button>
                </div>
            </div>
        </div>
        <div v-else-if="item.eval_status_id == 3" class="card-body">
            <h5 class="card-title">
                강의명 :
                {{ item.name }}
                <br />
                강사명 :
                {{ item.teacher_name }}
            </h5>
            <div class="d-flex justify-content-between align-items-center">
                <div class="d-grid gap-1 col-14 mx-auto" role="group">
                    <button
                        type="button"
                        class="btn btn-danger btn-lg"
                        style="[color:white; text-decoration:none; width:250px;]"
                        @click="goToEvalCreatePage(item.class_id)"
                    >
                        {{ item.eval_status_name }}
                    </button>
                </div>
            </div>
        </div>
        <div v-else class="card-body">
            <h5 class="card-title">
                강의명 :
                {{ item.name }}
                <br />
                강사명 :
                {{ item.teacher_name }}
            </h5>
            <div class="d-flex justify-content-between align-items-center">
                <div class="d-grid gap-1 col-14 mx-auto" role="group">
                    <button
                        type="button"
                        class="btn btn-primary btn-lg"
                        style="[color:white; text-decoration:none; width:250px;]"
                        @click="goToEvalCreatePage(item.class_id, courseId)"
                    >
                        {{ item.eval_status_name }}
                    </button>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    props: {
        classList: {
            type: Array,
            default: function() {
                return []
            }
        },
        courseId: {
            type: Number
        }
    },
    methods: {
        goToEvalCreatePage(classId, courseId) {
            console.log(classId, courseId)
            this.$router.push({
                path: '/questiontable',
                query: { classId: classId, courseId: courseId }
            })
        }
    }
}
</script>
