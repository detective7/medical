<?php

namespace App\Admin\Controllers;

use App\BodyParts;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class BodyPartsController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'BodyParts';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new BodyParts());

        $grid->column('id', __('Id'));
        $grid->column('zh_name', __('Zh name'));
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
        $show = new Show(BodyParts::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('zh_name', __('Zh name'));
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
        $form = new Form(new BodyParts());

        $form->text('zh_name', __('Zh name'));
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
