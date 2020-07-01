<?xml version="1.0" encoding="ISO-8859-1"?>

<!DOCTYPE xml [<!ENTITY copy "&#169;"> <!ENTITY trade "&#8482;"> <!ENTITY trade "&#8364;"> <!ENTITY deg "&#x00b0;"> <!ENTITY gt "&#62;"> <!ENTITY sup2 "&#x00b2;"> <!ENTITY frac14 "&#x00bc;"> <!ENTITY quot "&#34;"> <!ENTITY frac12 "&#x00bd;"> <!ENTITY euro "&#x20ac;"> <!ENTITY Omega "&#937;"> ]> <!-- Document generated with XSLfast v2.0 alpha -->

<xsl:stylesheet xmlns:fox="http://xml.apache.org/fop/extensions" xmlns:print="http://www.jcatalog.com/com.jcatalog.output.xslextensions.print.PrintElementFactory" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:saxon="http://icl.com/saxon" extension-element-prefixes="saxon print" >
<xsl:decimal-format grouping-separator="." decimal-separator=","/>
<xsl:param name="imglogo"/>
<xsl:template match="CartolaFondosMutuos/EnvoltorioCartola">
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
  <fo:layout-master-set>
    <fo:simple-page-master master-name="pagemaster1" page-height="768.0pt" page-width="598.0pt">
      <fo:region-body margin-left="25pt" margin-top="20pt" margin-bottom="32pt" margin-right="27pt">
      </fo:region-body>
      <fo:region-before extent="20pt" precedence="true"/>
      <fo:region-after extent="32pt" precedence="true"/>
      <fo:region-start extent="25pt" precedence="false"/>
      <fo:region-end extent="27pt" precedence="false"/>
    </fo:simple-page-master>
  </fo:layout-master-set>
  <fo:page-sequence master-name="pagemaster1" master-reference="pagemaster1">
<fo:static-content flow-name="xsl-region-before">
</fo:static-content>
<fo:static-content flow-name="xsl-region-after">
</fo:static-content>
<fo:static-content flow-name="xsl-region-start">
</fo:static-content>
<fo:static-content flow-name="xsl-region-end">
</fo:static-content>
    <fo:flow flow-name="xsl-region-body">
    <fo:block/>
<!-- GENERATE TABLE START-->
<fo:block span="none">
<fo:table table-layout="fixed">
<fo:table-column column-width="260pt"/>
<fo:table-column column-width="127pt"/>
<fo:table-column column-width="152pt"/>
<fo:table-body>
<fo:table-row>
<fo:table-cell text-align="start" display-align="before">
<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-family="Arial" font-size="12.0pt" font-weight="bold">
<xsl:text>Ahorrar e Invertir</xsl:text></fo:block>
</fo:table-cell>
<fo:table-cell>
</fo:table-cell>
<fo:table-cell>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell number-columns-spanned="2" text-align="start" display-align="before">
<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-family="Arial" font-size="14.0pt" font-weight="bold">
<xsl:text>Cartola de Fondos Mutuos</xsl:text></fo:block>
</fo:table-cell>
<fo:table-cell>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell text-align="start" display-align="before">
<fo:block white-space-collapse="true"  text-align="start" color="#ffffff" font-family="Monospaced" font-size="12.0pt">
<xsl:text>y</xsl:text></fo:block>
</fo:table-cell>
<fo:table-cell>
</fo:table-cell>
<fo:table-cell>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell text-align="start" display-align="before">
<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-family="Arial" font-size="12.0pt">
<xsl:value-of disable-output-escaping="no" select="nombreCliente"/>
</fo:block>
</fo:table-cell>
<fo:table-cell>
</fo:table-cell>
<fo:table-cell>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell text-align="start" display-align="before">
<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-family="Arial" font-size="12.0pt">
<xsl:value-of disable-output-escaping="no" select="rutCliente"/>
</fo:block>
</fo:table-cell>
<fo:table-cell>
</fo:table-cell>
<fo:table-cell>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell text-align="start" display-align="before">
<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-family="Arial" font-size="12.0pt">
<xsl:value-of disable-output-escaping="no" select="fecha"/> hrs.&#160;
</fo:block>
</fo:table-cell>
<fo:table-cell>
</fo:table-cell>
<fo:table-cell>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell text-align="start" display-align="before">
<fo:block white-space-collapse="true"  text-align="start" color="#ffffff" font-family="Monospaced" font-size="12.0pt">
<xsl:text>t</xsl:text></fo:block>
</fo:table-cell>
<fo:table-cell>
</fo:table-cell>
<fo:table-cell>
</fo:table-cell>
</fo:table-row>
</fo:table-body>
</fo:table>
</fo:block><fo:block-container position="absolute" top="16pt" left="444pt" height="54.0pt" width="117.0pt" >
<fo:block >
<xsl:variable name="filename"><xsl:value-of disable-output-escaping="no" select="logo"/></xsl:variable>
<fo:external-graphic src="url( {$imglogo} )" position="relative" top="36pt" left="469pt"/>
</fo:block>
</fo:block-container>


