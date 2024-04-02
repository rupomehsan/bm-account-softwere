export default [

    {
        name: "title",
        label: "Enter your title",
        type: "text",
        value: "",
    },

    {
        name: "description",
        label: "Enter your description",
        type: "textarea",
        value: "",
    },

    {
        name: "price",
        label: "Enter your price",
        type: "number",
        value: "",
    },

    {
        name: "memo_no",
        label: "Enter your memo_no",
        type: "text",
        value: "",
    },

    {
        name: "memo_date",
        label: "Enter your memo_date",
        type: "date",
        value: moment().format("YYYY-MM-DD"),
    },

    {
        name: "code",
        label: "Enter your code",
        type: "text",
        value: "",
    },

    {
        name: "asset_location",
        label: "Enter your asset_location",
        type: "textarea",
        value: "",
    },

    {
        name: "asset_owner",
        label: "Enter your asset_owner",
        type: "text",
        value: "",
    },

    {
        name: "owner_phone_number",
        label: "Enter your owner_phone_number",
        type: "text",
        value: "",
    },

    {
        name: "depreciation_type",
        label: "Enter your depreciation_type",
        type: "text",
        value: "",
    },



    {
        name: "buying_date",
        label: "Enter your buying_date",
        type: "date",
        value: moment().format("YYYY-MM-DD"),
    },

    {
        name: "hand_over_date",
        label: "Enter your hand_over_date",
        type: "date",
        value: moment().format("YYYY-MM-DD"),
    },

    {
        name: "comments",
        label: "Enter your comments",
        type: "textarea",
        value: "",
    },


    {
        name: "cs_quotation_id",
        label: "Enter your cs_quotation_id",
        type: "number",
        value: "",
    },


    {
        name: "asset_image",
        label: "Enter your asset_image",
        type: "file",
        multiple: "false",
        value: "",
    },

    {
        name: "voucher_image",
        label: "Enter your voucher_image",
        type: "file",
        multiple: "false",
        value: "",
    },

    {
        name: "acceptance_image",
        label: "Enter your acceptance_image",
        type: "file",
        multiple: "false",
        value: "",
    },
    {
        name: "cs_quotaiton_image",
        label: "Enter your cs_quotaiton_image",
        type: "file",
        multiple: "false",
        value: "",
    },

    {
        quatation_title: "some",
        products: [
            {
                title: "laptop",
                prices: [
                    {
                        shop_name: "ryans",
                        price: "35000"
                    },
                    {
                        shop_name: "startech",
                        price: "34000"
                    },
                ]
            }
        ]
    }

];
