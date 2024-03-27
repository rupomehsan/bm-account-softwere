<?php

use App\Modules\Zone\Controller;
use Illuminate\Support\Facades\Route;

Route::prefix('v1')->group(function () {
    Route::apiResource('zones', Controller::class);
    Route::post('zones/bulk-action', [Controller::class, 'bulkAction']);
});