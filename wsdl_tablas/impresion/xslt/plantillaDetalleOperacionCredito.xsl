<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2006/08/23 12:15 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator='.' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />
    <xsl:param name="IMG_URL"/>

    <xsl:template match="plantillaDetalleOperacionCredito">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="30mm" margin-left="10mm" margin-right="10mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="miCarta">

                <fo:flow flow-name="xsl-region-body">


              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="175.9mm"  />
                  <fo:table-column column-width="20mm"     />
                  <fo:table-body>
                      <fo:table-row>




                            <fo:table-cell >
                                    <fo:block   font-weight="bold" text-align="left" vertical-align="middle" >Créditos</fo:block>
                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block   font-weight="bold" text-align="left" vertical-align="middle" >Créditos Aprobados</fo:block>

                                    <fo:block   font-size="8pt" font-weight="bold" text-align="left" vertical-align="middle" >
                                          <xsl:value-of select="DetalleOperacionVO/msnFelicitacion"/>
                                    </fo:block>

                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  text-align="right" width="2cm" height="2cm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="DetalleOperacionVO/timbre"/>
                                        </xsl:attribute>
                                      </fo:external-graphic>
                                    </fo:block>
                            </fo:table-cell>



                      </fo:table-row>
                </fo:table-body>
                </fo:table>

                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>


              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black"  border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block  font-size="16pt" font-weight="bold" text-align="left" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="2mm"/>Detalle del Crédito</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block text-align="left" >

                                    </fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>


              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>Número de Operación:</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block text-align="left" >
                                    <fo:leader leader-pattern="space" leader-length="2mm"/><fo:leader leader-pattern="space" leader-length="1mm"/>
                                    <fo:inline font-weight="bold"><xsl:value-of select="DetalleOperacionVO/operacionCredito" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>Cuenta Abono: </fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="DetalleOperacionVO/ctaAbono" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>Cuenta Cargo: </fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="DetalleOperacionVO/ctaCargo" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>Monto Líquido Crédito:</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
                                    <xsl:variable name="moneda" select="DetalleOperacionVO/codigoMoneda" />
                                                      <xsl:if test="$moneda = 998">UF</xsl:if>
                                                      <xsl:if test="$moneda = 999">$</xsl:if>
                                    <xsl:value-of select='format-number(DetalleOperacionVO/montoLiquido, "###.###.###","decimal")' />
                                    </fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>Impuesto y Seguro: </fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
                                    <xsl:variable name="moneda" select="DetalleOperacionVO/codigoMoneda" />
                                                      <xsl:if test="$moneda = 998">UF</xsl:if>
                                                      <xsl:if test="$moneda = 999">$</xsl:if>
                                    <xsl:value-of select='format-number(DetalleOperacionVO/valorSeguro, "###.###.###","decimal")' />
                                    </fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>Monto Final Crédito: </fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
                                    <xsl:variable name="moneda" select="DetalleOperacionVO/codigoMoneda" />
                                                      <xsl:if test="$moneda = 998">UF</xsl:if>
                                                      <xsl:if test="$moneda = 999">$</xsl:if>
                                    <xsl:value-of select='format-number(DetalleOperacionVO/montoFinalCredito, "###.###.###","decimal")' />
                                   <!-- <xsl:value-of select="DetalleOperacionVO/montoFinalCredito" />-->

                                    </fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>Fecha curse: </fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="DetalleOperacionVO/fechCurseOper" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>Número Cuotas / Plazo: </fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="DetalleOperacionVO/plazoMeses" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>Valor Cuota: </fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
                                    <xsl:variable name="moneda" select="DetalleOperacionVO/codigoMoneda" />
                                                      <xsl:if test="$moneda = 998">UF</xsl:if>
                                                      <xsl:if test="$moneda = 999">$</xsl:if>
                                    <xsl:value-of select='format-number(DetalleOperacionVO/valorCuota, "###.###.###","decimal")' /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>Próximo Vencimiento:</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="DetalleOperacionVO/fechaProximoVenc" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>Valor Vencimiento:</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

                                    <xsl:variable name="moneda" select="DetalleOperacionVO/codigoMoneda" />
                                                      <xsl:if test="$moneda = 998">UF</xsl:if>
                                                      <xsl:if test="$moneda = 999">$</xsl:if>

                                    <xsl:value-of select='format-number(DetalleOperacionVO/valorVencimiento, "###.###.###","decimal")' />
                                    </fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>Tasa Interes:</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="DetalleOperacionVO/tasaInteres" />%</fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>Fecha primera cuota:</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="DetalleOperacionVO/fechaPrimeraCuota" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-middle="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block text-align="left" >
                                    <fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                    <fo:block text-align="left" >Tasa anual
                                    <fo:leader leader-pattern="space" leader-length="1mm"/>
                                      <xsl:value-of select="DetalleOperacionVO/tasaAnual" />%<fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="DetalleOperacionVO/mensajeIncluye" />
                                    </fo:block>

                                    <fo:block text-align="left" >
                                      <xsl:value-of select="DetalleOperacionVO/msgCompanniaSeguros" />
                                    </fo:block>
                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                                    <fo:block text-align="left" >
                                      <xsl:value-of select="DetalleOperacionVO/msgIncluyeImpuestos" />
                                    </fo:block>

                                    <fo:block text-align="left" >
                                      <xsl:value-of select="DetalleOperacionVO/msgIncluyeImpuestos1" />
                                    </fo:block>

                                    <fo:block text-align="left" >
                                      <xsl:value-of select="DetalleOperacionVO/msgIncluyeImpuestos2" />
                                    </fo:block>

                            </fo:table-cell>

                           <!-- <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="DetalleOperacionVO/tasaAnual" /></fo:inline></fo:block>
                            </fo:table-cell>-->

                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block text-align="left" ></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>



                </fo:flow>
            </fo:page-sequence>

        </fo:root>
    </xsl:template>
</xsl:stylesheet>
