#Medical

Build Laravel

```
composer install --ignore-platform-reqs
```

or
```
composer update --ignore-platform-reqs
```

Generate APP Key
```
php artisan key:generate
```

Generate Model
```
composer require ignasbernotas/laravel-model-generator
```

app/Providers/AppServiceProvider.php
```
public function register()
{
    if ($this->app->environment() == 'local') {
        $this->app->register('Iber\Generator\ModelGeneratorProvider');
    }
}
```

According to https://zhuanlan.zhihu.com/p/68798578
![RUNOOB Edit1](http://static.runoob.com/images/runoob-logo.png)

Dashboard class under vendor\encore\laravel-admin\src\Controllers\

>\medical\vendor\encore\laravel-admin\src\Controllers\Dashboard.php
```
public static function system_developer()
{
    $json = file_get_contents(base_path('system_developer.json'));
    $developer = json_decode($json, true);
    return view('admin::dashboard.system_developer', compact('developer'));
}
```

>\medical\vendor\encore\laravel-admin\resources\views\dashboard\title.blade.php
```
<div class="title">
    Medical-admin
</div>
```

>\medical\app\Admin\Controllers\HomeController.php
```
->row(function (Row $row) {

    $row->column(4, function (Column $column) {
        $column->append(Dashboard::environment());
    });

    $row->column(4, function (Column $column) {
        $column->append(Dashboard::system_developer());
    });
}
```









