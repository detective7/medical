<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BodyParts extends Model
{
    protected $table = 'mdc_body_parts';
    
    protected $fillable = [
        'zh_name'
    ];
    
}
