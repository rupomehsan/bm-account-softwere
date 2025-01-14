<?php

namespace App\Modules\AssetManagement\Asset\Actions;

use App\Modules\AssetManagement\Asset\Validations\Validation;


class Store
{
    static $model = \App\Modules\AssetManagement\Asset\Models\Model::class;

    public static function execute(Validation $request)
    {
        try {
            $requestData = $request->validated();
            if ($request->hasFile('asset_image')) {
                $image = $request->file('asset_image');
                $requestData['asset_image'] = uploader($image, 'uploads/asset');
            }
            if ($request->hasFile('voucher_image')) {
                $image = $request->file('voucher_image');
                $requestData['voucher_image'] = uploader($image, 'uploads/asset');
            }
            if ($request->hasFile('acceptance_image')) {
                $image = $request->file('acceptance_image');
                $requestData['acceptance_image'] = uploader($image, 'uploads/asset');
            }
            if ($request->hasFile('cs_quotaiton_image')) {
                $image = $request->file('cs_quotaiton_image');
                $requestData['cs_quotaiton_image'] = uploader($image, 'uploads/asset');
            }

            if (self::$model::query()->create($requestData)) {
                return messageResponse('Item added successfully', 201);
            }
        } catch (\Exception $e) {
            return messageResponse($e->getMessage(), 500, 'server_error');
        }
    }
}
