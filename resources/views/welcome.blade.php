<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Medical</title>

        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Nunito', sans-serif;
                font-weight: 200;
                height: 100vh;
                margin: 0;
            }
        </style>
    </head>
    <body>
    @if(!isset($contacts))
        <h1>Medical</h1>
    @else
        @foreach($contacts AS $key =>$value)
        <p>{{ $key }}-->{{ $value }}</p>
        @endforeach
        <?php // phpinfo(); ?>
    @endif
    </body>
</html>
