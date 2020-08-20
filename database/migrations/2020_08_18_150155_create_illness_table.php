<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateIllnessTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mdc_illness', function (Blueprint $table) {
            $table->id();
            $table->string('zh_name');
            $table->string('url');
            $table->text('other_names')->comment('Separated by ","');
            $table->integer("subject_id");
            // 病症与病单独建关联表，还有额外的病症描述 and $table->boolean('main_symptom');
            $table->text('high_ranking_person');
            $table->text('prevention_method');
            $table->text('inspection_and_diagnosis');
            $table->text('treatment_method');
            $table->text('case_sharing')->comment('Separated by ","');
            $table->text('relative_illness')->comment('Separated by ",", list by id');
            // 需不需要互相关联，比如a->b, 那同时 b->a（这要关联表）, 且可不可以控制a->b,b-/>a
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
        Schema::dropIfExists('mdc_illness');
    }
}
