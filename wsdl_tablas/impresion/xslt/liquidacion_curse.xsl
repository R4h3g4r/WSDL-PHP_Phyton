<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2006/08/23 12:15 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />

   <!-- <xsl:param name="IMG_URL"/> -->

    <xsl:template match="liquidacion_curse">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="8.500in" page-height="11.000in">
			<fo:region-body region-name="xsl-region-body" margin="0.700in" />
			<fo:region-before region-name="xsl-region-before" display-align="after" extent="0.700in"/>
			<fo:region-after region-name="xsl-region-after" display-align="before" extent="0.700in"/>
			<fo:region-start region-name="xsl-region-start" extent="0.700in"/>
			<fo:region-end region-name="xsl-region-end" extent="0.700in"/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="miCarta" font-size="9pt" font-family="Helvetica">
            	 <fo:static-content flow-name="xsl-region-before" border-bottom-style="solid" border-bottom-width="3pt" border-bottom-color="rgb(192,192,192)" font-size="10pt" font-family="Helvetica">
                  <fo:block color="rgb(105,105,105)" text-align-last="justify">
                      BCI-Liquidación Curse
                      <fo:leader/>
                      <fo:block font-size="10pt" font-weight="normal" text-align="left">
                         Pagina <fo:page-number/> de <fo:page-number-citation ref-id="theEnd"/>
                      </fo:block>
                  </fo:block>
               </fo:static-content>
               
     <fo:static-content flow-name="xsl-region-after" padding-top="2pt" border-top-style="solid" border-top-width="1pt" border-top-color="rgb(192,192,192)" font-size="10pt" font-family="Helvetica">
      <fo:table table-layout="fixed" width="100%">
        <fo:table-column column-width="proportional-column-width(4)"/>
        <fo:table-column column-width="proportional-column-width(1)"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell>
              <fo:block color="rgb(105,105,105)">
                Todos los derechos reservados por Banco de Crédito e Inversiones.
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
    </fo:static-content>
		<fo:flow flow-name="xsl-region-body" font-family="Helvetica" font-size="8pt">
			<fo:block text-align="center" font-size="20pt" color="rgb(0,176,80)">
<fo:block>
<fo:inline color="rgb(0,0,128)" font-size="22pt"><fo:table table-layout="fixed" width="100%" border-collapse="collapse">
<fo:table-column column-width="proportional-column-width(22.858)" column-number="1"/>
<fo:table-column column-width="proportional-column-width(77.142)" column-number="2"/>
<fo:table-body>
<fo:table-row>
    <fo:table-cell>
      <fo:block text-align="left">
<fo:external-graphic  width="1.352in"   height="0.624in" vertical-align="middle">
    <xsl:attribute name="src">
	  <xsl:value-of select="LiquidacionCurse/logoTopBci"/>
    </xsl:attribute>
</fo:external-graphic>  
      </fo:block>
    </fo:table-cell><fo:table-cell>
    <fo:block> </fo:block>
<fo:block text-align="left" font-size="27pt">&#x00A0;&#x00A0;Resumen de Créditos
</fo:block>
                </fo:table-cell></fo:table-row>
</fo:table-body>
</fo:table></fo:inline></fo:block>
<fo:block ><fo:inline color="rgb(0,0,128)" font-size="14pt" font-family="Helvetica">LIQUIDACION DE CURSE</fo:inline></fo:block></fo:block>
			<fo:block text-align="center" font-size="20pt" color="rgb(0,176,80)">&#x00A0;</fo:block>
			<fo:block text-align="left" border-left-style="none" border-left-width="0px" border-left-color="" border-top-style="none" border-top-width="0px" border-top-color="" border-right-style="none" border-right-width="0px" border-right-color="" border-bottom-style="none" border-bottom-width="0px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(51,51,153)" color="rgb(255,255,255)" font-size="11pt">&#x00A0;&#x00A0;&#x00A0;DETALLE LIQUIDACION CREDITO</fo:block>
			<fo:block text-align="center"><fo:table table-layout="fixed" width="100%" border-collapse="collapse">
