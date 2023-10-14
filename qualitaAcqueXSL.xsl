<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <head>
      <style>
        table {
          border-collapse: collapse;
          width: 100%;
        }
        th, td {
          border: 1px solid black;
          padding: 8px;
          text-align: left;
        }
      </style>
    </head>
    <body>
      <h1>Acquadotti Information</h1>
      <table>
        <tr>
          <th>Code</th>
          <th>Acquedotto</th>
          <th>Comune</th>
          <th>SiglaProv</th>
          <th>Cap</th>
          <th>CodProd</th>
          <th>Produttore</th>
          <th>LuogoPrel</th>
          <th>Etichetta</th>
        </tr>
        <xsl:for-each select="acquadotti/infoAcq">
          <tr>
            <td><xsl:value-of select="codAcq"/></td>
            <td><xsl:value-of select="acquedotto"/></td>
            <td><xsl:value-of select="comune"/></td>
            <td><xsl:value-of select="siglaProv"/></td>
            <td><xsl:value-of select="cap"/></td>
            <td><xsl:value-of select="codProd"/></td>
            <td><xsl:value-of select="produttore"/></td>
            <td><xsl:value-of select="luogoPrel"/></td>
            <td><a href="{etichetta}"><xsl:value-of select="etichetta"/></a></td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
