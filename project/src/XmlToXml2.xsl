<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/catalogue">
        <root>
            <xsl:apply-templates select="Publisher"/>
        </root>
    </xsl:template>
    <xsl:template match="Publisher">
        <name >
            <xsl:value-of select="name"/>
        </name>

        <founded>
            <xsl:for-each select="founded">
                <xsl:value-of select="."/>
            </xsl:for-each>
        </founded>
        <address>
            <xsl:value-of select="address"/>
        </address>
        <numberOfEmployees>
            <xsl:value-of select="numberOfEmployees"/>
        </numberOfEmployees>
        <president>
            <xsl:value-of select="president"/>
        </president>
    </xsl:template>

    <xsl:template match="Publisher">
        <xsl:value-of select="concat('Студиото ',name,' се намира на адрес ',address,' открито от ',president,' и има ',numberOfEmployees,' служители; ')" />
    </xsl:template>

</xsl:stylesheet>