<?php

namespace App\Modules\AccountManagement\AccountIncome\Actions;

class Show
{
    static $model = \App\Modules\AccountManagement\AccountIncome\Model::class;

    public static function execute($id)
    {
        try {
            $with = ['account_logs','account_category:id,title','user:id,full_name'];
            if (!$data = self::$model::query()->with($with)->where('id', $id)->first()) {
                return messageResponse('Data not found...', 404, 'error');
            }
            $data['page_item_count'] = self::$model::where('cash_book_page_no', $data['cash_book_page_no'])->count();
            $data['receipt_book_item_count'] = self::$model::where('account_receipt_book_no', $data['account_receipt_book_no'])->count();
            return entityResponse($data);
        } catch (\Exception $e) {
            return messageResponse($e->getMessage(), 500, 'server_error');
        }
    }
    public static function getLatestIncome()
    {
        try {
            $with = [];
            if ($data = self::$model::query()->with($with)->orderBy('id', 'desc')->first()) {
                $data['page_item_count'] = self::$model::where('cash_book_page_no', $data['cash_book_page_no'])->count();
                $data['receipt_book_item_count'] = self::$model::where('account_receipt_book_no', $data['account_receipt_book_no'])->count();
                return entityResponse($data);
            }
        } catch (\Exception $e) {
            return messageResponse($e->getMessage(), 500, 'server_error');
        }
    }
}
