<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="mariokart">
        <results>
            <xsl:for-each-group select="details[type = 'Characters']" group-by="accel">
                <xsl:sort select="accel"/>
                <xsl:element name="result">
                    <xsl:attribute name="accel">
                        <xsl:value-of select="accel"/>
                    </xsl:attribute>
                    <xsl:for-each select="current-group()">
                        <name>
                            <xsl:value-of select="name"/>
                        </name>
                    </xsl:for-each>
                </xsl:element>
            </xsl:for-each-group>
        </results>
    </xsl:template>
</xsl:stylesheet>
