<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
    <xsl:template match="certificado">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <!-- layout for the first page -->
                <fo:simple-page-master master-name="first" page-height="29.7cm" page-width="21cm"
                    margin-top="1cm" margin-bottom="2cm" margin-left="2.5cm" margin-right="2.5cm"
                    border="thick solid red">
                    <fo:region-body margin-top="1cm" />
                    <fo:region-before extent="3cm" />
                    <fo:region-after extent="1.5cm" />
                </fo:simple-page-master>
                <!-- layout for the other pages -->
                <fo:simple-page-master master-name="rest" page-height="29.7cm" page-width="21cm"
                    margin-top="1cm" margin-bottom="2cm" margin-left="2.5cm" margin-right="2.5cm"
                    border="thick solid red">
                    <fo:region-body margin-top="1cm" />
                    <fo:region-before extent="2.5cm" />
                    <fo:region-after extent="1.5cm" />
                </fo:simple-page-master>
                <fo:page-sequence-master master-name="basicPSM">
                    <fo:repeatable-page-master-alternatives>
                        <fo:conditional-page-master-reference master-reference="first"
                            page-position="first" />
                        <fo:conditional-page-master-reference master-reference="rest"
                            page-position="rest" />
                        <!-- recommended fallback procedure -->
                        <fo:conditional-page-master-reference master-reference="rest" />
                    </fo:repeatable-page-master-alternatives>
                </fo:page-sequence-master>
            </fo:layout-master-set>
            <!-- end: defines page layout -->
            <!-- actual layout -->
            <fo:page-sequence master-reference="basicPSM">

                <fo:flow flow-name="xsl-region-body">
                    <fo:block padding-top="3pt" text-align="left" space-after.optimum="6pt"
                        line-height="24pt" font-family="sans-serif" font-size="11pt">
                        <fo:inline font-weight="bold" font-size="14pt">Cartolas al Exterior </fo:inline> 
                        Consulta Mensaje SWIFT Enviados</fo:block>

		    <xsl:for-each select="mensajes/mensaje">
			    <fo:block padding-top="3pt" text-align="justify">
				<xsl:value-of select="linea" />
			    </fo:block>	    
		    </xsl:for-each>
	                  
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
