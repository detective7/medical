<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSymptomDesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mdc_symptom_des', function (Blueprint $table) {
            $table->id();
            $table->integer("symptom_id");
            $table->text("zh_symptom_des");
            $table->integer("order");
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
        Schema::dropIfExists('mdc_symptom_des');
    }
}
