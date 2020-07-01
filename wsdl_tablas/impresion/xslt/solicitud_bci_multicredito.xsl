<?xml version="1.0" encoding="iso-8859-1"?>
<!-- <== version: 2006/08/23 12:15 ==> -->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
<xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
<xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
<xsl:decimal-format name="rut" grouping-separator='.' />
    <xsl:param name="IMG_URL"/>

    <xsl:template match="solicitud_bci_multicredito">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="30mm" margin-left="10mm" margin-right="10mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

                <fo:page-sequence master-reference="miCarta">
                    <fo:flow flow-name="xsl-region-body">
                            <fo:table border-collapse="collapse">
                            <fo:table-column column-width="30mm" />
                            <fo:table-column column-width="115.9mm" />
                            <fo:table-column column-width="50mm"/>
                            <fo:table-body>
                            <fo:table-row>

                                  <fo:table-cell >
                                  <xsl:variable name="logoTopBci" select="OperacionCredito/logoTopBci" />
                                    <fo:block ><fo:external-graphic src="uri($logoTopBci)" width="3cm" height="1.5cm" vertical-align="middle"/></fo:block>
                                  </fo:table-cell>

                                  <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="12pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE AVANCE</fo:block>
                                    <fo:block font-family="Helvetica" font-size="12pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >BCI MULTICREDITO</fo:block>
                                  </fo:table-cell>

                                  <fo:table-cell >
                                    <fo:block ></fo:block>
                                  </fo:table-cell>

                            </fo:table-row>
                            </fo:table-body>
                            </fo:table>

                            <fo:table border-collapse="collapse" font-family="Courier" font-size="10pt" text-align="left">
                                <fo:table-column column-width="74mm"/>
                                <fo:table-column column-width="119.9mm"/>
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell >
                                        </fo:table-cell>
                                        <fo:table-cell >
                                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Nro. de Avance<fo:leader leader-pattern="space" leader-length="2.9mm"/>  :<fo:leader leader-pattern="space" leader-length="3mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /> </fo:inline></fo:block>
                                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Oficina        <fo:leader leader-pattern="space" leader-length="18.7mm"/> :<fo:leader leader-pattern="space" leader-length="3mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/sucursal" />  </fo:inline></fo:block>
                                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Ejecutivo      <fo:leader leader-pattern="space" leader-length="14.9mm"/> :<fo:leader leader-pattern="space" leader-length="3mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/ejecutivo" /> </fo:inline></fo:block>


                                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Fecha          <fo:leader leader-pattern="space" leader-length="20.24mm"/>:<fo:leader leader-pattern="space" leader-length="2mm"/>
                                            
                                                    <xsl:variable name="mes" select="substring(OperacionCredito/fecha,4,2)" />
                                                    <fo:leader leader-pattern="space" leader-length="1mm"/>
                                                    <fo:inline font-weight="bold">
                                                    <xsl:value-of select="substring(OperacionCredito/fecha,0,3)" />/</fo:inline><fo:inline font-weight="bold">
                                                    <xsl:if test="$mes = 01">Enero</xsl:if>
                                                    <xsl:if test="$mes = 02">Febrero</xsl:if>
                                                    <xsl:if test="$mes = 03">Marzo</xsl:if>
                                                    <xsl:if test="$mes = 04">Abril</xsl:if>
                                                    <xsl:if test="$mes = 05">Mayo</xsl:if>
                                                    <xsl:if test="$mes = 06">Junio</xsl:if>
                                                    <xsl:if test="$mes = 07">Julio</xsl:if>
                                                    <xsl:if test="$mes = 08">Agosto</xsl:if>
                                                    <xsl:if test="$mes = 09">Septiembre</xsl:if>
                                                    <xsl:if test="$mes = 10">Octubre</xsl:if>
                                                    <xsl:if test="$mes = 11">Noviembre</xsl:if>
                                                    <xsl:if test="$mes = 12">Diciembre</xsl:if>
                                                    </fo:inline><fo:inline font-weight="bold">/<xsl:value-of select="substring(OperacionCredito/fecha,7,4)" /></fo:inline>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>

                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" font-weight="bold" >DATOS DEL SOLICITANTE<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Cédula de Identidad Nº<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(OperacionCredito/rutCliente, "###.###.###","rut")' />-<xsl:value-of select="OperacionCredito/dvCliente" /></fo:inline></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Nombre   <fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Domicilio<fo:leader leader-pattern="space" leader-length="1mm"/>: </fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Comuna<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:block><fo:leader leader-pattern="space" leader-length="1cm"/></fo:block>Ciudad<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"></fo:inline></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Fono     <fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"></fo:inline></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" font-weight="bold" >DATOS DEL AVANCE:</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Monto del Avance (<xsl:value-of select='OperacionCredito/moneda' />)<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

                              <xsl:variable name="moneda" select="OperacionCredito/moneda" />
                                <xsl:choose>

                                  <xsl:when test="$moneda = 'UF'">
                                     <xsl:value-of select='format-number(OperacionCredito/montoAvance, "###.###.##0,0000","decimal")' />
                                  </xsl:when>


                                  <xsl:when test="$moneda = '$'">
                                    <xsl:value-of select='format-number(OperacionCredito/montoAvance, "###.###.##0","decimal")' />
                                  </xsl:when>

                              </xsl:choose>

                            </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-pattern="space" leader-length="1mm"/> Monto a Abonar (<xsl:value-of select='OperacionCredito/moneda' />)<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
                              <xsl:variable name="moneda" select="OperacionCredito/moneda" />
                                <xsl:choose>

                                  <xsl:when test="$moneda = 'UF'">
                                     <xsl:value-of select='format-number(OperacionCredito/montoAbonar, "###.###.##0,0000","decimal")' />
                                  </xsl:when>


                                  <xsl:when test="$moneda = '$'">
                                    <xsl:value-of select='format-number(OperacionCredito/montoAbonar, "###.###.##0","decimal")' />
                                  </xsl:when>

                              </xsl:choose>
                            
                            <!--xsl:value-of select='format-number(OperacionCredito/montoAbonar, "###.###.###,000","decimal")' /-->
                            
                            </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left"  >Número de Cuotas<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroCuotas" /></fo:inline><fo:leader leader-pattern="space" leader-length="16mm"/>Plazo(meses)<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/plazoCuotas" /></fo:inline><fo:leader leader-pattern="space" leader-length="18mm"/>Tasa<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(OperacionCredito/tasaInteres, "###,####","decimal")'/></fo:inline>%</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left"  >Fecha Primera Cuota<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/fechaPrimerVctoDD" /></fo:inline>/
                            <xsl:variable name="mes" select="OperacionCredito/fechaPrimerVctoMM" />
                            <fo:inline font-weight="bold">
                                <xsl:if test="$mes = 01">Enero</xsl:if>
                                <xsl:if test="$mes = 02">Febrero</xsl:if>
                                <xsl:if test="$mes = 03">Marzo</xsl:if>
                                <xsl:if test="$mes = 04">Abril</xsl:if>
                                <xsl:if test="$mes = 05">Mayo</xsl:if>
                                <xsl:if test="$mes = 06">Junio</xsl:if>
                                <xsl:if test="$mes = 07">Julio</xsl:if>
                                <xsl:if test="$mes = 08">Agosto</xsl:if>
                                <xsl:if test="$mes = 09">Septiembre</xsl:if>
                                <xsl:if test="$mes = 10">Octubre</xsl:if>
                                <xsl:if test="$mes = 11">Noviembre</xsl:if>
                                <xsl:if test="$mes = 12">Diciembre</xsl:if>
                            </fo:inline>
                            /<fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline></fo:block>

                            <xsl:variable name="mesp" select="count(MesNoPago)" />
                            <xsl:if test="$mesp  &gt; 0">
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left"  >Meses de No pago<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/>
                              <fo:inline font-weight="bold">
                              <xsl:for-each select="MesNoPago">
                               <xsl:if test="position() &gt; 1">
                               	<fo:leader leader-pattern="space" leader-length="1mm"/>,
                               </xsl:if>
                               <xsl:value-of select="glosaMes" />
                               </xsl:for-each>
                               </fo:inline>
                            </fo:block>
                            </xsl:if>
                            
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left"  ><!--<fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/tipoAbonoDescripcion" /></fo:inline><fo:leader leader-pattern="space" leader-length="2mm"/>de abono Nº<fo:leader leader-pattern="space" leader-length="2mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/ctaAbono" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left"  ><!--<fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/tipoCargoDescripcion" /></fo:inline><fo:leader leader-pattern="space" leader-length="2mm"/>de cargo Nº<fo:leader leader-pattern="space" leader-length="3mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/ctaCargo" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>

                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify"  >Solicito se efectúe el avance detallado asociado a mi BCI MULTICREDITO, declaro además conocer las condiciones establecidas en el Contrato BCI MULTICREDITO.</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                            <fo:table border-collapse="collapse" font-family="Courier" font-size="10pt" text-align="left">
                                <fo:table-column column-width="125mm"/>
                                <fo:table-column column-width="86.9mm" />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell >
                                        </fo:table-cell>

                                        <fo:table-cell >
                                            <fo:block font-family="Helvetica" font-size="12pt" text-align="center" ><fo:leader leader-length="7cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                            <fo:block font-family="Helvetica" font-size="12pt" text-align="center" >FIRMA CLIENTE</fo:block>
                                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                                            <fo:block font-family="Helvetica" font-size="12pt" text-align="center" ><fo:inline text-decoration="underline">ORIGINAL:   BANCO   </fo:inline></fo:block>

                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>

                    </fo:flow>
                </fo:page-sequence>



                <fo:page-sequence master-reference="miCarta">
                    <fo:flow flow-name="xsl-region-body">


         <fo:table border-collapse="collapse">
         <fo:table-column column-width="30mm" />
         <fo:table-column column-width="115.9mm" />
         <fo:table-column column-width="50mm"/>
         <fo:table-body>
          <fo:table-row>
                <fo:table-cell >
                 <xsl:variable name="logoTopBci" select="OperacionCredito/logoTopBci" />
                          <fo:block ><fo:external-graphic src="uri($logoTopBci)" width="3cm" height="1.5cm" vertical-align="middle"/></fo:block>
                </fo:table-cell>

                <fo:table-cell >
                        <fo:block font-family="Helvetica" font-size="12pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE AVANCE</fo:block>
                        <fo:block font-family="Helvetica" font-size="12pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >BCI MULTICREDITO</fo:block>
                </fo:table-cell>

                <fo:table-cell >
                        <fo:block ></fo:block>
                </fo:table-cell>

          </fo:table-row>
          </fo:table-body>
          </fo:table>


                            <fo:table border-collapse="collapse" font-family="Courier" font-size="10pt" text-align="left">
                                <fo:table-column column-width="74mm"/>
                                <fo:table-column column-width="119.9mm"/>
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell >
                                        </fo:table-cell>
                                        <fo:table-cell >
                                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Nro. de Avance<fo:leader leader-pattern="space" leader-length="2.9mm"/>  :<fo:leader leader-pattern="space" leader-length="3mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /> </fo:inline><!--<fo:leader leader-length="8.24cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--></fo:block>
                                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Oficina        <fo:leader leader-pattern="space" leader-length="18.7mm"/> :<fo:leader leader-pattern="space" leader-length="3mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/sucursal" />  </fo:inline><!--<fo:leader leader-length="8.24cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--></fo:block>
                                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Ejecutivo      <fo:leader leader-pattern="space" leader-length="14.9mm"/> :<fo:leader leader-pattern="space" leader-length="3mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/ejecutivo" /> </fo:inline><!--<fo:leader leader-length="8.24cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--></fo:block>

                                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Fecha          <fo:leader leader-pattern="space" leader-length="20.24mm"/>:<fo:leader leader-pattern="space" leader-length="2mm"/>
                                                    <xsl:variable name="mes" select="substring(OperacionCredito/fecha,4,2)" /><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(OperacionCredito/fecha,0,3)" />/</fo:inline><fo:inline font-weight="bold">
                                                    <xsl:if test="$mes = 01">Enero</xsl:if>
                                                    <xsl:if test="$mes = 02">Febrero</xsl:if>
                                                    <xsl:if test="$mes = 03">Marzo</xsl:if>
                                                    <xsl:if test="$mes = 04">Abril</xsl:if>
                                                    <xsl:if test="$mes = 05">Mayo</xsl:if>
                                                    <xsl:if test="$mes = 06">Junio</xsl:if>
                                                    <xsl:if test="$mes = 07">Julio</xsl:if>
                                                    <xsl:if test="$mes = 08">Agosto</xsl:if>
                                                    <xsl:if test="$mes = 09">Septiembre</xsl:if>
                                                    <xsl:if test="$mes = 10">Octubre</xsl:if>
                                                    <xsl:if test="$mes = 11">Noviembre</xsl:if>
                                                    <xsl:if test="$mes = 12">Diciembre</xsl:if>
                                                    </fo:inline><fo:inline font-weight="bold">/<xsl:value-of select="substring(OperacionCredito/fecha,7,4)" /></fo:inline>
                                            </fo:block>

                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>

                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" font-weight="bold" >DATOS DEL SOLICITANTE<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Cédula de Identidad Nº<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(OperacionCredito/rutCliente, "###.###.###","rut")' /><!--<xsl:value-of select="OperacionCredito/rutCliente" />-->-<xsl:value-of select="OperacionCredito/dvCliente" /></fo:inline></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Nombre<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Domicilio<fo:leader leader-pattern="space" leader-length="1mm"/>: </fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Comuna<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:block><fo:leader leader-pattern="space" leader-length="1cm"/></fo:block>Ciudad<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"></fo:inline></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Fono     <fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"></fo:inline></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" font-weight="bold" >DATOS DEL AVANCE:</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Monto del Avance ($)<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

                              <xsl:variable name="moneda" select="OperacionCredito/moneda" />
                                <xsl:choose>

                                  <xsl:when test="$moneda = 'UF'">
                                     <xsl:value-of select='format-number(OperacionCredito/montoAvance, "###.###.##0,0000","decimal")' />
                                  </xsl:when>


                                  <xsl:when test="$moneda = '$'">
                                    <xsl:value-of select='format-number(OperacionCredito/montoAvance, "###.###.##0","decimal")' />
                                  </xsl:when>

                              </xsl:choose>


                            <!--<xsl:value-of select="OperacionCredito/montoAvance" />--></fo:inline><!--<fo:leader leader-length="5.05cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--><fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-pattern="space" leader-length="1mm"/> Monto a Abonar ($)<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"> 
                            
                            <!--xsl:value-of select='format-number(OperacionCredito/montoAbonar, "###.###.###,000","decimal")' /-->
                              <xsl:variable name="moneda" select="OperacionCredito/moneda" />
                                <xsl:choose>

                                  <xsl:when test="$moneda = 'UF'">
                                     <xsl:value-of select='format-number(OperacionCredito/montoAbonar, "###.###.##0,0000","decimal")' />
                                  </xsl:when>


                                  <xsl:when test="$moneda = '$'">
                                    <xsl:value-of select='format-number(OperacionCredito/montoAbonar, "###.###.##0","decimal")' />
                                  </xsl:when>

                              </xsl:choose>
                            <!--<xsl:value-of select="OperacionCredito/montoAbonar" />--></fo:inline><!--<fo:leader leader-length="5.05cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left"  >Número de Cuotas<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroCuotas" /></fo:inline><!--<fo:leader leader-length="1.83cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--><fo:leader leader-pattern="space" leader-length="16mm"/>Plazo(meses)<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/plazoCuotas" /></fo:inline><!--<fo:leader leader-length="1.83cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--><fo:leader leader-pattern="space" leader-length="18mm"/>Tasa<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(OperacionCredito/tasaInteres, "###,####","decimal")'/></fo:inline>%</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left"  >Fecha Primera Cuota<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/fechaPrimerVctoDD" /></fo:inline>/
                            <xsl:variable name="mes" select="OperacionCredito/fechaPrimerVctoMM" />
                            <fo:inline font-weight="bold">
                                <xsl:if test="$mes = 01">Enero</xsl:if>
                                <xsl:if test="$mes = 02">Febrero</xsl:if>
                                <xsl:if test="$mes = 03">Marzo</xsl:if>
                                <xsl:if test="$mes = 04">Abril</xsl:if>
                                <xsl:if test="$mes = 05">Mayo</xsl:if>
                                <xsl:if test="$mes = 06">Junio</xsl:if>
                                <xsl:if test="$mes = 07">Julio</xsl:if>
                                <xsl:if test="$mes = 08">Agosto</xsl:if>
                                <xsl:if test="$mes = 09">Septiembre</xsl:if>
                                <xsl:if test="$mes = 10">Octubre</xsl:if>
                                <xsl:if test="$mes = 11">Noviembre</xsl:if>
                                <xsl:if test="$mes = 12">Diciembre</xsl:if>
                            </fo:inline>
                            /<fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline><!--<fo:leader leader-length="3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--></fo:block>


                            <xsl:variable name="mesp" select="count(MesNoPago)" />
                            <xsl:if test="$mesp  &gt; 0">
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left"  >Meses de No pago<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/>
                              <fo:inline font-weight="bold">
                              <xsl:for-each select="MesNoPago">
                               <xsl:if test="position() &gt; 1">
                               	<fo:leader leader-pattern="space" leader-length="1mm"/>,
                               </xsl:if>
                               <xsl:value-of select="glosaMes" />
                               </xsl:for-each>
                               </fo:inline>
                            </fo:block>
                            </xsl:if>

                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left"  ><!--<fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/tipoAbonoDescripcion" /></fo:inline><fo:leader leader-pattern="space" leader-length="2mm"/>de abono Nº<fo:leader leader-pattern="space" leader-length="2mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/ctaAbono" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><!--<fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left"  ><!--<fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/tipoCargoDescripcion" /></fo:inline><fo:leader leader-pattern="space" leader-length="2mm"/>de cargo Nº<fo:leader leader-pattern="space" leader-length="3mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/ctaCargo" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><!--<fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--></fo:block>

                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify"  >Solicito se efectúe el avance detallado asociado a mi BCI MULTICREDITO, declaro además conocer las condiciones establecidas en el Contrato BCI MULTICREDITO.</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                            <fo:table border-collapse="collapse" font-family="Courier" font-size="10pt" text-align="left">
                                <fo:table-column column-width="125mm"/>
                                <fo:table-column column-width="86.9mm" />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell >
                                        </fo:table-cell>

                                        <fo:table-cell >
                                            <fo:block font-family="Helvetica" font-size="12pt" text-align="center" ><fo:leader leader-length="7cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                            <fo:block font-family="Helvetica" font-size="12pt" text-align="center" >FIRMA CLIENTE</fo:block>
                                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                                            <fo:block font-family="Helvetica" font-size="12pt" text-align="center" ><fo:inline text-decoration="underline">ORIGINAL:   CLIENTE   </fo:inline></fo:block>

                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>

                    </fo:flow>
                </fo:page-sequence>


        </fo:root>
    </xsl:template>
</xsl:stylesheet>
