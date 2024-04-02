export default [
	{
		name: "asset_id",
		label: "Enter your asset_id",
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
		name: "price",
		label: "Enter your price",
		type: "text",
		value: "",
	},

	{
		name: "qty",
		label: "Enter your qty",
		type: "number",
		value: "",
	},

	{
		name: "description",
		label: "Enter your description",
		type: "textarea",
		value: "",
	},

	{
		name: "is_waranty",
		label: "Enter your is_waranty",
		type: "select",
		label: "Select default is_waranty",
		value: "",
		multiple: false,
		data_list: [
			{
				label: "Active",
				value: "1",
			},
			{
				label: "Inactive",
				value: "0",
			},
		],
		value: "",
	},

	{
		name: "waranty_date",
		label: "Enter your waranty_date",
		type: "date",
		value: moment().format("YYYY-MM-DD"),
	},

	{
		name: "waranty_image",
		label: "Enter your waranty_image",
		type: "file",
		multiple: false,
		value: "",
	},
    {
		name: "item_image",
		label: "Enter your item_image",
		type: "file",
		multiple: false,
		value: "",
	},
];
