
  for $x in /bookstore/book
  where $x/price>30
  order by $x/@category descending,$x/title descending
  return concat(data($x/title),": ",data($x/price),"$")
