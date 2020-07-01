<?xml version="1.0" ?>
<xsl:stylesheet  version="1.0" 
                 xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                 xmlns:fo="http://www.w3.org/1999/XSL/Format" 
                 xmlns:xhtml="http://www.w3.org/1999/xhtml" 
                 exclude-result-prefixes="xhtml">


<xsl:output      method="xml" 
                 version="1.0" 
                 standalone="yes" 
                 omit-xml-declaration="yes" 
                 encoding="utf-8" 
                 media-type="text/xml" 
                 indent="yes"/>
                 
<xsl:strip-space elements="*"/>
<xsl:variable name='cont'>0</xsl:variable>
<xsl:preserve-space elements="xhtml:listing listing xhtml:plaintext plaintext xhtml:pre pre xhtml:samp samp"/>
        

 <xsl:param name="font-size" select="'2'" />
    <xsl:param name="font.symbol" select="'BookmanOldStyle'"/>

    <xsl:template name="common-atts">
        <xsl:copy-of select="@id|@color|@height|@width|@xml:lang"/>
        <xsl:if test="@align"><xsl:attribute name="text-align"><xsl:value-of select="@align"/></xsl:attribute></xsl:if>
        <xsl:if test="@nowrap"><xsl:attribute name="wrap-option">no-wrap</xsl:attribute></xsl:if>
    </xsl:template>
       
    <xsl:template match="comment">
        <xsl:comment><xsl:apply-templates/></xsl:comment>
    </xsl:template>
    <xsl:template match="processing-instruction()">
        <xsl:copy-of select="."/>
    </xsl:template>

