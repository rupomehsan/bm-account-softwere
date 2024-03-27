import { defineStore } from "pinia";

export const report_setup_store = defineStore("report_setup_store", {
    state: () => ({
        all_data: {},
        main_ledger_data: {},
        closing_data: {},
        latest_income_data: {},
        category_wise_total: {},
        income_total: {},
        expense_total: {},
        expense_total: {},
    }),
    getters: {
        doubleCount: (state) => state.count * 2,
    },
    actions: {
        all: async function (url) {
            let response;
            // let page = `?page=${pageLimit}`;
            if (url) {
                response = await axios.get(url);
            } else {
                response = await axios.get("users");
            }
            this.all_data = response.data.data;
        },
        main_ledger: async function (form) {
            let formData = new FormData(form);
            let response = await axios.post("main-ledger-shit", formData);
            response = response.data;
            this.main_ledger_data = response;
        },

        get_income_expense_closing_in_range: async function (params) {
            let url = `get-income-expense-closing-in-range?`;
            url += `from=${params.from}`;
            url += `&to=${params.to}`;
            let response = await axios.get(url);
            response = response.data.data;
            this.closing_data = response;
        },
        fetch_income_ledger: async function (from, to) {
            let response = await axios.get(
                `get-income-ledger?from=${from}&to=${to}&is_income=1`
            );
            response = response.data.data;
            this.all_income_ledger = response.ledger_data;
            this.category_wise_total = response.category_wise_total;
        },
        ///

        get_latest_income: async function () {
            let response = await axios.get("get-latest-income");
            response = response.data.data;
            // console.log("data", response);
            this.latest_income_data = response;
        },

        get_all_account_income_categories: async function () {
            let response = await axios.get("account-categories?get_all=1");
            response = response.data.data;
            this.all_account_income_categories = response;
        },
    },
});
