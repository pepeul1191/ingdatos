<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="shortcut icon" href="/favicon.png" type="image/png">
</head>
<body>
  <h1>Editar de Género</h1>
  <form action="/genero/grabar" method="post">
    <input type="hidden" name="id" value="{{genero['id']}}"><br>
    <label for="name">Nombres:</label><br>
    <input type="text" id="nombre" name="nombre" value="{{genero['nombre']}}">
    <br><br>
    <button class="btn">Guardar Cambios</button>
  </form>
</body>
</html>