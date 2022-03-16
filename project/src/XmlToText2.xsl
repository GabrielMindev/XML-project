<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
                Издателски студиа

                    <xsl:for-each select="catalogue/Publisher">
                            Име на студио:<xsl:value-of select="name"/>
                            Открито през:<xsl:value-of select="founded"/>
                            Адрес:
                             Улица:<xsl:value-of select="address/street"/>
                             Държава:<xsl:value-of select="address/country/@name"/>
                             Град:<xsl:value-of select="address/country/city"/>
                             Пощенски код:<xsl:value-of select="address/zip_code"/>
                            Брой служители:<xsl:value-of select="numberOfEmployees"/>
                            Президент: <xsl:value-of select="president"/>
                            Уебсайт на студиото: <xsl:value-of select="publisherWebSiteURL"/>
                            <xsl:text>&#10;</xsl:text>
                    </xsl:for-each>

    </xsl:template>
</xsl:stylesheet>