import Layout from "./Layout.vue";
import setup from ".";

let prefix = setup.prefix;

import CashbookMainLedger from "../CashbookMainLedger.vue";
import BmIncomeLedger from "../IncomeLedger.vue";

const routes = {
    path: "reports",
    component: Layout,
    children: [
        {
            path: "main-ledger",
            name: prefix + "MainLedger",
            component: CashbookMainLedger,
        },
        {
            path: "income-ledger",
            name: prefix + "IncomeLedger",
            component: BmIncomeLedger,
        },
    ],
};

export default routes;
