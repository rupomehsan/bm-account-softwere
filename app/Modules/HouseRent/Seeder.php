<?php
namespace App\Modules\HouseRent;

use Illuminate\Database\Seeder as SeedersSeeder;

class Seeder extends SeedersSeeder
{
    /**
     * Run the database seeds.
     */
    static $model = \App\Modules\HouseRent\Model::class;
    public function run(): void
    {
        self::$model::truncate();
        self::$model::create([
            "title" => " ",
        ]);
    }
}