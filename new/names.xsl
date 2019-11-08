<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method='xml' indent='yes'/>
    <xsl:template match="/">
        <results>
            <xsl:apply-templates select="mariokart/details">
                <xsl:sort select="name"/>
            </xsl:apply-templates>
        </results>
    </xsl:template>
    
    <xsl:template match="details">
        <name>
            <xsl:value-of  select="name"/>
        </name>
        
    </xsl:template>
</xsl:stylesheet>