<xsl:if test="fondosMutuos">
<fo:block span="none">
<fo:table table-layout="fixed" border-style="solid" border-color="#e1e1e1" border-width="0.5690551181102362pt" border-collapse="separate" >
<fo:table-column column-width="545pt"/>
<fo:table-header>
<fo:table-row>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" padding-bottom="2.8pt" text-align="start" display-align="before" background-color="#e6e6e6">
<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-family="Arial" font-size="12.0pt" font-weight="bold">
<xsl:text>Fondos Mutuos</xsl:text></fo:block>
</fo:table-cell>
</fo:table-row>
</fo:table-header>
<fo:table-body>
<fo:table-row>
<fo:table-cell>
<fo:block span="none">
<fo:table table-layout="fixed">
<fo:table-column column-width="245pt"/>
<fo:table-column column-width="100pt"/>
<fo:table-column column-width="100pt"/>
<fo:table-column column-width="100pt"/>
<fo:table-header>
<fo:table-row>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" padding-bottom="2.8pt" text-align="start" display-align="before" background-color="#ebebeb">
<fo:block white-space-collapse="true"  text-align="start" color="#717171" font-family="Arial" font-size="10.0pt">
<xsl:text>Nombre</xsl:text></fo:block>
</fo:table-cell>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" padding-bottom="2.8pt" text-align="start" display-align="before" background-color="#ebebeb">
<fo:block white-space-collapse="true"  text-align="start" color="#717171" font-family="Arial" font-size="10.0pt">
<xsl:text>Valor cuota</xsl:text></fo:block>
</fo:table-cell>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" padding-bottom="2.8pt" text-align="start" display-align="before" background-color="#ebebeb">
<fo:block white-space-collapse="true"  text-align="start" color="#717171" font-family="Arial" font-size="10.0pt">
<xsl:text>Saldo en cuotas</xsl:text></fo:block>
</fo:table-cell>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" padding-bottom="2.8pt" text-align="start" display-align="before" background-color="#ebebeb">
<fo:block white-space-collapse="true"  text-align="start" color="#717171" font-family="Arial" font-size="10.0pt">
<xsl:text>Saldo en moneda</xsl:text></fo:block>
</fo:table-cell>
</fo:table-row>
</fo:table-header>
<fo:table-body>
<xsl:for-each select="fondosMutuos/fondosMutuos_objecto">
<xsl:if test="position() mod 2 = 0">
<fo:table-row background-color="#eef5f5">
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" padding-bottom="2.8pt" text-align="start" display-align="before">
<fo:block white-space-collapse="true"  text-align="start" color="#0033cc" font-family="Arial" font-size="10.0pt">
<xsl:value-of disable-output-escaping="no" select="nombreCuentaFondoMutuo"/>
</fo:block>
</fo:table-cell>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" padding-bottom="2.8pt" text-align="start" display-align="before">
<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-family="Arial" font-size="10.0pt">
<xsl:text>$</xsl:text><xsl:value-of disable-output-escaping="no" select="valorCuotaActual"/>
</fo:block>
</fo:table-cell>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" padding-bottom="2.8pt" text-align="start" display-align="before">
<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-family="Arial" font-size="10.0pt">
<xsl:text>$</xsl:text><xsl:value-of disable-output-escaping="no" select="saldoEnCuotasTotal"/>
</fo:block>
</fo:table-cell>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" padding-bottom="2.8pt" text-align="start" display-align="before">
<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-family="Arial" font-size="10.0pt">
<xsl:text>$</xsl:text><xsl:value-of disable-output-escaping="no" select="saldoEnMonedaTotal"/>
</fo:block>
</fo:table-cell>
</fo:table-row>
</xsl:if>
<xsl:if test="position() mod 2 = 1">
<fo:table-row>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" padding-bottom="2.8pt" text-align="start" display-align="before">
<fo:block white-space-collapse="true"  text-align="start" color="#0033cc" font-family="Arial" font-size="10.0pt">
<xsl:value-of disable-output-escaping="no" select="nombreCuentaFondoMutuo"/>
</fo:block>
</fo:table-cell>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" padding-bottom="2.8pt" text-align="start" display-align="before">
<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-family="Arial" font-size="10.0pt">
<xsl:text>$</xsl:text><xsl:value-of disable-output-escaping="no" select="valorCuotaActual"/>
</fo:block>
</fo:table-cell>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" padding-bottom="2.8pt" text-align="start" display-align="before">
<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-family="Arial" font-size="10.0pt">
<xsl:text>$</xsl:text><xsl:value-of disable-output-escaping="no" select="saldoEnCuotasTotal"/>
</fo:block>
</fo:table-cell>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" padding-bottom="2.8pt" text-align="start" display-align="before">
<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-family="Arial" font-size="10.0pt">
<xsl:text>$</xsl:text><xsl:value-of disable-output-escaping="no" select="saldoEnMonedaTotal"/>
</fo:block>
</fo:table-cell>
</fo:table-row>
</xsl:if>
<xsl:if test="cuentasFondoMutuo">
<xsl:for-each select="cuentasFondoMutuo/cuentasFondoMutuo_objecto">
<fo:table-row>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" padding-bottom="2.8pt" text-align="start" display-align="before" background-color="#ebebeb">
<fo:block white-space-collapse="true"  text-align="start" color="#0033cc" font-family="Arial" font-size="10.0pt">
&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of disable-output-escaping="no" select="nombreCuenta"/>
</fo:block>
</fo:table-cell>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" padding-bottom="2.8pt" text-align="start" display-align="before" background-color="#ebebeb">
<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-family="Arial" font-size="10.0pt">
&#160;
</fo:block>
</fo:table-cell>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" padding-bottom="2.8pt" text-align="start" display-align="before" background-color="#ebebeb">
<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-family="Arial" font-size="10.0pt">
<xsl:text>$</xsl:text><xsl:value-of disable-output-escaping="no" select="saldoEnCuotasCuenta"/>
</fo:block>
</fo:table-cell>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" padding-bottom="2.8pt" text-align="start" display-align="before" background-color="#ebebeb">
<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-family="Arial" font-size="10.0pt">
<xsl:text>$</xsl:text><xsl:value-of disable-output-escaping="no" select="saldoEnMonedaCuenta"/>
</fo:block>
</fo:table-cell>
</fo:table-row>
</xsl:for-each>
</xsl:if>
</xsl:for-each></fo:table-body>
</fo:table>
</fo:block></fo:table-cell>
</fo:table-row>
</fo:table-body>
</fo:table>
</fo:block>
</xsl:if>

