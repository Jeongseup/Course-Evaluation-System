import { createApp } from 'vue'

import App from './App.vue'
import router from './router'
import store from './store'
import api from './api.js'

// bootstrap
import 'bootstrap'
import 'bootstrap/dist/css/bootstrap.min.css'

// custom css
import './css/sb-admin-2.min.css'

// fontawesome
import { library } from '@fortawesome/fontawesome-svg-core'
import { faUserSecret } from '@fortawesome/free-solid-svg-icons'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'
library.add(faUserSecret)

const app = createApp(App)

app.component('font-awesome-icon', FontAwesomeIcon)
app.use(store)
    .use(router)
    .mixin(api)
    .mount('#app')
