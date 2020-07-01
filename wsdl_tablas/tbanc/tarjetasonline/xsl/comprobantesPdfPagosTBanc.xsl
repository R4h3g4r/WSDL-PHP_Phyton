<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="1.0">
  <xsl:template match="estado">
    <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
      <fo:layout-master-set>
        <fo:simple-page-master  master-name="first"
          margin-right="1cm"
          margin-left="1cm"
          margin-bottom="1cm"
          margin-top="1cm"
          page-width="21cm"
          page-height="29.7cm">
          <fo:region-body margin-top="1cm"/>
          <fo:region-before extent="1cm"/>
          <fo:region-after extent="1.5cm"/>
        </fo:simple-page-master>
      </fo:layout-master-set>
      <fo:page-sequence master-reference="first">
        <fo:static-content flow-name="xsl-region-before">
          <fo:block line-height="14pt" font-size="10pt" text-align="end"></fo:block>
        </fo:static-content>
        <fo:static-content flow-name="xsl-region-after">
          <fo:block line-height="14pt" font-size="10pt" text-align="end"></fo:block>
        </fo:static-content>
        <fo:flow flow-name="xsl-region-body">
          <fo:table>
            <fo:table-column column-width="21cm"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell padding-bottom="2pt">
                  <fo:block> </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>
          <fo:table>
            <fo:table-column column-width="21"/>
            <fo:table-body>
              <fo:table-row border-width="0.5pt">
                <fo:table-cell text-align="center">
                  <fo:block text-align="left" font-size="14pt" font-weight="bold" padding-bottom="5pt"> Comprobante de Pago de Tarjeta de Crédito Nacional. </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>
          <fo:block space-before.optimum="2pt" space-after.optimum="2pt"> </fo:block>

          <fo:table border-width="0.5pt">
            <fo:table-column column-width="21cm"/>
            <fo:table-body>
              <fo:table-row border-width="0.5pt">
                <fo:table-cell>
                  <fo:block text-align="left" font-size="9pt" padding-top="5pt"> Le recomendamos imprimir este comprobante para cualquier consulta posterior. </fo:block>
                </fo:table-cell>
              </fo:table-row>

            </fo:table-body>
          </fo:table>

          <fo:table>
            <fo:table-column column-width="7.2cm"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell padding-bottom="10pt">
                  <fo:block> </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>


          <fo:table>
            <fo:table-column column-width="5cm"/>
            <fo:table-column column-width="1cm"/>
            <fo:table-column column-width="9cm"/>
            <fo:table-body border-color="black" border-width="0.2pt">
              <fo:table-row>
                <fo:table-cell>
                  <fo:block text-align="left" padding-top="5pt" margin-left="2pt" font-size="10pt" font-weight="bold"> Comprobante Nro </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="left" padding-top="5pt" font-size="10pt"> : </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="left" padding-top="5pt" margin-right="3pt" font-size="10pt"> <xsl:value-of select="encabezado/comprobante/@value"/> </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block text-align="left" padding-top="5pt" margin-left="2pt" font-size="10pt" font-weight="bold"> Cliente </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="left" padding-top="5pt" font-size="10pt"> : </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="left" padding-top="5pt" margin-right="3pt" font-size="10pt"> <xsl:value-of select="encabezado/cliente/@value"/> </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block text-align="left" padding-top="5pt" margin-left="2pt" font-size="10pt" font-weight="bold"> Tarjeta de Crédito </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="left" padding-top="5pt" font-size="10pt"> : </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="left" padding-top="5pt" margin-right="3pt" font-size="10pt"> <xsl:value-of select="encabezado/logo/@value"/>-<xsl:value-of select="encabezado/tarjeta/@value"/> </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block text-align="left" padding-top="5pt" margin-left="2pt" font-size="10pt" font-weight="bold"> Cuenta de Cargo </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="left" padding-top="5pt" font-size="10pt"> : </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="left" padding-top="5pt" margin-right="3pt" font-size="10pt"> <xsl:value-of select="encabezado/cuenta/@value"/> </fo:block>
                </fo:table-cell>
              </fo:table-row>
	      <fo:table-row>
                <fo:table-cell>
                  <fo:block text-align="left" padding-top="5pt" margin-left="2pt" font-size="10pt" font-weight="bold"> Monto a Pagar </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="left" padding-top="5pt" font-size="10pt"> : </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="left" padding-top="5pt" margin-right="3pt" font-size="10pt"> $<xsl:value-of select="encabezado/monto/@value"/> </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table>
            <fo:table-column column-width="7.2cm"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell padding-bottom="2pt">
                  <fo:block> </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>
          <fo:table>
            <fo:table-column column-width="18cm"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell padding-top="2pt" margin-left="2pt" margin-right="2pt">
                  <fo:block text-align="right" font-size="10pt" font-weight="bold"> 
                  		<fo:external-graphic space-before.optimum="4pt" space-after.optimum="4pt">
            				<xsl:attribute name="src">url('<xsl:value-of select="encabezado/imagen/@value"/><xsl:text disable-output-escaping="yes">sello_tbanc.gif</xsl:text>')</xsl:attribute>
            			</fo:external-graphic>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

        </fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>
</xsl:stylesheet>