<template>
    <div class="bg-gradient-image ">
        <div class="fullPage">
            <!-- Outer Row -->
            <div class="row justify-content-center ">
                <div class="col-xl-4 col-lg-5 col-md-5 upMargin">
                    <div class="card o-hidden border-0 shadow-lg my-3 seeBg">
                        <div class="card-body p-0">
                            <!-- Nested Row within Card Body -->
                            <div>
                                <div>
                                    <div class="p-5">
                                        <div class="text-center">
                                            <h1 class="h4 text-gray-900 mb-4">
                                                Welcome Back!
                                            </h1>
                                        </div>
                                        <form class="user">
                                            <div class="form-group">
                                                <input
                                                    type="email"
                                                    class="form-control form-control-user"
                                                    id="exampleInputEmail"
                                                    aria-describedby="emailHelp"
                                                    placeholder="Enter Email Address..."
                                                    v-model="input_email"
                                                />
                                            </div>
                                            <div class="form-group">
                                                <input
                                                    type="password"
                                                    class="form-control form-control-user"
                                                    id="exampleInputPassword"
                                                    placeholder="Password"
                                                    @keyup.enter="onSubmit"
                                                    v-model="input_pw"
                                                />
                                            </div>
                                            <div class="form-group">
                                                <div
                                                    class="custom-control custom-checkbox small"
                                                >
                                                    <input
                                                        type="checkbox"
                                                        class="custom-control-input"
                                                        id="customCheck"
                                                    />
                                                </div>
                                            </div>
                                            <a
                                                class="btn btn-primary btn-user btn-block"
                                                @click="onSubmit"
                                            >
                                                Login
                                            </a>
                                        </form>
                                        <hr />
                                    </div>
                                </div>
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
    name: '',
    components: {},
    data() {
        return {
            input_email: '',
            input_pw: ''
        }
    },
    computed: {
        user() {
            return this.$store.state.user
        }
    },
    setup() {},
    created() {},
    mounted() {},
    unmounted() {},
    methods: {
        async onSubmit() {
            // 접근 유저 아이디 확인
            console.log('사용자가 입력한 ID', this.input_email)

            // DB에 요청
            const res = await this.$api('/api/getUser', 'post', {
                param: [this.input_email]
            })

            console.log(res)

            if (res[0] == null) {
                // DB에 저장되지 않은 사용자 접근
                window.alert('사용자 정보를 잘못 입력하셨습니다.')
            } else {
                // 비밀번호 확인
                if (this.input_pw !== res[0].password) {
                    window.alert('비밀번호를 잘못 입력하셨습니다.')
                } else {
                    // DB에 저장된 사용자 접근
                    // console.log(res[0])
                    const oUser = {}

                    oUser.type = res[0].user_type_id
                    oUser.email = res[0].user_email
                    oUser.password = res[0].password
                    oUser.name = res[0].name
                    oUser.tel = res[0].tel

                    // 저장된 유저 정보확인
                    // console.log(oUser)
                    this.$store.commit('user', oUser)
                    // 페이지 이동
                    window.alert(`어서오세요, ${oUser.name} 님`)
                    this.goToPage(oUser.type)
                }
            }
        },

        goToPage(userType) {
            if (userType === 1) {
                this.$router.push({
                    path: '/list'
                })
            } else if (userType === 3) {
                this.confirmAccess()
            }
        },

        // 학생이 접근하는 경우, 현재 설문조사가 가능한 지 확인한다.
        async confirmAccess() {
            console.log(this.user.email)
            const res = await this.$api('/api/getStudent', 'post', {
                param: [this.user.email]
            })

            if (res[0].eval_abled === 1) {
                this.$router.push({
                    path: '/answertable',
                    query: {
                        eval_id: res[0].current_eval_id,
                        user_email: this.user.email
                    }
                })
            } else {
                window.alert('죄송합니다, 현재 평가할 수 없는 상태입니다.')
            }
        }
    }
}
</script>
<style scoped>
.bg-gradient-image {
    /* background-color: #4e73df; */
    /* background-image: linear-gradient(180deg, #4e73df 10%, #224abe 100%); */
    background-size: cover;
    /* background-image: url('../assets/one.jpg'); */
    background-image: linear-gradient(
        to top,
        lightgrey 0%,
        lightgrey 1%,
        #e0e0e0 26%,
        #efefef 48%,
        #d9d9d9 75%,
        #bcbcbc 100%
    );
}
.seeBg {
    background-color: white;
}

.upMargin {
    margin-top: 20vh;
}
.fullPage {
    height: 100vh;
}
</style>
