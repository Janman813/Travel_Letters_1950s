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
    <xsl:apply-templates select="$travelColl//xml"/>
  
    
</xsl:template>
    
    <xsl:template match="xml">
      <!--<xsl:result-document method="xhtml" href="docs/{base-uri() ! tokenize(., '/')[last()] ! substring-before(., '.xml')}.html">-->
        <html>
            
            <head> 
                <link rel="stylesheet" type="text/css" href="webstyle.css"/>
                <title>Behrend Travel Letters</title>
                <hr/>
                <p class="navbar"><a href="index.html">Main</a> | <a href="about.html">About</a></p>
                <hr/>
            </head>
            <body>
                <h1>Behrends Travel Adventures</h1>
                <div class="main"><xsl:apply-templates select="descendant::letter"/></div>
            </body>
            
        </html>
        
      <!--</xsl:result-document>-->    
    </xsl:template>

<!--ebb: Write more template rules to continue processing!-->
   <xsl:template match="letter">
       <div class="letter">
           <xsl:apply-templates/>
       </div>
   </xsl:template>
    
    <xsl:template match="timePeriod">
        <div class="Period">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="dateLine">
        <div class="dateLine">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="date">
        <span class="date">
               <b>              
                   <i>
                   <xsl:apply-templates/>
                   </i>
               </b>
        </span>
    </xsl:template>
    
    <xsl:template match="p">
        <p xml:id="breaks-{preceding::p => count()+1}">
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="meal">
        <div class="meal">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="figure">
        <figure>
            <img src="{graphic/@url}" alt="{caption}"/>
        <figcaption>
            <xsl:apply-templates select="caption"/>
        </figcaption>
        </figure>
    </xsl:template>
      
    <xsl:template match="placeName">
        <span class="place">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="persName">
        <div class="person">
           <b>
               <i>
                   <xsl:apply-templates/>
               </i>
           </b>
        </div>
    </xsl:template>
    
    <xsl:template match="transport">
        <div class="transport">
            <xsl:apply-templates/>    
        </div>
    </xsl:template>
    
    <xsl:template match="u">
        <div class="underlined">
            <u>
                <xsl:apply-templates/>
            </u>
        </div>
    </xsl:template>
    
    <xsl:template match="x">
        <div class="x">
            <strike>
                <xsl:apply-templates/>
            </strike>
        </div>
    </xsl:template>
    
    <xsl:template match="misspelling">
        <div class="spelling">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="item">
        <div class="item">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="hand">
        <div class="hand">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="fade">
        <div class="fade">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="merge">
        <div class="merge">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="money">
        <div class="money">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="day">
        <div class="day">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="drink">
        <div class="drink">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="signOff">
        <div class="signOff">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="pencil">
        <div class="pencil">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="typeWritten">
        <div class="type">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="animal">
        <div class="animal">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="nationality">
        <div class="nationality">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="holiday">
        <div class="holiday">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="number">
        <div class="number">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="language">
        <div class="language">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="measure">
        <div class="measure">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="front">
        <div class="front">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="back">
        <div class="back">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="readers">
        <div class="readers">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="month">
        <div class="month">
            <xsl:apply-templates/>
        </div>
    </xsl:template>

</xsl:stylesheet>