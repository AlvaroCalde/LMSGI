
<html lang="en">
<head>
    <meta charset="UTF-8"></meta>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <title>05.html</title>
</head>
<body>
  <h1>BOOKSTORE</h1>
    <table>
      <tr>
        <td>{data($x/title)}</td>
        <td>{data($x/category)}</td>
      </tr>
    </table>
    <ul>
      for $x in /bookstore/book
      return <li class="{data($x/@category)}">
        {data($x/title)}
        </li>
    </ul>
</body>
</html>