<?xml version="1.0" encoding="iso-8859-1"?>
<!-- <== version: 2012/04/26 12:00 ==>-->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />

    <xsl:param name="IMG_URL"/>

    <xsl:template match="anexo_carta_firme">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="20mm" margin-left="20mm" margin-right="20mm"><fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="miCarta" font-size="9pt" font-family="Helvetica">
           
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
                            
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="left" >  <fo:inline font-weight="bold">Anexo N°1</fo:inline></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">CARTA DE OFERTA A FIRME</fo:inline></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Los abajo firmantes, actuando en la representación que invisten, y para los efectos de lo dispuesto en el artículo 160 del D.F.L. N° 3, de 1997, declaramos bajo juramento que la institución financiera Banco de Crédito e Inversiones, con fecha<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="fechaCotizacion" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>ha aprobado el otorgamiento de una operación de financiamiento con la Cobertura CORFO<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="numeroOperacion" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>en las condiciones que más abajo se señalan a nombre de:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="nombreCompletoAval" /></fo:inline>RUT:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(rutAval, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="dvAval" /></fo:inline>, cuyo domicilio se encuentra en<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="dirAval" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>en la comuna de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="comAval" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="left"><fo:inline font-weight="bold">Características del financiamiento:</fo:inline></fo:block>
              
              <fo:block>
              <xsl:variable name="simboloMoneda" select="simboloMoneda" />
                <xsl:choose>
                  <xsl:when test="$simboloMoneda = 'UF'">
                     <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >Monto de la Operación:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(montoCredito, "###.###.##0,00","decimal")'/></fo:inline><fo:leader leader-pattern="space" leader-length="20mm"/>Moneda:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="simboloMoneda"/></fo:inline></fo:block>
                  </xsl:when>

                  <xsl:when test="$simboloMoneda = '$'">
                     <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >Monto de la Operación:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="montoCredito"/></fo:inline><fo:leader leader-pattern="space" leader-length="20mm"/>Moneda:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="simboloMoneda"/></fo:inline></fo:block>
                  </xsl:when>
              </xsl:choose>
              </fo:block>
              
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify">Plazo de la Operación:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="plazoCredito" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">mes(es)</fo:inline> </fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify">Período de Gracia estipulado:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="mesesDeGracia"/><!-- (<xsl:value-of select="mesNoPago1"/>, <xsl:value-of select="mesNoPago2"/>) --></fo:inline> mes(es) </fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify">Periodicidad de Pago contemplado:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="periodoEntreVcto" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="priodoEntreVctoExpresaEn" /></fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify">Tasa de interés de la Operación:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="tasaInteres" /></fo:inline>%</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify">Monto total y detalle de todos los gastos y comisiones directos o indirectos asociados a la operación de financiamiento:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="costoTotalCredito" /></fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify">Número de cuotas pactadas:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="plazoCredito" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">mes(es)</fo:inline> </fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify">Monto cuota fija pactada:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="valorCuota"/></fo:inline></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify">El financiamiento señalado se encuentra aprobado por un período de 7 días hábiles, contado desde la presente fecha, para los objetos previstos en la normativa de la Cobertura CORFO<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="numeroOperacion" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify">Autorizamos a CORFO o a quienes ésta designe, para realizar las revisiones y auditorías que correspondan, según lo estipulado en el Reglamento de la Cobertura respectiva.</fo:block>
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >
              En<fo:leader leader-pattern="space" leader-length="50mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
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
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify">Banco de Crédito e Inversiones</fo:block>

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" font-size="14pt" font-family="Helvetica">
                  <fo:table-column column-width="50%"/>
                  <fo:table-column column-width="50%"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.2mm" color="black"/></fo:block>
                          </fo:table-cell>
                          <fo:table-cell >
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.2mm" color="black"/></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >Firma Jefe</fo:block>
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >Plataforma/Centro/Oficina.</fo:block>
                          </fo:table-cell>
                          <fo:table-cell >
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >Firma Ejecutivo</fo:block>
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >Comercial / Moneda</fo:block>
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >Extranjera.</fo:block>
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
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="10cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.2mm" color="black"/></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" font-size="14pt" font-family="Helvetica">
                  <fo:table-column />
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell >
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >Firma Representante Legal Empresa</fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
	          </fo:flow>
	          </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>