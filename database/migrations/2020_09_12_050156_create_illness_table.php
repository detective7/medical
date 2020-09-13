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
            // 病症与病徵单独建关联表，还有额外的病症描述 and $table->boolean('main_symptom');
            $table->text('high_ranking_person')->nullable();
            $table->text('prevention_method')->nullable();
            $table->text('inspection_and_diagnosis')->nullable();
            $table->text('treatment_method')->nullable();
            $table->text('case_sharing')->comment('Separated by ","')->nullable();
            $table->text('relative_illness')->comment('Separated by ",", list by id')->nullable();
            $table->string('source_from')->nullable();
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
