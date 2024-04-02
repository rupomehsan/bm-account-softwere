<?php
namespace App\Modules\TestModule\Database;

use Illuminate\Database\Seeder as SeederClass;

class Seeder extends SeederClass
{
    /**
     * Run the database seeds.
     php artisan db:seed --class="\App\Modules\TestModule\Database\Seeder"
     */
    static $model = \App\Modules\TestModule\Models\Model::class;
    public function run(): void
    {

        self::$model::truncate();
        for ($i = 1; $i < 100; $i++) {
        self::$model::create([
            'name' => facker()->name,
            'age' => facker()->name,
            ]);
        }
    }
}