<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
    <xsl:template match="mensajesEnviados">
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
                        Consulta Mensajes SWIFT Enviado</fo:block>

	
		    
                   <fo:block padding-top="20pt" padding-bottom="20pt">
                        <fo:table border="0.5pt solid gray">
                            <fo:table-column column-width="2.5cm" border="0.5pt solid gray"/>
                            <fo:table-column column-width="4.5cm" border="0.5pt solid gray"/>
                            <fo:table-column column-width="2.5cm" border="0.5pt solid gray"/>
                            <fo:table-column column-width="2.5cm" border="0.5pt solid gray"/>
                            <fo:table-header>
                                <fo:table-row>
                                    <fo:table-cell padding="1pt" background-color="#999999" border="0.5pt solid gray">
                                        <fo:block font-weight="bold" text-align="center" color="#FFFFFF"
                                            vertical-align="middle" font-size="10pt">Fecha
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="1pt" background-color="#999999" border="0.5pt solid gray">
                                        <fo:block font-weight="bold" text-align="center" color="#FFFFFF"
                                            vertical-align="middle" font-size="10pt">Cuenta Corriente
                                        </fo:block>
                                    </fo:table-cell >                                   
                                    <fo:table-cell padding="1pt" background-color="#999999" border="0.5pt solid gray">
                                        <fo:block font-weight="bold" text-align="center" color="#FFFFFF"
                                            vertical-align="middle" font-size="10pt">Tipo Moneda
                                        </fo:block>
                                    </fo:table-cell>                                                                       
                                    <fo:table-cell padding="1pt" background-color="#999999" border="0.5pt solid gray">
                                        <fo:block font-weight="bold" text-align="center" color="#FFFFFF"
                                            vertical-align="middle" font-size="10pt">Secuencia
                                        </fo:block>
                                    </fo:table-cell>                                                                                                           
                                </fo:table-row>
                                
                            </fo:table-header>
			    <fo:table-body>
                                <xsl:for-each select="mensajes/mensaje">			    
					<xsl:variable name="bgcolor">
						<xsl:choose>
						<xsl:when test="position() mod 2 = 0">lightgrey</xsl:when>
						<xsl:otherwise>white</xsl:otherwise>
						</xsl:choose>
					</xsl:variable>
					
					<fo:table-row>
					     <fo:table-cell padding-top="10pt" background-color="{$bgcolor}">
						  <fo:block border-right-width="0.5pt" text-align="center"
						      vertical-align="middle" font-size="10pt">
						      <xsl:value-of select="fecha" />
						   </fo:block>
						</fo:table-cell>
					     <fo:table-cell padding-top="10pt" background-color="{$bgcolor}">
						  <fo:block border-right-width="0.5pt" text-align="center"
						      vertical-align="middle" font-size="10pt">
						      <xsl:value-of select="cta" />
						  </fo:block>
					     </fo:table-cell>   
					     <fo:table-cell padding-top="10pt" background-color="{$bgcolor}">
						  <fo:block border-right-width="0.5pt" text-align="center"
						      vertical-align="middle" font-size="10pt">
						      <xsl:value-of select="moneda" />
						  </fo:block>
					     </fo:table-cell>   
					     <fo:table-cell padding-top="10pt" background-color="{$bgcolor}">
						  <fo:block border-right-width="0.5pt" text-align="center"
						      vertical-align="middle" font-size="10pt">
						      <xsl:value-of select="numeroSecuencia" />
						  </fo:block>
					     </fo:table-cell>                                        
					</fo:table-row>
                                </xsl:for-each>	
			    </fo:table-body>
                        </fo:table>
                    </fo:block> 
                    
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
