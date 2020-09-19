<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateIllnessSymsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mdc_illness_sym', function (Blueprint $table) {
            $table->id();
            $table->integer("illness_id");
            $table->integer("symptom_id");
            $table->string("if_main")->default("N");
            $table->text("symptom_des")->nullable();// json format {'if_show':1, 'sym_des': [{'sym_des_id': sym_des_id, 'show': 1, 'sq': 1},{'sym_des_id': sym_des_id2, 'show': 0, 'sq': 2}]}
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
        Schema::dropIfExists('mdc_illness_sym');
    }
}
