<?php

namespace App\Modules\AccountManagement\AccountIncome\Actions;

class Delete
{
    static $model = \App\Modules\AccountManagement\AccountIncome\Model::class;
    static $logModel = \App\Modules\AccountManagement\AccountLog\Model::class;

    public static function execute($id)
    {
        try {
            if (!$data = self::$model::find($id)) {
                return messageResponse('Data not found...', 404, 'error');
            }
            self::$logModel::where('id', $data->account_log_id)->delete();
            $data->delete();
            return messageResponse('Item successfully deleted', 200, 'success');
        } catch (\Exception $e) {
            return messageResponse($e->getMessage(), 500, 'server_error');
        }
    }
}
