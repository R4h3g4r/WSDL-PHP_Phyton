<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2006/08/23 12:15 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">

    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />

    <xsl:param name="IMG_URL"/>


    <xsl:template match="prueba">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="10mm" margin-left="10mm" margin-right="10mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="miCarta">

















              <!--AQUI COMIENZA EL CALENDARIO DE PAGOS-->
            <!--
                <fo:flow flow-name="xsl-region-body">




                        <fo:block font-family="Helvetica" line-height="4.5mm" font-size="12pt" text-align="left" >Cuota  <fo:leader leader-pattern="space" leader-length="10mm"/>Fecha de    <fo:leader leader-pattern="space" leader-length="15mm"/> Amortización en</fo:block>
                        <fo:block font-family="Helvetica" line-height="4.5mm" font-size="12pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="4mm"/>Nº<fo:leader leader-pattern="space" leader-length="10mm"/><fo:leader leader-pattern="space" leader-length="1mm"/>Vencimiento    <fo:leader leader-pattern="space" leader-length="20mm"/>   UF</fo:block>

                        <xsl:for-each select="CalendarioPago">

                        <xsl:variable name="mes" select="substring(fecVencPago,4,2)" />
                            <fo:table border-collapse="collapse" text-align="left" >
                                <fo:table-column column-width="15mm" />
                                <fo:table-column column-width="45mm" />
                                <fo:table-column />
                                <fo:table-body>
                                    <fo:table-row>

                                          <fo:table-cell >
                                                      <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ><xsl:value-of select="numVencimiento" />°</fo:block>
                                          </fo:table-cell>



                                          <fo:table-cell >
                                                      <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >
                                                          <fo:inline font-weight="bold"><xsl:value-of select="substring(fecVencPago,0,3)" /></fo:inline>/<fo:inline font-weight="bold">
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
                                                          </fo:inline>/<fo:inline font-weight="bold"><xsl:value-of select="substring(fecVencPago,7,4)" /></fo:inline>
                                                      </fo:block>
                                          </fo:table-cell>




                                          <fo:table-cell >
                                                       <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/><xsl:value-of select='format-number(cuota, "###.###.###,000","decimal")' /> </fo:block>
                                          </fo:table-cell>



                                    </fo:table-row>
                              </fo:table-body>
                            </fo:table>






                        </xsl:for-each>





          </fo:flow>-->
<!--AQUI TERMINA EL CALENDARIO DE PAGOS-->


      </fo:page-sequence>


  </fo:root>
</xsl:template>
</xsl:stylesheet>
