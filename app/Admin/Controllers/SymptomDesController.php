<?php

namespace App\Admin\Controllers;

use App\SymptomDes;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class SymptomDesController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'SymptomDes';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new SymptomDes());

        $grid->column('id', __('Id'));
        $grid->column('symptoms_id', __('Symptom id'));
        $grid->column('zh_symptom_des', __('Zh symptom des'));
        $grid->column('order', __('Order'));
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
        $show = new Show(SymptomDes::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('symptoms_id', __('Symptom id'));
        $show->field('zh_symptom_des', __('Zh symptom des'));
        $show->field('order', __('Order'));
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
        $form = new Form(new SymptomDes());

        $form->number('symptoms_id', __('Symptom id'));
        $form->textarea('zh_symptom_des', __('Zh symptom des'));
        $form->number('order', __('Order'));
        $form->footer(function ($footer) {

            // 去掉`重置`按钮
            $footer->disableReset();
        
            // 去掉`提交`按钮
            // $footer->disableSubmit();
        
            // 去掉`查看`checkbox
            $footer->disableViewCheck();
        
            // 去掉`继续编辑`checkbox
            $footer->disableEditingCheck();
        
            // 去掉`继续创建`checkbox
            $footer->disableCreatingCheck();
        
        });

        return $form;
    }
}