<!-- Formateo de H1 -->
    <xsl:template match="xhtml:h1|h1">
        <fo:block font-size="95%" font-weight="bold"><xsl:call-template name="common-atts"/>
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>
    
    <!-- Formateo de H2 -->
    <xsl:template match="xhtml:h2|h2">
        <fo:block font-size="90%" font-weight="bold"><xsl:call-template name="common-atts"/>
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>
    
    <!-- Formateo de H3 -->
    <xsl:template match="xhtml:h3|h3">
        <fo:block font-size="85%" font-weight="bold"><xsl:call-template name="common-atts"/>
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>
    
    <!-- Formateo de H4 -->
    <xsl:template match="xhtml:h4|h4">
        <fo:block font-size="70%" font-weight="bold"><xsl:call-template name="common-atts"/>
			<xsl:apply-templates/>
        </fo:block>
    </xsl:template>
    
    <!-- Formateo de H5 -->
    <xsl:template match="xhtml:h5|h5">
        <fo:block font-size="65%" font-weight="bold"><xsl:call-template name="common-atts"/>
			<xsl:apply-templates/>
        </fo:block>
    </xsl:template>    
    
    <!-- Formateo de los div -->
    <xsl:template match="xhtml:div|div">
        <fo:block><xsl:call-template name="common-atts"/>
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>
    
    <!-- Formateo de los parafos -->
    <xsl:template match="xhtml:p|p">
 	<!-- <xsl:if test="@jump">
           <fo:block line-height="18pt" space-after.optimum="15pt" break-after="page"  ><xsl:call-template name="common-atts"/>
            <xsl:apply-templates/>
        </fo:block>
    </xsl:if>&#160;-->
           <fo:block space-before=".35em" space-after=".1em"><xsl:call-template name="common-atts"/>
            <xsl:text disable-output-escaping="yes"></xsl:text>
        </fo:block>
       </xsl:template>
      
  <xsl:template match="xhtml:break|break"> 
        <fo:block line-height="18pt" space-after.optimum="15pt" break-after="page"><xsl:call-template name="common-atts"/>
            <xsl:apply-templates/>
        </fo:block> 
    </xsl:template>
    
    <!-- Formateo de saltos &amp;#10;-->    
    <xsl:template match="xhtml:br|br">
        <fo:block space-before=".3em" space-after=".3em"><xsl:call-template name="common-atts"/>
            <xsl:text disable-output-escaping="yes"></xsl:text>
        </fo:block>
    </xsl:template>
    
     <xsl:template match="xhtml:title|title">
        <fo:block><xsl:call-template name="common-atts"/>
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>
    
    
    
    <xsl:template match="xhtml:basefont|basefont">
        <xsl:copy-of select="@color"/>
        <xsl:if test="@size"><xsl:attribute name="font-size"><xsl:value-of select="@size"/></xsl:attribute></xsl:if>    
        <xsl:if test="@face"><xsl:attribute name="font-family"><xsl:value-of select="@face"/></xsl:attribute></xsl:if>
    </xsl:template>
    
    
    
    <xsl:template match="xhtml:body|body">
        <fo:flow flow-name="xsl-region-body">
            <xsl:call-template name="common-atts"/>
            <xsl:apply-templates select="//basefont[1]"/>
            <xsl:if test="$font-size"><xsl:attribute name="font-size"><xsl:value-of select="$font-size"/></xsl:attribute></xsl:if>
            <xsl:apply-templates/>
            <fo:block id="__END__"/>
        </fo:flow>
    </xsl:template>
    
    
    
    <xsl:template match="xhtml:head|head|xhtml:applet|applet|xhtml:area|area|xhtml:base|base
        |xhtml:bgsound|bgsound|xhtml:embed|embed|xhtml:frame|frame|xhtml:frameset|frameset|xhtml:iframe|iframe
        |xhtml:ilayer|ilayer|xhtml:layer|layer|xhtml:input[@type='hidden']|input[@type='hidden']
        |xhtml:isindex|isindex|xhtml:link|link|xhtml:map|map|xhtml:meta|meta|xhtml:object|object|xhtml:param|param
        |xhtml:ruby|ruby|xhtml:rt|rt|xhtml:script|script|xhtml:spacer|spacer|xhtml:style|style|xhtml:wbr|wbr
        |xhtml:xml|xml|xhtml:xmp|xmp"/>
    
   <!-- Strong -->
    
    <xsl:template match="xhtml:b|b|xhtml:strong|strong">
        <fo:inline font-weight="bold" font-family="Verdana,Bold"><xsl:call-template name="common-atts"/>
            <xsl:apply-templates/>
        </fo:inline>
    </xsl:template>
    
    <!-- Fonts --> 
    
    <xsl:template match="xhtml:font|font">
        <fo:inline><xsl:call-template name="common-atts"/> 
            <xsl:if test="@size"><xsl:attribute name="font-size"><xsl:value-of select="@size"/></xsl:attribute></xsl:if>  
            <xsl:if test="@face"><xsl:attribute name="font-family"><xsl:value-of select="@face"/></xsl:attribute></xsl:if>
            <xsl:if test="@face != 'Verdana'"><xsl:attribute name="font-family">Verdana</xsl:attribute></xsl:if>
            <xsl:apply-templates/>
        </fo:inline>
    </xsl:template>
     
     <!-- Blocks -->
    
    <xsl:template match="xhtml:address|address">
        <fo:block font-style="Verdana"><xsl:call-template name="common-atts"/>
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>
    
    
    
    <xsl:template match="xhtml:caption|caption">
        <fo:block keep-with-next="always" text-align="center">
            <xsl:call-template name="common-atts"/>
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>
    
    <xsl:template match="xhtml:center|center">
        <fo:block text-align="center">
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>
    
    
    <!-- NoWrap -->
    
    <xsl:template match="xhtml:nowrap|nowrap">
        <fo:inline wrap-option="no-wrap"><xsl:call-template name="common-atts"/>
            <xsl:apply-templates/>
        </fo:inline>
    </xsl:template>
    
    <!-- Spans -->
    
    <xsl:template match="xhtml:span|span">
        <fo:inline><xsl:call-template name="common-atts"/>
            <xsl:apply-templates/>
        </fo:inline>
    </xsl:template>
    
    <!-- Forms -->
    
    <xsl:template match="xhtml:form|form">
        <fo:block><xsl:call-template name="common-atts"/>
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>
    
    <!-- Labels -->
    
    <xsl:template match="xhtml:label|label">
        <fo:inline><xsl:call-template name="common-atts"/>
            <xsl:apply-templates/>
        </fo:inline>
    </xsl:template>
    
    <xsl:template match="xhtml:img|img|xhtml:input[@type='image']|input[@type='image']">
    <fo:external-graphic content-type="{@type}" src="tablas/{concat(//base/@href,@src)}">
        <!--    <xsl:call-template name="common-atts"/>-->
        <xsl:if test="@height">
            <xsl:attribute name="content-height">
                <xsl:value-of select="@height"/>
            </xsl:attribute>
        </xsl:if>
        <xsl:if test="@width">
            <xsl:attribute name="content-width">
                <xsl:value-of select="@width"/>
            </xsl:attribute>
        </xsl:if>
        
    </fo:external-graphic>
