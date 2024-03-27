<?php

namespace App\Modules\User;

use Illuminate\Database\Seeder as SeedersSeeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class Seeder extends SeedersSeeder
{
    /**
     php artisan db:seed --class="App\Modules\User\Seeder"
     * Run the database seeds.
     */
    static $userModel = \App\Modules\User\Model::class;
    static $roleModel = \App\Modules\UserRole\Model::class;
    public function run(): void
    {
        self::$userModel::truncate();


        $users = [
            [
                'full_name' => 'admin',
                'zone_id' => 1
            ],
            [
                'full_name' => 'বসুন্ধরা (৪০)',
                'zone_id' => 1
            ],
            [
                'full_name' =>  'ভাটারা (৩৯)',
                'zone_id' => 1
            ],
            [
                'full_name' => 'বাড্ডা উত্তর (৩৮, ৪১, ৪২)',
                'zone_id' => 1
            ],
            [
                'full_name' => 'বাড্ডা দক্ষিণ (৩৭)',
                'zone_id' => 1
            ],
            [
                'full_name' => 'রামপুরা উত্তর (২২)',
                'zone_id' => 1
            ],
            [
                'full_name' => 'রামপুরা দক্ষিণ (২৩)',
                'zone_id' => 1
            ],


            [
                'full_name' => 'হাতিরঝিল পূর্ব (৩৬)',
                'zone_id' => 2
            ],
            [
                'full_name' => 'হাতিরঝিল পশ্চিম (৩৫)',
                'zone_id' => 2
            ],
            [
                'full_name' => 'তেজগাঁও শিল্পাঞ্চল (২৪)',
                'zone_id' => 2
            ],
            [
                'full_name' => 'তেজগাঁও উত্তর (২৫)',
                'zone_id' => 2
            ],
            [
                'full_name' => 'তেজগাঁও দক্ষিণ (২৬)',
                'zone_id' => 2
            ],
            [
                'full_name' => 'শেরেবাংলা দক্ষিণ (২৭)',
                'zone_id' => 2
            ],


            [
                'full_name' => 'শেরেবাংলা উত্তর (২৮)',
                'zone_id' => 3
            ],
            [
                'full_name' => 'আদাবর (৩০)',
                'zone_id' => 3
            ],
            [
                'full_name' => 'মো:পুর পূর্ব (৩২)',
                'zone_id' => 3
            ],
            [
                'full_name' => 'মো:পুর পশ্চিম (৩৩)',
                'zone_id' => 3
            ],
            [
                'full_name' => 'মো:পুর উত্তর (২৯)',
                'zone_id' => 3
            ],
            [
                'full_name' => 'মো:পুর দক্ষিণ (৩৪)',
                'zone_id' => 3
            ],
            [
                'full_name' => 'মো:পুর মধ্য (৩১)',
                'zone_id' => 3
            ],



            [
                'full_name' => 'মিরপুর পশ্চিম (১২)',
                'zone_id' => 4
            ],
            [
                'full_name' => 'মিরপুর উত্তর (০৭)',
                'zone_id' => 4
            ],
            [
                'full_name' => 'মিরপুর দক্ষিণ (১১)',
                'zone_id' => 4
            ],
            [
                'full_name' => 'শাহআলী (০৮ ও কাউন্দিয়া)',
                'zone_id' => 4
            ],
            [
                'full_name' => 'দারুসসালাম (৯, ১০)',
                'zone_id' => 4
            ],



            [
                'full_name' => 'মিরপুর পূর্ব (১৩)',
                'zone_id' => 5
            ],
            [
                'full_name' => 'কাফরুল উত্তর (০৪)',
                'zone_id' => 5
            ],
            [
                'full_name' => 'কাফরুল দক্ষিণ (১৬)',
                'zone_id' => 5
            ],
            [
                'full_name' => 'কাফরুল পশ্চিম (১৪)',
                'zone_id' => 5
            ],
            [
                'full_name' => 'ভাষানটেক (১৫ আংশিক)',
                'zone_id' => 5
            ],




            [
                'full_name' => 'গুলশান পূর্ব (১৮)',
                'zone_id' => 6
            ],
            [
                'full_name' => 'গুলশান পশ্চিম (১৯)',
                'zone_id' => 6
            ],
            [
                'full_name' => 'বনানী (২০)',
                'zone_id' => 6
            ],
            [
                'full_name' => 'ক্যান্টনমেন্ট (১৫ আংশিক)',
                'zone_id' => 6
            ],
            [
                'full_name' => 'পল্লবী উত্তর (২)',
                'zone_id' => 6
            ],
            [
                'full_name' => 'পল্লবী দক্ষিণ (৩)',
                'zone_id' => 6
            ],
            [
                'full_name' => 'পল্লবী মধ্য (৫)',
                'zone_id' => 6
            ],
            [
                'full_name' => 'রুপনগর (৬)',
                'zone_id' => 6
            ],




            [
                'full_name' => 'তুরাগ উত্তর (৫৪)',
                'zone_id' => 7
            ],
            [
                'full_name' => 'তুরাগ দক্ষিণ (৫২)',
                'zone_id' => 7
            ],
            [
                'full_name' => 'তুরাগ মধ্য (৫৩)',
                'zone_id' => 7
            ],
            [
                'full_name' => 'উত্তরা মডেল (১ আংশিক)',
                'zone_id' => 7
            ],
            [
                'full_name' => 'উত্তরা পূর্ব (১ আংশিক)',
                'zone_id' => 7
            ],
            [
                'full_name' => 'উত্তরা পশ্চিম (৫১)',
                'zone_id' => 7
            ],
            [
                'full_name' => 'খিলক্ষেত পশ্চিম (১৭)',
                'zone_id' => 7
            ],




            [
                'full_name' => 'দক্ষিণখান পূর্ব (৪৮)',
                'zone_id' => 8
            ],
            [
                'full_name' => 'দক্ষিণখান পশ্চিম (৫০)',
                'zone_id' => 8
            ],
            [
                'full_name' => 'দক্ষিণখান উত্তর (৪৭)',
                'zone_id' => 8
            ],
            [
                'full_name' => 'উত্তরখান পূর্ব (৪৪, ৪৫)',
                'zone_id' => 8
            ],
            [
                'full_name' => 'উত্তরখান পশ্চিম (৪৬)',
                'zone_id' => 8
            ],
            [
                'full_name' => 'বিমানবন্দর (৪৯)',
                'zone_id' => 8
            ],
            [
                'full_name' => 'খিলক্ষেত পূর্ব (৪৩)',
                'zone_id' => 8
            ],




            [
                'full_name' => 'শ্রমিক কল্যাণ',
                'zone_id' => 9
            ],



            [
                'full_name' => 'আইনজীবী',
                'zone_id' => 10
            ],

            [
                'full_name' => 'মেডিকেল',
                'zone_id' => 10
            ],

            [
                'full_name' => 'মেডিকেল টেকনোলজিষ্ট',
                'zone_id' => 10
            ],

            [
                'full_name' => 'ইঞ্জিনিয়ার্স ফোরাম',
                'zone_id' => 10
            ],

            [
                'full_name' => 'সাহিত্য-সংস্কৃতি',
                'zone_id' => 10
            ],

            [
                'full_name' => 'ওলামা',
                'zone_id' => 10
            ],

            [
                'full_name' => 'সমাজ উন্নয়ন',
                'zone_id' => 10
            ],

            [
                'full_name' => 'ব্যবসায়ি ফোরাম',
                'zone_id' => 10
            ],
            [
                'full_name' => 'আদর্শ শিক্ষক',
                'zone_id' => 10
            ],
            [
                'full_name' => 'জাতীয় বিশ্ববিদ্যায়ল',
                'zone_id' => 10
            ],
            [
                'full_name' => 'প্রাইভেট বিশ্ববিদ্যায়ল',
                'zone_id' => 10
            ],
            [
                'full_name' => 'সাংবাদিক',
                'zone_id' => 10
            ],
            [
                'full_name' => 'ফোরাম অফ ডিপ্লোমা ইঞ্জিনিয়ার্স',
                'zone_id' => 10
            ],
            [
                'full_name' => 'কৃষিবিদ',
                'zone_id' => 10
            ],
            [
                'full_name' => 'সোশ্যাল ফোরাম',
                'zone_id' => 10
            ],
            [
                'full_name' => 'মহিলা বিভাগ',
                'zone_id' => 10
            ],
            [
                'full_name' => 'অফিস ওয়ার্ড (মহাখালী)',
                'zone_id' => 10
            ],
            [
                'full_name' => 'অফিস ওয়ার্ড (পরিবহন)',
                'zone_id' => 10
            ],


            // -----//

            [
                'full_name' => 'আবদুল্লাহ (প্রাক)',
                'zone_id' => 0
            ],
            [
                'full_name' => 'কেন্দ্রিয় জামায়াত',
                'zone_id' => 0
            ],
            [
                'full_name' => 'ডি এম সি এল',
                'zone_id' => 0
            ],
            [
                'full_name' => 'মহা, কর্মপরিষদ ও ইউনিট',
                'zone_id' => 0
            ],
            [
                'full_name' => 'জ সেলিম উদ্দিন',
                'zone_id' => 0
            ],
            [
                'full_name' => 'ড রেজাউল করিম',
                'zone_id' => 0
            ],
            [
                'full_name' => 'লস্কর মো: তাসলিম',
                'zone_id' => 0
            ],
            [
                'full_name' => 'জ মাহফুজুর রহমান',
                'zone_id' => 0
            ],
            [
                'full_name' => 'ডাঃ ফখরুদ্দিন মানিক',
                'zone_id' => 0
            ],
            [
                'full_name' => 'জ নাজিম উদ্দিন মোল্লা',
                'zone_id' => 0
            ],
            [
                'full_name' => 'জ নাজীম মিস্টার',
                'zone_id' => 0
            ],
            [
                'full_name' => 'জ হেমায়েত হোসেন	',
                'zone_id' => 0
            ],
            [
                'full_name' => 'ইঞ্জি গোলাম মোস্তফা',
                'zone_id' => 0
            ],
            [
                'full_name' => 'জিয়াউল হাসান',
                'zone_id' => 0
            ],
            [
                'full_name' => 'জ শহীদ ফারুকী',
                'zone_id' => 0
            ],
            [
                'full_name' => 'আবু আহসান',
                'zone_id' => 0
            ],
            [
                'full_name' => 'জ এস এম আলাউদ্দিন ',
                'zone_id' => 0
            ],
            [
                'full_name' => 'ইঞ্জি মুসলিম উদ্দিন',
                'zone_id' => 0
            ],
            [
                'full_name' => 'শাহ আলম বকশী',
                'zone_id' => 0
            ],
            [
                'full_name' => 'ড. আহসান হাবিব ইমরোজ',
                'zone_id' => 0
            ],
            [
                'full_name' => 'প্রফেসর আব্দুল করিম',
                'zone_id' => 0
            ],
            [
                'full_name' => 'ডাঃ সেলিনা',
                'zone_id' => 0
            ],
            [
                'full_name' => 'জ শফিকুল আলম',
                'zone_id' => 0
            ],
            [
                'full_name' => 'জ সানা উল্লাহ',
                'zone_id' => 0
            ],
            [
                'full_name' => 'জ কেফায়েত উল্লাহ',
                'zone_id' => 0
            ],
            [
                'full_name' => 'জ আবু সাইদ',
                'zone_id' => 0
            ],
            [
                'full_name' => 'জ রোকন উদ্দিন',
                'zone_id' => 0
            ],
            [
                'full_name' => 'জ শহিদুল্লাহ',
                'zone_id' => 0
            ],
            [
                'full_name' => 'জ আব্দুল্লাহ আল যুবায়ের ',
                'zone_id' => 0
            ],
            [
                'full_name' => 'মাও মুস্তাফিজ',
                'zone_id' => 0
            ],
            [
                'full_name' => 'জ মুস্তাফিজ',
                'zone_id' => 0
            ],
            [
                'full_name' => 'ফজলুল হক ',
                'zone_id' => 0
            ],
            [
                'full_name' => 'ডা আব্দুল জলিল',
                'zone_id' => 0
            ],
            [
                'full_name' => 'ড. নজীবুর রহমান',
                'zone_id' => 0
            ],
            [
                'full_name' => 'ইঞ্জি আলমগীর হোসেন',
                'zone_id' => 0
            ],
            [
                'full_name' => 'এ এম ইউছুফ',
                'zone_id' => 0
            ],
            [
                'full_name' => 'শরীফ বায়জিদ মাহমুদ',
                'zone_id' => 0
            ],

            [
                'full_name' => 'এইচ এম জোবায়ের',
                'zone_id' => 0
            ],

            [
                'full_name' => 'মেসবাহ উদ্দিন নাঈম',
                'zone_id' => 0
            ],

            [
                'full_name' => 'ডাঃ ওয়াসেক বিল্লাহ',
                'zone_id' => 0
            ],

            [
                'full_name' => 'মোঃ ঈসা	',
                'zone_id' => 0
            ],

            [
                'full_name' => 'সুমাইয়া সাদিয়া',
                'zone_id' => 0
            ],

            [
                'full_name' => 'মোস্তাফিজুর রহমান (দারুসসালাম)',
                'zone_id' => 0
            ],

            [
                'full_name' => 'নাসরিন',
                'zone_id' => 0
            ],

            [
                'full_name' => 'ডাঃ জাফর ',
                'zone_id' => 0
            ],

            [
                'full_name' => 'হুসাইন আহমদ ভ্ঞুাঁ',
                'zone_id' => 0
            ],

            [
                'full_name' => 'ঈসমাইল',
                'zone_id' => 0
            ],

            [
                'full_name' => 'মতিউর রহমান',
                'zone_id' => 0
            ],

            [
                'full_name' => 'জ আকবর আলী',
                'zone_id' => 0
            ],

            [
                'full_name' => 'কে এম রহমান',
                'zone_id' => 0
            ],

            [
                'full_name' => 'আব্দুল আউয়াল মিন্টু',
                'zone_id' => 0
            ],

            [
                'full_name' => 'জ সাইফুল ইসলাম',
                'zone_id' => 0
            ],

            [
                'full_name' => 'এ কে এম কায়সার',
                'zone_id' => 0
            ],

            [
                'full_name' => 'আ জ ম কামাল উদ্দিন',
                'zone_id' => 0
            ],

            [
                'full_name' => 'এইচ বি হাদি',
                'zone_id' => 0
            ],

            [
                'full_name' => 'নজরুল ইসলাম',
                'zone_id' => 0
            ],

            [
                'full_name' => 'ডাঃ জেহাদ ',
                'zone_id' => 0
            ],

            [
                'full_name' => 'জ. মাসুদ আলম',
                'zone_id' => 0
            ],

            [
                'full_name' => 'সুমন',
                'zone_id' => 0
            ],

            [
                'full_name' => 'ইঞ্জি এএম মিয়াজি',
                'zone_id' => 0
            ],

            [
                'full_name' => 'মাহমুদুর রহমান',
                'zone_id' => 0
            ],

            [
                'full_name' => 'আবুল হাশেম',
                'zone_id' => 0
            ],

            [
                'full_name' => 'আমিনুর রহমান মনির ',
                'zone_id' => 0
            ],

            [
                'full_name' => 'আ আহাদ জিহাদী',
                'zone_id' => 0
            ],

            [
                'full_name' => 'এড আজহার ',
                'zone_id' => 0
            ],

            [
                'full_name' => 'ইঞ্জি ওয়াসেক আলী	',
                'zone_id' => 0
            ],

            [
                'full_name' => 'জ মাহবুবুর রহমান সুধি',
                'zone_id' => 0
            ],

            [
                'full_name' => 'আব্দুল্লাহ মুয়াজ ',
                'zone_id' => 0
            ],

            [
                'full_name' => 'রাশেদ',
                'zone_id' => 0
            ],


            [
                'full_name' => 'ইঞ্জি কামরুল ',
                'zone_id' => 0
            ],

            [
                'full_name' => 'ইঞ্জি এস এম খান',
                'zone_id' => 0
            ],

            [
                'full_name' => 'রোকেয়া',
                'zone_id' => 0
            ],

            [
                'full_name' => 'ফেরদৌস ',
                'zone_id' => 0
            ],

            [
                'full_name' => 'রুনা',
                'zone_id' => 0
            ],

            [
                'full_name' => 'ইঞ্জি আবু রিজওয়ান	',
                'zone_id' => 0
            ],

            [
                'full_name' => 'সাইফুল 	',
                'zone_id' => 0
            ],

            [
                'full_name' => 'পি এইচ এস উল্লাহ',
                'zone_id' => 0
            ],

            [
                'full_name' => 'ফাতেমা পলি',
                'zone_id' => 0
            ],

            [
                'full_name' => 'আমিনুর মনির ',
                'zone_id' => 0
            ],

            [
                'full_name' => 'ডাঃ জে টি ফারিহা',
                'zone_id' => 0
            ],


            [
                'full_name' => 'আইউব আলী',
                'zone_id' => 0
            ],


            [
                'full_name' => 'খাদিজা	',
                'zone_id' => 0
            ],


            [
                'full_name' => 'প্র আ করিম/ আবুল কালাম',
                'zone_id' => 0
            ],


            [
                'full_name' => 'প্র আ করিম/ অধ্য রেহেনা বেগম',
                'zone_id' => 0
            ],


            [
                'full_name' => 'ফখ: কেফা: উ/ওয়াহিদুল ইসলাম',
                'zone_id' => 0
            ],


            [
                'full_name' => 'এড. আজহার মুন্সি	',
                'zone_id' => 0
            ],


            [
                'full_name' => 'জিয়াউল হাসান/ইলিয়াস হোসেন',
                'zone_id' => 0
            ],


            [
                'full_name' => 'শহিদুল­াহ /এম বিল­াহ',
                'zone_id' => 0
            ],


            [
                'full_name' => 'ড. আব্দুস সামাদ	',
                'zone_id' => 0
            ],


            [
                'full_name' => 'রকিবুল ইসলাম',
                'zone_id' => 0
            ],


            [
                'full_name' => 'ইয়াছিন আরাফাত',
                'zone_id' => 0
            ],


            [
                'full_name' => 'মহিব্বুল­াহ',
                'zone_id' => 0
            ],


            [
                'full_name' => 'এইচ আর ডি বিভাগ	',
                'zone_id' => 0
            ],


            [
                'full_name' => 'মহিব্বুল­াহ',
                'zone_id' => 0
            ],


            [
                'full_name' => 'সুমাইয়া সাদিয়া',
                'zone_id' => 0
            ],


            [
                'full_name' => 'এস এম আলাউদ্দিন/আবুল হাসানাত',
                'zone_id' => 0
            ],


            [
                'full_name' => 'এস এম আলাউদ্দিন/সাদেক+মিসেস',
                'zone_id' => 0
            ],


            [
                'full_name' => 'ড. মোজাম্মেল হক/সেলিম উদ্দিন',
                'zone_id' => 0
            ],


            [
                'full_name' => 'মুসা ভাই কালেকশন/সাভিস নিন মাঃ',
                'zone_id' => 0
            ],


            [
                'full_name' => 'এ আর এস মনির/ সেলিম উদ্দিন',
                'zone_id' => 0
            ],


            [
                'full_name' => 'নাসির উদ্দিন',
                'zone_id' => 0
            ],


            [
                'full_name' => 'আনোয়ার হোসেন মোল্লা	',
                'zone_id' => 0
            ],


            [
                'full_name' => 'আতাউর রহমান সরকার',
                'zone_id' => 0
            ],


            [
                'full_name' => 'আব্দুল হান্নান	',
                'zone_id' => 0
            ],


            [
                'full_name' => 'আলী আকরাম মোঃ উজায়ের	',
                'zone_id' => 0
            ],


            [
                'full_name' => 'আব্দুল ওয়াজেদ কিরোন',
                'zone_id' => 0
            ],


            [
                'full_name' => 'মোঃ আজহার মুন্সি',
                'zone_id' => 0
            ],


            [
                'full_name' => 'সৈয়দ মনজুর হোসেন',
                'zone_id' => 0
            ],


            [
                'full_name' => 'জামাল উদ্দিন	',
                'zone_id' => 0
            ],


            [
                'full_name' => 'আঃ রাজ্জাক',
                'zone_id' => 0
            ],


            [
                'full_name' => 'আলী হোসেন মুরাদ	',
                'zone_id' => 0
            ],


            [
                'full_name' => 'হাসানুল বান্না চপল	',
                'zone_id' => 0
            ],


            [
                'full_name' => 'জিয়াউল হাসান/ইলিয়াস হোসেন',
                'zone_id' => 0
            ],



            [
                'full_name' => 'ডাঃ আঃ জলিল/আবু জোয়াহের',
                'zone_id' => 0
            ],



            [
                'full_name' => 'ডাঃ আঃ জলিল/সীমা',
                'zone_id' => 0
            ],



            [
                'full_name' => 'ডাঃ আঃ জলিল/ওয়াহিদ',
                'zone_id' => 0
            ],



            [
                'full_name' => 'ডাঃ আঃ জলিল/দুলাল খান	',
                'zone_id' => 0
            ],



            [
                'full_name' => 'ডাঃ আঃ জলিল/কামরুল',
                'zone_id' => 0
            ],



            [
                'full_name' => 'ডাঃ আঃ জলিল/মিসেস সাজেদ	',
                'zone_id' => 0
            ],



            [
                'full_name' => 'ডাঃ আঃ জলিল/মিসেস হোসেন',
                'zone_id' => 0
            ],



            [
                'full_name' => 'ডাঃ আঃ জলিল/মুক্তা আম্বিয়া	',
                'zone_id' => 0
            ],



            [
                'full_name' => 'ডাঃ আঃ জলিল/বিল্লাল',
                'zone_id' => 0
            ],



            [
                'full_name' => 'ডাঃ আঃ জলিল/তানিম',
                'zone_id' => 0
            ],



            [
                'full_name' => 'ডাঃ আঃ জলিল/নজরুল 	',
                'zone_id' => 0
            ],



            [
                'full_name' => 'ডাঃ আঃ জলিল/সবুর	',
                'zone_id' => 0
            ],



            [
                'full_name' => 'ডাঃ আঃ জলিল/মিসেস মুকিত',
                'zone_id' => 0
            ],



            [
                'full_name' => 'ফজলুল হক/এম আই এম আফাতুন্নবী',
                'zone_id' => 0
            ],



            [
                'full_name' => 'জিয়াউল হাসান/এড আব্দুস সুবহান',
                'zone_id' => 0
            ],



            [
                'full_name' => 'ইঞ্জি আনোয়ার',
                'zone_id' => 0
            ],



            [
                'full_name' => 'জিয়াউল হাসান/ফজলে এলাহী',
                'zone_id' => 0
            ],



            [
                'full_name' => 'ডাঃ আঃ জলিল/সালোয়া ',
                'zone_id' => 0
            ],



            [
                'full_name' => 'ডাঃ আঃ জলিল/ডালিয়া',
                'zone_id' => 0
            ],



            [
                'full_name' => 'ডাঃ আঃ জলিল/বাহারুল',
                'zone_id' => 0
            ],

            [
                'full_name' => 'ডাঃ আঃ জলিল/শাহীন',
                'zone_id' => 0
            ],

            [
                'full_name' => 'ডাঃ আঃ জলিল/সুরভী',
                'zone_id' => 0
            ],

            [
                'full_name' => 'ডাঃ আঃ জলিল/আবু হেনা মোস্তফা',
                'zone_id' => 0
            ],

            [
                'full_name' => 'ডাঃ আঃ জলিল/সামাদ ',
                'zone_id' => 0
            ],

            [
                'full_name' => 'ডাঃ আঃ জলিল/আবু বান্না',
                'zone_id' => 0
            ],

            [
                'full_name' => 'ডাঃ আঃ জলিল/আনোয়ারা',
                'zone_id' => 0
            ],

            [
                'full_name' => 'সাকিনা (সাকী)',
                'zone_id' => 0
            ],

            [
                'full_name' => 'ফয়েজ আহমেদ এম ডি আই সি',
                'zone_id' => 0
            ],

            [
                'full_name' => 'রইসুল ইসলাম পবন',
                'zone_id' => 0
            ],

            [
                'full_name' => 'আবু হাসান',
                'zone_id' => 0
            ],

            [
                'full_name' => 'নির্বাচনী অফিস',
                'zone_id' => 0
            ],

            [
                'full_name' => 'আব্দুল্লাহ (মাধ্যম আতাউর রহ সরকার)',
                'zone_id' => 0
            ],

            [
                'full_name' => 'ইঞ্জি কামাল উদ্দিন আহমেদ',
                'zone_id' => 0
            ],

            [
                'full_name' => 'ডাঃ আঃ জলিল/রাফিয়া',
                'zone_id' => 0
            ],

            [
                'full_name' => 'ডাঃ আঃ জলিল/আলো',
                'zone_id' => 0
            ],

            [
                'full_name' => 'ডি সি এন শিক্ষা বিভাগ',
                'zone_id' => 0
            ],


        ];


        foreach ($users as $index => $user) {

            $userData = self::$userModel::create([
                "full_name" => $user['full_name'],
                "english_name" => Str::slug($user['full_name']),
                "email" => $user['full_name'] . "@gmail.com",
                "password" => Hash::make('@12345678'),
                "zone_id" => $user['zone_id'],
            ]);
            $userData->save();
            DB::table('user_user_role')->insert([
                'user_id' => $userData->id,
                'user_role_id' => $index == 0 ? 1 :  2
            ]);
        }
    }
}
