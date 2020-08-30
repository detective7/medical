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


>\medical\vendor\encore\laravel-admin\resources\views\dashboard\system_developer.blade.php
```
<div class="box box-default">
    <div class="box-header with-border">
        <h3 class="box-title">System Developer</h3>
        <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
            </button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
        </div>
    </div>
    <div class="box-body">
        <ul class="products-list product-list-in-box">
            @foreach($developer as $key=>$val)
                <li class="item"><span style="font-weight: bold">{{ucfirst($key)}}:</span> {{$val}} </li>
            @endforeach
        </ul>
    </div>
</div>
```








