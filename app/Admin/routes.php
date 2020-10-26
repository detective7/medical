<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->resource('subject', SubjectsController::class);
    $router->resource('bodyPart', BodyPartsController::class);
    $router->resource('symptom', SymptomsController::class);
    $router->resource('symptomDes', SymptomDesController::class);
    $router->resource('illness', IllnessController::class);
    $router->get('/get_symptom', 'ToolController@getSymptoms');
    $router->get('/get_options', 'ToolController@getOptions')->name('get_options');

});
