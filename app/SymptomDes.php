<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SymptomDes extends Model
{
    protected $table = 'mdc_symptom_des';
    
    protected $fillable = [
        'symptom_id',
        'zh_symptom_des',
        'order'
    ];
}
