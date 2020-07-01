<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="1.0">
  <xsl:template match="estado">
    <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
      <fo:layout-master-set>
	  
        <fo:simple-page-master master-name="first"
          margin-right="1cm"
          margin-left="1cm"
          margin-bottom="1cm"
          margin-top="1cm"
          page-width="21cm"
          page-height="29.7cm">
          <fo:region-body margin-top="7cm" margin-bottom="12cm"/>
          <fo:region-before extent="7cm"/>
          <fo:region-after extent="12cm"/>
		  
        </fo:simple-page-master>
      </fo:layout-master-set>
      <fo:page-sequence master-reference="first" initial-page-number="1">
        <fo:static-content flow-name="xsl-region-before">


          <fo:block line-height="14pt" font-size="10pt"
    text-align="end"></fo:block>

	 
          <fo:table border-collapse="collapse" table-layout="fixed">
            <fo:table-column column-width="6.0cm" />
            <fo:table-column column-width="5.9cm" />
            <fo:table-column column-width="7.0cm" />
            <fo:table-body>
              <fo:table-row >
                <fo:table-cell>
                  <fo:block text-align="center"> </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="center"> </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="left" font-size="16pt"> Estado de Cuenta </fo:block>
                  <fo:block text-align="left" font-size="16pt"> Nacional al <xsl:value-of select="encabezado/fecha/@value"/> </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row >
                <fo:table-cell padding-top="20pt">
                  <fo:block text-align="center">
                    <fo:table border-collapse="collapse" table-layout="fixed" >
                      <fo:table-column column-width="3cm"/>
                      <fo:table-column column-width="3cm"/>
                      <fo:table-body >
		      <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF" height="0.1px">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt" > <fo:inline color="#EFEFEF">.</fo:inline></fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"></fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt" > TARJETA Nº </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> <xsl:value-of select="encabezado/cuenta/@value"/> </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> Cupo Total </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> $ <xsl:value-of select="encabezado/cupoTotal/@value"/> </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> Cupo Utilizado </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> $ <xsl:value-of select="encabezado/cupoUtilizado/@value"/></fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> Cupo Disponible </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> $ <xsl:value-of select="encabezado/cupoDisponible/@value"/> </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
			 <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt" font-color="#EFEFEF"> <fo:inline color="#EFEFEF">.</fo:inline></fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"></fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                      </fo:table-body>
                    </fo:table>
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell padding-top="20pt">
                  <fo:block text-align="center">
                    <fo:table border-collapse="collapse" table-layout="fixed">
                      <fo:table-column column-width="2.7cm"/>
                      <fo:table-column column-width="2.5cm"/>
                      <fo:table-body>
		      <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt" font-color="#EFEFEF"> <fo:inline color="#EFEFEF">.</fo:inline></fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"></fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> Monto Facturado </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> $ <xsl:value-of select="encabezado/montoFacturado/@value"/> </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> Pago Mínimo </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> $ <xsl:value-of select="encabezado/pagoMinimo/@value"/> </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> Pagar Hasta </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"><xsl:value-of select="encabezado/fechaVencimientoFacturacion/@value"/> </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> Cargo Cta. Cte </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> $ <xsl:value-of select="encabezado/cargoCuentaCorriente/@value"/> </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
			<fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt" font-color="#EFEFEF"> <fo:inline color="#EFEFEF">.</fo:inline></fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"></fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                      </fo:table-body>
                    </fo:table>
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block padding-top="0pt" text-align="center">
                    <fo:external-graphic height="40px">
					<xsl:attribute name="src">
					<xsl:value-of select="encabezado/logoBanco/@value"/>						
					</xsl:attribute>
                    </fo:external-graphic>
                  </fo:block>
		   <fo:block padding-top="0pt" text-align="left">
                    <fo:external-graphic>
					<xsl:attribute name="src">
					<xsl:value-of select="encabezado/codigoBarra/@value"/>						
					</xsl:attribute>
                    </fo:external-graphic>
                  </fo:block>
                  <fo:block text-align="left" font-size="5pt"> Consideramos aprobado este estado de cuenta, si dentro de 45 días no hemos </fo:block>
                  <fo:block text-align="left" font-size="5pt"> recibido aviso por escrito en contrario </fo:block>
                  
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:block padding-top="3pt"> </fo:block>
          <fo:table border-collapse="collapse" table-layout="fixed" >
            <fo:table-column column-width="11.9cm"/>
            <fo:table-column column-width="5cm"/>
	    <fo:table-column column-width="3cm"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block text-align="center">
                    <fo:table border-collapse="collapse" table-layout="fixed">
                      <fo:table-column column-width="4cm"/>
                      <fo:table-column column-width="3cm"/>
                      <fo:table-column column-width="4.2cm"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid" height="12pt">
                            <fo:block text-align="center"> </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid" height="12pt">
                            <fo:block text-align="center" font-size="8pt" padding-top="2pt"> crédito rotativo </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid" height="12pt">
                            <fo:block text-align="center" font-size="8pt" padding-top="2pt"> compras cuotas 5-24 meses </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid" height="12pt">
                            <fo:block text-align="center" font-size="8pt" padding-top="2pt"> Tasa interés proximo período </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid" height="12pt">
                            <fo:block text-align="center" font-size="8pt" padding-top="2pt"> <xsl:value-of select="encabezado/tasaProxPerdiodoCredRotativo/@value"/>% </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid" height="12pt">
                            <fo:block text-align="center" font-size="8pt" padding-top="2pt"> <xsl:value-of select="encabezado/tasaProxPeriodoCredCuotas/@value"/>% </fo:block>
                          </fo:table-cell>
                        </fo:table-row>

                      </fo:table-body>
                    </fo:table>
			
					
                    <fo:block padding-top="5pt"> </fo:block>
					
                    <fo:table border-collapse="collapse" table-layout="fixed" >
                      <fo:table-column column-width="4cm"/>
                      <fo:table-column column-width="7.2cm"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid" height="12pt">
                            <fo:block text-align="center" font-size="8pt" padding-top="2pt"> Saldo Capital Cuotas </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid" height="12pt">
                            <fo:block text-align="center" font-size="8pt" padding-top="2pt"> Detalles vencimientos de cuotas próximos 4 meses </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid" height="12pt">
                            <fo:block text-align="center" font-size="8pt" padding-top="2pt"> $ <xsl:value-of select="encabezado/saldoCapitalCuotas/@value"/> </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid" height="12pt">
                            <fo:block text-align="center" font-size="8pt">
                              <fo:table border-collapse="collapse" table-layout="fixed">
                                <fo:table-column column-width="1.8cm"/>
                                <fo:table-column column-width="1.8cm"/>
                                <fo:table-column column-width="1.8cm"/>
                                <fo:table-column column-width="1.8cm"/>
                                <fo:table-body>
                                  <fo:table-row>
                                    <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid" height="12pt">
                                      <fo:block text-align="center" font-size="8pt" padding-top="2pt"> $ <xsl:value-of select="encabezado/vencimientoCuotas1/@value"/> </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid" height="12pt">
                                      <fo:block text-align="center" font-size="8pt" padding-top="2pt"> $ <xsl:value-of select="encabezado/vencimientoCuotas2/@value"/></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid" height="12pt">
                                      <fo:block text-align="center" font-size="8pt" padding-top="2pt"> $ <xsl:value-of select="encabezado/vencimientoCuotas3/@value"/> </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid" height="12pt">
                                      <fo:block text-align="center" font-size="8pt" padding-top="2pt"> $ <xsl:value-of select="encabezado/vencimientoCuotas4/@value"/> </fo:block>
                                    </fo:table-cell>
                                  </fo:table-row>
                                </fo:table-body>
                              </fo:table>
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                      </fo:table-body>
                    </fo:table>
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell >
                  <fo:table>
                    <fo:table-column column-width="5cm"/>
                    <fo:table-column column-width="2cm"/>
                    <fo:table-body>
                      <fo:table-row>
                        <fo:table-cell>
                          <fo:block text-align="left" font-size="9pt"> <xsl:value-of select="encabezado/nombre/@value"/></fo:block>
                          <fo:block text-align="left" font-size="9pt"> <xsl:value-of select="encabezado/direccion/@value"/></fo:block>
                          <fo:block text-align="left" font-size="9pt"> <xsl:value-of select="encabezado/comuna/@value"/> </fo:block>
                        </fo:table-cell>

                         <fo:table-cell>
                          <fo:block padding-top="0pt" text-align="right" margin-top="0pt">
                            <fo:external-graphic height="45px">
                              <xsl:attribute name="src"> <xsl:value-of select="encabezado/logoTarjeta/@value"/> </xsl:attribute>
                            </fo:external-graphic>
                          </fo:block>
                        </fo:table-cell>

                      </fo:table-row>
                    </fo:table-body>
                  </fo:table>
				  
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>
          <fo:block padding-top="1pt"> </fo:block>
          <fo:block padding-top="1pt"> </fo:block>
          <fo:table border-collapse="collapse" table-layout="fixed">
            <fo:table-column column-width="18.9cm"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block text-align="right" font-size="7.5pt"> Movimientos del Periodo &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <fo:page-number/> de 1 </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>
          <fo:block padding-top="5pt"> </fo:block>
          <fo:table border-collapse="collapse" table-layout="fixed">
            <fo:table-column column-width="2.78cm"/>
            <fo:table-column column-width="2.78cm"/>
            <fo:table-column column-width="6.78cm"/>
            <fo:table-column column-width="3.78cm"/>
            <fo:table-column column-width="2.78cm"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell padding-top="0pt">
                  <fo:block text-align="left" font-size="10pt" margin-left="5pt"> Nº de Ref. </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="left" font-size="10pt"> Fecha </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="left" font-size="10pt"> Descripción </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="left" font-size="10pt"> Ciudad </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="right" font-size="10pt" margin-right="10pt"> Monto $ </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>
          <fo:block padding-top="0pt"> </fo:block>

        </fo:static-content>
        <fo:static-content flow-name="xsl-region-after">
          <fo:block padding-top="20pt"> </fo:block>
          <fo:table border-collapse="collapse" table-layout="fixed">
            <fo:table-column column-width="6.3cm"/>
            <fo:table-column column-width="6.3cm"/>
            <fo:table-column column-width="6.3cm"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block text-align="center">
                    <fo:table border-collapse="collapse" table-layout="fixed">
                      <fo:table-column column-width="4.7cm"/>
                      <fo:table-column column-width="1.5cm"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="9pt" margin-left="3pt"> ACTIVIDAD DE LA CUENTA </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="center" font-size="9pt"> ($) </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#000000" height="1px">
                            <fo:block text-align="left" font-size="7.5pt"> </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#000000" height="1px">
                            <fo:block text-align="center" font-size="7.5pt"> </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="7.5pt" margin-left="3pt"> Monto Anterior Facturado </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="right" font-size="7.5pt" margin-right="3pt"> <xsl:value-of select="encabezado/saldoAnteriorFacturado/@value"/> </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="7.5pt" margin-left="3pt"> Total de Pagos </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="right" font-size="7.5pt" margin-right="3pt"> <xsl:value-of select="encabezado/totalPagos/@value"/> </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="7.5pt" margin-left="3pt"> Total Cargos Automáticos de Cuenta </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="right" font-size="7.5pt" margin-right="3pt"> <xsl:value-of select="encabezado/totalCargosAutomaticos/@value"/> </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="7.5pt" margin-left="3pt"> Total de Compras, Cuotas y Avances </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="right" font-size="7.5pt"  margin-right="3pt"> <xsl:value-of select="encabezado/totalComprasCuotaAvances/@value"/> </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="7.5pt" margin-left="3pt"> Total Cargos y Abonos a la Cuenta </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="right" font-size="7.5pt"  margin-right="3pt"> <xsl:value-of select="encabezado/totalCargosAbonosCta/@value"/> </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="7.5pt" margin-left="3pt"> Monto Facturado </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="right" font-size="7.5pt"  margin-right="3pt"> <xsl:value-of select="encabezado/montoFacturado/@value"/> </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="7.5pt" margin-left="3pt"> Fecha Proxima Facturacion </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="right" font-size="7.5pt" margin-right="3pt"><xsl:value-of select="encabezado/fechaProximaFacturacion/@value"/> </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                      </fo:table-body>
                    </fo:table>
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="center">
                    <fo:table border-collapse="collapse" table-layout="fixed">
                      <fo:table-column column-width="4.7cm"/>
                      <fo:table-column column-width="1.5cm"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="9pt" margin-left="3pt">&#160;  </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="center" font-size="9pt" margin-left="3pt">&#160;  </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#000000" height="1px">
                            <fo:block text-align="left" font-size="7.5pt"> </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#000000" height="1px">
                            <fo:block text-align="center" font-size="7.5pt"> </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="7.5pt" margin-left="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="right" font-size="7.5pt" margin-right="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="7.5pt" margin-left="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="right" font-size="7.5pt" margin-right="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="7.5pt" margin-left="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="right" font-size="7.5pt" margin-right="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="7.5pt" margin-left="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="right" font-size="7.5pt" margin-right="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="7.5pt" margin-left="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="right" font-size="7.5pt" margin-right="3pt"> &#160;</fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="7.5pt" margin-left="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="right" font-size="7.5pt" margin-right="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="7.5pt" margin-left="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="right" font-size="7.5pt" margin-right="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                      </fo:table-body>
                    </fo:table>
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="center">
                    <fo:table border-collapse="collapse" table-layout="fixed">
                      <fo:table-column column-width="4.7cm"/>
                      <fo:table-column column-width="1.5cm"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="9pt" margin-left="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="center" font-size="9pt" margin-left="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#000000" height="1px">
                            <fo:block text-align="left" font-size="7.5pt"> </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#000000" height="1px">
                            <fo:block text-align="center" font-size="7.5pt"> </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="7.5pt" margin-left="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="right" font-size="7.5pt" margin-right="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="7.5pt" margin-left="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="right" font-size="7.5pt" margin-right="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="7.5pt" margin-left="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="right" font-size="7.5pt" margin-right="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="7.5pt" margin-left="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="right" font-size="7.5pt" margin-right="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="7.5pt" margin-left="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="right" font-size="7.5pt" margin-right="3pt"> &#160;</fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="7.5pt" margin-left="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="right" font-size="7.5pt" margin-right="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="left" font-size="7.5pt" margin-left="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                          <fo:table-cell background-color="#EFEFEF">
                            <fo:block text-align="right" font-size="7.5pt" margin-right="3pt"> &#160; </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                      </fo:table-body>
                    </fo:table>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>
          <fo:block padding-top="20pt"> </fo:block>
          <fo:table border-collapse="collapse" table-layout="fixed">
            <fo:table-column column-width="7.3cm"/>
            <fo:table-column column-width="4.3cm"/>
            <fo:table-column column-width="7.3cm"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid">
                  <fo:block text-align="center" font-size="9pt" padding-top="8pt" margin-left="3pt"> Los cargos por retraso generan un recargo por concepto por los gastos de cobranza que incurra de acuerdo a lo
                    dispuesto en la ley Nº 19.486 </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="center" font-size="8pt">
                    <fo:block padding-top="10pt" text-align="center">
                      <fo:external-graphic height="40px">
                        <xsl:attribute name="src"> <xsl:value-of select="encabezado/logoBanco/@value"/> </xsl:attribute>
                      </fo:external-graphic>
                    </fo:block>
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid">
                  <fo:block text-align="center" font-size="9pt" padding-top="7pt" margin-left="3pt"> En caso de perdida o robo de su tarjeta de crédito, llame gratis al 800 201 090 para solicitar su bloqueo </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>
          <fo:block padding-top="30pt"> </fo:block>
          <fo:table border-collapse="collapse" table-layout="fixed">
            <fo:table-column column-width="7.3cm"/>
            <fo:table-column column-width="4.3cm"/>
            <fo:table-column column-width="7.3cm"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid">
                  <fo:block text-align="center" font-size="9pt"> COMPROBANTE DE PAGO <xsl:value-of select="encabezado/file2/@value"/></fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block > </fo:block>
                </fo:table-cell>
                <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid">
                  <fo:block text-align="center" font-size="9pt"> COMPROBANTE DE PAGO </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>
          <fo:block padding-top="0pt"> </fo:block>
          <fo:table border-collapse="collapse" table-layout="fixed">
            <fo:table-column column-width="7.3cm"/>
            <fo:table-column column-width="4.3cm"/>
            <fo:table-column column-width="7.3cm"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block text-align="center">
                    <fo:table border-collapse="collapse" table-layout="fixed">
                      <fo:table-column column-width="3.65cm"/>
                      <fo:table-column column-width="3.65cm"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> Nombre </fo:block>
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> <xsl:value-of select="encabezado/nombre/@value"/> </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> Número de Cuenta </fo:block>
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> <xsl:value-of select="encabezado/cuenta/@value"/> </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> Pagar Hasta </fo:block>
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"><xsl:value-of select="encabezado/fechaVencimientoFacturacion/@value"/></fo:block>
                          </fo:table-cell>
                          <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> Monto Facturado </fo:block>
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> $ <xsl:value-of select="encabezado/montoFacturado/@value"/> </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> Pago Mínimo </fo:block>
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> $ <xsl:value-of select="encabezado/pagoMinimo/@value"/> </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> Monto Cancelado </fo:block>
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                      </fo:table-body>
                    </fo:table>
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block>
                    <fo:block padding-top="10pt" text-align="center">
                      <fo:external-graphic height="90px">
					<xsl:attribute name="src">
					<xsl:value-of select="encabezado/timbre/@value"/>						
					</xsl:attribute>
                      </fo:external-graphic>
                    </fo:block>
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="center">
                    <fo:table border-collapse="collapse" table-layout="fixed">
                      <fo:table-column column-width="3.65cm"/>
                      <fo:table-column column-width="3.65cm"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> Nombre </fo:block>
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> <xsl:value-of select="encabezado/nombre/@value"/> </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> Número de Cuenta </fo:block>
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"><xsl:value-of select="encabezado/cuenta/@value"/> </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> Pagar Hasta </fo:block>
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> <xsl:value-of select="encabezado/fechaVencimientoFacturacion/@value"/> </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> Monto Facturado </fo:block>
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> $ <xsl:value-of select="encabezado/montoFacturado/@value"/> </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                          <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> Pago Mínimo </fo:block>
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> $ <xsl:value-of select="encabezado/pagoMinimo/@value"/> </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid">
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> Monto Cancelado </fo:block>
                            <fo:block text-align="left" font-size="8pt" margin-left="3pt"> </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                      </fo:table-body>
                    </fo:table>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>
          <fo:block padding-top="10pt"> </fo:block>
          <fo:table border-collapse="collapse" table-layout="fixed">
            <fo:table-column column-width="7.3cm"/>
            <fo:table-column column-width="4.3cm"/>
            <fo:table-column column-width="7.3cm"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block text-align="center">
                    <fo:table border-collapse="collapse" table-layout="fixed">
                      <fo:table-column column-width="1.25cm"/>
                      <fo:table-column column-width="0.50cm"/>
                      <fo:table-column column-width="3.00cm"/>
                      <fo:table-column column-width="2cm"/>
                      <fo:table-column column-width="0.50cm"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell>
                            <fo:block text-align="left" font-size="8pt"> Cheque </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid">
                            <fo:block text-align="center"> </fo:block>
                          </fo:table-cell>
                          <fo:table-cell>
                            <fo:block text-align="center" font-size="8pt"> xxxxxxxxxxxxxxxx </fo:block>
                          </fo:table-cell>
                          <fo:table-cell>
                            <fo:block text-align="left" font-size="8pt"> Efectivo </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid">
                            <fo:block text-align="center"> </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                      </fo:table-body>
                    </fo:table>
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="center"> </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="center">
                    <fo:table border-collapse="collapse" table-layout="fixed">
                      <fo:table-column column-width="1.25cm"/>
                      <fo:table-column column-width="0.50cm"/>
                      <fo:table-column column-width="3.00cm"/>
                      <fo:table-column column-width="2cm"/>
                      <fo:table-column column-width="0.50cm"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell>
                            <fo:block text-align="left" font-size="8pt"> Cheque </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid">
                            <fo:block text-align="center"> </fo:block>
                          </fo:table-cell>
                          <fo:table-cell >
                            <fo:block text-align="center"> </fo:block>
                          </fo:table-cell>
                          <fo:table-cell>
                            <fo:block text-align="left" font-size="8pt"> Efectivo </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid">
                            <fo:block text-align="center"> </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                      </fo:table-body>
                    </fo:table>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>
        </fo:static-content>
        <fo:flow flow-name="xsl-region-body">
          
       
          
          
          <xsl:for-each select="detalles/detalle">
            <!-- Total -->
            <xsl:if test="@tipo='total'">
              <fo:table border-collapse="collapse" table-layout="fixed">
                <fo:table-column column-width="18.9cm" padding-top="5pt"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell border-color="black" border-width="0.5pt" border-style="solid">
                      <fo:block text-align="left">
                        <fo:table border-collapse="collapse" table-layout="fixed">
                          <fo:table-column column-width="14cm"/>
                          <fo:table-column column-width="4.9cm"/>
                          <fo:table-body>
                            <fo:table-row>
                              <fo:table-cell>
                                <fo:block text-align="left" font-size="9pt" margin-left="3pt"> <xsl:value-of select="@glosa"/> </fo:block>
                              </fo:table-cell>
                              <fo:table-cell>
                                <fo:block text-align="right" font-size="9pt" font-weight="bold" margin-right="3pt"> <xsl:value-of select="@monto"/> </fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                          </fo:table-body>
                        </fo:table>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <fo:block padding-top="5pt"> </fo:block>
              <!-- Fin Total -->
            </xsl:if>
            <xsl:if test="@tipo='item'">
              <!-- Inicio Detalle -->
              <fo:table border-collapse="collapse" table-layout="fixed">
                <fo:table-column column-width="2.78cm"/>
                <fo:table-column column-width="2.78cm"/>
                <fo:table-column column-width="6.78cm"/>
                <fo:table-column column-width="3.78cm"/>
                <fo:table-column column-width="2.78cm"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block text-align="left" font-size="9pt" margin-left="5pt"> <xsl:value-of select="@documento"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block text-align="left" font-size="9pt"><xsl:value-of select="@fecha"/> </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block text-align="left" font-size="9pt"> <xsl:value-of select="@glosa"/> </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block text-align="left" font-size="9pt"> <xsl:value-of select="@ciudad"/> </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block text-align="right" font-size="9pt" margin-right="10pt"> <xsl:value-of select="@monto"/> </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <fo:block padding-top="3pt"> </fo:block>
              <!-- Fin Detalle -->
            </xsl:if>
            <xsl:if test="@tipo='subtotal'">
              <!-- Inicio Detalle -->
              <fo:table border-collapse="collapse" table-layout="fixed">
                <fo:table-column column-width="2.78cm"/>
                <fo:table-column column-width="2.78cm"/>
                <fo:table-column column-width="4.78cm"/>
                <fo:table-column column-width="5.78cm"/>
                <fo:table-column column-width="2.78cm"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block text-align="left" font-size="8pt"> <xsl:value-of select="encabezado/montoFacturado/@value"/> </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block text-align="center" font-size="8pt"> <xsl:value-of select="encabezado/montoFacturado/@value"/> </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block text-align="center" font-size="8pt" font-weight="bold"> <xsl:value-of select="encabezado/montoFacturado/@value"/> </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block text-align="center" font-size="8pt" font-weight="bold"> <xsl:value-of select="encabezado/montoFacturado/@value"/> </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block text-align="center" font-size="8pt" font-weight="bold"> <xsl:value-of select="encabezado/montoFacturado/@value"/> </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <fo:block padding-top="10pt"> </fo:block>
              <!-- Fin Detalle -->
            </xsl:if>
          </xsl:for-each>        
        </fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>
</xsl:stylesheet>
