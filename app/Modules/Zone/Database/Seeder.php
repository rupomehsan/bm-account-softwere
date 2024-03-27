<?php

namespace App\Modules\Zone\Database;

use Illuminate\Database\Seeder as SeederClass;

class Seeder extends SeederClass
{
    /**
     * Run the database seeds.
     php artisan db:seed --class="\App\Modules\Zone\Database\Seeder"
     */
    static $model = \App\Modules\Zone\Models\Model::class;

    public function run(): void
    {
        self::$model::truncate();

        $zones = [
            'রামপুরা-বাড্ডা জোন (আসন-১১)',
            'হাতিরঝিল জোন - হেমায়েত হোসেন',
            'মো:পুর জোন - জিয়াউল হাসান',
            'মিরপুর জোন - মাহফুজুর রহমান',
            'কাফরুল জোন - ডাঃ এফ মানিক',
            'গুলশান-পল্লবী জোন-ইঞ্জি জি এম',
            'উত্তরা পশ্চিম জোন - ড.আর. করিম',
            'উত্তরা পূর্ব জোন - জামাল উদ্দিন',
            'শ্রমিক জোন',
            'পেশাজীবী জোন - আঃ রহমান মূসা',
            'মোহাম্মাদপুর জোন',
        ];

        foreach ($zones as $zone) {
            self::$model::create([
                'title' => $zone,
                'description' => "zone",
            ]);
        }
    }
}
