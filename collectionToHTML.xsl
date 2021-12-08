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
    <html>
        <link rel="stylesheet" type="text/css" href="webstyle.css"/>
        <head> 
            <h1>Berhrends Travel Adventures</h1>
            <h2>Paris July 19, 1955</h2>
            <dateLine> <xsl:apply-templates select="descendant::dateLine"/></dateLine>
        </head>
        <body>
            <letter><xsl:apply-templates select="descendant::letter"/></letter>
            <p><xsl:apply-templates select="descendant::p"/></p>
        </body>

</html>

    
</xsl:template>
    
    <xsl:template match="xml">
        <figure>
            <img src="images/IMG_7189.jpg" alt="rat"/>
            <figcaption>In this image you see three bears on balls dancing, with the wording of "Caseio de Paris". Then the image underneather you see three Ladies Dancing.  </figcaption>
        </figure>
        
        <xsl:apply-templates/>
    </xsl:template>

<!--ebb: Write more template rules to continue processing!  -->

</xsl:stylesheet>