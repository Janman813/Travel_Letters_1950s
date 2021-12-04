<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
    <xsl:variable name="travelColl" select="collection('XMLforThetravelProjects/?select=*.xml')"/>

<xsl:template match="/">
    <xsl:apply-templates select="//xml"/>
    
</xsl:template>
    
    <xsl:template match="xml">
        <figure>
            <img src="images/{@url}" alt=""/>
            <figcaption><xsl:comment>You need to code some metadata about each letter so we 
            have something to describe your images, something to describe each one. I think we did this in the FRANCE letter. 
            We can pull on that metadata in places like captions for your images and headings or explanations in your output.</xsl:comment></figcaption>
        </figure>
        
        <xsl:apply-templates/>
    </xsl:template>

<!--ebb: Write more template rules to continue processing!  -->

</xsl:stylesheet>