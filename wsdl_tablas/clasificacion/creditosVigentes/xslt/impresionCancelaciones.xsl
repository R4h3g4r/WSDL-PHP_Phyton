<?xml version="1.0" encoding="iso-8859-1"?>
<!-- <== version: 2011/07/18 12:00 ==>-->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo" >
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />
    <!-- <xsl:param name="IMG_URL"/>-->
   
    <xsl:template match="impresionCancelaciones">
      
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">

            <fo:layout-master-set>
                <fo:simple-page-master master-name="cotizacion" page-height="240mm" page-width="216mm" margin-top="20.000px" margin-bottom="5.000px" margin-right="20.000px" margin-left="20.000px">
                    <fo:region-before region-name="xsl-region-before" display-align="after" extent="40mm" padding-top="6.000pt" padding-left="2in" padding-right="2in" padding-bottom="6.000pt" border-style="none" border-width="0.000px"  background-repeat="no-repeat" background-position-horizontal="0.000px" background-position-vertical="0.000px" reference-orientation="0"/>
                    <fo:region-after region-name="xsl-region-after" display-align="before" extent="70mm" padding-top="6.000pt" padding-left="0.700in" padding-right="2.700in" padding-bottom="6.000pt" border-style="none" border-width="0.000px"  background-repeat="no-repeat" background-position-horizontal="0.000px" background-position-vertical="0.000px" reference-orientation="0"/>
                    <fo:region-body margin-top="24mm" margin-bottom="25mm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>           

            <fo:page-sequence master-reference="cotizacion" font-size="8pt" font-family="Arial, Helvetica, sans-serif" initial-page-number="1">
                <fo:static-content flow-name="xsl-region-before">
                  <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif">
                        <fo:table-column column-width="67mm"/>
                        <fo:table-column column-width="137mm"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block>
                                        <fo:external-graphic content-height="scale-to-fit" height="20mm"  content-width="25mm" scaling="non-uniform">        
                                          <xsl:attribute name="src">
                                            <xsl:value-of select="rutaImagen"/>
                                          </xsl:attribute>
                                        </fo:external-graphic>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block padding-top="13mm" text-align="left" font-size="24pt" font-family="Arial, Helvetica, sans-serif" >
                                        CANCELACIONES
                                    </fo:block>
                                </fo:table-cell>                                
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>              
                </fo:static-content>
                <fo:static-content flow-name="xsl-region-after">
                  <fo:block text-align="center">
                      <fo:external-graphic content-width="scale-to-fit" content-height="10%"  width="10%">        
                        <xsl:attribute name="src">
                        <xsl:value-of select="timbre"/>
                      </xsl:attribute>
                    </fo:external-graphic>
                  </fo:block>             
                </fo:static-content>            
                <fo:flow flow-name="xsl-region-body" font-size="10pt" font-family="Arial, Helvetica, sans-serif">
                    <xsl:call-template name="bodyCan"/>
                    <fo:block id="theEndCliente"/>
                </fo:flow>
            </fo:page-sequence>   

        </fo:root>
    </xsl:template>

    <xsl:template name="bodyCan">
    	<xsl:variable name="cantSeguros" select="count(segurosPrePagados/seguro)"/>
                    <fo:block>
                      <fo:block>
                        <fo:table>
                            <fo:table-column column-width="140mm" column-number="1"/>
                            <fo:table-column column-width="63mm" column-number="2"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell>
                                  <fo:block  padding-top="5mm" padding-left="1mm" font-size="18pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-left-style="outset" border-left-width="thin" >
                                    <xsl:value-of select="nombre"/>
                                  </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block  padding-top="5mm" padding-left="1mm"  font-size="18pt" font-family="Arial, Helvetica, sans-serif " text-align="center" border-top-style="outset" border-top-width="thin" border-right-style="outset" border-right-width="thin" >
                                   <fo:inline font-size="8pt">Fecha.&#160;<xsl:value-of select="fecha"/></fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:table>
                            <fo:table-column column-width="203mm" column-number="1"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell>
                                  <fo:block  font-weight="bold" padding-top="5mm" padding-left="1mm" padding-bottom="1mm" font-size="10pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-right-style="outset" border-right-width="thin" border-left-style="outset" border-left-width="thin">
                                    <fo:inline color="#72C2EE"><xsl:value-of select="rut"/></fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                         <fo:table>
                            <fo:table-column column-width="33.9mm" column-number="1"/>
                            <fo:table-column column-width="33.8mm" column-number="2"/>
                            <fo:table-column column-width="33.8mm" column-number="3"/>
                            <fo:table-column column-width="33.8mm" column-number="4"/>
                            <fo:table-column column-width="33.8mm" column-number="5"/>
                            <fo:table-column column-width="33.9mm" column-number="6"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell>
                                  <fo:block  padding-top="5mm" padding-bottom="1mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-left-style="outset" border-left-width="thin">
                                    N&#176; de Operaci&#243;n
                                  </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block   padding-top="5mm" padding-bottom="1mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="center">
                                    Fecha de Curse
                                  </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block   padding-top="5mm" padding-bottom="1mm" padding-right="2mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="center">
                                    Tasa
                                  </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block   padding-top="5mm" padding-bottom="1mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="center">
                                    Monto Cuota
                                  </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block   padding-top="5mm" padding-left="1mm" padding-bottom="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="right" >
                                    N&#176; Cuotas Pagadas
                                  </fo:block>
                                </fo:table-cell>

                                <fo:table-cell>
                                  <fo:block   padding-top="5mm" padding-left="1mm" padding-bottom="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="center" border-right-style="outset" border-right-width="thin">
                                    <fo:inline >&#160;&#160;&#160;&#160;</fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:table>
                            <fo:table-column column-width="33.9mm" column-number="1"/>
                            <fo:table-column column-width="33.8mm" column-number="2"/>
                            <fo:table-column column-width="33.8mm" column-number="3"/>
                            <fo:table-column column-width="33.8mm" column-number="4"/>
                            <fo:table-column column-width="33.8mm" column-number="5"/>
                            <fo:table-column column-width="33.9mm" column-number="6"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell>
                                  <fo:block   padding-bottom="1mm" padding-left="1mm" font-weight="bold" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-left-style="outset" border-left-width="thin">
                                    <xsl:value-of select="NumeroOperacion"/>
                                  </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block    padding-bottom="1mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="center">
                                    <xsl:value-of select="FechaCurse"/>
                                  </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block    padding-bottom="1mm" padding-left="1mm" padding-right="2mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="center">
                                    <xsl:value-of select="Tasa"/>&#160;%
                                  </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block    padding-bottom="1mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="center">
                                   <xsl:value-of select="MontoCuota"/>
                                  </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block    padding-bottom="1mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="center" >
                                    <xsl:value-of select="NumeroCuotasPagadas"/>
                                  </fo:block>
                                </fo:table-cell>

                                <fo:table-cell>
                                  <fo:block    padding-bottom="1mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="center" border-right-style="outset" border-right-width="thin">
                                    <fo:inline >&#160;&#160;&#160;&#160;</fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <fo:table>
                            <fo:table-column column-width="33.9mm" column-number="1"/>
                            <fo:table-column column-width="33.8mm" column-number="2"/>
                            <fo:table-column column-width="33.8mm" column-number="3"/>
                            <fo:table-column column-width="33.8mm" column-number="4"/>
                            <fo:table-column column-width="33.8mm" column-number="5"/>
                            <fo:table-column column-width="33.9mm" column-number="6"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell>
                                  <fo:block    padding-top="2mm" font-weight="bold" padding-left="1mm" font-size="18pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-left-style="outset" border-left-width="thin">
                                    <fo:inline >&#160;&#160;&#160;&#160;</fo:inline>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block     padding-top="2mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="center" border-top-style="outset" border-top-width="thin">
                                    Monto Solicitado
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block     padding-top="2mm" padding-right="2mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="center" border-top-style="outset" border-top-width="thin">
                                    Saldo Adeudado
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block     padding-top="2mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="center" border-top-style="outset" border-top-width="thin">
                                    Fecha Proximo Pago
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block     padding-top="2mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="center" border-top-style="outset" border-top-width="thin">
                                    Tipo
                                    </fo:block>
                                </fo:table-cell>

                                <fo:table-cell>
                                  <fo:block     padding-top="2mm" padding-left="1mm" font-size="18pt" font-family="Arial, Helvetica, sans-serif " text-align="center" border-right-style="outset" border-right-width="thin">
                                    <fo:inline >&#160;&#160;&#160;&#160;</fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <fo:table>
                            <fo:table-column column-width="33.9mm" column-number="1"/>
                            <fo:table-column column-width="33.8mm" column-number="2"/>
                            <fo:table-column column-width="33.8mm" column-number="3"/>
                            <fo:table-column column-width="33.8mm" column-number="4"/>
                            <fo:table-column column-width="33.8mm" column-number="5"/>
                            <fo:table-column column-width="33.9mm" column-number="6"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell>
                                  <fo:block   padding-top="-2mm" padding-bottom="2mm" padding-left="1mm" font-weight="bold" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-bottom-style="outset" border-bottom-width="thin" border-left-style="outset" border-left-width="thin">
                                  <fo:inline >&#160;&#160;&#160;&#160;</fo:inline>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block   padding-top="-2mm" padding-bottom="2mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="center" border-bottom-style="outset" border-bottom-width="thin">
                                    <xsl:value-of select="MontoSolicitado"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block   padding-top="-2mm" padding-bottom="2mm" padding-left="1mm" padding-right="2mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="center" border-bottom-style="outset" border-bottom-width="thin">
                                    <xsl:value-of select="SaldoAdeudado"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block   padding-top="-2mm" padding-bottom="2mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="center" border-bottom-style="outset" border-bottom-width="thin">
                                    <xsl:value-of select="FechaProximoPago"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block   padding-top="-2mm" padding-bottom="2mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="center" border-bottom-style="outset" border-bottom-width="thin">
                                    <xsl:value-of select="Tipo"/>
                                    </fo:block>
                                </fo:table-cell>

                                <fo:table-cell>
                                  <fo:block   padding-top="-2mm" padding-bottom="2mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="center" border-bottom-style="outset" border-bottom-width="thin" border-right-style="outset" border-right-width="thin">
                                     <fo:inline >&#160;&#160;&#160;&#160;</fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                      </fo:block>
                      <fo:block  padding-top="3mm" padding-bottom="1mm" font-size="12pt" font-family="Arial, Helvetica, sans-serif " text-align="left">
                              Opciones
                      </fo:block>
                      <fo:block>
                        <fo:table>
                           <fo:table-column column-width="47.8mm" column-number="1"/>
                           <fo:table-column column-width="67mm" column-number="2"/>
                           <fo:table-column column-width="47.8mm" column-number="3"/>
                           <fo:table-column column-width="40mm" column-number="4"/>
                           <fo:table-body>
                          <fo:table-row>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-left="1mm"  padding-top="1mm" padding-bottom="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-bottom-width="thin"  border-left-style="outset" border-left-width="thin"  background-color="#EFEFEF">
                                Tipo
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                              <fo:block padding-left="1mm" font-weight="bold" padding-top="1mm"  padding-bottom="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-bottom-width="thin" border-left-style="outset" border-left-width="thin" background-color="#FFFFFF">
                                <xsl:choose>
                                	<xsl:when test="Opciones/Tipo != ''">
                                		<xsl:value-of select="Opciones/Tipo"/>
                                	</xsl:when>
                                	<xsl:otherwise>
                                		&#160;&#160;&#160;&#160;
                                	</xsl:otherwise>
                                </xsl:choose>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-top="1mm" padding-left="1mm" padding-bottom="1mm"  font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-bottom-width="thin" border-left-style="outset" border-left-width="thin" background-color="#EFEFEF">
                              Saldo Capital
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-top="1mm" padding-bottom="1mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-right-style="outset" border-left-style="outset" border-left-width="thin" border-right-width="thin" border-bottom-width="thin" background-color="#FFFFFF">
                              	<xsl:choose>
                                	<xsl:when test="Opciones/SaldoCapital != ''">
                                		<xsl:value-of select="Opciones/SaldoCapital"/>
                                	</xsl:when>
                                	<xsl:otherwise>
                                		&#160;&#160;&#160;&#160;
                                	</xsl:otherwise>
                              	</xsl:choose>
                              </fo:block>
                            </fo:table-cell>                              
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-top="1mm" padding-bottom="1mm"  font-size="8pt" padding-left="1mm" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-bottom-width="thin" border-left-style="outset" border-left-width="thin" background-color="#EFEFEF">
                                Cargos
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-left="1mm" padding-top="1mm" padding-bottom="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-bottom-width="thin" border-left-style="outset" border-left-width="thin" background-color="#FFFFFF">
                              	<xsl:choose>
                                	<xsl:when test="Opciones/Cargos != ''">
                                		<xsl:value-of select="Opciones/Cargos"/>
                                	</xsl:when>
                                	<xsl:otherwise>
                                		&#160;&#160;&#160;&#160;
                                	</xsl:otherwise>
                                </xsl:choose>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-top="1mm" padding-left="1mm" padding-bottom="1mm"  font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-bottom-width="thin" border-left-style="outset" border-left-width="thin" background-color="#EFEFEF">
                              Intereses
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-top="1mm" padding-bottom="1mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-right-style="outset" border-left-style="outset" border-left-width="thin" border-right-width="thin" border-bottom-width="thin" background-color="#FFFFFF">
                              	<xsl:choose>
                                	<xsl:when test="Opciones/Intereses != ''">
                                		<xsl:value-of select="Opciones/Intereses"/>
                                	</xsl:when>
                                	<xsl:otherwise>
                                		&#160;&#160;&#160;&#160;
                                	</xsl:otherwise>
                                </xsl:choose>
                              </fo:block>
                            </fo:table-cell>                              
                          </fo:table-row> 
                          <fo:table-row>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-top="1mm" padding-bottom="1mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-right-style="outset" border-left-style="outset" border-left-width="thin" border-right-width="thin" border-bottom-width="thin" background-color="#EFEFEF">
                                Cuenta N&#176;
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-top="1mm"  padding-bottom="1mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-bottom-width="thin" border-left-style="outset" border-left-width="thin" background-color="#FFFFFF">
                              	<xsl:choose>
                                	<xsl:when test="Opciones/CuentaN != ''">
                                		<xsl:value-of select="Opciones/CuentaN"/>
                                	</xsl:when>
                                	<xsl:otherwise>
                                		&#160;&#160;&#160;&#160;
                                	</xsl:otherwise>
                                </xsl:choose>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-top="1mm" padding-bottom="1mm"  padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-bottom-width="thin" border-left-style="outset" border-left-width="thin" background-color="#EFEFEF">
                              Abono Seguro
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-top="1mm" padding-bottom="1mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-right-style="outset" border-left-style="outset" border-left-width="thin" border-right-width="thin" border-bottom-width="thin" background-color="#FFFFFF">
                                <xsl:choose>
                              		<xsl:when test="Opciones/AbonoSeguro != ''">
                                		<xsl:value-of select="Opciones/AbonoSeguro"/>
                                	</xsl:when>
                                	<xsl:otherwise>
                                		&#160;&#160;&#160;&#160;
                                	</xsl:otherwise>
                                </xsl:choose>
                              </fo:block>
                            </fo:table-cell>                              
                          </fo:table-row> 
                          <fo:table-row>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-top="1mm"  padding-bottom="1mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-bottom-width="thin" border-left-style="outset" border-left-width="thin" background-color="#EFEFEF">
                                Negociaci&#243;n
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-top="1mm"  padding-bottom="1mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-bottom-width="thin" border-left-style="outset" border-left-width="thin" background-color="#FFFFFF">
                                <xsl:choose>
                              		<xsl:when test="Opciones/Negociacion != ''">
                                		<xsl:value-of select="Opciones/Negociacion"/>
                                	</xsl:when>
                                	<xsl:otherwise>
                                		&#160;&#160;&#160;&#160;
                                	</xsl:otherwise>
                                </xsl:choose>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-top="1mm" padding-bottom="1mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-bottom-width="thin" border-left-style="outset" border-left-width="thin" background-color="#EFEFEF">
                              Valor Comision
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-top="1mm" padding-bottom="1mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-right-style="outset" border-left-style="outset" border-left-width="thin" border-right-width="thin" border-bottom-width="thin" background-color="#FFFFFF">
                              <xsl:choose>
                              		<xsl:when test="Opciones/ValorComision != ''">
                                		<xsl:value-of select="Opciones/ValorComision"/>
                                	</xsl:when>
                                	<xsl:otherwise>
                                		&#160;&#160;&#160;&#160;
                                	</xsl:otherwise>
                                </xsl:choose>
                              </fo:block>
                            </fo:table-cell>                              
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-top="1mm"  padding-bottom="1mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-bottom-width="thin" border-left-style="outset" border-left-width="thin" background-color="#EFEFEF">
                                N&#176; de Cuotas a Pagar
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-top="1mm"  padding-bottom="1mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-bottom-width="thin" border-left-style="outset" border-left-width="thin" background-color="#FFFFFF">
                              	<xsl:choose>
                              		<xsl:when test="Opciones/CuotasPagar != ''">
                                		<xsl:value-of select="Opciones/CuotasPagar"/>
                                	</xsl:when>
                                	<xsl:otherwise>
                                		&#160;&#160;&#160;&#160;
                                	</xsl:otherwise>
                                </xsl:choose>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-top="1mm" padding-bottom="1mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-bottom-width="thin" border-left-style="outset" border-left-width="thin" background-color="#EFEFEF">
                              Gastos
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-top="1mm" padding-bottom="1mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-right-style="outset" border-left-style="outset" border-left-width="thin" border-right-width="thin" border-bottom-width="thin" background-color="#FFFFFF">
                              <xsl:choose>
                              		<xsl:when test="Opciones/Gastos != ''">
                                		<xsl:value-of select="Opciones/Gastos"/>
                                	</xsl:when>
                                	<xsl:otherwise>
                                		&#160;&#160;&#160;&#160;
                                	</xsl:otherwise>
                                </xsl:choose>
                              </fo:block>
                            </fo:table-cell>                              
                          </fo:table-row> 
                          <fo:table-row>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-top="1mm"  padding-bottom="1mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-bottom-width="thin" border-left-style="outset" border-left-width="thin" background-color="#EFEFEF">
                                Monto
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-top="1mm"  padding-bottom="1mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-bottom-width="thin" border-left-style="outset" border-left-width="thin" background-color="#FFFFFF">
                              	<xsl:choose>
                              		<xsl:when test="Opciones/Monto != ''">
                                		<xsl:value-of select="Opciones/Monto"/>
                                	</xsl:when>
                                	<xsl:otherwise>
                                		&#160;&#160;&#160;&#160;
                                	</xsl:otherwise>
                                </xsl:choose>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-top="1mm" padding-bottom="1mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-bottom-width="thin" border-left-style="outset" border-left-width="thin" background-color="#EFEFEF">
                              Diferencia
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-top="1mm" padding-bottom="1mm" padding-left="1mm"  font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-right-style="outset" border-left-style="outset" border-left-width="thin" border-right-width="thin" border-bottom-width="thin" background-color="#FFFFFF">
                              <xsl:choose>
                              		<xsl:when test="Opciones/Diferencia != ''">
                                		<xsl:value-of select="Opciones/Diferencia"/>
                                	</xsl:when>
                                	<xsl:otherwise>
                                		&#160;&#160;&#160;&#160;
                                	</xsl:otherwise>
                                </xsl:choose>
                              </fo:block>
                            </fo:table-cell>                              
                          </fo:table-row> 
                          <fo:table-row>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-top="1mm"  padding-bottom="1mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-bottom-width="thin" border-left-style="outset" border-left-width="thin" background-color="#EFEFEF">
                                Tasa
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-top="1mm"  padding-bottom="1mm" padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-bottom-width="thin" border-left-style="outset" border-left-width="thin" background-color="#FFFFFF">
                              	<xsl:choose>
                              		<xsl:when test="Opciones/Tasa != ''">
                                		<xsl:value-of select="Opciones/Tasa"/>&#160;%
                                	</xsl:when>
                                	<xsl:otherwise>
                                		&#160;&#160;&#160;&#160;
                                	</xsl:otherwise>
                                </xsl:choose>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-top="1mm" padding-bottom="1mm"  padding-left="1mm" font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-bottom-width="thin" border-left-style="outset" border-left-width="thin" background-color="#EFEFEF">
                              Total a Pagar
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                              <fo:block font-weight="bold" padding-top="1mm"  padding-bottom="1mm" padding-left="1mm"  font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-right-style="outset" border-left-style="outset" border-left-width="thin" border-right-width="thin" border-bottom-width="thin" background-color="#FFFFFF">
                              <xsl:choose>
                              		<xsl:when test="Opciones/TotalPagar != ''">
                                		<xsl:value-of select="Opciones/TotalPagar"/>
                                	</xsl:when>
                                	<xsl:otherwise>
                                		&#160;&#160;&#160;&#160;
                                	</xsl:otherwise>
                                </xsl:choose>
                              </fo:block>
                            </fo:table-cell>                              
                          </fo:table-row>                                     
                        </fo:table-body>
                        </fo:table>
                      </fo:block>
                      <xsl:if test="$cantSeguros &gt; 0">
                    <fo:block  padding-top="3mm" padding-bottom="1mm" font-size="12pt" font-family="Arial, Helvetica, sans-serif " text-align="left">
                         Seguros a abonar por Prepago
                    </fo:block>
                    </xsl:if>
                    <fo:block>
                      <fo:table>
                            <fo:table-column column-width="101.5mm" column-number="1"/>
                            <fo:table-column column-width="101.5mm" column-number="2"/>
                        <fo:table-body>
                          <xsl:for-each select="segurosPrePagados/seguro">
                             <xsl:if test = "(position() mod 2) = 1">
                              <fo:table-row>
                                 <fo:table-cell>
                                    <xsl:choose>
                                      <xsl:when test = "(((position() - 1) ) div 2) mod 2 = 0">
                                          <fo:block padding-left="1mm" font-weight="bold" padding-top="1mm" padding-bottom="1mm"  font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-bottom-width="thin" border-right-style="outset" border-right-width="thin" border-left-style="outset" border-left-width="thin" background-color="#EFEFEF">
                                        <xsl:value-of select="."/>
                                        </fo:block>
                                      </xsl:when>
                                      <xsl:otherwise>
                                        <fo:block padding-left="1mm" font-weight="bold" padding-top="1mm" padding-bottom="1mm"  font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-bottom-width="thin" border-right-style="outset" border-right-width="thin" border-left-style="outset" border-left-width="thin" background-color="#FFFFFF">
                                        <xsl:value-of select="."/>
                                        </fo:block>
                                      </xsl:otherwise>
                                    </xsl:choose>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <xsl:choose>
                                      <xsl:when test = "(((position() - 1 ) ) div 2) mod 2= 0">
                                        <xsl:choose>
                                          <xsl:when test = "following-sibling::*[1] != ''">
                                          <fo:block padding-left="1mm" font-weight="bold" padding-top="1mm" padding-bottom="1mm"  font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-bottom-width="thin" border-right-style="outset" border-right-width="thin" border-left-style="outset" border-left-width="thin" background-color="#EFEFEF">
                                        <xsl:value-of select="following-sibling::*[1]"/>
                                        </fo:block>
                                      </xsl:when>
                                      <xsl:otherwise>
                                        <fo:block font-weight="bold" padding-left="1mm" padding-top="1mm" padding-bottom="1mm"  font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-bottom-width="thin" border-right-style="outset" border-right-width="thin" border-left-style="outset" border-left-width="thin" background-color="#EFEFEF">
                                        &#160;&#160;&#160;&#160;
                                      </fo:block>
                                      </xsl:otherwise>
                                    </xsl:choose>
                                      </xsl:when>
                                      <xsl:otherwise>
                                        <xsl:choose>
                                          <xsl:when test = "following-sibling::*[1] != ''">
                                        
                                        <fo:block padding-left="1mm" font-weight="bold" padding-top="1mm" padding-bottom="1mm"  font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-bottom-width="thin" border-right-style="outset" border-right-width="thin" border-left-style="outset" border-left-width="thin" background-color="#FFFFFF">
                                        <xsl:value-of select="following-sibling::*[1]"/>
                                        </fo:block>
                                        </xsl:when>
                                      <xsl:otherwise>
                                        <fo:block padding-left="1mm"  font-weight="bold" padding-top="1mm" padding-bottom="1mm"  font-size="8pt" font-family="Arial, Helvetica, sans-serif " text-align="left" border-top-style="outset" border-top-width="thin" border-bottom-style="outset" border-bottom-width="thin" border-right-style="outset" border-right-width="thin" border-left-style="outset" border-left-width="thin" background-color="#FFFFFF">
                                        &#160;&#160;&#160;&#160;
                                      </fo:block>
                                      </xsl:otherwise>
                                    </xsl:choose>
                                      
                                      </xsl:otherwise>
                                    </xsl:choose>
                                    </fo:table-cell>
                            </fo:table-row>
                          </xsl:if>
                        </xsl:for-each>
                        </fo:table-body>
                      </fo:table>
                    </fo:block>
                    </fo:block>                               
    </xsl:template>
</xsl:stylesheet>