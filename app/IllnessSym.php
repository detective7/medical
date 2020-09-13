<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class IllnessSym extends Model
{
    
    protected $table = 'mdc_illness_sym';
    
    protected $fillable = [
        'illness_id',
        'symptom_id',
        'if_main',
        'symptom_des',
    ];
}
