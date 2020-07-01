<?xml version="1.0" encoding="iso-8859-1"?>

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />

    <xsl:param name="IMG_URL"/>

    <xsl:template match="declaracion_jurada_fogape">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="30mm" margin-left="10mm" margin-right="10mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="miCarta">
              <fo:flow flow-name="xsl-region-body">

              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="50mm" />
                  <fo:table-column column-width="50mm" />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell text-align="left">
                                    <fo:block >
                                      <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="logoBciSomosDiferentes"/>
                                        </xsl:attribute>
                                      </fo:external-graphic>
                                    </fo:block>
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block >
                                  
                                    </fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
                </fo:table>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">DECLARACION JURADA FOGAPE</fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">(FONDO DE GARANTIA PARA PEQUEÑOS EMPRESARIOS D.L. 3.472)</fo:inline></fo:block>
                
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block> 
              
              <fo:block text-align="justify">Por la presente, yo (nosotros):</fo:block>                             
              
              <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL 1 -->
              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="58mm" />
                <fo:table-column column-width="97mm"  />
                <fo:table-column column-width="10mm"  />
                <fo:table-column column-width="30mm"  />
                <fo:table-body>
                    <fo:table-row>
                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left"  line-height="4.5mm">REPRESENTANTE LEGAL</fo:block>
                          </fo:table-cell>
                          <fo:table-cell >
                          <xsl:variable name="nombreApoderado1" select="nombreApoderado1" />
					                <xsl:choose>
					                  <xsl:when test="$nombreApoderado1 != ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="nombreApoderado1" /></fo:inline></fo:block>
					                  </xsl:when>
					
					                  <xsl:when test="$nombreApoderado1 = ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
					                  </xsl:when>
					                </xsl:choose>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell >
                          <xsl:variable name="rutApoderado1" select="rutApoderado1" />
					                <xsl:choose>
					                  <xsl:when test="$rutApoderado1 != ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="rutApoderado1" /></fo:inline></fo:block>
					                  </xsl:when>
					
					                  <xsl:when test="$rutApoderado1 = ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
					                  </xsl:when>
					                </xsl:choose>
                          </fo:table-cell>                          

                    </fo:table-row>
              </fo:table-body>
              </fo:table>
              <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL 1 -->

              <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL 2 -->
              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="58mm" />
                <fo:table-column column-width="97mm"  />
                <fo:table-column column-width="10mm"  />
                <fo:table-column column-width="30mm"  />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left"  line-height="4.5mm">REPRESENTANTE LEGAL</fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell >
                          <xsl:variable name="nombreApoderado2" select="nombreApoderado2" />
					                <xsl:choose>
					                  <xsl:when test="$nombreApoderado2 != ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="nombreApoderado2" /></fo:inline></fo:block>
					                  </xsl:when>
					
					                  <xsl:when test="$nombreApoderado2 = ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
					                  </xsl:when>
					                </xsl:choose>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell >
                          <xsl:variable name="rutApoderado2" select="rutApoderado2" />
					                <xsl:choose>
					                  <xsl:when test="$rutApoderado2 != ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="rutApoderado2" /></fo:inline></fo:block>
					                  </xsl:when>
					
					                  <xsl:when test="$rutApoderado2 = ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
					                  </xsl:when>
					                </xsl:choose>
                          </fo:table-cell>                          


                    </fo:table-row>
              </fo:table-body>
              </fo:table>
              <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL 2 -->

              <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL 3 -->
              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="58mm" />
                <fo:table-column column-width="97mm"  />
                <fo:table-column column-width="10mm"  />
                <fo:table-column column-width="30mm"  />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left"  line-height="4.5mm">REPRESENTANTE LEGAL</fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell >
                          <xsl:variable name="nombreApoderado3" select="nombreApoderado3" />
					                <xsl:choose>
					                  <xsl:when test="$nombreApoderado3 != ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="nombreApoderado3" /></fo:inline></fo:block>
					                  </xsl:when>
					
					                  <xsl:when test="$nombreApoderado3 = ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
					                  </xsl:when>
					                </xsl:choose>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell >
                          <xsl:variable name="rutApoderado3" select="rutApoderado3" />
					                <xsl:choose>
					                  <xsl:when test="$rutApoderado3 != ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="rutApoderado3" /></fo:inline></fo:block>
					                  </xsl:when>
					
					                  <xsl:when test="$rutApoderado3 = ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
					                  </xsl:when>
					                </xsl:choose>
                          </fo:table-cell>                          


                    </fo:table-row>
              </fo:table-body>
              </fo:table>
              <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL 3 -->

              <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL 4 -->
              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="58mm" />
                <fo:table-column column-width="97mm"  />

                <fo:table-column column-width="10mm"  />
                <fo:table-column column-width="30mm"  />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left"  line-height="4.5mm">REPRESENTANTE LEGAL</fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell >
                          <xsl:variable name="nombreApoderado4" select="nombreApoderado4" />
					                <xsl:choose>
					                  <xsl:when test="$nombreApoderado4 != ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="nombreApoderado4" /></fo:inline></fo:block>
					                  </xsl:when>
					
					                  <xsl:when test="$nombreApoderado4 = ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
					                  </xsl:when>
					                </xsl:choose>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell >
                          <xsl:variable name="rutApoderado4" select="rutApoderado4" />
					                <xsl:choose>
					                  <xsl:when test="$rutApoderado4 != ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="rutApoderado4" /></fo:inline></fo:block>
					                  </xsl:when>
					
					                  <xsl:when test="$rutApoderado4 = ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
					                  </xsl:when>
					                </xsl:choose>
                          </fo:table-cell>                          

                    </fo:table-row>
              </fo:table-body>
              </fo:table>
              <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL 4 -->

              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify">En representación de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="nombreCompletoCliente" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify">R.U.T<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(rutCliente, "###.###.###","rut")' />-<xsl:value-of select="dvCliente" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>, con domicilio en calle<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="dirCliente" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>comuna<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="comCliente" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de esta ciudad; declaro (declaramos) bajo juramento que:</fo:block>
    
               
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify">El monto de los préstamos vigentes afectos al D.L. 3.472 de 1980 en el Banco de Crédito e Inversiones (BCI) o en otras instituciones financieras no supera a esta fecha, el monto máximo de financiamiento definido para su tramo de ventas anuales correspondiente a: (marcar con una "X" el tramo del cliente)</fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table space-before.optimum="1pt">
                <fo:table-column column-width="100mm"/>
                <fo:table-column column-width="47mm"/>
                <fo:table-column column-width="47mm"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border="solid 1pt black">
                              <fo:block font-family="Helvetica" font-size="11pt" padding-before="3pt" text-align="center"><fo:leader leader-pattern="space" leader-length="1mm"/>Tipo Beneficiario</fo:block>
                      </fo:table-cell>
                      <fo:table-cell border="solid 1pt black">
                              <fo:block font-family="Helvetica" font-size="11pt" padding-before="3pt" text-align="center"><fo:leader leader-pattern="space" leader-length="1mm"/>Monto máximo financiamiento</fo:block>
                      </fo:table-cell>
                      <fo:table-cell border="solid 1pt black">
                              <fo:block font-family="Helvetica" font-size="11pt" padding-before="3pt" text-align="center"><fo:leader leader-pattern="space" leader-length="1mm"/>Tramo</fo:block>
                      </fo:table-cell>                      
                    </fo:table-row>
                  </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:table space-before.optimum="1pt">
                <fo:table-column column-width="100mm"/>
                <fo:table-column column-width="47mm"/>
                <fo:table-column column-width="47mm"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border="solid 1pt black">
                              <fo:block font-family="Helvetica" font-size="11pt" padding-before="3pt" text-align="center"><fo:leader leader-pattern="space" leader-length="1mm"/>Micro y Pequeña Empresa Ventas Anuales: UF 0 - UF 25.000 (Decreto Ley 3.472)</fo:block>
                      </fo:table-cell>
                      <fo:table-cell border="solid 1pt black">
                              <fo:block font-family="Helvetica" font-size="11pt" padding-before="3pt" text-align="center"><fo:leader leader-pattern="space" leader-length="1mm"/>UF 5.000</fo:block>
                      </fo:table-cell>
                      <fo:table-cell border="solid 1pt black">
                              <fo:block font-family="Helvetica" font-size="11pt" padding-before="3pt" text-align="center"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                      </fo:table-cell>                      
                    </fo:table-row>
                  </fo:table-body>
              </fo:table> 
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:table space-before.optimum="1pt">
                <fo:table-column column-width="100mm"/>
                <fo:table-column column-width="47mm"/>
                <fo:table-column column-width="47mm"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border="solid 1pt black">
                              <fo:block font-family="Helvetica" font-size="11pt" padding-before="3pt" text-align="center"><fo:leader leader-pattern="space" leader-length="1mm"/>Empresa Mediana Ventas Anuales: UF 25.001 - UF 50.000 (Ley 20.792)</fo:block>
                      </fo:table-cell>
                      <fo:table-cell border="solid 1pt black">
                              <fo:block font-family="Helvetica" font-size="11pt" padding-before="3pt" text-align="center"><fo:leader leader-pattern="space" leader-length="1mm"/>UF 10.000</fo:block>
                      </fo:table-cell>
                      <fo:table-cell border="solid 1pt black">
                              <fo:block font-family="Helvetica" font-size="11pt" padding-before="3pt" text-align="center"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                      </fo:table-cell>                      
                    </fo:table-row>
                  </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify">Declaro (declaramos) además, que no estoy (estamos) postulando a ningún otro crédito garantizado por el Fondo de Garantía para el Pequeño Empresario en otra Institución Financiera.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:table border-collapse="collapse" text-align="center">
                  <fo:table-column />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="center"><fo:inline font-size="10pt" font-weight="bold">______________________</fo:inline></fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="center">FIRMA(S)</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify">Con esta fecha autorizo la(s) firma(s) del (de los) Sr(es) _________________________________________</fo:block>
              <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:inline font-size="10pt" font-weight="bold">_______________________________________________________________________________________________</fo:inline></fo:block>
              
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify">Cédula(s) Nacional de Identidad N° (s) <fo:inline font-size="10pt" font-weight="bold">___________________________________________</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(respectivamente),</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify">(en representación de <fo:inline font-size="10pt" font-weight="bold">__________________________________________________________________________</fo:inline>)</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"><fo:inline font-size="10pt" font-weight="bold">_______________________________________________________</fo:inline>) </fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify">R.U.T. <fo:inline font-size="10pt" font-weight="bold">_________________________</fo:inline></fo:block>
              
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >
              En<fo:leader leader-pattern="space" leader-length="20mm"/><fo:leader leader-pattern="space" leader-length="20mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="ciudadContrato" /></fo:inline>,
              <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="dia" /></fo:inline>
              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="mes" />
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
              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="ano" /></fo:inline>
              </fo:block>              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>              
              <fo:table border-collapse="collapse" text-align="center">
                  <fo:table-column />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="center"><fo:inline font-size="10pt" font-weight="bold">______________________</fo:inline></fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="center">NOTARIO</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>              
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>              
              <fo:block font-family="Helvetica" font-size="11pt" text-align="center">Página 1 de 1</fo:block>
              </fo:flow>
              </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
