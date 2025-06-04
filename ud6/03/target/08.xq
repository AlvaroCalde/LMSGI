<html lang="en">
<head>
    <meta charset="UTF-8"></meta>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <title>05.html</title>
</head>
<body>
  <h1>Listado de practicas</h1>
    {
  for $tema in (1 to 7),$y in (1 to 3)
  return <div>
    <a href="{concat($tema,"/",$y,".html")}">Tema{$tema}: Ejercicio{$y}</a>
  </div>
}
</body>
</html>