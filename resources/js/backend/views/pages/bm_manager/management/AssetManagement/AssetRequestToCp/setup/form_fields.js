export default [
    {
        name: "asset_id",
        label: "Selct asset ",
        type: "select",
        value: "",
        data_list: [],
    },

    {
        name: "asset_quotation_id",
        label: "Select asset quotation",
        type: "select",
        value: "",
        data_list: [],
    },

    {
        name: "title",
        label: "Enter your title",
        type: "text",
        value: "",
    },

    {
        name: "quotation_image",
        label: "Upload quotation image",
        type: "file",
        value: "",
        multiple: false
    },

    {
        name: "is_approved",
        label: "Select  approval",
        type: "select",
        multiple: false,
        data_list: [
            {
                label: "Yes",
                value: "1",
            },
            {
                label: "No",
                value: "0",
            },
        ],
        value: "",
    },

    {
        name: "request_type",
        label: "Enter your request type",
        type: "select",
        multiple: false,
        data_list: [
            {
                label: "Purchase",
                value: "purchase",
            },
            {
                label: "Remove",
                value: "remove",
            },
        ],
        value: "",
    },
];
