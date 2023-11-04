<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: left;
                    }
                </style>
            </head>
            <body>
                <h1>Tabella dei dati degli acquedotti</h1>
                <table>
                    <tr>
                        <th>Codice Acquedotto</th>
                        <th>Nome Acquedotto</th>
                        <th>Comune</th>
                        <th>Sigla Provincia</th>
                        <th>CAP</th>
                        <th>Codice Prodotto</th>
                        <th>Produttore</th>
                        <th>Luogo Prelievo</th>
                        <th>Etichetta</th>
                        <th>Classe</th>
                    </tr>
                    <xsl:for-each select="/acquadotti/infoAcq">
                        <tr>
                            <td><xsl:value-of select="codAcq/codice"/></td>
                            <td><xsl:value-of select="acquedotto"/></td>
                            <td><xsl:value-of select="comune"/></td>
                            <td><xsl:value-of select="siglaProv"/></td>
                            <td><xsl:value-of select="cap"/></td>
                            <td><xsl:value-of select="codProd"/></td>
                            <td><xsl:value-of select="produttore"/></td>
                            <td><xsl:value-of select="luogoPrel"/></td>
                            <td><a href="{etichetta}">Link</a></td>
                            <td><xsl:value-of select="codAcq/classe/@nome"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
