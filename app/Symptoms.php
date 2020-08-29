<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\BodyParts;
use App\SymptomDes;

class Symptoms extends Model
{
    protected $table = 'mdc_symptoms';
    
    protected $fillable = [
        'zh_name',
        'url',
        'other_names',
        'bodypart_id',
        'common',
    ];

    public function bodyPart()
    {
        return $this->belongsTo(BodyParts::class, 'bodypart_id');
    }

    public function symptomDes()
    {
        return $this->hasMany(SymptomDes::class);
    }
    
}
