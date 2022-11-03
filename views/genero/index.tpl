<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="shortcut icon" href="/favicon.png" type="image/png">
</head>
<body>
  <h1>Lista de Géneros</h1>
  <label>{{mensaje}}</label>
  <table>
    <thead>
      <th>Nombre</th>
      <th>Acciones</th>
    </thead>
    <tbody>
      % for g in generos:
      <tr>
        <td>{{g['nombre']}}</td>
        <td>
          <a href="/genero/editar?id={{g['id']}}">Editar</a>
          <a href="/genero/eliminar?id={{g['id']}}">Eliminar</a>
        </td>
      </tr>
      % end
    </tbody>
  </table>
</body>
</html>