</xsl:template>

<xsl:template match="xhtml:object[starts-with(@type,'image/')]|object[starts-with(@type,'image/')]">
    <fo:external-graphic content-type="{@type}" src="{concat(//base/@href,@data)}">
        <xsl:call-template name="common-atts"/>
    </fo:external-graphic>
</xsl:template>

<xsl:template match="xhtml:input[@type='text']|input[@type='text']">
        <fo:block font-size="8.8pt" font-family="Verdana">
        <xsl:if test="@value"><xsl:value-of select="@value"/></xsl:if>
        </fo:block>
    </xsl:template>
      
       <!-- Links and Media -->
    
    <xsl:template match="xhtml:a|a">
        <fo:inline><xsl:call-template name="common-atts"/>
            <xsl:if test="@name and not(@id)">
                <xsl:attribute name="id"><xsl:value-of select="@name"/></xsl:attribute>
            </xsl:if>
            <xsl:apply-templates/>
        </fo:inline>
    </xsl:template>
    
    <xsl:template match="xhtml:a[@href]|a[@href]">
        <fo:basic-link color="blue" text-decoration="underline">
            <xsl:if test="@type"><xsl:attribute name="content-type"><xsl:value-of select="@type"/></xsl:attribute></xsl:if>
            <xsl:choose>
                <xsl:when test="starts-with(@href,'#')">
                    <xsl:attribute name="internal-destination"><xsl:value-of select="substring-after(@href,'#')"/></xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="external-destination">
                        <xsl:text>url(&apos;</xsl:text>
                        <xsl:value-of select="concat(//base/@href,@href)"/>
                        <xsl:text>&apos;)</xsl:text>
                    </xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:call-template name="common-atts"/>
            <xsl:apply-templates/>
        </fo:basic-link>
    </xsl:template>
    
     <!-- Paginacion .... -->
    <xsl:template match="xhtml:html|html">
        <fo:root>
            
            <fo:layout-master-set>
                <fo:simple-page-master master-name="page">
                    <fo:region-body margin=".75in .75in .75in .75in" background-repeat="no-repeat" />
                    <fo:region-before extent=".5in"/>
                    <fo:region-after extent=".5in"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            
            <fo:page-sequence master-reference="page">
                
                <fo:static-content flow-name="xsl-region-before">
                    <fo:block display-align="before" padding-before=".1in" text-align="center" font-size="6pt">
                        <xsl:apply-templates select="xhtml:head/xhtml:title|head/title"/> 
                    </fo:block>
                </fo:static-content>
                
                <fo:static-content flow-name="xsl-region-after">
                    <fo:block display-align="after" text-align="center" font-size="6pt">
                        <xsl:text>Página </xsl:text>
                        <fo:page-number/><xsl:text> de </xsl:text>
                        <fo:page-number-citation ref-id="__END__"/>
                    </fo:block>
                </fo:static-content>
                
                <xsl:apply-templates/>
                
            </fo:page-sequence>
            
        </fo:root>
        
    </xsl:template>
