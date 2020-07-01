<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
<xsl:variable name="lineas">#CCCCCC</xsl:variable>
<xsl:variable name="txt">#000000</xsl:variable>
<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
<xsl:variable name="txt-celeste">#D9E4EF</xsl:variable>

<xsl:template match="/">
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">

<!-- propiedades pagina -->
<fo:layout-master-set>
	<fo:simple-page-master master-name="pagina"
	page-height="28cm"
	page-width="22cm"
	margin-top="1cm"
	margin-bottom="1cm"
	margin-left="2cm"
	margin-right="2cm">
		<fo:region-body margin-top="2.5cm" margin-bottom="2.5cm" background-color="#ffffff"/> 
		<fo:region-before extent="3cm"/>
		<fo:region-after extent="2cm"/>
	</fo:simple-page-master>
</fo:layout-master-set>
<!-- propiedades pagina -->

<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">

<fo:static-content flow-name="xsl-region-before">
	<!-- imagen bci -->
		<fo:block space-after="3mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="13cm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-body>
				<fo:table-row>
				<fo:table-cell>
				<fo:external-graphic>
					<xsl:attribute name="src">
						<xsl:value-of select="comex/rutaImagen"/>02-logo-bci.gif
					</xsl:attribute>
				</fo:external-graphic>
			</fo:table-cell>
			<fo:table-cell padding-before="1cm">
				<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
					<xsl:value-of select="comex/fechaImpresion"/>
				</fo:block>
			</fo:table-cell>
			</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	<!-- imagen bci -->
</fo:static-content>

<fo:static-content flow-name="xsl-region-after">
	<!-- Separador -->
	<fo:block space-after="1mm">
		<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
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
	<fo:table-column column-width="13cm"/>
	<fo:table-column column-width="5cm"/>
	<fo:table-body>
		<fo:table-row>
		<fo:table-cell>

			<!-- nombre cliente -->
				<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
					<xsl:value-of select="comex/nombre"/>
				</fo:block>
			<!-- nombre cliente -->
		
		</fo:table-cell>
		<fo:table-cell>
	
			<!-- rut cliente -->
				<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
					<fo:inline color="{$txt}">RUT: </fo:inline>
					<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="comex/rut"/></fo:inline>
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
	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
</fo:block>
<!-- Separador -->

<!-- Titulo -->
<fo:block>
	<fo:table table-layout="fixed">
	<fo:table-column column-width="18cm"/>
	<fo:table-body>
		<fo:table-row >
		<fo:table-cell >

			<!-- titulo -->
				<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
					Resumen COMEX
				</fo:block>
			<!-- titulo -->
		
		</fo:table-cell>

		</fo:table-row>
	</fo:table-body>
	</fo:table>
</fo:block>
<!-- titulo -->


<!-- Separador -->
<fo:block space-after="2mm">
	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
</fo:block>
<!-- Separador -->
<!-- ejecutivo -->

<fo:block font-size="5pt" space-after="1mm">
	<fo:table table-layout="fixed">
	<fo:table-column column-width="10cm"/>
	<fo:table-column column-width="8cm"/>
	<fo:table-body>
		<fo:table-row>
		<fo:table-cell>

			<fo:block font-size="9pt" text-align="left" color="{$txt}">
			<fo:external-graphic height="1mm" width="1mm">
			<xsl:attribute name="src">
				<xsl:value-of select="comex/rutaImagen"/>01-bullet1-rj.gif
			</xsl:attribute>
			</fo:external-graphic>
			&#0160;
			<fo:inline font-weight="normal" space-before="30pt">Ejecutivo: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="comex/ejecutivo"/></fo:inline>
			</fo:block>
				
		</fo:table-cell>
		<fo:table-cell>
	
			<fo:block font-size="9pt" text-align="left" color="{$txt}">
			<fo:inline font-weight="normal" space-before="30pt">Plataforma/Sucursal: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="comex/oficina"/></fo:inline>
			</fo:block>

		</fo:table-cell>
		</fo:table-row>
	</fo:table-body>
	</fo:table>
</fo:block>

<!-- ejecutivo -->


<!-- Separador -->
<fo:block space-after="2mm">
	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
</fo:block>
<!-- Separador -->

<!-- Sub-Titulo -->
<fo:block>
	<fo:table table-layout="fixed">
	<fo:table-column column-width="18cm"/>
	<fo:table-body>
		<fo:table-row >
		<fo:table-cell >

			<!-- titulo -->
				<fo:block font-size="10pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
					Importaciones y Cobranzas
				</fo:block>
			<!-- titulo -->
		
		</fo:table-cell>

		</fo:table-row>
	</fo:table-body>
	</fo:table>
