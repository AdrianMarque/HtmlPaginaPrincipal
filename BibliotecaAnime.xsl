<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:ns1="http://www.example.org">
<xsl:template match = "/">
  <html>
      <body>
        <table>
          <tr>
            <th>Nombre</th>
            <th>Director</th>
          </tr>
          <xsl:for-each select="biblioteca/anime">
            <tr>
              <td><xsl:value-of select = "Nombre"/></td>
              <td><xsl:value-of select = "Director"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
  </html>
</xsl:template>
</xsl:stylesheet>