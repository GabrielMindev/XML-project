<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Каталог за видеоигри</title>
                <link rel="stylesheet" type="text/css" href="./style.css" />
            </head>
            <body>
                <h1>Каталог за видеоигри</h1>
                <div>
                    <xsl:for-each select="catalogue/Game">
                        <h2><xsl:value-of select="Name"/></h2>
                        <p>Достъпно на <xsl:for-each select="Platforms">
                            <xsl:for-each select="platform_type">
                                <xsl:value-of select="text()"/>
                                <xsl:if test="position() != last()">
                                    <xsl:text>, </xsl:text>
                                </xsl:if></xsl:for-each> </xsl:for-each></p>
                        <p>Издателско студио: <xsl:value-of select="@publisher"/></p>
                        <p>Информация: <xsl:value-of select="Information"/></p>
                        <p>Жанр: <xsl:for-each select="Genre">
                            <xsl:for-each select="genre_type">
                                <xsl:value-of select="text()"/>
                                <xsl:if test="position() != last()">
                                    <xsl:text>, </xsl:text>
                                </xsl:if></xsl:for-each>  </xsl:for-each></p>
                        <p>Дата на издаване: <span class="year"><xsl:value-of select="ReleaseDate"/></span></p>
                        <p>Цена: <xsl:value-of select="Price"/> <xsl:text> </xsl:text> <xsl:value-of select="Price/@currency"/></p>
                        <a href="{./BuyLink}" alt="Buy Now">Buy Now</a>
                    </xsl:for-each>
                </div>

                <h1>Издателски студия</h1>
                <div>
                    <xsl:for-each select="catalogue/Publisher">
                        <div class="main">
                            <h2><xsl:value-of select="name"/></h2>
                            <p>Открито през:<xsl:value-of select="founded"/> </p>
                            <p>Адрес:<xsl:value-of select="address"/>  </p>
                            <p>Брой служители:<xsl:value-of select="numberOfEmployees"/> </p>
                            <p>Президент: <xsl:value-of select="president"/></p>
                            <a href="{./publisherWebSiteURL}">Уебсайт на студиото</a>
                        </div>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>