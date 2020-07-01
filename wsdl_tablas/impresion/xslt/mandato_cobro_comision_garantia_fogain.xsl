<?xml version="1.0" encoding="iso-8859-1"?>
<!-- <== version: 2012/04/26 12:00 ==>-->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />

    <xsl:param name="IMG_URL"/>

    <xsl:template match="mandato_cobro_comision_garantia_fogain">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="20mm" margin-left="10mm" margin-right="10mm"><fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="miCarta" font-size="9pt" font-family="Helvetica">

           <fo:flow flow-name="xsl-region-body" font-size="10pt" font-family="Helvetica">
           
            <fo:table border-collapse="collapse" text-align="right">
                <fo:table-column column-width="200mm"/>

                <fo:table-body text-align="left">
                    <fo:table-row>
                          <fo:table-cell text-align="left">
                                  <fo:block >
                                    <fo:external-graphic height="15mm" width="30mm" vertical-align="middle">
                                      <xsl:attribute name="src">
                                      <xsl:value-of select="logoBciSomosDiferentes"/>
                                      </xsl:attribute>
                                    </fo:external-graphic>
                                  </fo:block>
                          </fo:table-cell>
                    </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="center"><fo:inline font-weight="bold">MANDATO</fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="center"><fo:inline font-weight="bold">COBRO POR USO DE GARANTÍA FOGAIN</fo:inline></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
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
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify">R.U.T<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(rutCliente, "###.###.###","rut")' />-<xsl:value-of select="dvCliente" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>, con domicilio en calle<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="dirCliente" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>comuna<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="comCliente" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de esta ciudad.</fo:block>

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify">Autorizo cargar en mi cuenta corriente N°<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="nroCuentaCteCliente" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>del Banco de Crédito e Inversiones un<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="comisionFogain" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>% anual sobre el monto total de la garantía, por concepto de cobro de la comisión anual por el uso de la garantía FOGAIN.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify">Dicha tasa de comisión será considerada para el primer año de operación y al segundo año de operación de la cobertura FOGAIN, la comisión anual de utilización de esta cobertura será determinada por el comité ejecutivo de créditos de la CORFO.</fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:table border-collapse="collapse" text-align="center">
                  <fo:table-column column-width="95mm"/>
                  <fo:table-column column-width="95mm"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:inline font-size="10pt" font-weight="bold">________________________</fo:inline></fo:block>
                                  <fo:block font-family="Helvetica" font-size="11pt" text-align="left">Firma Representante Legal</fo:block>
                                  <fo:block font-family="Helvetica" font-size="11pt" text-align="left">
                                   <xsl:variable name="rutApoderado1" select="rutApoderado1" />
                                   <xsl:choose>
                                     <xsl:when test="$rutApoderado1 != ''">
                                  <fo:block font-family="Helvetica" font-size="11pt" text-align="left">Rut: <xsl:value-of select="rutApoderado1"/></fo:block>
                                     </xsl:when>

                                     <xsl:when test="$rutApoderado1 = ''">
                                       <fo:block font-family="Helvetica" font-size="11pt" text-align="left">Rut:__________________ </fo:block>
                                     </xsl:when>
                                   </xsl:choose>
                                   </fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt" text-align="right"><fo:inline font-size="10pt" font-weight="bold">________________________</fo:inline></fo:block>
                                  <fo:block font-family="Helvetica" font-size="11pt" text-align="right">Firma Representante Legal</fo:block>
                                  <fo:block font-family="Helvetica" font-size="11pt" text-align="right">
                                   <xsl:variable name="rutApoderado2" select="rutApoderado2" />
                                   <xsl:choose>
                                     <xsl:when test="$rutApoderado2 != ''">
                                  <fo:block font-family="Helvetica" font-size="11pt" text-align="right">Rut: <xsl:value-of select="rutApoderado2"/></fo:block>
                                     </xsl:when>

                                     <xsl:when test="$rutApoderado2 = ''">
                                       <fo:block font-family="Helvetica" font-size="11pt" text-align="right">Rut:__________________ </fo:block>
                                     </xsl:when>
                                   </xsl:choose>
                                   </fo:block>
                          </fo:table-cell>                                          
                      </fo:table-row>
                </fo:table-body>              
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block> 
              
              <fo:table border-collapse="collapse" text-align="center">
                  <fo:table-column column-width="95mm"/>
                  <fo:table-column column-width="95mm"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:inline font-size="10pt" font-weight="bold">________________________</fo:inline></fo:block>
                                  <fo:block font-family="Helvetica" font-size="11pt" text-align="left">Firma Representante Legal</fo:block>
                                  <fo:block font-family="Helvetica" font-size="11pt" text-align="left">
                                   <xsl:variable name="rutApoderado3" select="rutApoderado3" />
                                   <xsl:choose>
                                     <xsl:when test="$rutApoderado3 != ''">
                                  <fo:block font-family="Helvetica" font-size="11pt" text-align="left">Rut: <xsl:value-of select="rutApoderado3"/></fo:block>
                                     </xsl:when>

                                     <xsl:when test="$rutApoderado3 = ''">
                                       <fo:block font-family="Helvetica" font-size="11pt" text-align="left">Rut:__________________ </fo:block>
                                     </xsl:when>
                                   </xsl:choose>
                                   </fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt" text-align="right"><fo:inline font-size="10pt" font-weight="bold">________________________</fo:inline></fo:block>
                                  <fo:block font-family="Helvetica" font-size="11pt" text-align="right">Firma Representante Legal</fo:block>
                                  <fo:block font-family="Helvetica" font-size="11pt" text-align="right">
                                   <xsl:variable name="rutApoderado4" select="rutApoderado4" />
                                   <xsl:choose>
                                     <xsl:when test="$rutApoderado4 != ''">
                                  <fo:block font-family="Helvetica" font-size="11pt" text-align="right">Rut: <xsl:value-of select="rutApoderado4"/></fo:block>
                                     </xsl:when>

                                     <xsl:when test="$rutApoderado4 = ''">
                                       <fo:block font-family="Helvetica" font-size="11pt" text-align="right">Rut:__________________ </fo:block>
                                     </xsl:when>
                                   </xsl:choose>
                                   </fo:block>
                          </fo:table-cell>                                          
                      </fo:table-row>
                </fo:table-body>              
              </fo:table>  
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block> 
                                                 
              <fo:table border-collapse="collapse" font-size="14pt" font-family="Helvetica">
                  <fo:table-column/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell>
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="10cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.3mm" color="black"/></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>              
              <fo:table border-collapse="collapse" font-size="14pt" font-family="Helvetica">
                  <fo:table-column/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell>
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >FIRMA</fo:block>
                              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="center">R.U.T<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(rutCliente, "###.###.###","rut")' />-<xsl:value-of select="dvCliente" /></fo:inline></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                            
              <fo:block font-weight="bold" font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >NOTARIO</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >Con esta fecha autorizo la(s) firma(s) del (de los) Sr(es):</fo:block>
              
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

              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify">En representación de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="nombreCompletoCliente" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>R.U.T<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(rutCliente, "###.###.###","rut")' />-<xsl:value-of select="dvCliente" /></fo:inline></fo:block>

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
              <fo:inline font-weight="bold"><xsl:value-of select="anio" /></fo:inline>
              </fo:block>              

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" font-size="14pt" font-family="Helvetica">
                  <fo:table-column/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell>
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.3mm" color="black"/></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
              <fo:table border-collapse="collapse" font-size="14pt" font-family="Helvetica">
                  <fo:table-column/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell>
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >NOTARIO</fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	          </fo:flow>
	          </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>