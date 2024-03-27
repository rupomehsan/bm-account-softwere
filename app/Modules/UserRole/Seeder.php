<?php

namespace App\Modules\UserRole;

use Illuminate\Database\Seeder as SeedersSeeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class Seeder extends SeedersSeeder
{
    /**
     php artisan db:seed --class="App\Modules\UserRole\Seeder"
     * Run the database seeds.
     */
    static $roleModel = \App\Modules\UserRole\Model::class;
    public function run(): void
    {
        self::$roleModel::truncate();
        $roles = [
            'admin',
            'branch',
        ];

        foreach ($roles as $index => $role) {

            $roleData = self::$roleModel::create([
                "name" => $role,
                "serial" => $index + 1,
            ]);
            $roleData->save();
        }
    }
}
