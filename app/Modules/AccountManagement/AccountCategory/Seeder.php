<?php

namespace App\Modules\AccountManagement\AccountCategory;

use Illuminate\Database\Seeder as SeedersSeeder;

class Seeder extends SeedersSeeder
{
    /**
     php artisan db:seed --class="App\Modules\AccountManagement\AccountCategory\Seeder"
     * Run the database seeds.
     */
    static $model = \App\Modules\AccountManagement\AccountCategory\Model::class;
    public function run(): void
    {
        self::$model::truncate();
        $data = [
            "regular" => [
                "সরাসরি এয়ানত",
                "থানা থেকে প্রাপ্ত নিসাব",
                "শুভাকাঙ্খীদের দান",
                "টেলিফোন ফি",
            ],
            "irregular" => [
                "অনিয়মিত জমা",
                "প্রকাশনা",
                "এককালিন",
                "কল্যাণ তহবিল",
                "সভা/সম্মেলন",
                "তারবিয়াত",
                "সমাজকল্যান/সমাজসেবা",
                "নির্বাচনী ফান্ড",
                "শহীদ ফান্ড",
                "হাওলাত গ্রহন",
                "হাওলাত ফেরত",
                "আসবাবপত্র/সম্পদ ",
                "শীতবস্ত্র",
                "বিশেষ দান",
                "আইন আদালত",
                "অগ্রিম ফেরত",
                "ইফতার",
                "ফিতরা",
                "খাদ্য সহায়তা ফান্ড",
                "ভাড়া আদায়",
                "কুরবানী",
                "করজে হাসানা ফান্ড",
                "ত্রাণ তহবিল",
                "শিক্ষা প্রতিষ্ঠান",
                "বিবিধ",
                "করজে হাসানা ফান্ড",
                "ত্রাণ তহবিল",
                "শিক্ষা প্রতিষ্ঠান",
                "বিবিধ",
            ]
        ];

        foreach ($data['regular'] as $item) {
            self::$model::create([
                "title" => $item,
                "is_regular" => 1
            ]);
        }
        foreach ($data['irregular'] as $item) {
            self::$model::create([
                "title" => $item,
                "is_regular" => 0
            ]);
        }
    }
}