</fo:block>
<!-- Sub-titulo -->


<!-- tabla 1 -->
<fo:block font-size="7pt" space-after="1mm" text-align="right">
<fo:table table-layout="fixed">
<fo:table-column column-width="12cm" />
<fo:table-column column-width="6cm" />
	<fo:table-body>
	<fo:table-row>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Cartas de Crédito Importación </fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
		Importación US $
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
	<fo:table-row>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Cartas de Crédito sin Negociar 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/esteResumenGeneral/CCI_sinNegociar"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
                          
	<fo:table-row>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Cartas de Crédito Negociadas Plazo Proveedor 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/esteResumenGeneral/CCI_negociadasPlazoProveedor"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
                          
	<fo:table-row>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Cartas de Crédito Negociadas con Discrepancia 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/esteResumenGeneral/CCI_negociadasConDiscrepancia"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
                          
	<fo:table-row>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Cartas de Crédito Negociadas 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/esteResumenGeneral/CCI_negociadas"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
                          
	<fo:table-row>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Cobranzas </fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
		Importación US $ 
		</fo:block>
		</fo:table-cell>

	</fo:table-row>

	<fo:table-row>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Cobranza Vigente 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/esteResumenGeneral/cobranzasImportacion"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
                          
	</fo:table-body>
</fo:table>
</fo:block>
<!-- tabla 1 -->

<fo:block space-after="5mm" space-before="1mm">
	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
</fo:block>

<!-- Separador -->

<!-- Sub-Titulo -->
<fo:block>
	<fo:table table-layout="fixed">
	<fo:table-column column-width="18cm"/>
	<fo:table-body>
		<fo:table-row >
		<fo:table-cell >

			<!-- titulo -->
				<fo:block font-size="10pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
					Exportaciones y Cobranzas
				</fo:block>
			<!-- titulo -->
		
		</fo:table-cell>

		</fo:table-row>
	</fo:table-body>
	</fo:table>
</fo:block>
<!-- Sub-titulo -->

<!-- tabla 2 -->
<fo:block font-size="7pt" space-after="1mm" text-align="right">
<fo:table table-layout="fixed">
<fo:table-column column-width="12cm" />
<fo:table-column column-width="6cm" />
	<fo:table-body>
	<fo:table-row>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Cartas de Crédito Exportación </fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
		Exportación US $
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
	<fo:table-row>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Cartas de Crédito sin Negociar 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/esteResumenGeneral/CCE_sinNegociar"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
                          
	<fo:table-row>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Cartas de Crédito Negociadas Plazo Proveedor 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/esteResumenGeneral/CCE_negociadasPlazoProveedor"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
                          
	<fo:table-row>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Cartas de Crédito Negociadas con Discrepancia 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/esteResumenGeneral/CCE_negociadasConDiscrepancia"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
                          
	<fo:table-row>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Cartas de Crédito Negociadas 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/esteResumenGeneral/CCE_negociadas"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
                          
	<fo:table-row>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Cobranzas </fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
		Exportación US $ 
		</fo:block>
		</fo:table-cell>

	</fo:table-row>

	<fo:table-row>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Cobranza Vigente 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/esteResumenGeneral/cobranzasExportacion"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
                          
	</fo:table-body>
</fo:table>
</fo:block>
<!-- tabla 2 -->
<fo:block space-after="5mm" space-before="1mm">
	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
</fo:block>

<!-- Separador -->

<!-- Sub-Titulo -->
<fo:block>
	<fo:table table-layout="fixed">
	<fo:table-column column-width="18cm"/>
	<fo:table-body>
		<fo:table-row >
		<fo:table-cell >

			<!-- titulo -->
				<fo:block font-size="10pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
					Ordenes de Pago
				</fo:block>
			<!-- titulo -->
		
		</fo:table-cell>

		</fo:table-row>
	</fo:table-body>
	</fo:table>
</fo:block>
<!-- Sub-titulo -->


<!-- tabla 3 -->
<fo:block font-size="7pt" space-after="1mm" text-align="right">
<fo:table table-layout="fixed">
<fo:table-column column-width="12cm" />
<fo:table-column column-width="6cm" />
	<fo:table-body>
	<fo:table-row>

		<fo:table-cell  border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Ordenes de Pago Enviadas US $ </fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/esteResumenGeneral/ODP_enviadas"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
	<fo:table-row>

		<fo:table-cell  border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Ordenes de Pago Recibidas US $</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/esteResumenGeneral/ODP_recibidas"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
                          
	</fo:table-body>
</fo:table>
</fo:block>
<!-- tabla 3 -->



</xsl:template>



</xsl:stylesheet>