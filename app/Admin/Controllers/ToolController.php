<?php

namespace App\Admin\Controllers;
use Encore\Admin\Controllers\AdminController;

use Illuminate\Http\Request;
use App\Symptoms;
use App\SymptomDes;

class ToolController extends AdminController
{
    protected function getSymptoms(Request $requests){
        $symptom_id = $requests->get('s_id', 1);
        $_query = SymptomDes::query();
        $_query->where('symptoms_id', $symptom_id);
        $_dat = $_query->get(['id', 'symptoms_id','zh_symptom_des'])->toArray();
        return response()->json($_dat);
    }
}
