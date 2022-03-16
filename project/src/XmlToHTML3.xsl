<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Game Catalogue</title>
                <link href="./style.css" type="text/css" rel="stylesheet"/>
            </head>
            <body>
                <table border="1">
                    <tr bgcolor="#d15a12">
                        <th>Име</th>
                        <th>Година на откриване</th>
                        <th>Адрес</th>
                        <th>Брой служители</th>
                        <th>Президент</th>
                        <th>Уебсайт</th>
                    </tr>

                    <xsl:for-each select="catalogue/Publisher">
                        <tr bgcolor="#f4d64f">
                         <xsl:choose>
                            <xsl:when test="founded &gt; 1982">
                                <td bgcolor="blue">
                                        <xsl:value-of select="name"/>
                                </td>
                            </xsl:when>
                            <xsl:otherwise>
                                   <td><xsl:value-of select="name"/> </td>
                            </xsl:otherwise>
                        </xsl:choose>
                            <td> <xsl:value-of select="founded"/>
                            </td>

                            <td>
                                <xsl:value-of select="address"/>
                            </td>

                            <td>
                                <xsl:value-of select="numberOfEmployees"/>
                            </td>

                            <td>
                                <xsl:value-of select="president"/>
                            </td>
                            <td>
                                <xsl:value-of select="publisherWebSiteURL"/>
                            </td>
                        </tr>
                    </xsl:for-each>

                </table>
            </body>

        </html>

    </xsl:template>

</xsl:stylesheet>