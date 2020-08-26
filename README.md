<p align="center">Medical</p>

<p>Build Laravel</p>
```composer install --ignore-platform-reqs```
<p>or</p>
```composer update --ignore-platform-reqs```

<p>Generate APP Key</p>
```php artisan key:generate```

<p>Generate Model</p>
```composer require ignasbernotas/laravel-model-generator```
```composer require ignasbernotas/laravel-model-generator```
<p>app/Providers/AppServiceProvider.php</p>
```
public function register()
{
    if ($this->app->environment() == 'local') {
        $this->app->register('Iber\Generator\ModelGeneratorProvider');
    }
}
```
