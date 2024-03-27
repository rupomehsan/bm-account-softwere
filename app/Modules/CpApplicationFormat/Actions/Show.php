<?php

namespace App\Modules\CpApplicationFormat\Actions;

use App\Modules\CpApplicationFormat\Actions\Validation;
use Illuminate\Support\Facades\Hash;

class Show
{
    static $model = \App\Modules\CpApplicationFormat\Model::class;

    public static function execute($id)
    {
        try {
            $with = [];
            if (!$data = self::$model::query()->with($with)->where('id', $id)->first()) {
                return messageResponse('Data not found...', 404, 'error');
            }
            $data = self::$model::where('cp_application_category_id', $data->cp_application_category_id)->get();
            return entityResponse($data);
        } catch (\Exception $e) {
            return messageResponse($e->getMessage(), 500, 'server_error');
        }
    }
}
