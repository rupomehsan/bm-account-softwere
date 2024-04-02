export default [
	{
		name: "asset_id",
		label: "Enter your asset id",
		type: "number",
		value: "",
	},

	{
		name: "asset_quotation_id",
		label: "Enter your asset quotation id",
		type: "number",
		value: "",
	},

	{
		name: "title",
		label: "Enter your title",
		type: "text",
		value: "",
	},

	{
		name: "quotation_image",
		label: "Enter your quotation image",
		type: "text",
		value: "",
	},

	{
		name: "is_approved",
		label: "Enter your is approved",
		type: "select",
		label: "Select default  is approved",
		multiple: false,
		data_list: [
			{
				label: "Active",
				value: "active",
			},
			{
				label: "Inactive",
				value: "inactive",
			},
		],
		value: "",
	},

	{
		name: "request_type",
		label: "Enter your request type",
		type: "text",
		value: "",
	},
];
