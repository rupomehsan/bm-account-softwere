<?php

namespace App\Modules\AssetManagement\Asset\Validations;

use Illuminate\Contracts\Validation\Validator;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Exceptions\HttpResponseException;
use Illuminate\Validation\Rule;

class Validation extends FormRequest
{
    /**
     * Determine if the  is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }
    /**
     * validateError to make this request.
     */
    public function validateError($data)
    {
        $errorPayload =  $data->getMessages();
        return response(['status' => 'validation_error', 'errors' => $errorPayload], 422);
    }

    protected function failedValidation(Validator $validator)
    {
        throw new HttpResponseException($this->validateError($validator->errors()));
        if ($this->wantsJson() || $this->ajax()) {
            throw new HttpResponseException($this->validateError($validator->errors()));
        }
        parent::failedValidation($validator);
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array|string>
     */
    public function rules(): array
    {
        return [
            'central_division_id' => 'required | sometimes',
            'title' => 'required | sometimes',
            'description' => 'required | sometimes',
            'price' => 'required | sometimes',
            'memo_no' => 'required | sometimes',
            'memo_date' => 'required | sometimes',
            'code' => 'required | sometimes',
            'asset_location' => 'required | sometimes',
            'asset_owner' => 'required | sometimes',
            'owner_phone_number' => 'required | sometimes',
            'depreciation_type' => 'required | sometimes',
            'asset_image' => 'required',
            'voucher_image' => 'required',
            'acceptance_image' => 'required',
            'buying_date' => 'required | sometimes',
            'hand_over_date' => 'required | sometimes',
            'comments' => 'required | sometimes',
            'cs_quotaiton_image' => 'required',
            'cs_quotation_id' => 'required | sometimes',
            'asset_quotation_id' => 'required | sometimes',
            'asset_request_to_cp_id' => 'required | sometimes',
            'status' => ['sometimes', Rule::in(['active', 'inactive'])],
        ];
    }
}
