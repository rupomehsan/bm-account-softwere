<?php

use App\Modules\AccountManagement\AccountIncome\Controller;
use Illuminate\Support\Facades\Route;

Route::prefix('v1')->group(function () {
    Route::apiResource('account-incomes', Controller::class);
    Route::get('get-amount-to-number/{number}', [Controller::class, 'getAmountToNumber']);
    Route::post('account-incomes-search', [Controller::class, 'searchIncome']);
    Route::get('get-latest-income', [Controller::class, 'getLatestIncome']);
});
