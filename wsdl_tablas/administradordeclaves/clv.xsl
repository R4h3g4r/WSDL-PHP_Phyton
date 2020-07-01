<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="1.0">
    <xsl:template match="datoClave">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <!-- layout for the first page -->
            <fo:layout-master-set>
                <!-- layout for the first page -->
                <fo:simple-page-master master-name="first"
                    page-height="15cm"
                    page-width="21cm"
                    margin-top="1cm"
                    margin-bottom="2cm"
                    margin-left="2.5cm"
                    margin-right="2.5cm" border="thick solid red">
                    <fo:region-body margin-top="0cm"/>
                    <fo:region-before extent="0cm"/>
                    <fo:region-after extent="0cm"/>
                </fo:simple-page-master>                
                <fo:page-sequence-master master-name="basicPSM" >
                    <fo:repeatable-page-master-alternatives>
                        <fo:conditional-page-master-reference master-reference="first" page-position="first" />
                    </fo:repeatable-page-master-alternatives>
                </fo:page-sequence-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="basicPSM">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block padding-top="4pt" border-style="solid"  border-width="0.5pt solid" >
						<fo:table>
							<fo:table-column column-width="7cm" />
							<fo:table-column column-width="9cm" />
							<fo:table-body>
								 <fo:table-row>
									<fo:table-cell padding-top="5pt">
									    <fo:block border-right-width="0.5pt" text-align="left" vertical-align="middle" font-size="9pt">
					                        <fo:external-graphic  scaling="uniform">
					                            <xsl:attribute name="src">
					                                <xsl:value-of select="urlLogo" />
					                            </xsl:attribute>
					                        </fo:external-graphic>
									    </fo:block>
									</fo:table-cell>
									<fo:table-cell padding-top="5pt">
									    <fo:block border-right-width="0.5pt" text-align="right" vertical-align="middle" font-size="9pt">
					                        <xsl:value-of select="fecha" />
									    </fo:block>
									</fo:table-cell>
								 </fo:table-row>
							</fo:table-body>
						</fo:table>
                        <fo:block text-align="center" padding-top="20pt" font-weight="bold" >Recepción de Clave para <xsl:value-of select='tipoCanal' /></fo:block>
                        <fo:block margin-left="30pt" padding-top="20pt">
                            Clave: <xsl:value-of select='clave' />
                        </fo:block>
                        
                        <fo:block margin-left="30pt" margin-right="30pt" padding-top="20pt" text-align="justify" padding-bottom="30pt">
                            El Cliente declara haber ingresado una clave para ser usada en el Servicio 
                            <xsl:value-of select='tipoCanal' />, la cual tiene estado Transitorio hasta el cambio de la misma.
                        </fo:block>
                        <fo:block border-top="0.5pt solid black" margin-left="5pt" margin-right="5pt" padding-top="5pt">
                            <fo:block>Responsable Operación : <xsl:value-of select='responsable'  /></fo:block>
                            <fo:block>Oficina : <xsl:value-of select='oficina' /></fo:block>
                        </fo:block>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
