<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:ns1="http://www.example.org">
  <xsl:param name="nombreAnime" />
    <xsl:template match="/">
        <html>
        <body>
            <xsl:for-each select="biblioteca/anime">
                <xsl:if test="Nombre=$nombreAnime">
                    <table>
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