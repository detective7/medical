<?php

/**
 * Laravel-admin - admin builder based on Laravel.
 * @author z-song <https://github.com/z-song>
 *
 * Bootstraper for Admin.
 *
 * Here you can remove builtin form field:
 * Encore\Admin\Form::forget(['map', 'editor']);
 *
 * Or extend custom form field:
 * Encore\Admin\Form::extend('php', PHPEditor::class);
 *
 * Or require js and css assets:
 * Admin::css('/packages/prettydocs/css/styles.css');
 * Admin::js('/packages/prettydocs/js/main.js');
 *
 */

Encore\Admin\Form::forget(['map', 'editor']);
use App\Admin\Extensions\MultipleColumn;
Encore\Admin\Form::extend('multipleColumn', MultipleColumn::class);

Admin::css('/assets/admin_css/otherNames.css');
Admin::script("$(document.body).append('<script src=\'/assets/admin_js/otherNames.js\'>');");
Admin::script("$(document.body).append('<script src=\'/assets/admin_js/caseSharing.js\'>');");
Admin::css('/assets/admin_css/illnesssyms.css');
Admin::script("$(document.body).append('<script src=\'/assets/admin_js/illness.js\'>');");
