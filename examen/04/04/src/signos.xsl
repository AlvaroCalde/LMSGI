<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"

                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">

     <xsl:output method="html" indent="yes"/>

     <xsl:template match="/zodiaco">
          <html>
               <head>
                    <title>Horóscopo: Álvaro Calderón</title>   
                    <meta charset="UTF-8"/>
                    
               </head>
               <body>
                    <header>
                         <h1>
                              HOROSCOPO/SIGNOS ZODIACO   
                         </h1>
                    </header>
                    <main>
                         <div class="cajaPrincipal">
                              <xsl:for-each select="signo">
                                   <div id="signo" style="background-image: url(webroot/images/bg-{@id}.jpg)">                            
                                        <img src="webroot/images/{@id}.svg" alt="{@id}"></img> 
                                                                                  
                                        <figcaption>
                                             <p id="nombre"><b>{//signo[@id=current()/@id]/nombre}</b></p>
                                             <p id="fecha">{//signo[@id=current()/@id]/fechaInicio}-{//signo[@id=current()/@id]/fechaFin}</p>
                                        </figcaption>                                              
                                   </div>
                              </xsl:for-each>
                         </div>    
                    </main>
                    <footer>
                         <p>
                              Copyrigth 2025
                              <a href="https://daw102.ieslossauces.es/">Álvaro Calderón</a>
                              | Todos los derechos reservados
                         </p>
                    </footer>
               </body>
          </html>
     </xsl:template>

     

</xsl:stylesheet>
