(:Lista el nombre de los clientes:)
for $x in collection("facturasBD")
return $x/factura/cliente/nombre/text()