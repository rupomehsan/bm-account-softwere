<?php

namespace App\Modules\CpApplication\Actions;

use App\Modules\CpApplication\Actions\Validation;
use Illuminate\Support\Facades\Hash;

class Store
{
    static $model = \App\Modules\CpApplication\Model::class;
    static $applicationModelValue = \App\Modules\CpApplicationValue\Model::class;

    public static function execute(Validation $request)
    {
        try {
            // dd($request->all());
            $data = $request->validated();
            if ($request->hasFile('pdf_submission_file')) {
                $pdf_submission_file = $request->file('pdf_submission_file');
                $fileName = uploader($pdf_submission_file, 'uploads/application');
                $data['pdf_submission_file'] = $fileName;
            }
            // dd($extraField);
            if ($applicationData = self::$model::query()->create($data)) {
                $applicationValue = [];
                $applicationValue['cp_application_id'] = $applicationData->id;
                foreach ($request->extrafields as  $value) {
                    $field = array_keys($value);
                    $val = array_values($value);
                    $applicationValue["title"] = count($field) ? $field[0] : '';
                    $applicationValue["value"] = count($val) ? $val[0] : '';
                    self::$applicationModelValue::query()->create($applicationValue);
                }
                return messageResponse('Item added successfully', 201);
            }
        } catch (\Exception $e) {
            return messageResponse($e->getMessage(), 500, 'server_error');
        }
    }
}
