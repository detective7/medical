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
        $grid->column('bodypart_id', __('Bodypart id'));
        $grid->column('common', __('Common'));
        $grid->column('symptomdes', 'description count')->display(function ($symptomdes) {
            $count = count($symptomdes);
            return "<span class='label label-info'>{$count}</span>";
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
        $form->text('other_names', __('other names'));

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
