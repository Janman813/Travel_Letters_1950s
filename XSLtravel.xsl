<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
        
        <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
            include-content-type="no" indent="yes"/>
    <xsl:variable name="TravelColl" select="collection('XMLforThetravelProjects/?select=*.xml')"/>
    
    <xsl:template match="/">
   
        <xsl:apply-templates select="$TravelColl"/>
    </xsl:template>
</xsl:stylesheet>