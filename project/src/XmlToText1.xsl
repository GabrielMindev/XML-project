<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">

                Каталог за видеоигри
                <xsl:for-each select="/catalogue/Game">
                    Име на играта:<xsl:value-of select="Name"/>
                    Достъпно на:
                    <xsl:for-each select="Platforms">
                        <xsl:for-each select="platform_type">
                            <xsl:value-of select="text()"/>
                            <xsl:if test="position() != last()">
                                <xsl:text>, </xsl:text>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:for-each>
                    Издателско студио: <xsl:value-of select="@publisher"/>
                    Информация: <xsl:value-of select="Information"/>
                    Жанр:
                    <xsl:for-each select="Genre">
                        <xsl:for-each select="genre_type">
                            <xsl:value-of select="text()"/>
                            <xsl:if test="position() != last()">
                                <xsl:text>, </xsl:text>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:for-each>
                    Дата на издаване: <xsl:value-of select="ReleaseDate"/>
                    Цена: <xsl:value-of select="Price"/> <xsl:text> </xsl:text> <xsl:value-of select="Price/@currency"/>
                    Купи сега: <xsl:value-of select="BuyLink"/>
                    <xsl:text>&#10;</xsl:text>
                </xsl:for-each>

    </xsl:template>
</xsl:stylesheet>