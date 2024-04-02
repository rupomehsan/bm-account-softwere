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
		name: "start_date",
		label: "Enter your start_date",
		type: "date",
		value: moment().format("YYYY-MM-DD"),
	},

	{
		name: "end_date",
		label: "Enter your end_date",
		type: "date",
		value: moment().format("YYYY-MM-DD"),
	},

	{
		name: "is_complete",
		label: "Enter your is_complete",
		type: "select",
		value: "",
        data_list: [
            {
                value: "yes",
                label: "Yes",
            },
            {
                value: "no",
                label: "No",
            },
        ],
	},
];
