<?php

namespace App\Modules\AssetManagement\AssetTransfer\Actions;

use App\Modules\AssetManagement\AssetTransfer\Validations\Validation;


class Store
{
    static $model = \App\Modules\AssetManagement\AssetTransfer\Models\Model::class;

    public static function execute(Validation $request)
    {
        try {
            $requestData = $request->validated();
            if (self::$model::query()->create($requestData)) {
                return messageResponse('Item added successfully', 201);
            }
        } catch (\Exception $e) {
            return messageResponse($e->getMessage(), 500, 'server_error');
        }
    }
}