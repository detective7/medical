<?php

namespace App\Admin\Controllers;

use App\Illness;
use App\Subjects;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class IllnessController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Illness';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Illness());

        $grid->column('id', __('Id'));
        $grid->column('zh_name', __('Zh name'));
        $grid->column('url', __('Url'));
        $grid->column('other_names', __('Other names'));
        $grid->column('subject_id', __('Subject id'));
        $grid->column('high_ranking_person', __('High ranking person'));
        $grid->column('prevention_method', __('Prevention method'));
        $grid->column('inspection_and_diagnosis', __('Inspection and diagnosis'));
        $grid->column('treatment_method', __('Treatment method'));
        $grid->column('case_sharing', __('Case sharing'));
        $grid->column('relative_illness', __('Relative illness'));
        $grid->column('source_from', __('Source from'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

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
        $show = new Show(Illness::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('zh_name', __('Zh name'));
        $show->field('url', __('Url'));
        $show->field('other_names', __('Other names'));
        $show->field('subject_id', __('Subject id'));
        $show->field('high_ranking_person', __('High ranking person'));
        $show->field('prevention_method', __('Prevention method'));
        $show->field('inspection_and_diagnosis', __('Inspection and diagnosis'));
        $show->field('treatment_method', __('Treatment method'));
        $show->field('case_sharing', __('Case sharing'));
        $show->field('relative_illness', __('Relative illness'));
        $show->field('source_from', __('Source from'));
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
        $form = new Form(new Illness());

        $form->url('url', __('Url'));
        $form->text('zh_name', __('Zh name'));

        if($form->isEditing()){
            $illnessId = request()->route()->parameter('illness');
            $illness = $form->model()->find($illnessId);
            $other_names = explode(",",$illness->other_names);
            for ($i=0; $i < count($other_names); $i++) { 
                $form->text('other_names', ($i==0?__('other names'):"+"))->attribute(['name'=>'other_names[]','value'=>$other_names[$i]]);
            }
        }else{
            $form->text('other_names', __('other names'))->attribute(['name'=>'other_names[]']);
        }

        $form->select('subject_id', __('Subject'))->options(Subjects::all()->pluck('zh_name', 'id'))->rules('required');

        // 關聯處理


        $form->textarea('high_ranking_person', __('High ranking person'));
        $form->textarea('prevention_method', __('Prevention method'));
        $form->textarea('inspection_and_diagnosis', __('Inspection and diagnosis'));
        $form->textarea('treatment_method', __('Treatment method'));

        // $form->textarea('case_sharing', __('Case sharing'));
        if($form->isEditing()){
            $illnessId = request()->route()->parameter('illness');
            $illness = $form->model()->find($illnessId);
            $case_sharing = explode(",",$illness->case_sharing);
            for ($i=0; $i < count($case_sharing); $i++) { 
                $form->text('case_sharing', ($i==0?__('Case Sharing'):"+"))->attribute(['name'=>'case_sharing[]','value'=>$case_sharing[$i]]);
            }
        }else{
            $form->text('case_sharing', __('Case Sharing'))->attribute(['name'=>'case_sharing[]']);
        }

        
        // 數據處理
        $form->saving(function (Form $form) {
            // 別稱
            if(is_array($form->other_names)){
                $form->other_names = implode(",",$form->other_names);
            }

            // 病徵

            // 個案分享
        });


        $form->textarea('relative_illness', __('Relative illness'));
        $form->text('source_from', __('Source from'));

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
