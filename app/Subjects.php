<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Subjects extends Model
{
    protected $table = 'mdc_subjects';
    
    protected $fillable = [
        'zh_name'
    ];

    protected $hidden = [
        
    ];

    protected $casts = [
        
    ];
}
