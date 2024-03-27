<?php

namespace App\Modules\AppUser\Database;

use Illuminate\Database\Seeder as SeederClass;

class Seeder extends SeederClass
{
    /**
     * Run the database seeds.
     php artisan db:seed --class="\App\Modules\AppUser\Database\Seeder"
     */
    static $model = \App\Modules\AppUser\Models\Model::class;
    public function run(): void
    {
        // self::$model::factory()->count(100)->create();
        self::$model::truncate();
        self::$model::create([
            'name' => 'name',
            'email' => 'email',
            'phone' => '123456',
            'address' => 'address',
            'image' => 'image',
        ]);
    }
}
