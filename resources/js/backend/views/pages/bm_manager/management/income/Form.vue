<template>
    <div class="page-body">
        <div class="py-2">
            <div class="container-fluid">
                <div class="page-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <h6>
                                {{ param_id ? "Update" : "Create new" }} Income
                            </h6>
                        </div>
                        <div class="col-lg-6 text-end">
                            <div class="btns">
                                <router-link :to="{ name: `AllIncome` }"
                                    class="btn rounded-pill btn-outline-warning router-link-active"><i
                                        class="fa fa-arrow-left me-5px"></i>
                                    Back
                                </router-link>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="my-1">
                    <form class="user_create_form card" @submit.prevent="submitHandler">
                        <div class="card-body">
                            <div class="row justify-content-center">
                                <div class="col-lg-12">
                                    <div class="admin_form form_1">
                                        <div class="form-group">
                                            <label for="">তারিখ </label>
                                            <date-field :name="`date`" :value="date" />
                                        </div>
                                        <div class="form-group">
                                            <label for="">ক্যাস বুক নম্বর
                                            </label>
                                            <div class="mt-1 mb-3">
                                                <input class="form-control" type="number" name="cash_book_no"
                                                    id="cash_book_no" v-model="cash_book_no">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="">ক্যাস বুক পেজ নম্বর <span class=" fw-bold mx-2 text-warning">
                                                    ( {{ page_item_count }} )</span>
                                            </label>
                                            <div class="mt-1 mb-3">
                                                <input class="form-control" type="number" name="cash_book_page_no"
                                                    id="cash_book_page_no" v-model="cash_book_page_no">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for=""> রিসিপ্ট বুক নম্বর <span
                                                    class="label-param-account_receipt_book_no fw-bold mx-2 text-warning">
                                                    ( {{ receipt_book_item_count }} )</span></label>
                                            <div class="mt-1 mb-3">
                                                <input class="form-control" type="number" name="account_receipt_book_no"
                                                    id="account_receipt_book_no" v-model="account_receipt_book_no">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for=""> রিসিপ্ট নম্বর</label>
                                            <div class="mt-1 mb-3"><input class="form-control" type="number"
                                                    name="account_receipt_no" id="account_receipt_no"
                                                    v-model="account_receipt_no"></div>
                                        </div>
                                        <div class="form-group">
                                            <label for="">পরিমাণ</label>
                                            <div class="mt-1 mb-3"><input class="form-control" type="number"
                                                    name="amount" id="amount" v-model="amount"></div>
                                        </div>
                                        <div class="form-group">
                                            <label for="">পরিমাণ বাংলায়</label>
                                            <div class="mt-1 mb-3"><input class="form-control" type="text"
                                                    name="amount_in_text" id="amount_in_text" v-model="amount_in_text">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for=""> ব্যবহারকারীর নাম</label>
                                            <div class="mt-1 mb-3"><input class="form-control" type="text"
                                                    name="random_user" id="random_user" v-model="random_user"></div>
                                        </div>
                                        <div class="form-group">
                                            <label for="">ব্যবহারকারীর বিভাগ
                                            </label>
                                            <div class="mt-1 mb-3">
                                                <input type="text" class="form-control position-relative"
                                                    v-model="branch_name" @focus="branchSearchDataShow = true"
                                                    @focusout="hideSearchData">
                                                <input type="hidden" class="form-control" name="branch_id"
                                                    id="branch_id" v-model="branch_id">
                                                <div v-if="branchSearchDataShow">
                                                    <ul class="select-tools position-absolute">
                                                        <li class="cursor-pointer p-1"
                                                            v-for="(data, index) in all_branch" :key="index"
                                                            @click="selectBranchData(data)">
                                                            {{ data.full_name }}
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="">আয় ক্যাটাগরি
                                            </label>
                                            <div class="mt-1 mb-3">
                                                <input type="text" class="form-control position-relative"
                                                    v-model="account_category_name"
                                                    @focus="categorySearchDataShow = true" @focusout="hideSearchData">
                                                <input type="hidden" class="form-control" name="account_category_id"
                                                    id="account_category_id" v-model="account_category_id">
                                                <div v-if="categorySearchDataShow">
                                                    <ul class="select-tools position-absolute">
                                                        <li class="cursor-pointer p-1"
                                                            v-for="(data, index) in all_account_categories" :key="index"
                                                            @click="selectCategoryData(data)">
                                                            {{ data.title }}
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="">একাউন্ট নাম
                                            </label>
                                            <div class="mt-1 mb-3">
                                                <select name="account_id" class="form-select" id="account_id"
                                                    v-model="account_id">
                                                    <option value="">Select item</option>
                                                    <option value="1">cash</option>
                                                    <option value="2">bank_account</option>
                                                    <option value="3">bkash</option>
                                                    <option value="4">nagad</option>
                                                    <option value="5">rocket</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="">একাউন্ট নাম্বর</label>
                                            <div class="mt-1 mb-3"><input class="form-control" type="number"
                                                    name="account_number_id" id="account_number_id"
                                                    v-model="account_number_id"></div>
                                        </div>
                                        <div class="form-group">
                                            <label for="">বিবরণ
                                            </label>
                                            <div class="mt-1 mb-3">
                                                <textarea class="form-control" type="text" name="description"
                                                    v-model="description"></textarea>
                                                <div id="description"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer text-center">
                            <button type="submit" class="btn btn-outline-info"><i class="fa fa-upload"></i> Submit
                            </button>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
</template>

