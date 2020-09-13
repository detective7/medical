<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateIllnessSymTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mdc_illness_symptoms', function (Blueprint $table) {
            $table->id();
            $table->integer("illness_id");
            $table->integer("symptom_id");
            $table->string("if_main")->default("N");
            $table->binary("symptom_des");// json format {'if_show':1, 'sym_des': [{'sym_des_id': sym_des_id, 'show': 1, 'sq': 1},{'sym_des_id': sym_des_id2, 'show': 0, 'sq': 2}]}
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
        Schema::dropIfExists('mdc_illness_symptoms');
    }
}
