<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>

    @include('includes.user.style')
  </head>
  <body>

    @yield('content')

    @include('includes.user.script')
  </body>
</html>
