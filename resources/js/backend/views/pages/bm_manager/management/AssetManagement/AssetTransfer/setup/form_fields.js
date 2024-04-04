export default [
	{
		name: "asset_id",
		label: "Selct asset",
		type: "select",
		value: "",
        data_list: [],
	},

	{
		name: "sender_id",
		label: "Enter your sender id",
		type: "number",
		value: "",
	},

	{
		name: "receiver_id",
		label: "Enter your receiver id",
		type: "number",
		value: "",
	},

	{
		name: "is_accepted_by_receiver",
		label: "Enter your is accepted by receiver",
		type: "number",
		value: "",
	},

	{
		name: "accepted_date",
		label: "Enter your accepted date",
		type: "date",
		value: moment().format("YYYY-MM-DD"),
	},

	{
		name: "request_date",
		label: "Enter your request date",
		type: "date",
        value: moment().format("YYYY-MM-DD"),
	},

	{
		name: "desctiption",
		label: "Enter your desctiption",
		type: "text",
		value: "",
	},
];
