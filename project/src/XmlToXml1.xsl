<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/catalogue">
        <root>
            <xsl:apply-templates select="Game"/>
        </root>
    </xsl:template>
    <xsl:template match="Game">
        <Name >
            <xsl:value-of select="Name"/>
        </Name>
        <Price >
            <xsl:value-of select="Price"/>
        </Price>
        <Platforms>
            <xsl:for-each select="platform_type">
                <xsl:value-of select="."/>
            </xsl:for-each>
        </Platforms>
    </xsl:template>

    <xsl:template match="Game">
        <xsl:value-of select="concat(Name,' струва ',Price,' ',Price/@currency,' ',' и е достъпна на платформите ',Platforms,'; ')" />

    </xsl:template>

</xsl:stylesheet>