<fo:table-column column-width="proportional-column-width(25)" column-number="1"/>
<fo:table-column column-width="proportional-column-width(25)" column-number="2"/>
<fo:table-column column-width="proportional-column-width(25)" column-number="3"/>
<fo:table-column column-width="proportional-column-width(25)" column-number="4"/>
<fo:table-body>
<fo:table-row>
                <fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block>
										<fo:block border-left-style="none" border-left-width="0px" border-left-color="" border-top-style="none" border-top-width="0px" border-top-color="" border-right-style="none" border-right-width="0px" border-right-color="" border-bottom-style="none" border-bottom-width="0px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Oficina :
									</fo:block>
								</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/glosaOficina" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="0px" border-left-color="" border-top-style="none" border-top-width="0px" border-top-color="" border-right-style="none" border-right-width="0px" border-right-color="" border-bottom-style="none" border-bottom-width="0px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Valor Capital Vcto. :
								</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                 <fo:block>
									<fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/saldoValorCapitalVcmto" /></fo:block>
								</fo:block>
								</fo:table-cell></fo:table-row>
								<fo:table-row>
                <fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block>
								<fo:block border-left-style="none" border-left-width="0px" border-left-color="" border-top-style="none" border-top-width="0px" border-top-color="" border-right-style="none" border-right-width="0px" border-right-color="" border-bottom-style="none" border-bottom-width="0px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Tipo Operación :
								</fo:block>
								</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/glosaTipoClaseOperacion" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="0px" border-left-color="" border-top-style="none" border-top-width="0px" border-top-color="" border-right-style="none" border-right-width="0px" border-right-color="" border-bottom-style="none" border-bottom-width="0px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Monto Credito :
								</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block>
								<fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/montoCredito" /></fo:block>
								</fo:block>
                </fo:table-cell></fo:table-row>
								<fo:table-row>
                <fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block>
								<fo:block>
								<fo:block border-left-style="none" border-left-width="1px" border-left-color="" border-top-style="none" border-top-width="1px" border-top-color="" border-right-style="none" border-right-width="1px" border-right-color="" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Moneda :
								</fo:block>
								</fo:block>
								</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"> <xsl:value-of select="LiquidacionCurse/glosaMoneda" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="" border-top-style="none" border-top-width="1px" border-top-color="" border-right-style="none" border-right-width="1px" border-right-color="" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">% Valor de Cambio :
								</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block>
								<fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/valorCambio" /></fo:block>
								</fo:block>
                </fo:table-cell></fo:table-row>
								<fo:table-row>
                <fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block>
								<fo:block>
								<fo:block border-left-style="none" border-left-width="1px" border-left-color="" border-top-style="none" border-top-width="1px" border-top-color="" border-right-style="none" border-right-width="1px" border-right-color="" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Nombre Cliente :
								</fo:block>
								</fo:block>
								</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/nombreCliente" /> </fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="" border-top-style="none" border-top-width="1px" border-top-color="" border-right-style="none" border-right-width="1px" border-right-color="" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Intereses :
								</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block>
								<fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/valorIntereses" /></fo:block>
								</fo:block>
                </fo:table-cell></fo:table-row>
								<fo:table-row>
                <fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block>
								<fo:block border-left-style="none" border-left-width="1px" border-left-color="" border-top-style="none" border-top-width="1px" border-top-color="" border-right-style="none" border-right-width="1px" border-right-color="" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Dirección :
								</fo:block>
								</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/direccionCliente" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="" border-top-style="none" border-top-width="1px" border-top-color="" border-right-style="none" border-right-width="1px" border-right-color="" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Fecha Colocación :
								</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block>
								<fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/fechaColocacion" /></fo:block>
								</fo:block>
                </fo:table-cell></fo:table-row>
								<fo:table-row>
                <fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block>
								<fo:block border-left-style="none" border-left-width="1px" border-left-color="" border-top-style="none" border-top-width="1px" border-top-color="" border-right-style="none" border-right-width="1px" border-right-color="" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Rut Cliente :
								</fo:block>
								</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/rutCliente" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="" border-top-style="none" border-top-width="1px" border-top-color="" border-right-style="none" border-right-width="1px" border-right-color="" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Valor Comision :
								</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block>
								<fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/valorComision" /></fo:block>
								</fo:block>
                </fo:table-cell></fo:table-row>
								<fo:table-row>
                <fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block>
								<fo:block border-left-style="none" border-left-width="1px" border-left-color="" border-top-style="none" border-top-width="1px" border-top-color="" border-right-style="none" border-right-width="1px" border-right-color="" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Comuna :
								</fo:block>
								</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/glosaComuna" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="rgb(0,0,0)" border-top-style="none" border-top-width="1px" border-top-color="rgb(0,0,0)" border-right-style="none" border-right-width="1px" border-right-color="rgb(0,0,0)" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="rgb(0,0,0)" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Tasa Base :
								</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block>
								<fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/valorTasaBase" /></fo:block>
								</fo:block>
                </fo:table-cell></fo:table-row>
								<fo:table-row>
                <fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block>
								<fo:block border-left-style="none" border-left-width="1px" border-left-color="" border-top-style="none" border-top-width="1px" border-top-color="" border-right-style="none" border-right-width="1px" border-right-color="" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Ciudad :
								</fo:block>
								</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/glosaCiudad" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="rgb(0,0,0)" border-top-style="none" border-top-width="1px" border-top-color="rgb(0,0,0)" border-right-style="none" border-right-width="1px" border-right-color="rgb(0,0,0)" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="rgb(0,0,0)" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Gastos :
								</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block>
								<fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/valorGastos" /></fo:block>
								</fo:block>
                </fo:table-cell></fo:table-row>
								<fo:table-row>
                <fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="" border-top-style="none" border-top-width="1px" border-top-color="" border-right-style="none" border-right-width="1px" border-right-color="" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Telefono : </fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/telefono" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="rgb(0,0,0)" border-top-style="none" border-top-width="1px" border-top-color="rgb(0,0,0)" border-right-style="none" border-right-width="1px" border-right-color="rgb(0,0,0)" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="rgb(0,0,0)" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Gastos Notario :</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/valorgastosNotario" /></fo:block>
                </fo:table-cell></fo:table-row>
                <fo:table-row>
                <fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="" border-top-style="none" border-top-width="1px" border-top-color="" border-right-style="none" border-right-width="1px" border-right-color="" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Ej. Comercial :</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/nombreEjecutivo" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="rgb(0,0,0)" border-top-style="none" border-top-width="1px" border-top-color="rgb(0,0,0)" border-right-style="none" border-right-width="1px" border-right-color="rgb(0,0,0)" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="rgb(0,0,0)" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Cargo o Abono :</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/glosaCargoAbono" /></fo:block>
                </fo:table-cell></fo:table-row>
                <fo:table-row>
                <fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="" border-top-style="none" border-top-width="1px" border-top-color="" border-right-style="none" border-right-width="1px" border-right-color="" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">N° Operación : </fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/numOperacion" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="rgb(0,0,0)" border-top-style="none" border-top-width="1px" border-top-color="rgb(0,0,0)" border-right-style="none" border-right-width="1px" border-right-color="rgb(0,0,0)" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="rgb(0,0,0)" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Monto cargo o Abono :</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/montoCargoAbono" /></fo:block>
                </fo:table-cell></fo:table-row>
                <fo:table-row>
                <fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="" border-top-style="none" border-top-width="1px" border-top-color="" border-right-style="none" border-right-width="1px" border-right-color="" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Tipo Tasa :</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/glosaTasa" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="rgb(0,0,0)" border-top-style="none" border-top-width="1px" border-top-color="rgb(0,0,0)" border-right-style="none" border-right-width="1px" border-right-color="rgb(0,0,0)" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="rgb(0,0,0)" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left"><xsl:value-of select="LiquidacionCurse/glosaSeguroDesgravamenDeudorDirecto" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/valorSeguroDesgravamen" /></fo:block>
                </fo:table-cell></fo:table-row>                
                <fo:table-row>
                <fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="" border-top-style="none" border-top-width="1px" border-top-color="" border-right-style="none" border-right-width="1px" border-right-color="" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Tasa Interes (TI) :</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/tasaInteres" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="rgb(0,0,0)" border-top-style="none" border-top-width="1px" border-top-color="rgb(0,0,0)" border-right-style="none" border-right-width="1px" border-right-color="rgb(0,0,0)" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="rgb(0,0,0)" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left"><xsl:value-of select="LiquidacionCurse/glosaSeguroDesgravamenAval" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/valorSeguroDesgravamenAval" /></fo:block>
                </fo:table-cell></fo:table-row>
                <fo:table-row>
                <fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="" border-top-style="none" border-top-width="1px" border-top-color="" border-right-style="none" border-right-width="1px" border-right-color="" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Base Calculo TI : </fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/glosaBaseCalculoTasa" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="rgb(0,0,0)" border-top-style="none" border-top-width="1px" border-top-color="rgb(0,0,0)" border-right-style="none" border-right-width="1px" border-right-color="rgb(0,0,0)" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="rgb(0,0,0)" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left"><xsl:value-of select="LiquidacionCurse/glosaSeguroRentaHospitalaria" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/valorSeguroRentaHospitalaria" /></fo:block>
                </fo:table-cell></fo:table-row>
                <fo:table-row>
                <fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="" border-top-style="none" border-top-width="1px" border-top-color="" border-right-style="none" border-right-width="1px" border-right-color="" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Periodo Base TI : </fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/glosaperiodoBaseTasa" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="rgb(0,0,0)" border-top-style="none" border-top-width="1px" border-top-color="rgb(0,0,0)" border-right-style="none" border-right-width="1px" border-right-color="rgb(0,0,0)" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="rgb(0,0,0)" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left"><xsl:value-of select="LiquidacionCurse/glosaSeguroEnfermedadesGraves" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/valorSeguroEnfermedadesGraves" /></fo:block>
                </fo:table-cell></fo:table-row>
                <fo:table-row>
                <fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="" border-top-style="none" border-top-width="1px" border-top-color="" border-right-style="none" border-right-width="1px" border-right-color="" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Modalidad Calculo TI : </fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/glosaModalidadCalculoTasa" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="rgb(0,0,0)" border-top-style="none" border-top-width="1px" border-top-color="rgb(0,0,0)" border-right-style="none" border-right-width="1px" border-right-color="rgb(0,0,0)" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="rgb(0,0,0)" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left"><xsl:value-of select="LiquidacionCurse/glosaSeguroDobleCapital" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/valorSeguroDobleCapital" /></fo:block>
                </fo:table-cell></fo:table-row>
                <fo:table-row>
                <fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="" border-top-style="none" border-top-width="1px" border-top-color="" border-right-style="none" border-right-width="1px" border-right-color="" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Codigo Valor TI : </fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/glosaCodigoValorTasa" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="rgb(0,0,0)" border-top-style="none" border-top-width="1px" border-top-color="rgb(0,0,0)" border-right-style="none" border-right-width="1px" border-right-color="rgb(0,0,0)" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="rgb(0,0,0)" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left"><xsl:value-of select="LiquidacionCurse/glosaSeguroCesantiaNuevo" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/valorSeguroCesantiaNuevo" /></fo:block>
                </fo:table-cell></fo:table-row>
                                <fo:table-row>
                <fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="" border-top-style="none" border-top-width="1px" border-top-color="" border-right-style="none" border-right-width="1px" border-right-color="" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Fecha Periodo Repacto (PR) :</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/glosaFechaPeriodoRepacto" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="rgb(0,0,0)" border-top-style="none" border-top-width="1px" border-top-color="rgb(0,0,0)" border-right-style="none" border-right-width="1px" border-right-color="rgb(0,0,0)" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="rgb(0,0,0)" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left"><xsl:value-of select="LiquidacionCurse/glosaSeguroCesantiaAntiguo" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/valorSeguroCesantiaAntiguo" /></fo:block>
                </fo:table-cell></fo:table-row>
                <fo:table-row>
                <fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="" border-top-style="none" border-top-width="1px" border-top-color="" border-right-style="none" border-right-width="1px" border-right-color="" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">N° Periodo Repacto : </fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/numPeriodoRepacto" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="rgb(0,0,0)" border-top-style="none" border-top-width="1px" border-top-color="rgb(0,0,0)" border-right-style="none" border-right-width="1px" border-right-color="rgb(0,0,0)" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="rgb(0,0,0)" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Valor Impuesto :</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/valorImpuesto" /></fo:block>
                </fo:table-cell></fo:table-row>
                <fo:table-row>
                <fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="" border-top-style="none" border-top-width="1px" border-top-color="" border-right-style="none" border-right-width="1px" border-right-color="" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Unidad Tiempo (PR) :</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/glosaUnidadTiempoPeriodoRepacto" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="rgb(0,0,0)" border-top-style="none" border-top-width="1px" border-top-color="rgb(0,0,0)" border-right-style="none" border-right-width="1px" border-right-color="rgb(0,0,0)" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="rgb(0,0,0)" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">Valor Liquido :</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/valorLiquido" /></fo:block>
                </fo:table-cell></fo:table-row>
                <fo:table-row>
                <fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="" border-top-style="none" border-top-width="1px" border-top-color="" border-right-style="none" border-right-width="1px" border-right-color="" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">M. Valor Cambio :</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left"><xsl:value-of select="LiquidacionCurse/glosaValorCambio" /></fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block border-left-style="none" border-left-width="1px" border-left-color="rgb(0,0,0)" border-top-style="none" border-top-width="1px" border-top-color="rgb(0,0,0)" border-right-style="none" border-right-width="1px" border-right-color="rgb(0,0,0)" border-bottom-style="none" border-bottom-width="1px" border-bottom-color="rgb(0,0,0)" box-shadow="0px 0px  " background-color="rgb(192,192,192)" text-align="left">&#x00A0;</fo:block>
                </fo:table-cell><fo:table-cell text-align="center" border-top-style="none" border-left-style="none" border-right-style="none" border-bottom-style="none" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt" background-color="transparent" border-top-right-radius="0pt 0pt" border-top-left-radius="0pt 0pt" border-bottom-right-radius="0pt 0pt" border-bottom-left-radius="0pt 0pt">
                  <fo:block text-align="left">  </fo:block>
                </fo:table-cell></fo:table-row>
</fo:table-body>
</fo:table></fo:block>
			<fo:block text-align="center">&#x00A0;</fo:block>
			<fo:block text-align="center">&#x00A0;</fo:block>
			<fo:block text-align="center">&#x00A0;</fo:block>
			<fo:block text-align="center">&#x00A0;</fo:block>
			<fo:block text-align="center">&#x00A0;</fo:block>
			<fo:block text-align="center">&#x00A0;</fo:block>
			<fo:block text-align="center">&#x00A0;</fo:block>
			<fo:block text-align="center">&#x00A0;</fo:block>
			<fo:block text-align="center">&#x00A0;</fo:block>
			<fo:block text-align="center">&#x00A0;</fo:block>
		<fo:block id="theEnd"/>
		</fo:flow>
      </fo:page-sequence>
      </fo:root>
    </xsl:template>
</xsl:stylesheet>
