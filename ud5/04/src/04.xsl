<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">

    <xsl:output method="xml" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>

    <xsl:template match="/examen">
        <html>
            <head>
                <title>4 XSLT -Ticket Álvaro Calderón</title>
                <meta charset="UTF-8"/>
            </head>
            <body>
                <header>
                    <h1><xsl:value-of select="datos/nombreCiclo"/></h1>
                    <h2><xsl:value-of select="datos/nombreModulo"/></h2>
                    <h3>
                    Fecha: <xsl:value-of select="datos/fecha/dia"/> de
                    <xsl:value-of select="datos/fecha/mes"/> de 
                    <xsl:value-of select="datos/fecha/anyo"/>
                    </h3>
                </header>
                <main>
                    <form action="text.php" method="GET">
                        <xsl:for-each select="preguntas/pregunta">
                            <div class="pregunta">
                                <div>
                                    <xsl:value-of select="@id"/>.-
                                    <xsl:value-of select="enunciado"/>
                                </div>
                            </div>
                        </xsl:for-each>
                    </form>
                </main>
            </body>
        </html>
    </xsl:template>

    

</xsl:stylesheet>