<!-- INICIO DE TOTALES -->
<fo:block span="none">
<fo:table table-layout="fixed" border-style="solid" border-color="#e1e1e1" border-width="0.5690551181102362pt" border-collapse="separate" >
<fo:table-column column-width="545pt"/>
<fo:table-body>
<fo:table-row>
<fo:table-cell>
<!-- GENERATE TABLE START-->
<fo:block span="none">
<fo:table table-layout="fixed">
<fo:table-column column-width="190pt"/>
<fo:table-column column-width="60pt"/>
<fo:table-column column-width="175pt"/>
<fo:table-column column-width="120pt"/>
<fo:table-body>
<fo:table-row>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" text-align="end" display-align="before">
<fo:block white-space-collapse="true"  text-align="end" color="#000000" font-family="Arial" font-size="10.0pt" font-weight="bold">
<xsl:text>Saldo Inversiones $ :</xsl:text></fo:block>
</fo:table-cell>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" text-align="start" display-align="before">
<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-family="Arial" font-size="10.0pt">
<xsl:value-of disable-output-escaping="no" select="saldoTotalEnPesos"/>
</fo:block>
</fo:table-cell>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" text-align="end" display-align="before">
<fo:block white-space-collapse="true"  text-align="end" color="#000000" font-family="Arial" font-size="10.0pt" font-weight="bold">
<xsl:text>&#160;</xsl:text></fo:block>
</fo:table-cell>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" text-align="start" display-align="before">
<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-family="Arial" font-size="10.0pt">
&#160;
</fo:block>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" text-align="end" display-align="before" background-color="#eef5f5">
<fo:block white-space-collapse="true"  text-align="end" color="#000000" font-family="Arial" font-size="10.0pt" font-weight="bold">
<xsl:text>Saldo Inversiones en US$ :</xsl:text></fo:block>
</fo:table-cell>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" text-align="start" display-align="before" background-color="#eef5f5">
<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-family="Arial" font-size="10.0pt">
<xsl:value-of disable-output-escaping="no" select="saldoTotalEnDolar"/>
</fo:block>
</fo:table-cell>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" text-align="end" display-align="before" background-color="#eef5f5">
<fo:block white-space-collapse="true"  text-align="end" color="#000000" font-family="Arial" font-size="10.0pt" font-weight="bold">
<xsl:text>Valor Actual US (Observado) $ :</xsl:text></fo:block>
</fo:table-cell>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" text-align="start" display-align="before" background-color="#eef5f5">
<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-family="Arial" font-size="10.0pt">
$ <xsl:value-of disable-output-escaping="no" select="valorDolar"/>
</fo:block>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" text-align="end" display-align="before">
<fo:block white-space-collapse="true"  text-align="end" color="#000000" font-family="Arial" font-size="10.0pt" font-weight="bold">
<xsl:text>Saldo Total $ :</xsl:text></fo:block>
</fo:table-cell>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" text-align="start" display-align="before">
<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-family="Arial" font-size="10.0pt">
<xsl:value-of disable-output-escaping="no" select="saldoTotalInversiones"/>
</fo:block>
</fo:table-cell>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" text-align="end" display-align="before">
<fo:block white-space-collapse="true"  text-align="end" color="#000000" font-family="Arial" font-size="10.0pt" font-weight="bold">
<xsl:text>&#160;</xsl:text></fo:block>
</fo:table-cell>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" text-align="start" display-align="before">
<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-family="Arial" font-size="10.0pt">
&#160;
</fo:block>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" text-align="end" display-align="before" background-color="#eef5f5">
<fo:block white-space-collapse="true"  text-align="end" color="#000000" font-family="Arial" font-size="10.0pt" font-weight="bold">
<xsl:text>&#160;</xsl:text></fo:block>
</fo:table-cell>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" text-align="start" display-align="before" background-color="#eef5f5">
<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-family="Arial" font-size="10.0pt">
&#160;
</fo:block>
</fo:table-cell>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" text-align="end" display-align="before" background-color="#eef5f5">
<fo:block white-space-collapse="true"  text-align="end" color="#000000" font-family="Arial" font-size="10.0pt" font-weight="bold">
<xsl:text>&#160;</xsl:text></fo:block>
</fo:table-cell>
<fo:table-cell padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" text-align="start" display-align="before" background-color="#eef5f5">
<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-family="Arial" font-size="10.0pt">
&#160;
</fo:block>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell number-columns-spanned="4" padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" text-align="justify" display-align="before">
<fo:block white-space-collapse="true"  text-align="justify" color="#000000" font-family="Arial" font-size="8.0pt" >
<xsl:value-of disable-output-escaping="no" select="textoLegal"/>
</fo:block>
</fo:table-cell>
</fo:table-row>
</fo:table-body>
</fo:table>
</fo:block></fo:table-cell>
</fo:table-row>
</fo:table-body>
</fo:table>
</fo:block><!-- GENERATE TABLE START-->
<fo:block span="none">
<fo:table table-layout="fixed">
<fo:table-column column-width="60pt"/>
<fo:table-body>
<fo:table-row>
<fo:table-cell text-align="start" display-align="before">
<fo:block white-space-collapse="true"  text-align="start" color="#ffffff" font-family="Monospaced" font-size="12.0pt">
<xsl:text>t</xsl:text></fo:block>
</fo:table-cell>
</fo:table-row>
</fo:table-body>
</fo:table>
</fo:block><!-- GENERATE TABLE START-->
<fo:block span="none">
</fo:block>
</fo:flow>
  </fo:page-sequence>
</fo:root>
</xsl:template>
<xsl:template match="b">
 <fo:inline font-weight="bold"><xsl:apply-templates/></fo:inline>
</xsl:template>
<xsl:template match="u">
 <fo:inline text-decoration="underline"><xsl:apply-templates/></fo:inline>
</xsl:template>
<xsl:template match="i">
 <fo:inline font-style="italic"><xsl:apply-templates/></fo:inline>
</xsl:template>
<xsl:template match="s">
 <fo:inline font-size="{@s}"><xsl:apply-templates/></fo:inline>
</xsl:template>
<xsl:template match="UP">
 <fo:inline vertical-align="super"><xsl:apply-templates/></fo:inline>
</xsl:template>
<xsl:template match="DN">
 <fo:inline vertical-align="sub"><xsl:apply-templates/></fo:inline>
</xsl:template>
<xsl:template match="sup">
 <fo:inline vertical-align="super"><xsl:apply-templates/></fo:inline>
</xsl:template>
<xsl:template match="sub">
 <fo:inline vertical-align="sub"><xsl:apply-templates/></fo:inline>
</xsl:template>
</xsl:stylesheet>