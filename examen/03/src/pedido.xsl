<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <!-- Plantilla que dado una fecha la escribe en otro formato -->
    <xsl:template match="pedido/@fecha">
        <xsl:variable name="anio" select="substring(., 1, 4)"/>
        <xsl:variable name="mes" select="substring(., 6, 2)"/>
        <xsl:variable name="dia" select="substring(., 9, 2)"/>
        <xsl:value-of select="$dia"/> de
        <xsl:choose>
            <xsl:when test="$mes='01'">enero</xsl:when>
            <xsl:when test="$mes='02'">febrero</xsl:when>
            <xsl:when test="$mes='03'">marzo</xsl:when>
            <xsl:when test="$mes='04'">abril</xsl:when>
            <xsl:when test="$mes='05'">mayo</xsl:when>
            <xsl:when test="$mes='06'">junio</xsl:when>
            <xsl:when test="$mes='07'">julio</xsl:when>
            <xsl:when test="$mes='08'">agosto</xsl:when>
            <xsl:when test="$mes='09'">septiembre</xsl:when>
            <xsl:when test="$mes='10'">octubre</xsl:when>
            <xsl:when test="$mes='11'">noviembre</xsl:when>
            <xsl:when test="$mes='12'">diciembre</xsl:when>
        </xsl:choose> de <xsl:value-of select="$anio"/>
    </xsl:template>

    <!-- Plantilla que dado un pedido lo escribe en una tabla -->
    <xsl:template match="tractor/componente">
        <html>
            <head>
                <title>Pedidos Álvaro Calderón Pérez</title>
            </head>
            <body>
                <header>
                    <h1>
                    <xsl:value-of select="concat('Fabricante',document('../input/fabricantes.xml'))/fabricantes/fabricante/@codigo,document('../input/fabricantes.xml')/fabricantes/fabricante[@nombre/text()]"/>
                    
                    </h1>
                </header>
                <main>
                    <table>
                        <tr>
                            <th></th>
                            <td><img src="../examen/03/target/images/CMP0000001.png" alt="{@codigoFabricante}"/> </td>
                            <td><img src="../examen/03/target/images/CMP0000002.png" alt="{@codigoFabricante}"/></td>
                            <td><img src="../examen/03/target/images/CMP0000003.png" alt="{@codigoFabricante}"/></td>
                            <td><img src="../examen/03/target/images/CMP0000004.png" alt="{@codigoFabricante}"/></td>
                            <td><img src="../examen/03/target/images/CMP0000005.png" alt="{@codigoFabricante}"/></td>
                        </tr>
                        <tr>
                            <th>Referencia</th>
                            <td><xsl:value-of select="@codigoFabricante"/></td>
                            <td><xsl:value-of select="@codigoFabricante"/></td>
                            <td><xsl:value-of select="@codigoFabricante"/></td>
                            <td><xsl:value-of select="@codigoFabricante"/></td>
                            <td><xsl:value-of select="@codigoFabricante"/></td>
                        </tr>
                        <tr>
                            <th>Descripción</th>
                            <td><xsl:value-of select="document('../input/componentes.xml')/componentes/componente/@nombre"/></td>
                            <td><xsl:value-of select="document('../input/componentes.xml')/componentes/componente/@nombre"/></td>
                            <td><xsl:value-of select="document('../input/componentes.xml')/componentes/componente/@nombre"/></td>
                            <td><xsl:value-of select="document('../input/componentes.xml')/componentes/componente/@nombre"/></td>
                            <td><xsl:value-of select="document('../input/componentes.xml')/componentes/componente/@nombre"/></td>
                        </tr>
                        <tr>
                            <th>Fecha Entrega</th>
                            <td>04-2025</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                       <tr>
                            <th>Peso</th>
                            <td>300g</td>
                            <td>300g</td>
                            <td>150g</td>
                            <td>300g</td>
                            <td>150g</td>
                        </tr>
                        <tr>
                            <th>Número de serie</th>
                            <td><xsl:value-of select="@referencia"/></td>
                            <td><xsl:value-of select="@referencia"/></td>
                            <td><xsl:value-of select="@referencia"/></td>
                            <td><xsl:value-of select="@referencia"/></td>
                            <td><xsl:value-of select="@referencia"/></td>
                        </tr>
                        <tr>
                            <th>Km máximos</th>
                            <td>200000</td>
                            <td>-</td>
                            <td>250000</td>
                            <td>100000</td>
                            <td>100000</td>
                        </tr>
                        <tr>
                            <th>Cantidad</th>
                            <td>1</td>
                            <td>2</td>
                            <td>1</td>
                            <td>4</td>
                            <td>1</td>
                        </tr>      
                    </table>
                    <table>
                        <tr>
                            <th></th>
                            <td><img src="../examen/03/target/images/CMP0000006.png" alt="{@codigoFabricante}"/> </td>
                            <td><img src="../examen/03/target/images/CMP0000007.png" alt="{@codigoFabricante}"/></td>
                            <td><img src="../examen/03/target/images/CMP0000008.png" alt="{@codigoFabricante}"/></td>
                            <td><img src="../examen/03/target/images/CMP0000009.png" alt="{@codigoFabricante}"/></td>
                            <td><img src="../examen/03/target/images/CMP00000010.png" alt="{@codigoFabricante}"/></td>
                        </tr>
                        <tr>
                            <th>Referencia</th>
                            <td><xsl:value-of select="@codigoFabricante"/></td>
                            <td><xsl:value-of select="@codigoFabricante"/></td>
                            <td><xsl:value-of select="@codigoFabricante"/></td>
                            <td><xsl:value-of select="@codigoFabricante"/></td>
                            <td><xsl:value-of select="@codigoFabricante"/></td>
                        </tr>
                        <tr>
                            <th>Descripción</th>
                            <td><xsl:value-of select="document('../input/componentes.xml')/componentes/componente/@nombre"/></td>
                            <td><xsl:value-of select="document('../input/componentes.xml')/componentes/componente/@nombre"/></td>
                            <td><xsl:value-of select="document('../input/componentes.xml')/componentes/componente/@nombre"/></td>
                            <td><xsl:value-of select="document('../input/componentes.xml')/componentes/componente/@nombre"/></td>
                            <td><xsl:value-of select="document('../input/componentes.xml')/componentes/componente/@nombre"/></td>
                        </tr>
                        <tr>
                            <th>Fecha Entrega</th>
                            <td>05-2025</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                       <tr>
                            <th>Peso</th>
                            <td>1kg</td>
                            <td>20kg</td>
                            <td>25kg</td>
                            <td>30kg</td>
                            <td>105g</td>
                        </tr>
                        <tr>
                            <th>Número de serie</th>
                            <td><xsl:value-of select="@referencia"/></td>
                            <td><xsl:value-of select="@referencia"/></td>
                            <td><xsl:value-of select="@referencia"/></td>
                            <td><xsl:value-of select="@referencia"/></td>
                            <td><xsl:value-of select="@referencia"/></td>
                        </tr>
                        <tr>
                            <th>Km máximos</th>
                            <td>-</td>
                            <td>100000</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <th>Cantidad</th>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>4</td>
                            <td>1</td>
                        </tr>              
                    </table>
                </main>
            </body>
        </html>    
    </xsl:template>
    </xsl:stylesheet>
