import moment from "moment";

export default [
    {
        name: "lost_from_user",
        label: " lost from user",
        type: "text",
        value: "",
    },

    {
        name: "lost_from_user_contact",
        label: " lost from user contact",
        type: "text",
        value: "",
    },
    {
        name: "lost_reason",
        label: " lost reason",
        type: "textarea",
        value: "",
    },

    {
        name: "lost_date",
        label: " lost date",
        type: "date",
        value: moment().format('YYYY-MM-DD'),
    },
];
