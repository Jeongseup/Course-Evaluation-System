<template>
    <div
        class="card border-bottom-primary shadow h-100 py-2"
        style="width: 15rem; margin:auto"
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
            <div class="d-flex justify-content-between align-items-center">
                <div class="d-grid gap-1 col-14 mx-auto" role="group">
                    <button
                        type="button"
                        class="btn btn-success btn-sm"
                        style="[color:white; text-decoration:none; width:150px;]"
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
                        class="btn btn-info btn-sm"
                        style="[color:white; text-decoration:none; width:150px;]"
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
                        class="btn btn-danger btn-sm"
                        style="[color:white; text-decoration:none; width:150px;]"
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
                    <a
                        type="button"
                        class="btn btn-primary btn-sm"
                        style="[color:white; text-decoration:none; width:150px;]"
                        href="/sidetest"
                    >
                        {{ item.eval_status_name }}
                    </a>
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

<style scoped>
.btn-danger:hover {
    background-color: gray;
}
</style>
