<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">

    <xsl:output method="xml" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>

    <xsl:template match="/software-libre">
        <html>
            <head>
                <title>Ejercicio 1</title>   
                <meta charset="UTF-8"/>
            </head>
            <body>
                <header>
                    <img src="images/logo.jpg" alt="logo Sowftware"/>
                    <h1>
                        <xsl:value-of select="concat('Distribucion de software',@tipo)"/>    
                    </h1>
                </header>
                <main>
                    <div class="cajaPrincipal">
                        <h2>Lanzamiento de distribuciones</h2>
                        <xsl:for-each select="lanzamientos/lanzamiento">
                            <div class="lanzamiento">
                                <figure>
                                    <img src="images/{@distribucion}.png" alt="{@distribucion}"></img>   
                                    <figcaption>
                                        <a href="{//distribucion[@id=current()/@distribucion]/web}">
                                            <xsl:value-of select="//distribucion[@id=current()/@distribucion]/web"/>    
                                        </a>
                                    </figcaption>
                                </figure>                                               
                                <figure>
                                    <xsl:if test="@escritorio !=''">
                                        <img src="images/{@escritorio}.png" alt="{@escritorio}"></img>   
                                        <figcaption>
                                            <a href="{//escritorio[@id=current()/@escritorio]/web}">
                                                <xsl:value-of select="//escritorio[@id=current()/@escritorio]/web"/>    
                                            </a>
                                        </figcaption> 
                                    </xsl:if>
                                </figure>                                
                                <div class="caja">
                                    <p><b>Versión: </b><xsl:value-of select="@version"/></p>  
                                    <p><b>Año: </b><xsl:value-of select="@año"/></p> 
                                    <p><b>Kernel: </b><xsl:value-of select="@kernel"/></p> 
                                </div>
                            </div>
                        </xsl:for-each>
                    </div>    
                </main>
            </body>
        </html>
    </xsl:template>

    

</xsl:stylesheet>