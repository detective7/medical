<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SymptomDes extends Model
{
    protected $table = 'mdc_symptom_des';
    
    protected $fillable = [
        'symptoms_id',
        'zh_symptom_des',
        'order'
    ];

    public function symptoms()
    {
        return $this->belongsTo(Symptoms::class, 'symptoms_id');
    }

}
