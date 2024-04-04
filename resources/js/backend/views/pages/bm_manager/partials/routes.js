import Layout from "./Layout.vue";
import Dashboard from "../Dashboard.vue";
// management_routes
import branch_target_routes from "../management/branch_target/setup/routes";
import income_routes from "../management/income/setup/routes";
import accounts_routes from "../management/accounts/setup/routes";
import account_category_route from "../management/account_category/setup/routes";
import reporting_routes from "../management/report/setup/routes";
import profile_routes from "../management/profile/setup/routes";
import user_routes from "../management/user/setup/routes";
// asset_management_routes
import asset_category_routes from "../management/AssetManagement/AssetCategory/setup/routes";
import asset_lost_routes from "../management/AssetManagement/AssetLost/setup/routes";
import asset_routes from "../management/AssetManagement/Asset/setup/routes";
import asset_audit_routes from "../management/AssetManagement/AssetAudit/setup/routes";
import asset_audit_list_routes from "../management/AssetManagement/AssetAuditList/setup/routes";
import asset_brand_routes from "../management/AssetManagement/AssetBrand/setup/routes";
import asset_history_routes from "../management/AssetManagement/AssetChangeHistory/setup/routes";
import asset_item_routes from "../management/AssetManagement/AssetItem/setup/routes";
import asset_shop_list_routes from "../management/AssetManagement/AssetShopList/setup/routes";
import asset_waranty_routes from "../management/AssetManagement/AssetWaranty/setup/routes";
import asset_quotation_product_routes from "../management/AssetManagement/AssetQuotations/Product/setup/routes";
import asset_quotation_product_price_routes from "../management/AssetManagement/AssetQuotations/ProductPrice/setup/routes";
import asset_quotation_routes from "../management/AssetManagement/AssetQuotations/Quotation/setup/routes";
import asset_request_to_cp_routes from "../management/AssetManagement/AssetRequestToCp/setup/routes";
import asset_transfer_routes from "../management/AssetManagement/AssetTransfer/setup/routes";

const routes = {
    path: "bm-manager",
    component: Layout,
    children: [
        {
            path: "",
            name: "bmManagerDashboard",
            component: Dashboard,
        },
        profile_routes,
        branch_target_routes,
        income_routes,
        accounts_routes,
        account_category_route,
        user_routes,
        reporting_routes,
        // asset_management_routes
        asset_category_routes,
        asset_lost_routes,
        asset_routes,
        asset_audit_routes,
        asset_brand_routes,
        asset_history_routes,
        asset_item_routes,
        asset_shop_list_routes,
        asset_waranty_routes,
        asset_audit_list_routes,
        asset_quotation_product_routes,
        asset_quotation_product_price_routes,
        asset_quotation_routes,
        asset_request_to_cp_routes,
        asset_transfer_routes,
    ],
};

export default routes;
