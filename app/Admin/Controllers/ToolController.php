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

    public function getOptions()
    {
        $res = [];
        $org_codes = \request('organizations');
        if (in_array('D000', $org_codes)) {
            $departments = Department::get()->toArray();
            $res['D000'] = [
                'column' => 'organizations',
                'label' => '全公司',
                'sub' => [],
            ];
            $organizations = Organization::pluck('org_name', 'org_code')->toArray();
 
        } else {
            $departments = Department::whereIn('f_organization_code', $org_codes)->get()->toArray();
            $organizations = Organization::whereIn('org_code', $org_codes)->pluck('org_name', 'org_code')->toArray();
        }
        // return json_encode($departments);
        foreach ($departments as $key => $item) {
            if (in_array('D000', $org_codes)) {
                if ($item['sup_department_code'] == '0' || empty($item['sup_department_code'])) {
                    if (in_array($item['f_organization_code'], $org_codes)) {
                        $res[$item['f_organization_code']] = [
                            'column' => 'organizations',
                            'label' => isset($organizations[$item['f_organization_code']]) ? $organizations[$item['f_organization_code']] : '未知公司',
                        ];
                        $res[$item['f_organization_code']]['sub'][$item['department_code']] = [
                            'column' => 'departments',
                            'label' => $item['department_name'],
                            'sub' => $this->makeSubOptions($item['department_code'], $departments)
                        ];
                    }
                    $res['D000']['sub'][$item['f_organization_code']] = [
                        'column' => 'organizations',
                        'label' => isset($organizations[$item['f_organization_code']]) ? $organizations[$item['f_organization_code']] : '未知公司',
                    ];
 
                    foreach ($departments as $k => $vo) {
                        if (($item['sup_department_code'] == '0' || empty($item['sup_department_code']))
                            && $item['f_organization_code'] == $vo['f_organization_code']) {
                            $res['D000']['sub'][$item['f_organization_code']]['sub'][$vo['department_code']] = [
                                'column' => 'departments',
                                'label' => $vo['department_name'],
                                'sub' => $this->makeSubOptions($vo['department_code'], $departments),
                            ];
                        }
 
                    }
 
                }
            } else {
                if ($item['sup_department_code'] == '0' || empty($item['sup_department_code'])) {
                    $res[$item['f_organization_code']]['column'] = 'organizations';
                    $res[$item['f_organization_code']]['label'] = $organizations[$item['f_organization_code']];
                    $res[$item['f_organization_code']]['sub'][$item['department_code']] = [
                        'column' => 'departments',
                        'label' => $item['department_name'],
                        'sub' => $this->makeSubOptions($item['department_code'], $departments)
                    ];
                }
            }
        }
        foreach ($org_codes as $org_code) {
            if (!isset($res[$org_code])) {
                $res[$org_code] = [
                    'label' => $organizations[$org_code],
                    'column' => 'organizations',
                    'sub' => [],
                ];
            }
        }
 
 
        return json_encode($res);
    }
 
    protected function makeSubOptions($parent_key, $data)
    {
        $res = [];
        foreach ($data as $key => $item) {
            if ($item['sup_department_code'] == $parent_key) {
                $res[$item['department_code']] = [
                    'column' => 'departments',
                    'label' => $item['department_name'],
                    'sub' => $this->makeSubOptions($item['department_code'], $data),
                ];
            }
        }
        return $res;
    }
}
