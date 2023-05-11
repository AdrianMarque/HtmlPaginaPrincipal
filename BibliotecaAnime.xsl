<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:ns1="http://www.example.org">
    <xsl:param name="nombreAnime" />
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" href="2ºTrimestre Css.css" />
                <style>
                    /* Estilos para la tabla */
                    .tabla-detalle {
                        border-collapse: collapse;
                        margin: 20px 0;
                        width: 100%;
                    }
                    .tabla-detalle th, .tabla-detalle td {
                        border: 1px solid #ddd;
                        padding: 8px;
                        text-align: left;
                    }
                    .tabla-detalle th {
                        background-color: #ddd;
                        font-weight: bold;
                    }
                </style>
            </head>
            <body>
             <nav class="directorio">
            <div class="one">
                <img class="Logo" src="Imagenes/LogoPagina.png" alt="NubeDragon">
            </div>
            <div class="two">
                <a href="">Inicio</a>
            </div>
            <div class="three">
                <a href="">Animes</a>
            </div>
            <div class="four">
                <a href="">Directorio Anime</a>
            </div>
            <div class="opciones-menu">
                <form method="get">
                    <input type="text" name="q" placeholder="Search...">
                </form>
            </div>
            <div class="five">
                <a href="" class="conexiones"><img class="image" src="Imagenes/FacebookLogo.png" alt=""></a>
                <a href="" class="conexiones"><img class="image" src="Imagenes/Instagramfoto.jpg" alt=""></a>
                <a href="" class="conexiones"><img class="image" src="Imagenes/TwitterLogo.png" alt=""></a>
            </div>
            <div class="toggle">
                <label class="switch">
                    <input type="checkbox" id="backgroundSwitch">
                    <span class="slider round"></span>
                </label>
            </div>
        </nav>
                <xsl:for-each select="biblioteca/anime">
                    <xsl:if test="Nombre=$nombreAnime">
                        <table class="tabla-detalle">
                            <tr>
                                <th>Nombre</th>
                                <td><xsl:value-of select="Nombre" /></td>
                            </tr>
                            <tr>
                                <th>Director</th>
                                <td><xsl:value-of select="Director" /></td>
                            </tr>
                            <tr>
                                <th>Año</th>
                                <td><xsl:value-of select="Año" /></td>
                            </tr>
                            <tr>
                                <th>Seiyuu</th>
                                <td><xsl:value-of select="Seiyuu" /></td>
                            </tr>
                            <tr>
                                <th>Genero</th>
                                <td><xsl:value-of select="Genero" /></td>
                            </tr>
                            <tr>
                                <th>Sinopsis</th>
                                <td><xsl:value-of select="Sinopsis" /></td>
                            </tr>
                            <tr>
                                <th>Criticas</th>
                                <td><xsl:value-of select="Criticas" /></td>
                            </tr>
                            <tr>
                                <th>Finalizado</th>
                                <td><xsl:value-of select="Finalizado" /></td>
                            </tr>
                            <tr>
                                <th>Trailer</th>
                                <td><xsl:value-of select="Trailer" /></td>
                            </tr>
                        </table>
                    </xsl:if>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>