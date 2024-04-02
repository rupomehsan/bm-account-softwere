<template>
    <div class="form-group">
        <label for="">
            {{ label || name }} <span v-if="labelParam" :class="`label-param-${name} fw-bold mx-2 text-danger`"> ( {{
                labelParam }} )</span>
        </label>
        <div v-if="['text', 'number', 'password', 'email', 'month'].includes(type)
                " class="mt-1 mb-3">
            <input class="form-control" :type="type" :name="name" :id="name" :value="value" @change="errorReset"
                :disabled="disabled" />
        </div>
        <div v-if="type == 'date'" class="mt-1 mb-3">
            <date-field :label="`Plan Date`" :name="name" :value="value" />
        </div>
        <div v-if="type === 'textarea'" class="mt-1 mb-3">
            <textarea class="form-control" type="text" :name="name" :value="value" :disabled="disabled"
                @change="errorReset"></textarea>
            <div :id="name"></div>
        </div>

        <div v-if="type === 'checkbox'" class="mt-1 mb-3">
            <div class="form-check form-switch">
                <input class="form-check-input" :name="name" :disabled="disabled" type="checkbox"
                    id="flexSwitchCheckDefault" />
            </div>
        </div>
        <div v-if="type === 'select'" class="mt-1 mb-3">
            <template v-if="searchable">
                <input type="text" class="form-control position-relative" v-model="searchInput"
                    @focus="searchDataShow = true" @focusout="hideSearchData">
                <input type="hidden" class="form-control" v-model="searchInputValue" :name="name" :id="name">
                <div v-if="searchDataShow">
                    <ul class="select-tools position-absolute">
                        <li class="cursor-pointer" v-for="(data, index) in data_list" :key="index"
                            @click="selectData(data)">
                            {{ data.label }}
                        </li>
                    </ul>
                </div>
            </template>
            <template v-else>
                <select :name="name" class="form-select" :id="name" :disabled="disabled" @change="errorReset">
                    <option value="">Select item</option>
                    <option v-for="data in data_list" :key="data" :value="data.value" :selected="data.value == value">
                        {{ data.label }}
                    </option>
                </select>
            </template>

        </div>
        <div v-if="type === 'file'" class="mt-1 mb-3">
            <image-component :name="name" :disabled="disabled" :multiple="multiple" :accept="`.jpg,.jpeg,.png`"
                :images="[value]"></image-component>
        </div>
    </div>
</template>

<script>
/**
 * props:
 */
export default {
    props: {
        name: {
            required: true,
            type: String,
        },
        label: {
            required: true,
            type: String,
        },
        type: {
            required: true,
            type: String,
        },
        multiple: {
            required: false,
            type: Boolean,
        },
        value: {
            required: false,
            type: Object,
        },
        labelParam: {
            required: false,
            default: null,
            type: String,
        },
        disabled: {
            required: false,
            type: Boolean,
        },
        searchable: {
            required: false,
            type: Boolean,
        },
        data_list: {
            required: false,
            type: Array,
        },
        onchange: {
            required: false,
            type: Function,
            default: () => "",
        },
    },

    methods: {
        errorReset(event) {
            let currentElement = event.target;
            let nextElement = currentElement.nextElementSibling;
            if (nextElement) {
                currentElement.classList.remove("border-warning");
                nextElement.remove();
            }

            if (this.onchange) {
                this.onchange(event);
            }
        },
    },


    created: function () {

        // console.log("dd",this.value);
        this.searchInput = this.value?.name
        this.searchInputValue = this.value?.id
    },

    data() {
        return {
            searchInput: "",
            searchInputValue: "",
            searchDataShow: false,
            data_show: false,
        };
    },
    methods: {
        selectData(data) {
            this.searchInput = data.label;
            this.searchInputValue = data.value;
            this.searchDataShow = false;
            this.$emit("input", data.value);
        },
        // getElement() {
        //     if (event) {
        //         this.searchDataShow = false

        //     }
        // }
        hideSearchData() {
            let that = this
            setTimeout(() => that.searchDataShow = false, 500)
        }
    },
    watch: {
        searchInput(value) {
            if (value) {
                this.searchDataShow = true;
            } else {
                this.searchDataShow = false;
            }
        },
    },
};
</script>

<style></style>
