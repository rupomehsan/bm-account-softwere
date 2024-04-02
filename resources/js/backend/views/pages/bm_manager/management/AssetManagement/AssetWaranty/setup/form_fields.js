export default [
	{
		name: "asset_id",
		label: "Enter your asset_id",
		type: "number",
		value: "",
	},

	{
		name: "waranty_date",
		label: "Enter your waranty_date",
		type: "date",
		value: moment().format("YYYY-MM-DD"),
	},

	{
		name: "description",
		label: "Enter your description",
		type: "textarea",
		value: "",
	},

	{
		name: "waranty_card_image",
		label: "Enter your waranty_card_image",
		type: "file",
		multiple: "false",
		value: "",
	},
];
