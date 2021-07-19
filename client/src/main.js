import { createApp } from 'vue'

import App from './App.vue'
import router from './router'
import store from './store'
import api from './api.js'

// bootstrap
import 'bootstrap'
import 'bootstrap/dist/css/bootstrap.min.css'

// custom css
import './assets/css/sb-admin-2.min.css'
// import './assets/js/sb-admin-2'

// fontawesome
import { library } from '@fortawesome/fontawesome-svg-core'
import {
    faUserSecret,
    faLaughWink,
    faHome,
    faChalkboardTeacher,
    faEdit,
    faListAlt,
    faEnvelope,
    faUserTie,
    faUserEdit,
    faBookReader,
    faFileSignature,
    faFileImport,
    faImages,
    faSave,
    faAngleUp
} from '@fortawesome/free-solid-svg-icons'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'
library.add(
    faUserSecret,
    faLaughWink,
    faHome,
    faChalkboardTeacher,
    faEdit,
    faListAlt,
    faEnvelope,
    faUserTie,
    faUserEdit,
    faBookReader,
    faFileSignature,
    faFileImport,
    faImages,
    faSave,
    faAngleUp
)

const app = createApp(App)

app.use(store)
    .use(router)
    .mixin(api)
    .component('font-awesome-icon', FontAwesomeIcon)
    .mount('#app')
