<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="mariokart">
        <results>
            <xsl:for-each select="details[type = 'Tires']">
                <xsl:variable name="tires">
                    <xsl:value-of select="name"/>
                </xsl:variable>
                <xsl:variable name="tirespeed">
                    <xsl:value-of select="speed/land"/>
                </xsl:variable>

                <xsl:for-each select="//details[type = 'Bodies']">
                    <result>
                        <tire>
                            <xsl:copy-of select="$tires"/>
                        </tire>
                        <body>
                            <xsl:value-of select="name"/>
                        </body>
                        <speed>
                            <xsl:value-of select="sum(speed/land)+sum($tirespeed)"/>
                        </speed>
                    </result>
                </xsl:for-each>
            </xsl:for-each>
        </results>
    </xsl:template>
</xsl:stylesheet>
