<?xml version="1.0" encoding="iso-8859-1"?>
<!-- <== version: 2012/04/26 12:00 ==>-->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />

    <xsl:param name="IMG_URL"/>

    <xsl:template match="ref_creditos_otorgados">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="20mm" margin-left="30mm" margin-right="30mm"><fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="miCarta" font-size="9pt" font-family="Helvetica">
           
           <!--   AQUI COMIENZA COPIA BANCO  -->
           <fo:flow flow-name="xsl-region-body" font-size="10pt" font-family="Helvetica">
           
            <fo:table border-collapse="collapse" text-align="right">
                <fo:table-column column-width="200mm" />

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
                            
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="center" >  <fo:inline font-weight="bold">DOCUMENTOS NECESARIOS PARA REFINANCIAR CREDITOS OTORGADOS</fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">POR OTRAS INSTITUCIONES</fo:inline></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              

              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >Los antecedentes que debe acompañar el interesado para refinanciar un Crédito Comercial o Consumo proveniente de otra institución son los siguientes:</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >1.- Antecedentes Comunes:</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" ><fo:leader leader-pattern="space" leader-length="3mm"/>- Solicitar en el Banco Acreedor (que mantiene el crédito que se prepaga)</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" ><fo:leader leader-pattern="space" leader-length="3mm"/>- Liquidación de Prepago</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" ><fo:leader leader-pattern="space" leader-length="3mm"/>- Certificado 20.130</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >2.- Si la operación de crédito involucra la constitución de una hipoteca vigente en otra institución financiera, deberá acompañar además:</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" ><fo:leader leader-pattern="space" leader-length="3mm"/>- Escritura de Compraventa.</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" ><fo:leader leader-pattern="space" leader-length="3mm"/>- Última Escritura de su Crédito o Hipoteca.</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" ><fo:leader leader-pattern="space" leader-length="3mm"/>- Certificado de Contribuciones (en la página www.sii.cl o www.tesoreria.cl)</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>              

              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >Solicitar en el Conservador Bienes Raíces:</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >- Certificado de Dominio Vigente (60 días)</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >- Certificado de Gravámenes y Prohibiciones vigentes (60 días)</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >Solicitar en Registro Civil:</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >- Certificado de Dominio Vigente (60 días)</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >- Certificado de Gravámenes y Prohibiciones vigentes (60 días)</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>              
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >Solicitar en Registro Civil:</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >- Certificado de Matrimonio con anotaciones.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>               
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >3.- Si la operación de crédito involucra la constitución de una prenda vigente en otra institución financiera, deberá acompañar además:</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >Solicitar en el Registro Civil o Conservador de Bienes Raices, según tipo de prenda:</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >- Certificado de Anotaciones</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >Solicitar en el Banco Acreedor:</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >- Escritura de Constitución de la Prenda</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >NOTA: Si el refinanciamiento fuese de carácter interno (BCI) los antecedentes podrán obtenerse internamente por el banco.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >Estoy en pleno conocimiento de que he sido informado correctamente de la documentación que debo presentar en Banco Bci para refinanciar mi Crédito Comercial o Consumo.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >
              Fecha<fo:leader leader-pattern="space" leader-length="1mm"/>
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

              <fo:leader leader-pattern="space" leader-length="1mm"/>del año<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="anio" /></fo:inline>
              </fo:block>              

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:table border-collapse="collapse" font-size="12pt" font-family="Helvetica">
                  <fo:table-column />
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell >
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="10cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" font-size="14pt" font-family="Helvetica">
                  <fo:table-column />
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell >
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >Firma Cliente</fo:block>
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

              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="right" >Original Banco</fo:block>
	          </fo:flow>
	          </fo:page-sequence>              
            <!--   AQUI TERMINA COPIA BANCO  -->  
            
            <!--   AQUI COMIENZA COPIA CLIENTE  -->  
            <fo:page-sequence master-reference="miCarta">
           <fo:flow flow-name="xsl-region-body" font-size="10pt" font-family="Helvetica">
           
            <fo:table border-collapse="collapse" text-align="right">
                <fo:table-column column-width="200mm" />

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
                            
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="center" >  <fo:inline font-weight="bold">DOCUMENTOS NECESARIOS PARA REFINANCIAR CREDITOS OTORGADOS</fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">POR OTRAS INSTITUCIONES</fo:inline></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              

              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >Los antecedentes que debe acompañar el interesado para refinanciar un Crédito Comercial o Consumo proveniente de otra institución son los siguientes:</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >1.- Antecedentes Comunes:</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" ><fo:leader leader-pattern="space" leader-length="1mm"/>- Solicitar en el Banco Acreedor (que mantiene el crédito que se prepaga)</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" ><fo:leader leader-pattern="space" leader-length="1mm"/>- Liquidación de Prepago</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" ><fo:leader leader-pattern="space" leader-length="1mm"/>- Certificado 20.130</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >2.- Si la operación de crédito involucra la constitución de una hipoteca vigente en otra institución financiera, deberá acompañar además:</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" ><fo:leader leader-pattern="space" leader-length="1mm"/>- Escritura de Compraventa.</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" ><fo:leader leader-pattern="space" leader-length="1mm"/>- Última Escritura de su Crédito o Hipoteca.</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" ><fo:leader leader-pattern="space" leader-length="1mm"/>- Certificado de Contribuciones (en la página www.sii.cl o www.tesoreria.cl)</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>              

              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >Solicitar en el Conservador Bienes Raíces:</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >- Certificado de Dominio Vigente (60 días)</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >- Certificado de Gravámenes y Prohibiciones vigentes (60 días)</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >Solicitar en Registro Civil:</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >- Certificado de Dominio Vigente (60 días)</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >- Certificado de Gravámenes y Prohibiciones vigentes (60 días)</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>              
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >Solicitar en Registro Civil:</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >- Certificado de Matrimonio con anotaciones.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>               
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >3.- Si la operación de crédito involucra la constitución de una prenda vigente en otra institución financiera, deberá acompañar además:</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >Solicitar en el Registro Civil o Conservador de Bienes Raices, según tipo de prenda:</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >- Certificado de Anotaciones</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >Solicitar en el Banco Acreedor:</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >- Escritura de Constitución de la Prenda</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >NOTA: Si el refinanciamiento fuese de carácter interno (BCI) los antecedentes podrán obtenerse internamente por el banco.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >Estoy en pleno conocimiento de que he sido informado correctamente de la documentación que debo presentar en Banco Bci para refinanciar mi Crédito Comercial o Consumo.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >
              Fecha<fo:leader leader-pattern="space" leader-length="1mm"/>
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

              <fo:leader leader-pattern="space" leader-length="1mm"/>del año<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="anio" /></fo:inline>
              </fo:block>              

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:table border-collapse="collapse" font-size="14pt" font-family="Helvetica">
                  <fo:table-column />
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell >
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="10cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" font-size="10pt" font-family="Helvetica">
                  <fo:table-column />
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell >
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >Firma Cliente</fo:block>
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

              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="right" >Copia Cliente</fo:block>
              </fo:flow>

            <!--   AQUI TERMINA COPIA CLIENTE  -->            
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>