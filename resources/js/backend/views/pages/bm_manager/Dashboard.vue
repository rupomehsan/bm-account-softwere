<template>
    <div class="page-body">
        <div class="pt-3">
            <!-- Container-fluid starts -->
            <div class="container-fluid">
                <div class="page-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <h5>Welcome to Dashboard</h5>
                        </div>
                        <div class="col-lg-6"></div>
                    </div>
                </div>
            </div>
            <!-- Container-fluid Ends -->
            <!-- Container-fluid starts -->
            <div class="container-fluid">
                <div class="card border-widgets shadow mb-4">
                    <div class="row m-0">
                        <div class="col-xl-3 col-6 xs-width-100">
                            <div class="crm-top-widget card-body">
                                <div class="d-flex">
                                    <i
                                        class="icon-money font-primary align-self-center me-3"
                                    ></i>
                                    <div>
                                        <span class="mt-0">Total Income</span>
                                        <h4 class="counter">
                                            {{ result.totalIncome ?? 0 }}
                                        </h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-6 xs-width-100">
                            <div class="crm-top-widget card-body">
                                <div class="d-flex">
                                    <i
                                        class="icon-widgetized font-secondary align-self-center me-3"
                                    ></i>
                                    <div>
                                        <span class="mt-0">Total Expense</span>
                                        <h4 class="counter">
                                            {{ result.totalExpense ?? 0 }}
                                        </h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-6 xs-width-100">
                            <div class="crm-top-widget card-body">
                                <div class="d-flex">
                                    <i
                                        class="icon-id-badge font-secondary align-self-center me-3"
                                    ></i>
                                    <div>
                                        <span class="mt-0">Users</span>
                                        <h4 class="counter">
                                            {{ result.totalUsers ?? 0 }}
                                        </h4>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-3 col-6 xs-width-100">
                            <div class="crm-top-widget card-body">
                                <div class="d-flex">
                                    <i
                                        class="icon-bookmark font-info align-self-center me-3"
                                    ></i>
                                    <div>
                                        <span class="mt-0">Category</span>
                                        <h4 class="counter">
                                            {{ result.totalCategory ?? 0 }}
                                        </h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Container-fluid starts -->
        </div>
    </div>
</template>

<script>
export default {
    data: () => ({
        result: {},
    }),
    created: async function () {
        this.get_dashboard_analytics();
    },

    methods: {
        async get_dashboard_analytics() {
            let response = await axios.get("get-dashboard-analytics");
            response = response.data;
            if (response.status == "success") {
                this.result = response.data;
            }
        },
    },
};
</script>

<style></style>
