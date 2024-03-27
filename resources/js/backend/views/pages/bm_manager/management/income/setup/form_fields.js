import moment from "moment";

export default [
    {
        name: "date",
        label: "তারিখ",
        type: "date",
        value: moment().format('YYYY-MM-DD'),
    },
    {
        name: "cash_book_page_no",
        label: "ক্যাস বুক পেজ নম্বর",
        type: "number",
        value: "",
        labelParam: 100
    },
    {
        name: "account_receipt_book_no",
        label: " রিসিপ্ট বুক নম্বর",
        type: "number",
        value: "",
        labelParam: 100
    },
    {
        name: "account_receipt_no",
        label: " রিসিপ্ট নম্বর",
        type: "number",
        value: "",
    },
    {
        name: "amount",
        label: "পরিমাণ",
        type: "number",
        value: "",
    },
    {
        name: "amount_in_text",
        label: "পরিমাণ বাংলায়",
        type: "text",
        value: "",
    },
    {
        name: "random_user",
        label: " ব্যবহারকারীর নাম",
        type: "text",
        value: "",
    },
    {
        name: "branch_id",
        label: "ব্যবহারকারীর বিভাগ",
        type: "select",
        value: {
            id: "",
            name: "",
        },
        multiple: false,
        searchable: true,
        data_list: [],
    },
    {
        name: "account_category_id",
        label: "আয় ক্যাটাগরি",
        type: "select",
        value: "",
        searchable: true,
        multiple: false,
        data_list: [],
    },
    {
        name: "account_id",
        label: "একাউন্ট নাম",
        type: "select",
        value: "",
        multiple: false,
        data_list: [],
    },

    {
        name: "account_number_id",
        label: "একাউন্ট নাম্বর",
        type: "number",
        value: "",
    },

    {
        name: "description",
        label: "বিবরণ",
        type: "textarea",
        value: "",
    },

];
