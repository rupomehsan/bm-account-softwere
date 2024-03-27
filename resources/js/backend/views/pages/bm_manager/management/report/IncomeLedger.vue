<template>
    <div class="page-body">
        <div class="pt-2">
            <div class="mt-2">
                <div class="card list_card">
                    <div class="card-header">
                        <h4>Income Ledger ( {{ date_title }} )</h4>
                        <div class="search">
                            <input
                                v-model="from_date"
                                type="date"
                                class="income_expense_date_field"
                                @click="$event.target.showPicker()"
                            />
                            To
                            <input
                                v-model="to_date"
                                type="date"
                                class="income_expense_date_field"
                                @click="$event.target.showPicker()"
                            />
                        </div>

                        <div class="btns d-flex gap-2 align-items-center">
                            <button
                                type="button"
                                class="btn rounded-pill btn-outline-info"
                            >
                                <i class="fa fa-print me-5px"></i>
                                Export
                            </button>
                        </div>
                    </div>
                    <div
                        class="ledger_book card-body text-nowrap"
                        v-if="loaded"
                    >
                        <div class="ledger_row ledger_heading">
                            <div class="ledger_col name">Name</div>
                            <div class="ledger_col date">Date</div>
                            <div class="ledger_col">Amount</div>
                            <div
                                class="ledger_col"
                                v-for="i in all_account_income_categories"
                                :key="i.id"
                            >
                                {{ i.title }}
                            </div>
                        </div>
                        <div
                            class="ledger_row"
                            v-for="i in all_income_ledger"
                            :key="i.id"
                        >
                            <div class="ledger_col name">
                                {{ i.user?.full_name }}
                            </div>
                            <div class="ledger_col date text-start">
                                {{ new Date(i.date).toDateString() }}
                            </div>

                            <div class="ledger_col">{{ i.amount }}</div>
                            <div
                                class="ledger_col"
                                v-for="j in all_account_income_categories"
                                :key="j.id"
                            >
                                {{ i[`cat_${j.id}`] }}
                            </div>
                        </div>

                        <div class="ledger_row ledger_footer">
                            <div class="ledger_col name">Total</div>
                            <div class="ledger_col date"></div>
                            <div class="ledger_col amount">
                                {{ category_wise_total["total"] }}
                            </div>
                            <div
                                class="ledger_col"
                                v-for="i in all_account_income_categories"
                                :key="i.id"
                            >
                                {{ category_wise_total[`cat_${i.id}`] }}
                            </div>
                        </div>
                    </div>
                    <div class="card-footer py-1 border-top-0" v-if="loaded">
                        <ul class="d-flex gap-3" style="list-style-type: none">
                            <li>
                                Total Income:
                                <b class="text-success">{{
                                    closing_data?.income
                                }}</b>
                            </li>
                            <li>
                                Total Expense:
                                <b class="text-warning">{{
                                    closing_data?.expense
                                }}</b>
                            </li>
                            <li>
                                Total Extra:
                                <b class="text-info">
                                    {{ closing_data?.extra }}</b
                                >
                            </li>
                            <li>
                                Previous Extra:
                                <b class="text-danger">{{
                                    closing_data?.extra_before
                                }}</b>
                            </li>
                            <li>
                                Present Extra:
                                <b class="text-success">
                                    {{ closing_data?.preset_extra }}</b
                                >
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import { mapActions, mapState } from "pinia";
import { report_setup_store } from "./setup/store";

export default {
    data: () => ({
        page: "",
        loaded: false,
        from_date: "",
        to_date: "",
        date_title: "",
    }),
    created: async function () {
        this.from_date = moment().subtract(30, "d").format("YYYY-MM-DD");
        this.to_date = moment().format("YYYY-MM-DD");
        this.date_title = moment(this.from_date).format("YYYY MMM DD - ");
        this.date_title += moment(this.to_date).format("YYYY MMM DD");

        await this.get_all_account_income_categories();
        await this.get_income_expense_closing_in_range({
            from: this.from_date,
            to: this.to_date,
        });
        await this.fetch_income_ledger(this.from_date, this.to_date);

        this.loaded = true;
    },
    methods: {
        ...mapActions(report_setup_store, {
            get_all_account_income_categories:
                "get_all_account_income_categories",
            get_income_expense_closing_in_range:
                "get_income_expense_closing_in_range",
            fetch_income_ledger: "fetch_income_ledger",
        }),
    },
    computed: {
        ...mapState(report_setup_store, {
            all_account_income_categories: "all_account_income_categories",
            closing_data: "closing_data",
            all_income_ledger: "all_income_ledger",
            category_wise_total: "category_wise_total",
        }),
    },
    watch: {
        page: function () {
            this.$router.push({ name: this.page });
        },
        to_date: async function () {
            await this.fetch_income_ledger(this.from_date, this.to_date);
        },
    },
};
</script>

<style></style>
