<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2006/08/23 12:15 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />

    <xsl:param name="IMG_URL"/>

    <xsl:template match="solicitud_de_credito">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="30mm" margin-left="10mm" margin-right="10mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

                  <fo:page-sequence master-reference="miCarta">
                          <fo:flow flow-name="xsl-region-body">


                                <fo:table border-collapse="collapse">
                                  <fo:table-column />
                                  <fo:table-column />
                                    <fo:table-body>
                                      <fo:table-row>


                                        <fo:table-cell >
                                                <fo:block >
                                                  <fo:external-graphic  width="3cm" height="1.5cm"  vertical-align="middle">
                                                    <xsl:attribute name="src">
                                                    <xsl:value-of select="OperacionCredito/logoBciSomosDiferentes"/>
                                                    </xsl:attribute>
                                                  </fo:external-graphic>
                                                </fo:block>
                                        </fo:table-cell>


                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="right" vertical-align="middle" >1 - 4</fo:block>
                                        </fo:table-cell>

                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:table border-collapse="collapse">
                                    <fo:table-column column-width="96.95mm"/>
                                    <fo:table-column column-width="96.95mm"/>
                                    <fo:table-body>
                                        <fo:table-row>

                                              <fo:table-cell >
                                              </fo:table-cell>

                                              <fo:table-cell >
                                                      <fo:block font-family="Helvetica" font-size="11pt" text-align="right" vertical-align="middle" line-height="4.5mm"></fo:block>
                                              </fo:table-cell>

                                        </fo:table-row>
                                  </fo:table-body>
                                  </fo:table>

                                <fo:table border-collapse="collapse" font-family="Courier" font-size="11pt" text-align="left">
                                  <fo:table-column column-width="75.9mm"/>
                                  <fo:table-column column-width="118mm"/>
                                    <fo:table-body>
                                      <fo:table-row>

                                        <fo:table-cell >
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" font-weight="bold" >SOLICITUD DE CREDITO</fo:block>
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" >N� OPERACI�N<fo:leader leader-pattern="space" leader-length="5.7mm"/>: <fo:leader leader-pattern="space" leader-length="3mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" >OFICINA     <fo:leader leader-pattern="space" leader-length="17.4mm"/>:<fo:leader leader-pattern="space" leader-length="3mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/sucursal" />      </fo:inline></fo:block>
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" >FECHA       <fo:leader leader-pattern="space" leader-length="20mm"/>:<fo:leader leader-pattern="space" leader-length="3mm"/>
                                                <fo:inline font-weight="bold"><xsl:value-of select="substring(OperacionCredito/fecha,0,4)" /></fo:inline>
											  	<fo:inline font-weight="bold"><xsl:value-of select="substring(OperacionCredito/fecha,4,2)" /></fo:inline>
                                              	<fo:inline font-weight="bold"><xsl:value-of select="substring(OperacionCredito/fecha,6,5)" /></fo:inline>
                                              </fo:block>
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" >EJECUTIVO   <fo:leader leader-pattern="space" leader-length="11.4mm"/>:<fo:leader leader-pattern="space" leader-length="3mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/ejecutivo" />     </fo:inline></fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                                <fo:table border-collapse="collapse">
                                  <fo:table-column  column-width="193.9mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" font-weight="bold" vertical-align="middle" >DATOS DEL SOLICITANTE</fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="193.9mm"  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle" ><xsl:value-of select="OperacionCredito/nombreCompletoCliente" /></fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="193.9mm" />
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" >Nombre o Raz�n Social del Cliente</fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="94.1mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm" />
                                  <fo:table-column column-width="39mm"   border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm" />
                                  <fo:table-column column-width="31mm"   border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm" />
                                  <fo:table-column column-width="27mm"   border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm" />

                                     <fo:table-body>
                                       <fo:table-row>

                                         <fo:table-cell >
                                                 <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="substring(DireccionDeudorBci/direccion,0,40)" /></fo:block>
                                         </fo:table-cell>
                                         <fo:table-cell >
                                                 <fo:block vertical-align="middle"></fo:block>
                                         </fo:table-cell>
                                         <fo:table-cell >
                                                 <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="substring(DireccionDeudorBci/comuna,0,20)" /></fo:block>
                                         </fo:table-cell>
                                         <fo:table-cell >
                                                 <fo:block vertical-align="middle"></fo:block>
                                         </fo:table-cell>
                                         <fo:table-cell >
                                                 <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="substring(DireccionDeudorBci/comuna,21,40)" /></fo:block>
                                         </fo:table-cell>
                                         <fo:table-cell >
                                                 <fo:block vertical-align="middle"></fo:block>
                                         </fo:table-cell>
                                         <fo:table-cell  >
                                                 <fo:block font-family="Helvetica" font-size="11pt" text-align="right" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="OperacionCredito/telefonoCliente" /></fo:block>
                                         </fo:table-cell>

                                       </fo:table-row>
                                     </fo:table-body>

                                </fo:table>

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="94.1mm" />
                                  <fo:table-column column-width="1mm" />
                                  <fo:table-column column-width="39mm"   />
                                  <fo:table-column column-width="1mm" />
                                  <fo:table-column column-width="31mm"   />
                                  <fo:table-column column-width="1mm" />
                                  <fo:table-column column-width="27mm"   />
                                  <fo:table-column column-width="1mm" />

                                    <fo:table-body>
                                      <fo:table-row>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Domicilio</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Comuna</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Ciudad</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell  >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="right"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Fono</fo:block>
                                        </fo:table-cell>

                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>


                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="35mm"   border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"    />
                                  <fo:table-column column-width="45.8mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"    />
                                  <fo:table-column column-width="56mm"   border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"    />
                                  <fo:table-column column-width="54mm"   border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"    />

                                    <fo:table-body>
                                      <fo:table-row>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="right"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select='format-number(OperacionCredito/rutCliente, "###.###.###","rut")' /><!--<xsl:value-of select="OperacionCredito/rutCliente" />-->-<xsl:value-of select="OperacionCredito/dvCliente" /></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="right"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select='format-number(OperacionCredito/rutCliente, "###.###.###","rut")' /><!--<xsl:value-of select="OperacionCredito/rutCliente" />-->-<xsl:value-of select="OperacionCredito/dvCliente" /></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>



                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
		                                              <fo:inline><xsl:value-of select="substring(OperacionCredito/fechaNacCliente,0,4)" /> </fo:inline>
		                                              <fo:inline><xsl:value-of select="substring(OperacionCredito/fechaNacCliente,4,2)" /> </fo:inline>
		                                              <fo:inline><xsl:value-of select="substring(OperacionCredito/fechaNacCliente,6,5)" /> </fo:inline>
                                                </fo:block>
                                        </fo:table-cell>



                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell  >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="right"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="OperacionCredito/nroCuentaCteCliente" /></fo:block>
                                        </fo:table-cell>

                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="35mm"  />
                                  <fo:table-column column-width="1mm"   />
                                  <fo:table-column column-width="45.8mm"/>
                                  <fo:table-column column-width="1mm"   />
                                  <fo:table-column column-width="56mm"  />
                                  <fo:table-column column-width="1mm"   />
                                  <fo:table-column column-width="54mm"  />
                                  <fo:table-column column-width="1mm"   />

                                    <fo:table-body>
                                      <fo:table-row>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>RUT</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>C�d.Nac.Identidad</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Fecha de Nacimiento</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell  >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Cta. Cte. N�</fo:block>
                                        </fo:table-cell>

                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:table border-collapse="collapse">
                                  <fo:table-column  column-width="193.9mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" font-weight="bold" vertical-align="middle" >ANTECEDENTES DEL CREDITO</fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="45mm"    border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"     />
                                  <fo:table-column column-width="103.2mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"     />
                                  <fo:table-column column-width="43.4mm"  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"     />

                                    <fo:table-body>
                                      <fo:table-row>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                <fo:inline><xsl:value-of select="substring(OperacionCredito/fechaCurseCredito,0,4)" /></fo:inline>
                                                <fo:inline><xsl:value-of select="substring(OperacionCredito/fechaCurseCredito,4,2)" /></fo:inline>
                                                <fo:inline><xsl:value-of select="substring(OperacionCredito/fechaCurseCredito,6,5)" /> </fo:inline>
                                                </fo:block>

                                        </fo:table-cell>


                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="OperacionCredito/tipoCredito" /></fo:block>
                                        </fo:table-cell>Monto Solicitado
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="right" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>

                                                <!--<xsl:value-of select='format-number(OperacionCredito/montoCredito, "###.###.###,000","decimal")' />-->
                                                <xsl:variable name="moneda" select="OperacionCredito/moneda" />
                                                  <xsl:choose>

                                                    <xsl:when test="$moneda = 'UF'">
                                                       <xsl:value-of select='format-number(OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                                                    </xsl:when>


                                                    <xsl:when test="$moneda = '$'">
                                                      <xsl:value-of select='format-number(OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                                                    </xsl:when>

                                                </xsl:choose>



                                                <!--<xsl:value-of select="OperacionCredito/montoCredito" />--></fo:block>
                                        </fo:table-cell>

                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="36mm"    />
                                  <fo:table-column column-width="1mm"     />
                                  <fo:table-column column-width="112.2mm" />
                                  <fo:table-column column-width="1mm"     />
                                  <fo:table-column column-width="43.4mm"  />
                                  <fo:table-column column-width="1mm"     />


                                    <fo:table-body>
                                      <fo:table-row>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Fecha Curse</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Tipo de Cr�dito</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Monto Solicitado</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>

                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>



                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="91.3mm"  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"     />
                                  <fo:table-column column-width="101.6mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"     />

                                    <fo:table-body>
                                      <fo:table-row>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="OperacionCredito/formaPago" /></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >

                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>

														<xsl:value-of select="OperacionCredito/garantiaOfrecida" />

                                                </fo:block>


                                        </fo:table-cell>


                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="91.3mm"  />
                                  <fo:table-column column-width="1mm"     />
                                  <fo:table-column column-width="101.6mm" />
                                  <fo:table-column column-width="1mm"     />

                                    <fo:table-body>
                                      <fo:table-row>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Forma de Pago</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Garant�a Ofrecida</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>

                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>


                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="108mm"    border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"     />
                                  <fo:table-column column-width="84.7mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"     />

                                    <fo:table-body>
                                      <fo:table-row>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="OperacionCredito/objetoDelCredito" /></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>


                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="108mm"  />
                                  <fo:table-column column-width="1mm"    />
                                  <fo:table-column column-width="84.7mm" />
                                  <fo:table-column column-width="1mm"    />

                                    <fo:table-body>
                                      <fo:table-row>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Objeto del Cr�dito</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>

                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>


                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="32.8mm"    border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"     />
                                  <fo:table-column column-width="34.9mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"     />
                                  <fo:table-column column-width="23.3mm"    border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"     />
                                  <fo:table-column column-width="19.1mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"     />
                                  <fo:table-column column-width="26.5mm"    border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"     />
                                  <fo:table-column column-width="26.5mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"     />
                                  <fo:table-column column-width="24.3mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"     />

                                    <fo:table-body>
                                      <fo:table-row>

                                        <fo:table-cell >
                                              <xsl:variable name="cuotas" select="count(CalendarioPago)" />
                                                <xsl:choose>
                                              <xsl:when test="$cuotas &gt; 1">

                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
	                                                <fo:inline><xsl:value-of select="OperacionCredito/fechaPrimerVctoDD" /></fo:inline>/<fo:inline><xsl:value-of select="OperacionCredito/fechaPrimerVctoMM" /></fo:inline>/<fo:inline><xsl:value-of select="OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline>
                                                </fo:block>

                                                </xsl:when>
                                                 </xsl:choose>
                                        </fo:table-cell>



                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >

                                              <xsl:variable name="cuotas" select="count(CalendarioPago)" />
                                                <xsl:choose>
                                              <xsl:when test="$cuotas = 1">

                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>

                                                <fo:inline><xsl:value-of select="OperacionCredito/fechaPrimerVctoDD" /></fo:inline>/
                                                <fo:inline><xsl:value-of select="OperacionCredito/fechaPrimerVctoMM" />
                                                </fo:inline>/<fo:inline><xsl:value-of select="OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline>



                                                <!--<xsl:value-of select="OperacionCredito/fechaPrimerVcto" />-->
                                          </fo:block>
                                                </xsl:when>
                                                 </xsl:choose>


                                        </fo:table-cell>



                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="right" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="OperacionCredito/diaVencimiento" /></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="right" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="count(CalendarioPago)" /></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="right" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><!--<xsl:value-of select='format-number(OperacionCredito/tasaSpread, "###,####","decimal")'/>-->%</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="right" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select='format-number(OperacionCredito/tasaInteres, "###,####","decimal")'/>%</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="right" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select='format-number(OperacionCredito/decretoLey, "###,####","decimal")'/>%</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>

                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="32.8mm" />
                                  <fo:table-column column-width="1mm"    />
                                  <fo:table-column column-width="34.9mm" />
                                  <fo:table-column column-width="1mm"    />
                                  <fo:table-column column-width="23.3mm" />
                                  <fo:table-column column-width="1mm"    />
                                  <fo:table-column column-width="19.1mm" />
                                  <fo:table-column column-width="1mm"    />
                                  <fo:table-column column-width="26.5mm" />
                                  <fo:table-column column-width="1mm"    />
                                  <fo:table-column column-width="26.5mm" />
                                  <fo:table-column column-width="1mm"    />
                                  <fo:table-column column-width="24.3mm" />
                                  <fo:table-column column-width="1mm"    />


                                    <fo:table-body>
                                      <fo:table-row>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Fecha</fo:block>
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>1er Vcto</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Vencimiento</fo:block>
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>(1 solo vcto)</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>D�a Pago</fo:block>
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>C.Cuotas</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>N�mero</fo:block>
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Cuotas</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Tasa</fo:block>
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Spread</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Tasa Total</fo:block>
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>(inicial)</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>DL.3475</fo:block>
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>


                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                                <fo:table border-collapse="collapse">
                                  <fo:table-column  column-width="193.9mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" font-weight="bold" vertical-align="middle" >Datos del Aval</fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>





                                <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>



                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="193.9mm"  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle"  line-height="4.5mm"><xsl:value-of select="OperacionCredito/nombreCompletoAval" /><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>




                                <fo:table border-collapse="collapse">
                                  <fo:table-column  />
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" >Nombre Completo del Aval</fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>






                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="94.1mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm" />
                                  <fo:table-column column-width="39mm"   border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm" />
                                  <fo:table-column column-width="31mm"   border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm" />
                                  <fo:table-column column-width="27mm"   border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm" />

                                    <fo:table-body>
                                      <fo:table-row>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="substring(DireccionAvalBci/direccion,0,50)" /></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="substring(DireccionAvalBci/comuna,0,21)" /></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="substring(DireccionAvalBci/comuna,21,40)" /></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell  >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="right" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="OperacionCredito/telefonoAval" /></fo:block>
                                        </fo:table-cell>

                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="94.1mm" />
                                  <fo:table-column column-width="1mm" />
                                  <fo:table-column column-width="39mm"   />
                                  <fo:table-column column-width="1mm" />
                                  <fo:table-column column-width="31mm"   />
                                  <fo:table-column column-width="1mm" />
                                  <fo:table-column column-width="27mm"   />
                                  <fo:table-column column-width="1mm" />

                                    <fo:table-body>
                                      <fo:table-row>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Domicilio</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Comuna</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Ciudad</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell  >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Fono</fo:block>
                                        </fo:table-cell>

                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>



                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="35mm"   border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"    />
                                  <fo:table-column column-width="45.8mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"    />
                                  <fo:table-column column-width="56mm"   border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"    />
                                  <fo:table-column column-width="54mm"   border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"    />

                                    <fo:table-body>
                                      <fo:table-row>

                                        <fo:table-cell >
                                        <fo:block vertical-align="middle">
                                            <xsl:variable name="rut" select="OperacionCredito/rutAval" />
                                            <xsl:choose>
                                              <xsl:when test="string-length($rut) &gt; 0">
                                                <fo:inline>
                                                  <xsl:value-of select='format-number(OperacionCredito/rutAval, "###.###.##0","rut")' />-<xsl:value-of select="OperacionCredito/dvAval" /></fo:inline>
                                              </xsl:when>
                                            </xsl:choose>
                                            </fo:block>
                                        </fo:table-cell>


                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                        <fo:block vertical-align="middle">
                                            <xsl:variable name="rut" select="OperacionCredito/rutAval" />
                                            <xsl:choose>
                                              <xsl:when test="string-length($rut) &gt; 0">
                                                <fo:inline><xsl:value-of select='format-number(OperacionCredito/rutAval, "###.###.##0","rut")' />-<xsl:value-of select="OperacionCredito/dvAval" /></fo:inline>
                                              </xsl:when>
                                            </xsl:choose>
                                              </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>



                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>

                                              <fo:inline><xsl:value-of select="substring(OperacionCredito/fechaNacAval,0,4)" /> </fo:inline>
                                              <fo:inline>
                                                  <xsl:value-of select="substring(OperacionCredito/fechaNacAval,4,2)" />
                                              </fo:inline>
                                              <fo:inline><xsl:value-of select="substring(OperacionCredito/fechaNacAval,6,5)" /> </fo:inline>

                                                </fo:block>
                                        </fo:table-cell>


                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell  >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="right"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>

                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="35mm"  />
                                  <fo:table-column column-width="1mm"   />
                                  <fo:table-column column-width="45.8mm"/>
                                  <fo:table-column column-width="1mm"   />
                                  <fo:table-column column-width="56mm"  />
                                  <fo:table-column column-width="1mm"   />
                                  <fo:table-column column-width="54mm"  />
                                  <fo:table-column column-width="1mm"   />

                                    <fo:table-body>
                                      <fo:table-row>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>RUT</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>C�d.Nac.Identidad</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Fecha de Nacimiento</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell  >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Cta. Cte. N�</fo:block>
                                        </fo:table-cell>

                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                                <fo:table border-collapse="collapse" >
                                    <fo:table-column column-width="194mm"/>
                                    <fo:table-body>
                                        <fo:table-row>
                                              <fo:table-cell >
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >Declaro bajo juramento que mientras mantenga deudas pendientes a favor del Banco de Cr�dito e Inversiones, me obligo a comunicarles por escrito y con la debida anticipaci�n, todo hecho que pueda disminuir o extinguir mis cauciones o el valor declarado de mi patrimonio.</fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >Las infracciones a lo contemplado en la precedente estipulaci�n, que tiene car�cter de esencial y determinante para los cr�ditos que me otorgue el BANCO DE CREDITO DE INVERSIONES, dar�n derecho al BANCO para hacer exigible de inmediato el monto total de mis obligaciones pendientes, consider�ndolas como de plazo vencido, en cualquiera formas en que ellas se encuentren documentadas.</fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >Con todo, trat�ndose de una operaci�n de cr�dito de dinero cuyo capital sea igual o inferior a doscientas unidades de fomento no podr� en caso alguno hacerse exigible la obligaci�n en forma anticipada, sino una vez cumplidos sesenta d�as corridos desde que el deudor incurra en mora o simple retardo en el pago.</fo:block>
                                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >Faculto expresamente al BANCO DE CREDITO E INVERSIONES para cargar en mi cuenta corriente las sumas adeudadas provenientes del pr�stamo solicitado incluyendo capital, intereses y gastos, si no fueren cancelados a su respectivo vencimiento, como as� tambi�n para aplicar a su pago cualquier cr�dito a mi favor que exista en el BANCO, ya sean saldos en mi cuenta corriente, dep�sitos a la vista, dep�sitos a plazo, valores en custodia, etc. Asimismo declaro bajo juramento que todos los antecedentes presentados son fidedignos y que conozco el texto del art�culo 160 de la Ley General de Bancos.</fo:block>
                                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >Declaro bajo juramento que a la fecha de la presente solicitud no mantengo obligaciones vencidas por concepto de impuestos de cualquier origen o naturaleza; o por remuneraciones a trabajadores de su dependencia, o cotizaciones previsionales o de salud.</fo:block>
                                              </fo:table-cell>
                                        </fo:table-row>
                                  </fo:table-body>
                                 </fo:table>


                          </fo:flow>
                  </fo:page-sequence>






                  <fo:page-sequence master-reference="miCarta">
                          <fo:flow flow-name="xsl-region-body">

                                <fo:table border-collapse="collapse">
                                  <fo:table-column />
                                  <fo:table-column />
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block >
                                                  <fo:external-graphic  width="3cm" height="1.5cm"  vertical-align="middle">
                                                    <xsl:attribute name="src">
                                                    <xsl:value-of select="OperacionCredito/logoBciSomosDiferentes"/>
                                                    </xsl:attribute>
                                                  </fo:external-graphic>
                                                </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="right" vertical-align="middle" >2 - 4</fo:block>
                                        </fo:table-cell>

                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:table border-collapse="collapse" >
                                    <fo:table-column column-width="194mm" />
                                    <fo:table-body>
                                        <fo:table-row>
                                              <fo:table-cell >
                                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >Asimismo, por el presente instrumento, faculto al BANCO DE CREDITO E INVERSIONES, de manera irrevocable, para que, en conformidad a lo previsto en el art�culo 11 de la Ley sobre Letra de Cambio y Pagar�, complete el pagar� que documente esta solicitud de cr�dito, la totalidad de las menciones exigidas por la Ley, fijando en �l mi obligaci�n de pagar la cantidad de dinero solicitada en este acto o aquella en que en definitiva apruebe el BANCO al dorso de esta solicitud, si dicha cantidad fuere diferente. Libero al BANCO DE CREDITO E INVERSIONES de la obligaci�n de rendir cuenta de este cometido, como asimismo de toda responsabilidad que pudiera derivar del ejercicio del mismo. Con el prop�sito de actualizar y verificar peri�dicamente el estado y vigencia de las garant�as constituidas, autorizo al Banco desde ya para requerir los certificados y anotaciones pertinentes ante los Conservadores de Bienes Ra�ces u oficinas del Registro Civil que correspondan, siendo de mi cargo los gastos, derechos y tarifas correspondientes, pudiendo adicionar tales gastos en las cuotas o dividendos del o los cr�dito(s) que mediante el presente instrumento solicito o en el futuro solicite, sin perjuicio de hacerlo mediante el cargo respectivo en cualquier cuenta corriente o cuenta vista que mantuviere en el BANCO, para lo cual desde ya lo autorizo y otorgo mi consentimiento. Trat�ndose de cr�ditos a m�s de un a�o plazo, faculto al Banco irrevocablemente en los t�rminos del art�culo 241 del C�digo de Comercio para que, actuando a trav�s de uno o m�s apoderados, en mi (nuestro) nombre y representaci�n proceda a suscribir una o m�s hojas de renovaci�n o pr�rroga del o los pagar�(s) en que se documente la respectiva operaci�n de cr�dito, sin notificaci�n al mandante, determinando el nuevo vencimiento, forma de pago y la nueva tasa de inter�s que regir� en ese per�odo. El t�rmino de la(s) renovaci�n(es) ser� igual al estipulado en la presente solicitud, en su caso, pudiendo el mandante reducir o aumentar dicho plazo en no m�s de 10 d�as y la tasa de inter�s ser� la que el BANCO DE CREDITO E INVERSIONES aplique en general a esta clase de operaciones el d�a de la pr�rroga, y que en todo caso no podr� ser superior a la tasa m�xima convencional que corresponda. El BANCO DE CREDITO E INVERSIONES estar� revestido de las facultades para autocontratar.</fo:block>
                                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >En todo caso, el BANCO DE CREDITO E INVERSIONES queda liberado de toda responsabilidad en caso de no ejercer este mandato. En ning�n caso el otorgamiento de este mandato constituye la concesi�n de espera(s) ni el otorgamiento de plazo(s) adicional(es) alguno(s) para servir la(s) obligaci�n(es) o puede interpretarse como el ejercicio de un derecho para el deudor a prorrogar el plazo de vencimiento de esta obligaci�n, quedando el BANCO en completa libertad para resolver a su arbitrio, si ejerce o no la facultad conferida. Asimismo, la circunstancia de obrar conforme a dicha potestad no podr� ser inferida como la obligaci�n de volver a ejercerla en el pr�ximo vencimiento.</fo:block>
                                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >Asimismo reconozco (reconocemos) haber recibido por parte del Banco de Cr�dito e Inversiones informaci�n detallada de las comisiones que el Banco cobra por concepto de otorgamiento de cr�dito y procesos asociados a �ste, como en el caso de reprogramaci�n, pr�rroga, y reestructuraci�n entre otros. Acepto (aceptamos) desde ya que estos valores sean cargados en mi (nuestra) cuenta corriente, de darse cualquiera de las situaciones o procesos antes se�alados o cualesquiera de aquellos que me (nos) han sido informados. En caso de no poseer cuenta corriente la comisi�n correspondiente la pagar�(mos) por Caja.</fo:block>
                                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >Declaro haber recibido informaci�n detallada y aceptar que existen recargos en caso de mora o simple retardo en el pago de la obligaci�n de cr�dito de dinero de que da cuenta la presente solicitud y adem�s por concepto de la cobranza extrajudicial de cr�ditos impagos, incluyendo honorarios, a partir de la fecha que se indica m�s adelante, los cuales ser�n cobrados por la</fo:block>
                                              </fo:table-cell>
                                        </fo:table-row>
                                  </fo:table-body>
                                 </fo:table>

                          </fo:flow>
                  </fo:page-sequence>


                  <fo:page-sequence master-reference="miCarta">
                          <fo:flow flow-name="xsl-region-body">

                                <fo:table border-collapse="collapse">
                                  <fo:table-column />
                                  <fo:table-column />
                                    <fo:table-body>
                                      <fo:table-row>


                                        <fo:table-cell >
                                                <fo:block >
                                                  <fo:external-graphic  width="3cm" height="1.5cm"  vertical-align="middle">
                                                    <xsl:attribute name="src">
                                                    <xsl:value-of select="OperacionCredito/logoBciSomosDiferentes"/>
                                                    </xsl:attribute>
                                                  </fo:external-graphic>
                                                </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="right" vertical-align="middle" >3 - 4</fo:block>
                                        </fo:table-cell>

                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>


                                <fo:table border-collapse="collapse">
                                    <fo:table-column column-width="96.95mm"/>
                                    <fo:table-column column-width="96.95mm"/>
                                    <fo:table-body>
                                        <fo:table-row>

                                              <fo:table-cell >
                                              </fo:table-cell>

                                              <fo:table-cell >
                                                      <fo:block font-family="Helvetica" font-size="11pt"   text-align="right" vertical-align="middle" line-height="4.5mm"></fo:block>
                                              </fo:table-cell>

                                        </fo:table-row>
                                  </fo:table-body>
                                  </fo:table>


                                <fo:table border-collapse="collapse" >
                                    <fo:table-column column-width="194mm" />
                                    <fo:table-body>
                                        <fo:table-row>
                                              <fo:table-cell >
                                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >"Compa��a de Normalizaci�n de Cr�ditos-Normaliza S.A." o por aquella que el BANCO designare en su oportunidad la que actuar� en nombre y en representaci�n e inter�s del BANCO en las gestiones de cobranza extrajudicial.</fo:block>
                                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >La cobranza extrajudicial se efectuar� en horario de 8:00 a 20:00 horas.</fo:block>
                                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >Declaro conocer, y desde luego acepto, que para la empresa designada al efecto pueda realizar la cobranza extrajudicial es imprescindible que el BANCO suministre a dicha empresa, antecedentes tanto respecto de los cr�ditos morosos de sus deudores y otros que no estando en dicha condici�n est�n asociados a �stos, como de los antecedentes comerciales de los deudores, tales como, nombres y apellidos, c�dula nacional de identidad, rol �nico tributario, domicilios, direcciones y tel�fonos, etc�tera.</fo:block>
                                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >Los honorarios y gastos por las gestiones de cobranza ascender�n a los porcentajes que seguidamente se indican, aplicados sobre el total de la deuda, o la cuota vencida seg�n el caso, conforme a la siguiente escala progresiva: Obligaciones hasta 10 unidades de fomento 9%; por la parte que exceda las 10 unidades de fomento y hasta 50 unidades de fomento, 6% y por la parte que exceda las 50 unidades de fomento, 3%. Los porcentajes indicados se aplicar�n respecto de los Cr�ditos de Consumo/Tarjetas de Cr�dito tanto a Personas Naturales como a personas jur�dicas, despu�s de transcurridos 20 d�as corridos de atraso (mora) contados desde el d�a del vencimiento de la obligaci�n.</fo:block>
                                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >Las tarifas anteriores podr�n ser modificadas anualmente en caso de operaciones de consumo cuyo plazo de pago exceda de un a�o, siempre que tales cambios se avisen con una anticipaci�n m�nima de dos per�odos de pago. Formalizo el presente instrumento considerando que las tarifas indicadas se basan en la fiel interpretaci�n de la reglamentaci�n legal vigente y en cumplimiento a lo dispuesto en la Ley 19.659 y adem�s normativa aplicable. Tanto los recargos en caso de mora o simple retardo como los gastos por concepto de la cobranza extrajudicial de los cr�ditos impagos, incluyendo honorarios y costas podr�n ser cobrados con cargo directo en alguna de la(s) cuenta(s) corriente(s) o cuenta(s) vistas(s) vigente(s) mantenida(s) por m� (nosotros) en el Banco, en la oportunidad que se cancele o regularice el vencimiento u obligaci�n morosa o impaga.</fo:block>
                                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >Declaro conocer las caracter�sticas que rigen los pr�stamos de CUOTA FIJA TASA VARIABLE, cuya tasa de inter�s est� conformada por TASA BASE del Banco de Cr�dito e Inversiones, que puede variar mensualmente, m�s un diferencial fijo. La tasa de inter�s inicial determina el monto fijo de las cuotas, no obstante la variabilidad de la TASA BASE incidir� en el mayor o menor n�mero de cuotas necesarias para el pago del pr�stamo, a lo establecido originalmente.</fo:block>
                                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                              </fo:table-cell>
                                        </fo:table-row>
                                  </fo:table-body>
                                 </fo:table>


                                  <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                  <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                  <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>


                                  <fo:table border-collapse="collapse" text-align="left">
                                      <fo:table-column />
                                      <fo:table-column />
                                      <fo:table-body>
                                          <fo:table-row>

                                                <fo:table-cell >
                                                        <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center"><fo:inline text-decoration="underline"><xsl:value-of select="OperacionCredito/nombreCompletoAval" /></fo:inline></fo:block>
                                                        <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center">Nombre y Firma Aval</fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell >
                                                        <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center"><fo:inline text-decoration="underline"><xsl:value-of select="OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
                                                        <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center">Nombre y Firma(s) Solicitante</fo:block>
                                                        <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center">o Representante Legal</fo:block>
                                                </fo:table-cell>

                                          </fo:table-row>
                                    </fo:table-body>
                                  </fo:table>


                          </fo:flow>
                  </fo:page-sequence>

                  <fo:page-sequence master-reference="miCarta">
                          <fo:flow flow-name="xsl-region-body">


                                <fo:table border-collapse="collapse" >
                                  <fo:table-column column-width="194mm"/>

                                    <fo:table-body>
                                        <fo:table-row>


                                              <fo:table-cell >
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="right" vertical-align="middle" >4 - 4</fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" >VISACION CLIENTE</fo:block>
                                                    <fo:block ><fo:leader leader-length="194mm" leader-pattern="rule" rule-style="solid" rule-thickness="0.8mm" color="black"/></fo:block>
                                              </fo:table-cell>






                                        </fo:table-row>
                                  </fo:table-body>
                                 </fo:table>

                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>


                                <fo:table border-collapse="collapse" >
                                    <fo:table-column column-width="194mm"/>
                                    <fo:table-body>
                                        <fo:table-row>
                                              <fo:table-cell >
                                                    <fo:block ><fo:leader leader-length="194mm" leader-pattern="rule" rule-style="solid" rule-thickness="0.8mm" color="black"/></fo:block>
                                              </fo:table-cell>
                                        </fo:table-row>
                                  </fo:table-body>
                                 </fo:table>


                                <fo:table border-collapse="collapse" >
                                    <fo:table-column column-width="97mm"/>
                                    <fo:table-column column-width="97mm"/>
                                    <fo:table-body>
                                        <fo:table-row>

                                              <fo:table-cell >
                                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="center" >Resoluci�n / Recomendaci�n:<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                              </fo:table-cell>

                                              <fo:table-cell >
                                                    <fo:block ></fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="center" >Monto Aprobado $ <fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                              </fo:table-cell>

                                        </fo:table-row>
                                  </fo:table-body>
                                 </fo:table>

                                <fo:table border-collapse="collapse" >
                                    <fo:table-column column-width="194mm"/>
                                    <fo:table-body>
                                        <fo:table-row>
                                              <fo:table-cell >
                                                    <fo:block ><fo:leader leader-length="194mm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                              </fo:table-cell>
                                        </fo:table-row>
                                  </fo:table-body>
                                 </fo:table>

                                <fo:table border-collapse="collapse" >
                                    <fo:table-column column-width="194mm"/>
                                    <fo:table-body>
                                        <fo:table-row>
                                              <fo:table-cell >
                                                    <fo:block ><fo:leader leader-length="194mm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                              </fo:table-cell>
                                        </fo:table-row>
                                  </fo:table-body>
                                 </fo:table>

                                <fo:table border-collapse="collapse" >
                                    <fo:table-column column-width="194mm"/>
                                    <fo:table-body>
                                        <fo:table-row>
                                              <fo:table-cell >
                                                    <fo:block ><fo:leader leader-length="194mm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                              </fo:table-cell>
                                        </fo:table-row>
                                  </fo:table-body>
                                 </fo:table>

                                <fo:table border-collapse="collapse" >
                                    <fo:table-column column-width="194mm"/>
                                    <fo:table-body>
                                        <fo:table-row>
                                              <fo:table-cell >
                                                    <fo:block ><fo:leader leader-length="194mm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                              </fo:table-cell>
                                        </fo:table-row>
                                  </fo:table-body>
                                 </fo:table>

                                <fo:table border-collapse="collapse" >
                                    <fo:table-column column-width="194mm"/>
                                    <fo:table-body>
                                        <fo:table-row>
                                              <fo:table-cell >
                                                    <fo:block ><fo:leader leader-length="194mm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                              </fo:table-cell>
                                        </fo:table-row>
                                  </fo:table-body>
                                 </fo:table>

                                <fo:table border-collapse="collapse" >
                                    <fo:table-column column-width="194mm"/>
                                    <fo:table-body>
                                        <fo:table-row>
                                              <fo:table-cell >
                                                    <fo:block ><fo:leader leader-length="194mm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                              </fo:table-cell>
                                        </fo:table-row>
                                  </fo:table-body>
                                 </fo:table>

                                <fo:table border-collapse="collapse" >
                                    <fo:table-column column-width="194mm"/>
                                    <fo:table-body>
                                        <fo:table-row>
                                              <fo:table-cell >
                                                    <fo:block ><fo:leader leader-length="194mm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                              </fo:table-cell>
                                        </fo:table-row>
                                  </fo:table-body>
                                 </fo:table>

                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                                <fo:table border-collapse="collapse" >
                                    <fo:table-column column-width="37mm" border-right="0.5pt solid black"/>
                                    <fo:table-column column-width="57mm" border-top="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-column column-width="57mm" border-top="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                    <fo:table-column column-width="37mm" />
                                    <fo:table-body>
                                        <fo:table-row>
                                              <fo:table-cell >
                                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="center" ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell >
                                                    <fo:block  border-bottom="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="center" ><fo:leader leader-pattern="space" leader-length="2mm"/>Ej. Comercial</fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="center" ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="center" ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell >
                                                    <fo:block  border-bottom="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="center" ><fo:leader leader-pattern="space" leader-length="2mm"/>Jefe Oficina</fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="center" ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="center" ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                              </fo:table-cell>
                                              <fo:table-cell >
                                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="center" ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                              </fo:table-cell>
                                        </fo:table-row>
                                  </fo:table-body>
                                 </fo:table>

                                <fo:table border-collapse="collapse" >
                                    <fo:table-column column-width="194mm"/>
                                    <fo:table-body>
                                        <fo:table-row>
                                              <fo:table-cell >
                                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="center" >V� B� Fecha</fo:block>
                                              </fo:table-cell>
                                        </fo:table-row>
                                  </fo:table-body>
                                 </fo:table>





                          </fo:flow>
                  </fo:page-sequence>

        </fo:root>
    </xsl:template>
</xsl:stylesheet>
