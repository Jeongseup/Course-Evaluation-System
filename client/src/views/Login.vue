<template>
    <div class="bg-gradient-primary ">
        <div class="container">
            <!-- Outer Row -->
            <div class="row justify-content-center">
                <div class="col-xl-10 col-lg-12 col-md-9">
                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <!-- Nested Row within Card Body -->
                            <div class="row">
                                <div
                                    class="col-lg-6 d-none d-lg-block bg-login-image"
                                >
                                    <img src="../assets/images/sky.jpg" />
                                </div>
                                <div class="col-lg-6">
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
                                                    v-model="user_email"
                                                />
                                            </div>
                                            <div class="form-group">
                                                <input
                                                    type="password"
                                                    class="form-control form-control-user"
                                                    id="exampleInputPassword"
                                                    placeholder="Password"
                                                    v-model="user_pw"
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
            user_email: '',
            user_pw: ''
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
        onSubmit() {
            var oUser = {}
            oUser.email = this.user_email
            oUser.user_pw = this.user_pw
            oUser.name = '한경닷컴'
            // 유저 확인
            console.log(oUser)
            this.$store.commit('user', oUser)
            // 페이지 이동
            this.goToPage()
        },
        goToPage() {
            this.$router.push({
                path: 'list'
            })
        }
    }
}
</script>
