<?php

namespace App\Admin\Controllers;

use App\Symptoms;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use App\BodyParts;
use App\SymptomDes;

class SymptomsController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Symptoms';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Symptoms());

        $grid->column('id', __('Id'));
        $grid->column('zh_name', __('Zh name'));
        $grid->column('url', __('Url'));
        $grid->column('other_names', __('Other names'));
        $grid->column('bodypart_id', __('Bodypart id'))->display(function ($bodypart_id) {
            return BodyParts::find($bodypart_id)->zh_name;
        });
        $grid->column('common', __('Common'));
        $grid->column('symptomdes', 'description')->display(function ($symptomdes) {
            $count = count($symptomdes);
            $display = "";
            for ($i=0; $i < $count; $i++) { 
                $display .= "<span class='label label-info'>{$symptomdes[$i]["zh_symptom_des"]}</span> ";
            }
            return $display;
        });
        $grid->column('created_at', __('Created at'))->date('Y-m-d H:i:s');
        $grid->column('updated_at', __('Updated at'))->date('Y-m-d H:i:s');

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Symptoms::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('zh_name', __('Zh name'));
        $show->field('url', __('Url'));
        $show->field('other_names', __('Other names'));
        $show->symptomdes( __('description'), function ($symptomdes) {

            $symptomdes->resource('/admin/symptomdes');
        
            $symptomdes->id();
            $symptomdes->zh_symptom_des()->limit(10);
        
        });
        // $show->field('bodypart_id', __('Bodypart id'));
        $show->bodyPart( __('Bodypart'), function ($bodyPart) {
            $bodyPart->setResource('/admin/bodyPart');
            $bodyPart->zh_name();
        });
        $show->field('common', __('Common'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Symptoms());

        $form->text('zh_name', __('Symptom name'))->rules('required');
        $form->url('url', __('Url'));
        if($form->isEditing()){
            $symptomId = request()->route()->parameter('symptom');
            $symptom = $form->model()->find($symptomId);
            $other_names = explode(",",$symptom->other_names);
            for ($i=0; $i < count($other_names); $i++) { 
                $form->text('other_names', ($i==0?__('other names'):"+"))->attribute(['name'=>'other_names[]','value'=>$other_names[$i]]);
            }
            // print_r(count($other_names));
            // die;
        }else{
            $form->text('other_names', __('other names'))->attribute(['name'=>'other_names[]']);
        }
        
        $form->saving(function (Form $form) {
            if(is_array($form->other_names)){
                $form->other_names = implode(",",$form->other_names);
            }
            $this->beforeStatus = $form->model()->pass_status;
        });
        

        $form->hasMany('symptomdes', __('description'), function (Form\NestedForm $form) {
            $form->text('zh_symptom_des', "detail");

        });

        // $form->number('bodypart_id', __('Bodypart id'));
        $form->select( 'bodypart_id', __('Bodypart'))->options(BodyParts::all()->pluck('zh_name', 'id'))->rules('required');
        
        $form->switch('common', __('Common'));

        $form->footer(function ($footer) {
            $footer->disableReset();
            // $footer->disableSubmit();
            $footer->disableViewCheck();
            $footer->disableEditingCheck();
            $footer->disableCreatingCheck();
        });

        return $form;
    }
    
}
