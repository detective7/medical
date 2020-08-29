<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSymptomTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mdc_symptoms', function (Blueprint $table) {
            $table->id();
            $table->string('zh_name');
            $table->string('url');
            $table->text('other_names')->comment('Separated by ","');
            $table->integer("bodypart_id");
            $table->boolean('common');// 是否常見病症
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('mdc_symptoms');
    }
}
