<template>
    <!-- Modal -->
    <div
        class="modal fade"
        id="staticBackdrop"
        data-backdrop="static"
        tabindex="-1"
        role="dialog"
        aria-labelledby="staticBackdropLabel"
        aria-hidden="true"
    >
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">
                        {{ title }}
                    </h5>
                    <button
                        type="button"
                        class="close"
                        data-dismiss="modal"
                        aria-label="Close"
                    >
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <!-- 수강생들이 들어갈 공간 -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">
                                {{ Message }}
                            </h6>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <router-link to="/" style="text-decoration: none;">
                        <button
                            type="button"
                            class="btn btn-primary"
                            data-dismiss="modal"
                            @click="confirm"
                        >
                            확인
                        </button>
                    </router-link>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    props: {
        title: {
            type: String,
            default: '감사합니다'
        },
        Message: {
            type: String,
            default: '완료되었습니다.'
        }
    },
    methods: {
        confirm() {
            this.$emit('callBack')
        }
    }
}
</script>
