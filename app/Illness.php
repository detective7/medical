<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\IllnessSym;

class Illness extends Model
{
    
    protected $table = 'mdc_illness';
    
    protected $fillable = [
        'zh_name',
        'url',
        'other_names',
        'subject_id',
        'high_ranking_person',
        'prevention_method',
        'inspection_and_diagnosis',
        'treatment_method',
        'case_sharing',
        'relative_illness',
        'source_from',
    ];

    public function illnesssyms()
    {
        $pivotTable = 'mdc_illness_sym';
        return $this->belongsToMany('App\IllnessSym', $pivotTable, 'illness_id', 'symptom_id')->withPivot('if_main', 'symptom_des')->withTimestamps();
    }
}
