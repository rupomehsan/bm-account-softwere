export default [
    {
        name: "title",
        label: "Enter title",
        type: "text",
        value: "",
    },

    {
        name: "is_regular",
        label: "Select type",
        type: "select",
        value: "",
        data_list: [
            {
                label: "Regular",
                value: "1",
            },
            {
                label: "Irregular",
                value: "0",
            },
        ],

    },
    {
        name: "type",
        label: "Select account type",
        type: "select",
        value: "",
        data_list: [
            {
                label: "Income",
                value: "income",
            },
            {
                label: "Expense",
                value: "expense",
            },
            {
                label: "Both",
                value: "both",
            },
        ],

    },

];
