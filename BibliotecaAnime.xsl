<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:ns1="http://www.example.org">
  <xsl:param name="nombreAnime" />
    <xsl:template match="/">
        <html>
        <body>
            <xsl:for-each select="biblioteca/anime">
                <xsl:if test="Nombre=$nombreAnime">
                   <table style="background-color: #F2F2F2; border: 1px solid black; border-collapse: collapse;">
                        <tr>
                            <th style="border: 1px solid black; padding: 8px;">Nombre</th>
                            <td style="border: 1px solid black; padding: 8px;"><xsl:value-of select="Nombre" /></td>
                        </tr>
                        <tr>
                            <th style="border: 1px solid black; padding: 8px;">Director</th>
                            <td style="border: 1px solid black; padding: 8px;"><xsl:value-of select="Director" /></td>
                        </tr>
                        <tr>
                            <th style="border: 1px solid black; padding: 8px;">Año</th>
                            <td style="border: 1px solid black; padding: 8px;"><xsl:value-of select="Año" /></td>
                        </tr>
                        <tr>
                            <th style="border: 1px solid black; padding: 8px;">Seiyuu</th>
                            <td style="border: 1px solid black; padding: 8px;"><xsl:value-of select="Seiyuu" /></td>
                        </tr>
                        <tr>
                            <th style="border: 1px solid black; padding: 8px;">Genero</th>
                            <td style="border: 1px solid black; padding: 8px;"><xsl:value-of select="Genero" /></td>
                        </tr>
                        <tr>
                            <th style="border: 1px solid black; padding: 8px;">Sinopsis</th>
                            <td style="border: 1px solid black; padding: 8px;"><xsl:value-of select="Sinopsis" /></td>
                        </tr>
                        <tr>
                            <th style="border: 1px solid black; padding: 8px;">Criticas</th>
                            <td style="border: 1px solid black; padding: 8px;"><xsl:value-of select="Criticas" /></td>
                        </tr>
                        <tr>
                            <th style="border: 1px solid black; padding: 8px;">Finalizado</th>
                            <td style="border: 1px solid black; padding: 8px;"><xsl:value-of select="Finalizado" /></td>
                        </tr>
                        <tr>
                            <th style="border: 1px solid black; padding: 8px;">Trailer</th>
                            <td style="border: 1px solid black; padding: 8px;"><xsl:value-of select="Trailer" /></td>
                        </tr>
                    </table>
                </xsl:if>
            </xsl:for-each>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>