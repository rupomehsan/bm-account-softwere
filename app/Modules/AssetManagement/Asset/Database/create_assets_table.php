<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     php artisan migrate --path='\App\Modules\AssetManagement\Asset\Database\create_assets_table.php'
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('assets', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('central_division_id')->nullable();
            $table->string('title')->nullable();
            $table->text('description')->nullable();
            $table->bigInteger('price')->nullable();
            $table->string('memo_no')->nullable();
            $table->date('memo_date')->nullable();
            $table->string('code')->nullable();
            $table->text('asset_location')->nullable();
            $table->string('asset_owner')->nullable();
            $table->string('owner_phone_number')->nullable();
            $table->enum('depreciation_type', ['flat', 'percent'])->nullable();
            $table->string('asset_image')->nullable();
            $table->string('voucher_image')->nullable();
            $table->string('acceptance_image')->nullable();
            $table->date('buying_date')->nullable();
            $table->date('hand_over_date')->nullable();
            $table->text('comments')->nullable();
            $table->string('cs_quotaiton_image')->nullable();
            $table->bigInteger('cs_quotation_id')->nullable();
            $table->bigInteger('asset_quotation_id')->nullable();
            $table->bigInteger('asset_request_to_cp_id')->nullable();
            $table->bigInteger('creator')->unsigned()->nullable();
            $table->string('slug', 50)->nullable();
            $table->enum('status', ['active', 'inactive'])->default('active');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('assets');
    }
};
