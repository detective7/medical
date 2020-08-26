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
