<?xml version="1.0" encoding="iso-8859-1"?>
<!-- <== version: 2013/08/26 12:15 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />

    <xsl:param name="IMG_URL"/>

    <xsl:template match="solicitud_de_credito_comercial">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="30mm" margin-left="10mm" margin-right="10mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

                  <fo:page-sequence master-reference="miCarta">
                          <fo:flow flow-name="xsl-region-body">

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="60mm"/>
                                  <fo:table-column column-width="60mm"/>
                                    <fo:table-body>
                                      <fo:table-row>

                                        <fo:table-cell >
                                                <fo:block >
                                                  <fo:external-graphic  width="3cm" height="1.5cm"  vertical-align="middle">
                                                    <xsl:attribute name="src">
                                                    <xsl:value-of select="logoBciSomosDiferentes"/>
                                                    </xsl:attribute>
                                                  </fo:external-graphic>
                                                </fo:block>
                                        </fo:table-cell>
                                        
                                        <fo:table-cell >
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" font-weight="bold" >SOLICITUD DE CREDITO</fo:block>
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
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
                                  <fo:table-column column-width="60mm"/>
                                  <fo:table-column column-width="50mm"/>
                                  <fo:table-column column-width="80mm"/>
                                    <fo:table-body>
                                      <fo:table-row>

                                        <fo:table-cell >
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" font-weight="bold" ></fo:block>
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                        </fo:table-cell>
                                        
                                        <fo:table-cell >
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" font-weight="bold" ></fo:block>
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                        </fo:table-cell>                                        

                                        <fo:table-cell >
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" >Nº OPERACIÓN<fo:leader leader-pattern="space" leader-length="5.7mm"/>: <fo:leader leader-pattern="space" leader-length="2mm"/><fo:inline font-weight="bold"><xsl:value-of select="nroOperacion" /></fo:inline></fo:block>
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" >OFICINA     <fo:leader leader-pattern="space" leader-length="17.4mm"/>:<fo:leader leader-pattern="space" leader-length="3mm"/><fo:inline font-weight="bold"><xsl:value-of select="sucursal" /></fo:inline></fo:block>
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" >FECHA       <fo:leader leader-pattern="space" leader-length="20mm"/>:<fo:leader leader-pattern="space" leader-length="3mm"/>
                                                <fo:inline font-weight="bold"><xsl:value-of select="substring(fecha,0,4)" /></fo:inline>
											  	                      <fo:inline font-weight="bold"><xsl:value-of select="substring(fecha,4,2)" /></fo:inline>
                                              	<fo:inline font-weight="bold"><xsl:value-of select="substring(fecha,6,5)" /></fo:inline>
                                              </fo:block>
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" >EJECUTIVO   <fo:leader leader-pattern="space" leader-length="11.4mm"/>:<fo:leader leader-pattern="space" leader-length="3mm"/><fo:inline font-weight="bold"><xsl:value-of select="ejecutivo" /></fo:inline></fo:block>
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
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" ><xsl:value-of select="nombreCompletoCliente" /></fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="193.9mm" />
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" >Nombre o Razón Social del Cliente</fo:block>
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
                                                 <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="substring(direccion,0,40)" /></fo:block>
                                         </fo:table-cell>
                                         <fo:table-cell >
                                                 <fo:block vertical-align="middle"></fo:block>
                                         </fo:table-cell>
                                         <fo:table-cell >
                                                 <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="comCliente" /></fo:block>
                                         </fo:table-cell>
                                         <fo:table-cell >
                                                 <fo:block vertical-align="middle"></fo:block>
                                         </fo:table-cell>
                                         <fo:table-cell >
                                                 <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="comCliente" /></fo:block>
                                         </fo:table-cell>
                                         <fo:table-cell >
                                                 <fo:block vertical-align="middle"></fo:block>
                                         </fo:table-cell>
                                         <fo:table-cell  >
                                                 <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="telefonoCliente" /></fo:block>
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
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select='format-number(rutCliente, "###.###.###","rut")' />-<xsl:value-of select="dvCliente" /></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select='format-number(rutCliente, "###.###.###","rut")' />-<xsl:value-of select="dvCliente" /></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
		                                              <fo:inline><xsl:value-of select="substring(fechaNacCliente,0,4)" /> </fo:inline>
		                                              <fo:inline><xsl:value-of select="substring(fechaNacCliente,4,2)" /> </fo:inline>
		                                              <fo:inline><xsl:value-of select="substring(fechaNacCliente,6,5)" /> </fo:inline>
                                                </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell  >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="nroCuentaCteCliente" /></fo:block>
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
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Céd.Nac.Identidad</fo:block>
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
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Cta. Cte. Nº</fo:block>
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
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>
                                                <fo:inline><xsl:value-of select="substring(fechaCurseCredito,0,4)" /></fo:inline>
                                                <fo:inline><xsl:value-of select="substring(fechaCurseCredito,4,2)" /></fo:inline>
                                                <fo:inline><xsl:value-of select="substring(fechaCurseCredito,6,5)" /> </fo:inline>
                                                </fo:block>

                                        </fo:table-cell>

                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="tipoCredito" /></fo:block>
                                        </fo:table-cell>Monto Solicitado
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>

                                                <xsl:variable name="moneda" select="moneda" />
                                                  <xsl:choose>

                                                    <xsl:when test="$moneda = 'UF'">
                                                      UF <xsl:value-of select='format-number(montoCredito, "###.###.##0,0000","decimal")' />
                                                    </xsl:when>

                                                    <xsl:when test="$moneda = '$'">
                                                      <xsl:value-of select="montoCredito" />
                                                    </xsl:when>

                                                </xsl:choose>

                                                </fo:block>
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
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Tipo de Crédito</fo:block>
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
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="formaPago" /></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >

                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>

														<xsl:value-of select="garantiaOfrecida" />

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
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Garantía Ofrecida</fo:block>
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
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="objetoDelCredito" /></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
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
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Objeto del Crédito</fo:block>
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
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><fo:inline><xsl:value-of select="fechaPrimerVctoDD" /></fo:inline>/<fo:inline><xsl:value-of select="fechaPrimerVctoMM" /></fo:inline>/<fo:inline><xsl:value-of select="fechaPrimerVctoYYYY" /></fo:inline></fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                            <xsl:variable name="cuotas" select="cuotas" />
                                            <xsl:choose>
                                              <xsl:when test="$cuotas = 1">
                                               <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><fo:inline><xsl:value-of select="fechaPrimerVctoDD" /></fo:inline>/<fo:inline><xsl:value-of select="fechaPrimerVctoMM" /></fo:inline>/<fo:inline><xsl:value-of select="fechaPrimerVctoYYYY" /></fo:inline></fo:block>
                                              </xsl:when>
                                            </xsl:choose>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="diaVencimiento" /></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="cuotas" /></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select='format-number(tasaInteres, "###,####","decimal")'/>%</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                        	
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>

                                                <xsl:variable name="moneda" select="moneda" />
                                                  <xsl:choose>

                                                    <xsl:when test="$moneda = 'UF'">
                                                      <xsl:value-of select='format-number(decretoLeyUF, "###.###.##0,0000","decimal")'/>%
                                                    </xsl:when>

                                                    <xsl:when test="$moneda = '$'">
                                                      <xsl:value-of select='format-number(decretoLey, "###,####","decimal")'/>%
                                                    </xsl:when>

                                                </xsl:choose>
                                                </fo:block>                                        	
                                        	
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
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Día Pago</fo:block>
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>C.Cuotas</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Número</fo:block>
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
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle"  line-height="4.5mm"><xsl:value-of select="nombreCompletoAval" /><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
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
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="direccionAval" /></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="comunaAval" /></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="ciudadAval" /></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell  >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/><xsl:value-of select="telefonoAval" /></fo:block>
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
                                  <fo:table-column column-width="30mm"   border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"    />
                                  <fo:table-column column-width="56.8mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"    />
                                  <fo:table-column column-width="50mm"   border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"    />
                                  <fo:table-column column-width="54mm"   border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="1mm"    />

                                    <fo:table-body>
                                      <fo:table-row>

                                        <fo:table-cell >
                                        <fo:block text-align="center" vertical-align="middle">
                                            <xsl:variable name="rut" select="rutAval" />
                                            <xsl:choose>
                                              <xsl:when test="string-length($rut) &gt; 0">
                                                <fo:inline>
                                                  <xsl:value-of select='format-number(rutAval, "###.###.##0","rut")' />-<xsl:value-of select="dvAval" /></fo:inline>
                                              </xsl:when>
                                            </xsl:choose>
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                        <fo:block text-align="center" vertical-align="middle">
                                            <xsl:variable name="rut" select="rutAval" />
                                            <xsl:choose>
                                              <xsl:when test="string-length($rut) &gt; 0">
                                                <fo:inline><xsl:value-of select='format-number(rutAval, "###.###.##0","rut")' />-<xsl:value-of select="dvAval" /></fo:inline>
                                              </xsl:when>
                                            </xsl:choose>
                                              </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>

                                              <fo:inline><xsl:value-of select="substring(fechaNacAval,0,4)" /> </fo:inline>
                                              <fo:inline>
                                                  <xsl:value-of select="substring(fechaNacAval,4,2)" />
                                              </fo:inline>
                                              <fo:inline><xsl:value-of select="substring(fechaNacAval,6,5)" /> </fo:inline>

                                                </fo:block>
                                        </fo:table-cell>


                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell  >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>

                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="30mm"  />
                                  <fo:table-column column-width="1mm"   />
                                  <fo:table-column column-width="56.8mm"/>
                                  <fo:table-column column-width="1mm"   />
                                  <fo:table-column column-width="50mm"  />
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
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Cédula Nacional de Identidad</fo:block>
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
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center"  vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>Cta. Cte. Nº</fo:block>
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
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >Declaro bajo juramento que mientras mantenga deudas pendientes a favor del Banco de Crédito e Inversiones, me obligo a comunicarles por escrito y con la debida anticipación, todo hecho, acto o contrato que pueda disminuir o extinguir mis cauciones o el valor declarado de mi patrimonio.</fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >Las infracciones a lo contemplado en la precedente estipulación, que tiene carácter de esencial y determinante para los créditos que me otorgue el BANCO DE CRÉDITO E INVERSIONES, darán derecho al BANCO para hacer exigible de inmediato el monto total de mis obligaciones pendientes, considerándolas como de plazo vencido, en cualquiera formas en que ella se encuentren documentadas.</fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >Con todo, tratándose de una operación de crédito de dinero cuyo capital sea igual o inferior a doscientas unidades de fomento no podrá en caso alguno hacerse exigible la obligación en forma anticipada, sino una vez cumplidos sesenta días corridos desde que el deudor incurra en mora o simple retardo en el pago.</fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >Faculto al BANCO DE CREDITO E INVERSIONES para cargar en cualquiera de mi(s) cuenta(s) corriente(s) las sumas adeudadas provenientes del préstamo solicitado incluyendo capital, intereses y gastos, como así también, en el caso de no ser cancelado oportunamente o no existir fondos disponibles en la(s) cuenta(s) corriente(s), aplicar a  su pago cualquier otro crédito a mi favor que exista en el BANCO, ya sean saldos en cuenta vista, depósitos a la vista, depósitos a plazo, valores en custodia, fondos mutuos en BCI Administradora de Fondos Mutuos S.A. etc.. Asimismo declaro bajo juramento que todos los antecedentes presentados son fidedignos y que conozco el texto del artículo 160 de la Ley General de Bancos.</fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >Autorizo al Banco de Crédito e Inversiones para pedir para su uso exclusivo, en los términos del artículo 4° de la ley 19.628, a la Administradora de Fondos de Pensiones donde efectúo mis cotizaciones previsionales, y autorizo asimismo a ésta, para entregar directamente al Banco o a través de Previred S.A., información sobre las aludidas cotizaciones de los últimos 12 meses precedentes a cualquiera solicitud de cualquier tipo de crédito o de otro servicio bancario para los que tal información y la que derive de aquella, pueda ser de utilidad para evaluar el otorgamiento del préstamo o servicio, sea de la naturaleza que fuere.</fo:block>
                                              </fo:table-cell>
                                        </fo:table-row>
                                  </fo:table-body>
                                 </fo:table>

                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                                
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column />
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" >Página 1 de 3</fo:block>
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
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block >
                                                  <fo:external-graphic  width="3cm" height="1.5cm"  vertical-align="middle">
                                                    <xsl:attribute name="src">
                                                    <xsl:value-of select="logoBciSomosDiferentes"/>
                                                    </xsl:attribute>
                                                  </fo:external-graphic>
                                                </fo:block>
                                        </fo:table-cell>

                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:table border-collapse="collapse" >
                                    <fo:table-column column-width="194mm" />
                                    <fo:table-body>
                                        <fo:table-row>
                                              <fo:table-cell >
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >En este acto otorgamos mandato mercantil especial y gratuito, en los términos del artículo 241 del Código de Comercio, al Banco de Crédito e Inversiones para que en su nombre y representación, incluso con facultades expresas para autocontratar y obrando a través de cualquiera de sus apoderados o en quien el Banco delegue, suscriba y/o complete uno o más pagarés, y reconozca deudas en beneficio y a la orden del Banco de Crédito e Inversiones, todo ello con el propósito de documentar en esta forma el o los saldos deudores, por los montos de capital, intereses, costas y comisiones, que se originen con motivo del cobro de boletas de garantía tomadas por el suscrito y emitidas por el Banco, al amparo de la  Línea de Crédito vigente.</fo:block>                                              	
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >El o los pagarés que se suscriban en virtud de este mandato podrán extenderse a la vista o a plazo y en caso de no pago devengarán la tasa de interés máxima convencional para operaciones de crédito de dinero en moneda nacional. Asimismo, y en los mismos términos, por el presente instrumento facultamos al Banco de Crédito e Inversiones para que, en conformidad a lo previsto en el Artículo 11 y 107 de la Ley 18092 del año 1982 sobre Letra de Cambio y Pagaré, incorpore en el o los instrumentos mercantiles que documenten los créditos otorgados en virtud de esta solicitud de crédito o el Contrato de Apertura de Línea de Crédito destinada a cubrir eventuales pagos de boletas de garantía, la totalidad de las menciones exigidas por la Ley, como por ejemplo, su fecha de emisión, de vencimiento, la cantidad adeudada, la tasa de interés u otras, determinando en él nuestra obligación de pagar la cantidad de dinero solicitada en este acto o aquella que en definitiva apruebe el Banco al dorso de esta solicitud, si dicha cantidad fuere diferente. Faculto (facultamos) al Banco para aceptar instrucciones o solicitudes que yo imparta a través medios remotos, especialmente vía red internet u otros, vía electrónica, satelital o telefónica, que estén disponibles, y reconozco (reconocemos) que tales instrucciones realizadas por dichos medios constituye manifestación expresa de mi (nuestra) voluntad, de aceptar las condiciones y modalidades bajo las cuales se presta el servicio, como también de las responsabilidades que asumo (asumimos) al hacer uso de tales canales y de la información contenida en ellos. Asimismo, autorizo (autorizamos) al Banco para que me (nos) provea en forma remota, de todos aquellos servicios en que normalmente se requiere mi (nuestra) presencia física, asimilando como medio válido de autorización cuando así lo requiera, a la firma electrónica, mi clave secreta que es confidencial, personal e intransferible.</fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >Reconozco (reconocemos) haber recibido por parte del Banco de Crédito e Inversiones información detallada de las comisiones que el Banco cobra por concepto de otorgamiento de crédito y procesos asociados a éste, como en el caso de reprogramación, prórroga  y reestructuración entre otros.</fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >Declaro (Declaramos) haber recibido volante con información detallada y aceptar que existen recargos en caso de mora o simple retardo en el pago de la obligación de crédito de dinero de que da cuenta la presente solicitud y además por concepto de la cobranza extrajudicial de créditos impagos, incluyendo honorarios, a partir de la fecha que se indica más adelante, los cuales serán cobrados por la empresa "Servicios de Normalización y Cobranza -Normaliza S.A." o por aquella que el BANCO designare en su oportunidad la que actuará en nombre y en representación e interés del BANCO en las gestiones de cobranza extrajudicial.</fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >La cobranza extrajudicial se efectuará  en horario de 8:00 a 20:00 horas.</fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >Declaro (Declaramos)  conocer, y desde luego acepto (aceptamos), que para la empresa designada al efecto pueda realizar la cobranza extrajudicial es imprescindible que el BANCO suministre a dicha empresa, antecedentes tanto respecto de los créditos morosos de sus deudores y otros que no estando en dicha condición estén asociados a éstos, como de los antecedentes comerciales  de los deudores, tales como, nombres y apellidos,  cédula nacional de identidad, rol único tributario, domicilios, direcciones y teléfonos, entre otros.</fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >Los honorarios y gastos por las gestiones de cobranza ascenderán a los porcentajes que seguidamente se indican, aplicados sobre el total de la deuda, o la cuota vencida según el caso, conforme a la siguiente escala progresiva: Obligaciones hasta 10 unidades de fomento 9%; por la parte que exceda las 10 unidades de fomento y hasta 50 unidades de fomento, 6% y por la parte que exceda las 50 unidades de fomento, 3%. Los porcentajes indicados se aplicarán respecto de los Créditos de Consumo/Tarjetas de Crédito tanto a Persona Naturales como a Personas Jurídicas, después de transcurridos 20 días corridos de atraso (mora) contados desde el día del vencimiento de la obligación.</fo:block>
                                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="justify" >Las tarifas anteriores podrán ser modificadas anualmente en caso de operaciones de consumo cuyo plazo de pago exceda de un año, siempre que tales cambios se avisen con una anticipación mínima de dos períodos de pago. Formalizo (Formalizamos) el presente instrumento considerando que las tarifas indicadas se basan en la fiel interpretación de la reglamentación legal vigente y en cumplimiento a lo dispuesto en la Ley 19.659 y además normativa aplicable. Tanto los recargos en caso de mora o simple retardo como los gastos por concepto de la cobranza extrajudicial de los créditos impagos, incluyendo honorarios y costas podrán ser cobrados con cargo directo en alguna de la(s) cuenta(s) corriente(s) o cuenta(s) vistas(s) vigente(s) mantenida(s) por mí (nosotros) en el Banco, en la oportunidad que se cancele o regularice el vencimiento u obligación morosa o impaga. Nombre y Firma Aval.</fo:block>
                                              </fo:table-cell>
                                        </fo:table-row>
                                  </fo:table-body>
                                 </fo:table>
                                 
									              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>							              									              									                                              
                                <fo:table border-collapse="collapse">
                                    <fo:table-column column-width="96.95mm"/>
                                    <fo:table-column column-width="96.95mm"/>
                                    <fo:table-body>
                                        <fo:table-row>
                                              <fo:table-cell >
									                                <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
									                                <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >Nombre y Firma Aval</fo:block>                                              	 
                                              </fo:table-cell>

                                              <fo:table-cell >
									                                <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="rigth" ><fo:leader leader-length="9cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
									                                <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="rigth" >Nombre y Firma(s) Solicitante o Representante Legal</fo:block>                                              	 
                                              </fo:table-cell>
                                        </fo:table-row>
                                  </fo:table-body>
                                  </fo:table>                                
                                  <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                                  
                                  
                                  <fo:table border-collapse="collapse">
                                  <fo:table-column />
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" >Página 2 de 3</fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                 

                          </fo:flow>
                  </fo:page-sequence>                  

                  <fo:page-sequence master-reference="miCarta">
                          <fo:flow flow-name="xsl-region-body">
                                                
                                <fo:table border-collapse="collapse" font-family="Courier" font-size="11pt" text-align="left">
                                  <fo:table-column column-width="55mm"/>
                                  <fo:table-column column-width="35mm"/>
                                  <fo:table-column column-width="80mm"/>
                                    <fo:table-body>
                                      <fo:table-row>

                                        <fo:table-cell >
                                                <fo:block >
                                                  <fo:external-graphic  width="3cm" height="1.5cm"  vertical-align="middle">
                                                    <xsl:attribute name="src">
                                                    <xsl:value-of select="logoBciSomosDiferentes"/>
                                                    </xsl:attribute>
                                                  </fo:external-graphic>
                                                </fo:block>
                                        </fo:table-cell>
                                        
                                        <fo:table-cell >
                                              <fo:block font-family="Helvetica" font-size="10pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                              <fo:block font-family="Helvetica" font-size="10pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                              <fo:block font-family="Helvetica" font-size="10pt" text-align="left" font-weight="bold" ></fo:block>
                                              <fo:block font-family="Helvetica" font-size="10pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                        </fo:table-cell>                                        

                                        <fo:table-cell >
                                              <fo:block font-family="Helvetica" font-size="10pt" text-align="left" >Nº de Operación :<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="nroOperacion"/></fo:inline></fo:block>
                                              <fo:block font-family="Helvetica" font-size="10pt" text-align="left" >Fecha de suscripción :<fo:leader leader-pattern="space" leader-length="1mm"/>
                                                <fo:inline font-weight="bold"><xsl:value-of select="substring(fecha,0,4)" /></fo:inline>
											  	                      <fo:inline font-weight="bold"><xsl:value-of select="substring(fecha,4,2)" /></fo:inline>
                                              	<fo:inline font-weight="bold"><xsl:value-of select="substring(fecha,6,5)" /></fo:inline>
                                              </fo:block>                                              

                                                
                                                <xsl:variable name="moneda" select="moneda" />
                                                  <xsl:choose>
                                                    <xsl:when test="$moneda = 'UF'">
                                                      <fo:block font-family="Helvetica" font-size="10pt" text-align="left" >Monto :<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(montoCredito, "###.###.##0,0000","decimal")' /></fo:inline></fo:block>
                                                    </xsl:when>

                                                    <xsl:when test="$moneda = '$'">
                                                    	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" >Monto :<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="montoCredito" /></fo:inline></fo:block>
                                                    </xsl:when>
                                                </xsl:choose>
                                                                                           

                                              <fo:block font-family="Helvetica" font-size="10pt" text-align="left" >Deudor :<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="nombreCompletoCliente" /></fo:inline></fo:block>
                                              <fo:block font-family="Helvetica" font-size="9pt" text-align="left" >RUT :<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(rutCliente, "###.###.###","rut")' />-<xsl:value-of select="dvCliente" /></fo:inline></fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse" >
                                  <fo:table-column column-width="194mm"/>

                                    <fo:table-body>
                                        <fo:table-row>
                                              <fo:table-cell >
                                                    <fo:block  font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" >VISACION CLIENTE</fo:block>
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
                                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="center" >Resolución / Recomendación:<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
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
                                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="center" >V° B° Fecha</fo:block>
                                              </fo:table-cell>
                                        </fo:table-row>
                                  </fo:table-body>
                                 </fo:table>

                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                              
                                <fo:table border-collapse="collapse">
                                  <fo:table-column />
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" >Página 3 de 3</fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                 
                          </fo:flow>
                  </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
