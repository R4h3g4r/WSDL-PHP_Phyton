<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

<xsl:param name="RUTAIMAGEN"/>

<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
<xsl:variable name="lineas">#CCCCCC</xsl:variable>
<xsl:variable name="txt">#000000</xsl:variable>
<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
<xsl:variable name="bg-amarillo">#FFFFDE</xsl:variable>
<xsl:variable name="bg-plomo">#E7E7E7</xsl:variable>

<xsl:template match="/">
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">





<!-- propiedades pagina -->
<fo:layout-master-set>
	<fo:simple-page-master master-name="pagina"
	page-height="28cm"
	page-width="24cm"
	margin-top="1cm"
	margin-bottom="1cm"
	margin-left="2cm"
	margin-right="2cm">
		<fo:region-body margin-top="2cm" margin-bottom="2.5cm" background-color="#ffffff"/> 
		<fo:region-before extent="3cm"/>
		<fo:region-after extent="2cm"/>
	</fo:simple-page-master>
</fo:layout-master-set>
<!-- propiedades pagina -->






<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">

<fo:static-content flow-name="xsl-region-before">
	<!-- imagen bci -->
	<fo:block space-after="3mm">
	    <fo:external-graphic src="url({$RUTAIMAGEN}/02-logo-bci.gif)"/>
	</fo:block>
	<!-- imagen bci -->
</fo:static-content>

<fo:static-content flow-name="xsl-region-after">
	<!-- Separador -->
	<fo:block space-after="1mm">
		<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="20cm"/>
	</fo:block>
	<!-- Separador -->
	<fo:block font-size="9pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">
	Para Consultas o Comentarios Comuníquese al 600 6928000
	</fo:block>
	<fo:block font-size="5pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
	Pagina <fo:page-number/>
	</fo:block>
</fo:static-content>

<fo:flow flow-name="xsl-region-body">
	<xsl:call-template name="contenido"/>
</fo:flow>

</fo:page-sequence> 
</fo:root>

</xsl:template>




<xsl:template name="contenido">


<!-- cabecera cliente -->

<fo:block font-size="5pt" space-after="1mm">
	<fo:table table-layout="fixed">
	<fo:table-column column-width="15cm"/>
	<fo:table-column column-width="5cm"/>
	<fo:table-body>
		<fo:table-row>
		<fo:table-cell>

			<!-- nombre cliente -->
				<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
					<xsl:value-of select="info/nombre"/>
				</fo:block>
			<!-- nombre cliente -->
		
		</fo:table-cell>
		<fo:table-cell>
	
			<!-- rut cliente -->
				<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
					<fo:inline color="{$txt}">RUT: </fo:inline>
					<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="info/rut"/></fo:inline>
				</fo:block>
			<!-- rut cliente -->

		</fo:table-cell>
		</fo:table-row>
	</fo:table-body>
	</fo:table>
</fo:block>

<!-- cabecera cliente -->





<!-- Separador -->

<fo:block space-after="2mm">
	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="20cm"/>
</fo:block>

<!-- Separador -->




<!-- Cartola -->
<fo:block>
	<fo:table table-layout="fixed">
	<fo:table-column column-width="5cm"/>
	<fo:table-column column-width="15cm"/>
	<fo:table-body>
		<fo:table-row >
		<fo:table-cell >

			<!-- titulo -->
				<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
					Estado de Cuenta
				</fo:block>
			<!-- titulo -->
		
		</fo:table-cell>
		<fo:table-cell >
	
			<!-- nro tarjeta -->
				<fo:block font-size="10pt" text-align="right" color="{$txt}">
				<fo:inline font-weight="normal">Nº Tarjeta: </fo:inline>
				<fo:inline font-weight="bold"><xsl:value-of select="info/nroTarjeta"/></fo:inline>
				</fo:block>
			<!-- nro tarjeta -->

		</fo:table-cell>
		</fo:table-row>
	</fo:table-body>
	</fo:table>
</fo:block>
<!-- Cartola -->




<!-- Separador -->
<fo:block>
	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="20cm"/>
</fo:block>
<!-- Separador -->




<!-- tabla detalle -->
<fo:block font-size="7pt" space-after="1.2mm" >
<fo:table table-layout="fixed">
<fo:table-column column-width="4cm" />
<fo:table-column column-width="1.6cm" />
<fo:table-column column-width="6cm" />
<fo:table-column column-width="2.2cm" />
<fo:table-column column-width="2cm" />
<fo:table-column column-width="2cm" />
<fo:table-column column-width="2.2cm" />
                           
	<fo:table-body>
	<fo:table-row>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="4mm" padding-after="2mm" text-align="left">
		&#0160;&#0160;Nº del Documento</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="left">
		&#0160;&#0160;Fecha &#0160;&#0160;Compra</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="4mm" padding-after="2mm" text-align="left">
		&#0160;&#0160;Descripción</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="4mm" padding-after="2mm" text-align="left">
		&#0160;&#0160;Ciudad</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="4mm" padding-after="2mm" text-align="left">
		&#0160;&#0160;País</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="left">
		&#0160;&#0160;Monto Mon &#0160;&#0160;Origen</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="4mm" padding-after="2mm" text-align="left">
		&#0160;&#0160;Monto en Us$</fo:block>
		</fo:table-cell>

	</fo:table-row>
	




	<xsl:for-each select="info/detalle">
	<fo:table-row text-align="right">

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="numeroDocumento"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="fechaCompra"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="descripcion"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="ciudad"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="pais"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="montoMonedaOrigen"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="monto"/>
		</fo:block>
		</fo:table-cell>


	</fo:table-row>
	</xsl:for-each>




                            
	</fo:table-body>
</fo:table>
<fo:block border="0.5pt solid {$lineas}" font-size="7pt" font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left" color="{$txt}" >
<xsl:value-of select="info/sinMovimiento"/>&#0160;&#0160;</fo:block>
<fo:block font-size="7pt" padding-before="1mm" padding-after="1mm" background-color="{$bg-plomo}" text-align="center" >
&#0160;
</fo:block>
</fo:block>
<!-- tabla detalle -->





	<!-- tabla -->
	<fo:block>
	<fo:table table-layout="fixed">
	<fo:table-column column-width="20cm" />
	<fo:table-body>

		<fo:table-row>

		<fo:table-cell background-color="{$bg-amarillo}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" font-size="8pt" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		Cancelar Hasta: <xsl:value-of select="info/fechaVencimiento"/> &#0160;&#0160;&#0160; Deuda Actual en Dólares Us$ : <xsl:value-of select="info/deudaTotal"/>&#0160;
		</fo:block>
		</fo:table-cell>

		</fo:table-row>
	</fo:table-body>
	</fo:table>
	</fo:block>

	<!-- tabla -->





</xsl:template>

</xsl:stylesheet>







