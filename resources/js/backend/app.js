import "./bootstrap";
import "./plugins/enToBn.js";
import "./plugins/axios_setup.js";
import "./plugins/sweet_alert.js";
import "./plugins/moment_setup";
import { convertAmount } from "./plugins/number_to_text_bangla";

import { createApp } from "vue";
import { createRouter, createWebHashHistory } from "vue-router";
import { createPinia } from "pinia";

import CommonInput from "./views/components/CommonInput.vue";
import ImageComponent from "../backend/views/components/ImageComponent.vue";
import Pagination from "../backend/views/components/Pagination.vue";
import DynamicSelect from "../backend/views/components/DynamicSelect.vue";
import DateField from "../backend/views/components/DateField.vue";

import App from "./views/App.vue";
import MainDashboard from "./views/MainDashboard.vue";
import admin_routes from "./views/pages/admin/partials/routes";
import bm_manager_routes from "./views/pages/bm_manager/partials/routes";

const router = createRouter({
    history: createWebHashHistory(),
    routes: [
        {
            path: "/",
            component: App,
            children: [
                {
                    path: "",
                    component: MainDashboard,
                },
                admin_routes,
                bm_manager_routes,
            ],
        },
    ],
});

router.beforeEach((to, from, next) => {
    to.href.length > 2 && window.sessionStorage.setItem("prevurl", to.href);
    next();
});

const pinia = createPinia();
const app = createApp({});
// Vue.prototype.number_format = (number = 0) => new Intl.NumberFormat().format(number);
app.config.globalProperties.$convertAmount = convertAmount;
app.component("app", App);
app.component("common-input", CommonInput);
app.component("image-component", ImageComponent);
app.component("pagination", Pagination);
app.component("dynamicSelect", DynamicSelect);
app.component("date-field", DateField);
app.use(pinia);
app.use(router);
app.mount("#app");