<xsl:template match="xhtml:table">
    <xsl:apply-templates select="caption"/>
    <fo:table    width="100%" table-layout="fixed"><xsl:call-template name="common-atts"/>
        <xsl:apply-templates select="colgroup|col"/>
        <xsl:variable name="tr1" select="(xhtml:tr|xhtml:thead/xhtml:tr|xhtml:tbody/xhtml:tr|xhtml:tfoot/xhtml:tr)[1]"/>
        <xsl:variable name="cols" select="xhtml:colgroup/xhtml:col|xhtml:col"/>
		<xsl:choose>
			<xsl:when test="@class='marcaSeguim'">
				<xsl:attribute name="border-style">none</xsl:attribute>
				<xsl:attribute name="color">#0040FF</xsl:attribute>
			</xsl:when>
			<xsl:otherwise>
				<xsl:attribute name="border-style">solid</xsl:attribute>
				<xsl:attribute name="border-width">0.5pt</xsl:attribute>
				<xsl:attribute name="border-color">#12098C</xsl:attribute>
			</xsl:otherwise>
		</xsl:choose>
        <xsl:call-template name="mock-col">
            <xsl:with-param name="cols" select="(count($tr1/xhtml:*[not(@colspan)])+sum($tr1/xhtml:*/@colspan))
                -(count($cols[not(@colspan)])+sum($cols/@colspan))"/>
        </xsl:call-template>
        <xsl:apply-templates select="xhtml:thead|xhtml:tfoot|xhtml:tbody"/>
        <xsl:if test="xhtml:tr">
            <fo:table-body >
                <xsl:call-template name="common-atts"/>
                <xsl:apply-templates select="xhtml:tr"/>
            </fo:table-body>
        </xsl:if>
    </fo:table>
</xsl:template>    

<xsl:template match="table"> 
    <xsl:apply-templates select="caption"/>
    <fo:table width="100%"   border-style="solid" border-width="0.5pt" border-color="#12098C" table-layout="fixed"><xsl:call-template name="common-atts"/>
        <xsl:apply-templates select="colgroup|col"/>
        <xsl:variable name="tr1" select="(tr|thead/tr|tbody/tr|tfoot/tr)[1]"/>
        <xsl:variable name="cols" select="colgroup/col|col"/>
        <xsl:call-template name="mock-col">
            <xsl:with-param name="cols" select="(count($tr1/*[not(@colspan)])+sum($tr1/*/@colspan))
                -(count($cols[not(@colspan)])+sum($cols/@colspan))"/>
        </xsl:call-template>
        <xsl:apply-templates select="thead|tfoot|tbody"/>
        <xsl:if test="tr">
            <fo:table-body><xsl:call-template name="common-atts"/>
                <xsl:apply-templates select="tr"/>
            </fo:table-body>
        </xsl:if>
    </fo:table>
</xsl:template>

<xsl:template match="xhtml:colgroup|colgroup">
    <xsl:apply-templates/>
</xsl:template>

<xsl:template name="mock-col">
    <xsl:param name="cols" select="1"/>
    <xsl:if test="$cols&gt;0">
        <fo:table-column column-width="proportional-column-width(1)"/>
        <xsl:call-template name="mock-col">
            <xsl:with-param name="cols" select="$cols -1"/>
        </xsl:call-template>
    </xsl:if>
</xsl:template>

<xsl:template match="xhtml:col|col">
    <fo:table-column><xsl:call-template name="common-atts"/>
        <xsl:if test="@span">
            <xsl:attribute name="number-columns-spanned"><xsl:value-of select="@span"/></xsl:attribute>
        </xsl:if>
        <xsl:choose>
            <xsl:when test="@width">
                <xsl:attribute name="column-width"><xsl:value-of select="@width"/></xsl:attribute>
            </xsl:when>
            <xsl:otherwise>
                <xsl:attribute name="column-width">proportional-column-width(1)</xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
    </fo:table-column>
</xsl:template>

