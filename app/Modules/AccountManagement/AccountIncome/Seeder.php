<?php

namespace App\Modules\AccountManagement\AccountIncome;

use Carbon\Carbon;
use Illuminate\Database\Seeder as SeedersSeeder;

class Seeder extends SeedersSeeder
{
    /**
     php artisan db:seed --class="App\Modules\AccountManagement\AccountIncome\Seeder"
     * Run the database seeds.
     */
    static $model = \App\Modules\AccountManagement\AccountIncome\Model::class;
    static $receiptBookAssignModel = \App\Modules\AccountManagement\AccountReceiptBookAssign\Model::class;
    static $accountLogModel = \App\Modules\AccountManagement\AccountLog\Model::class;
    public function run(): void
    {
        self::$model::truncate();

        self::$accountLogModel::truncate();

        for ($i = 1; $i < 50; $i++) {


            $income = self::$model::create([

                "date" => Carbon::now()->subDays(rand(1, 100))->toDateString(),
                "cash_book_no" => 1,
                "cash_book_page_no" => $i,
                "account_receipt_book_no" => $i,
                "account_receipt_no" => $i + 5,
                "account_category_id" => rand(1, 10),
                "branch_id" => rand(2, 200),
                "description" => "income",
                "amount" => rand(500, 1000),
                "amount_in_text" => numercToAlphabet(rand(500, 1000))
            ]);

            $logInfo =  self::$accountLogModel::create([
                "user_id" => $i,
                "user_type" => "central_division",
                "date" => $income->date,
                "amount" => $income->amount,
                "category_id" => $income->account_category_id,
                "account_id" => null,
                "account_number_id" => null,
                "trx_id" => null,
                "receipt_no" => $income->account_receipt_no,
                "is_expense" => 0,
                "is_income" => 1,
                "description" => "income",

            ]);

            $income->account_log_id = $logInfo->id;
            $income->save();
        }
    }
}
