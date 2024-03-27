<?php

use App\Modules\AppUser\Controller;
use Illuminate\Support\Facades\Route;

Route::prefix('v1')->group(function () {
    Route::apiResource('app-users', Controller::class);
    Route::post('app-users/bulk-action', [Controller::class, 'bulkAction']);
});