<xsl:template match="xhtml:tbody|tbody">
    <fo:table-body><xsl:call-template name="common-atts"/>
        <xsl:apply-templates/>
    </fo:table-body>
</xsl:template>

<xsl:template match="xhtml:thead|thead">
    <fo:table-header><xsl:call-template name="common-atts"/>
        <xsl:apply-templates/>
    </fo:table-header>
</xsl:template>

<xsl:template match="xhtml:tfoot|tfoot">
    <fo:table-footer><xsl:call-template name="common-atts"/>
        <xsl:apply-templates/>
    </fo:table-footer>
</xsl:template>

<xsl:template match="xhtml:tr|tr">
    <fo:table-row ><xsl:call-template name="common-atts"/>
        <xsl:apply-templates/>
    </fo:table-row>
</xsl:template>

<xsl:template match="xhtml:th|th">
    <fo:table-cell font-weight="bold" padding=".1em"><xsl:call-template name="common-atts"/>
        <xsl:if test="@colspan">
            <xsl:attribute name="number-columns-spanned"><xsl:value-of select="@colspan"/></xsl:attribute>
        </xsl:if>
        <xsl:if test="@rowspan">
            <xsl:attribute name="number-rows-spanned"><xsl:value-of select="@rowspan"/></xsl:attribute>
        </xsl:if>
        <fo:block>
            <xsl:if test="parent::xhtml:tr/parent::xhtml:thead|parent::tr/parent::thead">
                <xsl:attribute name="text-align">center</xsl:attribute>
            </xsl:if>
            <xsl:apply-templates/>
        </fo:block>
    </fo:table-cell>
</xsl:template>

<xsl:template match="xhtml:td|td">
    <fo:table-cell  text-align="left" font-size="8.8pt" font-family="Verdana,Bold"><xsl:call-template name="common-atts"/>
         <xsl:if test="@colspan">
            <xsl:attribute name="number-columns-spanned"><xsl:value-of select="@colspan"/></xsl:attribute>
        </xsl:if>
        
        <xsl:if test="@class = 'titulo'">
            <xsl:attribute name="background-color">#12098C</xsl:attribute>
        </xsl:if>
        <xsl:if test="@title = 1">
            <xsl:attribute name="font-family">Verdana,Bold</xsl:attribute>
            <xsl:attribute name="background-color">#c6e2ff</xsl:attribute>
        </xsl:if>
        
        <xsl:if test="@title = 2">
            <xsl:attribute name="font-family">Verdana</xsl:attribute>
            <xsl:attribute name="background-color">white</xsl:attribute>
        </xsl:if>
        
        <xsl:if test="@title = 3">
            <xsl:attribute name="font-family">Verdana</xsl:attribute>
            <xsl:attribute name="background-color">#ffffbf</xsl:attribute>
        </xsl:if>
        
        <xsl:if test="@title = 4">
            <xsl:attribute name="font-family">Verdana</xsl:attribute>
            <xsl:attribute name="background-color">#979797</xsl:attribute>
        </xsl:if>
		
		<xsl:if test="@class = 'marcaSeguim'">
            <xsl:attribute name="color">#0040FF</xsl:attribute>
        </xsl:if>
		
		<xsl:if test="@class = 'marcaRIP'">
            <xsl:attribute name="color">#FF0000</xsl:attribute>
        </xsl:if>
        
        <xsl:if test="@rowspan">
            <xsl:attribute name="number-rows-spanned"><xsl:value-of select="@rowspan"/></xsl:attribute>
        </xsl:if>
        <fo:block >
            <xsl:if test="@salto = 'yes'"> 
                  <xsl:attribute name="break-before">page</xsl:attribute>
               
            </xsl:if>
            <xsl:if test="@bold = 'yes'"> 
                <xsl:attribute name="font-weight">bold</xsl:attribute>
            </xsl:if>
            <xsl:apply-templates/>
        </fo:block>
    </fo:table-cell>
</xsl:template>
</xsl:stylesheet>
