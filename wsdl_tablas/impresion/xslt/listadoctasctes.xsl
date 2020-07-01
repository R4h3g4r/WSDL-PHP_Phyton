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
				<fo:table-column column-width="2cm"/>
				<fo:table-body>
				<fo:table-row>
				<fo:table-cell>
				<fo:external-graphic>
					<xsl:attribute name="src">
						<xsl:value-of select="info/rutaImagen"/>02-logo-bci.gif
					</xsl:attribute>
				</fo:external-graphic>
			</fo:table-cell>
			<fo:table-cell padding-before="1cm">
				<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
					<xsl:value-of select="info/fechaImpresion"/>
				</fo:block>
			</fo:table-cell>
			</fo:table-row>
			</fo:table-body>
			</fo:table>
		<!-- Separador -->
		<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
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
	<fo:table-column column-width="6cm"/>
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
				<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
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
	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
</fo:block>

<!-- Separador -->




<!-- Cartola -->
<fo:block>
	<fo:table table-layout="fixed">
	<fo:table-column column-width="18cm"/>
	<fo:table-body>
		<fo:table-row >
		<fo:table-cell >

			<!-- titulo -->
				<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
					Cuenta Corriente
				</fo:block>
			<!-- titulo -->
		
		</fo:table-cell>

		</fo:table-row>
	</fo:table-body>
	</fo:table>
</fo:block>
<!-- Cartola -->




<!-- Separador -->
<fo:block space-after="2mm">
	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
</fo:block>
<!-- Separador -->


<!-- ejecutivo -->

<fo:block font-size="5pt" space-after="1mm">
	<fo:table table-layout="fixed">
	<fo:table-column column-width="13cm"/>
	<fo:table-column column-width="5cm"/>
	<fo:table-body>
		<fo:table-row>
		<fo:table-cell>

			<fo:block font-size="9pt" text-align="left" color="{$txt}">
			<fo:inline font-weight="normal" space-before="30pt">Usuario: </fo:inline>
			<fo:inline font-weight="bold" color="{$txt-azul-oscuro}"><xsl:value-of select="info/ejecutivo"/></fo:inline>
			</fo:block>
				
		</fo:table-cell>
		<fo:table-cell>
	
			<fo:block font-size="9pt" text-align="left" color="{$txt}">
			<fo:inline font-weight="normal" space-before="30pt">Oficina: </fo:inline>
			<fo:inline font-weight="bold" color="{$txt-azul-oscuro}"><xsl:value-of select="info/oficinaEje"/></fo:inline>
			</fo:block>

		</fo:table-cell>
		</fo:table-row>
	</fo:table-body>
	</fo:table>
</fo:block>

<!-- ejecutivo -->


<!-- Separador -->
<fo:block space-after="1mm">
	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
</fo:block>
<!-- Separador -->


<!-- tabla 2 -->
<fo:block font-size="7pt" space-after="1mm" text-align="right">
<fo:table table-layout="fixed">
<fo:table-column column-width="3cm" />
<fo:table-column column-width="2.5cm" />
<fo:table-column column-width="3cm" />
<fo:table-column column-width="3cm" />
<fo:table-column column-width="3cm" />
<fo:table-column column-width="3.5cm" />
 
	<fo:table-body>
	<fo:table-row>
		<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="6" border="0.5pt solid {$lineas}">
		<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;&#0160;&#0160;CUENTA CORRIENTE</fo:block>
		</fo:table-cell>
	</fo:table-row>
	<fo:table-row>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
		Nº cuenta</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
		Intereses</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
		Saldo Disponible</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
		Saldo Contable</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
		Retenciones</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
		4 Últimos Cheques</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
	<xsl:for-each select="info/detalleListado/detalle-listado">
	<fo:table-row text-align="right">

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm"  text-align="center">
		<fo:inline>
		<fo:external-graphic>
			<xsl:attribute name="src">
				<xsl:value-of select="/info/rutaImagen"/>bt-fecha2.gif
			</xsl:attribute>
		</fo:external-graphic>
		&#0160;<xsl:value-of select="nroCtaCte"/>
		</fo:inline>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
		&#0160;$<xsl:value-of select="interesGanado"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
		&#0160;$<xsl:value-of select="saldoDisponible"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
		&#0160;$<xsl:value-of select="saldoContable"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
		&#0160;$<xsl:value-of select="retenciones"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
		&#0160;<xsl:value-of select="ultimosCheques"/>
		</fo:block>
		</fo:table-cell>


	</fo:table-row>
	</xsl:for-each>
                            
	</fo:table-body>
</fo:table>
</fo:block>
<!-- tabla 2 -->

</xsl:template>



<xsl:template name="subTitulo">
<xsl:param name="titulo"/> 

	<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
	<fo:table table-layout="fixed">
	<fo:table-column column-width="0.3cm" />
	<fo:table-column column-width="8cm" />
	<fo:table-body>

	<fo:table-row>
	<fo:table-cell padding-before="1mm">
	<fo:external-graphic>
			<xsl:attribute name="src">
				<xsl:value-of select="info/rutaImagen"/>01-bullet2-rj.gif
			</xsl:attribute>
	 </fo:external-graphic>
	</fo:table-cell>
	<fo:table-cell>
	<fo:block>
		<xsl:value-of select="$titulo"/>
		&#0160;(<xsl:value-of select="info/nroCtaCte"/>)
	</fo:block>
	</fo:table-cell>
	</fo:table-row>

	</fo:table-body>
	</fo:table>
	</fo:block>

</xsl:template>

</xsl:stylesheet>







