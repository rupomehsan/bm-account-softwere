<?php

namespace App\Modules\AccountManagement\AccountIncome\Actions;

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

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array|string>
     */
    public function rules(): array
    {
        $rules = [
            'account_receipt_book_id' => 'required|sometimes',
            'account_receipt_book_no' => 'sometimes',
            'cash_book_page_no' => 'required|sometimes',
            'cash_book_no' => 'required|sometimes',
            'account_category_id' => 'required|sometimes',
            'central_division_id' => 'required|sometimes',
            'account_receipt_no' => 'required|sometimes',
            'branch_id' => 'required',
            'date' => 'required|sometimes',
            'description' => 'required|sometimes',
            'amount' => 'required|sometimes',
            'amount_in_text' => 'required|sometimes',
            'folio' => 'sometimes',
            'random_user' => 'sometimes',
            'status' => ['sometimes', Rule::in(['active', 'inactive'])],
        ];
        return $rules;
    }

    protected function failedValidation(Validator $validator)
    {
        throw new HttpResponseException($this->validateError($validator->errors()));
        if ($this->wantsJson() || $this->ajax()) {
            throw new HttpResponseException($this->validateError($validator->errors()));
        }
        parent::failedValidation($validator);
    }
}
