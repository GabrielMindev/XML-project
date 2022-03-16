<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/catalogue">
        <html>
            <head>
                <title>Game Catalogue</title>
                <link href="./style.css" type="text/css" rel="stylesheet"/>
            </head>
            <body>
                <table border="1">
                    <tr bgcolor="#d15a12">
                        <th>Име</th>
                        <th>Платформи</th>
                        <th>Издател</th>
                        <th>Информация</th>
                        <th>Жанр</th>
                        <th>Дата на издаване</th>
                        <th>Цена</th>
                        <th>Валута</th>
                    </tr>


                    <xsl:for-each select="*[@publisher='Ubisoft']">
                        <tr bgcolor="#c3af88">
                            <td>
                                <xsl:value-of select="Name"/>
                            </td>

                            <td>
                                <xsl:value-of select="Platforms"/>
                            </td>

                            <td>
                                <xsl:value-of select="@publisher"/>
                            </td>

                            <td>
                                <xsl:value-of select="Information"/>
                            </td>

                            <td>
                                <xsl:value-of select="Genre"/>
                            </td>
                            <td>
                                <xsl:value-of select="ReleaseDate"/>
                            </td>
                            <td>
                                <xsl:value-of select="Price"/>
                            </td>
                            <td>
                                <xsl:value-of select="Price/@currency"/>
                            </td>

                        </tr>
                    </xsl:for-each>

                </table>
            </body>

        </html>

    </xsl:template>

</xsl:stylesheet>