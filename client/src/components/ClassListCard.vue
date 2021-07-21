<template>
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-primary shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div
                            class="text-xs font-weight-bold text-primary text-uppercase mb-1"
                        >
                            <font-awesome-icon icon="file-signature" />
                            강의 이름
                        </div>
                        <div :class="'h5 mb-0 font-weight-bold text-gray-800'">
                            <div :class="dropdown">
                                <select :class="'dropdown-select'">
                                    <option value="0">
                                        강의선택
                                    </option>
                                    <option
                                        :key="i"
                                        v-for="(item, i) of courseList"
                                        >{{ item.class_name }}
                                    </option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
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
    }
}
</script>