<script>
import { mapActions, mapState } from "pinia";
import form_fields from "./setup/form_fields.js";
import { income_setup_store } from "./setup/store";
import axios from 'axios';
export default {

    data: () => ({
        param_id: null,
        application_id: null,

        date: moment().format('YYYY-MM-DD'),
        cash_book_no: '',
        cash_book_page_no: 0,
        page_item_count: 0,

        account_receipt_book_no: 0,
        receipt_book_item_count: 0,

        account_receipt_no: 0,
        amount: '',
        amount_in_text: '',
        random_user: '',

        branchSearchDataShow: false,
        categorySearchDataShow: false,

        branch_name: '',
        branch_id: '',
        account_category_name: '',
        account_category_id: '',

        account_id: '',
        account_number_id: '',
        description: '',



    }),

    created: async function () {

        await this.get_all_account_receipt_book()
        await this.get_all_account_categories()
        await this.get_all_central_division()
        await this.get_all_branch()
        await this.get_all_accounts()

        let id = this.$route.query.id;
        if (id) {
            this.param_id = id;
            await this.get_single_branch_income(id);
            if (this.single_data) {
                this.date = this.single_data.date
                this.cash_book_no = this.single_data.cash_book_no
                this.cash_book_page_no = this.single_data.cash_book_page_no
                this.page_item_count = this.single_data.page_item_count
                this.account_receipt_book_no = this.single_data.account_receipt_book_no
                this.receipt_book_item_count = this.single_data.receipt_book_item_count
                this.account_receipt_no = Number(this.single_data.account_receipt_no)
                this.amount = this.single_data.amount
                this.amount_in_text = this.single_data.amount_in_text
                this.random_user = this.single_data.random_user
                this.branch_id = this.single_data.branch_id
                this.branch_name = this.single_data.user.full_name
                this.account_category_name = this.single_data.account_category.title
                this.account_category_id = this.single_data.account_category_id
                this.account_id = this.single_data.account_logs.account_id
                this.account_number_id = this.single_data.account_logs.account_number_id
                this.description = this.single_data.description
            }


        } else {
            await this.get_latest_income()
            if (this.latest_income_data) {
                this.cash_book_no = this.latest_income_data.cash_book_no
                this.cash_book_page_no = this.latest_income_data.cash_book_page_no
                this.page_item_count = this.latest_income_data.page_item_count
                this.account_receipt_book_no = this.latest_income_data.account_receipt_book_no
                this.receipt_book_item_count = this.latest_income_data.receipt_book_item_count
                this.account_receipt_no = Number(this.latest_income_data.account_receipt_no) + 1
            }
        }
    },

    methods: {

        ...mapActions(income_setup_store, {
            get_all_account_receipt_book: "get_all_account_receipt_book",
            get_all_account_categories: "get_all_account_categories",
            get_all_central_division: "get_all_central_division",
            get_all_branch: "get_all_branch",
            get_all_accounts: "get_all_accounts",
            store: "store",
            get_single_branch_income: "get",
            income_update: "update",
            get_branch_target_by_brach_id: 'get_branch_target_by_brach_id',
            get_latest_income: "get_latest_income",

        }),

        submitHandler: async function ($event) {
            if (this.param_id) {
                this.income_update($event.target, this.param_id);
                // this.$router.push({ name: `AllIncome` });
            } else {

                let response = await this.store($event.target, this.application_id);
                if (response.data.status === "success") {
                    window.s_alert("Data successcully created");
                    // this.$router.push({ name: `AllIncome` });
                }
            }
        },

        async amountHandleKeyup(event) {
            const inputValue = event.target.value;
            let convertText = this.$convertAmount(inputValue);
            document.getElementById('amount_in_text').value = convertText;

        },



        async showDetails() {
            let account_category_id = document.getElementById('account_category_id').value;
            let branch_id = document.getElementById('branch_id').value;
            if (account_category_id && branch_id) {
                let response = await this.get_branch_target_by_brach_id(account_category_id, branch_id)
                this.branch_target_data = response
            }
        },

        async accountHandler(event) {

            const inputValue = event.target.value;

            try {
                const result = await axios.get(`account-numbers/${inputValue}?account_id=true`);
                if (result.data) {
                    let toText = document.getElementById('account_number_id');
                    toText.value = result.data?.data?.value; // Use toString() method
                }
            } catch (error) {
                console.error('Error fetching data:', error);
            }

        },

        hideSearchData() {
            let that = this
            setTimeout(() => that.branchSearchDataShow = false, 300)
            setTimeout(() => that.categorySearchDataShow = false, 300)
        },
        selectBranchData(data) {
            this.branch_name = data.full_name;
            this.branch_id = data.id;
            this.branchSearchDataShow = false;
        },
        selectCategoryData(data) {
            this.account_category_name = data.title;
            this.account_category_id = data.id;
            this.categorySearchDataShow = false;
        },

    },

    computed: {
        ...mapState(income_setup_store, {
            single_data: "single_data",
            all_account_receipt_book_data: "all_account_receipt_book_data",
            all_account_categories: "all_account_categories",
            all_central_division: "all_central_division",
            all_branch: "all_branch",
            all_accounts: "all_accounts",
            latest_income_data: "latest_income_data",

        }),
    },

    mounted() {
        const amount = document.getElementById('amount');
        if (amount) {
            amount.addEventListener('keyup', this.amountHandleKeyup);
        }
        const accountId = document.getElementById('account_id');
        if (accountId) {
            accountId.addEventListener('change', this.accountHandler);
        }
    },


};
</script>

<style></style>
