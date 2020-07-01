<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
<xsl:variable name="lineas">#CCCCCC</xsl:variable>
<xsl:variable name="txt">#000000</xsl:variable>
<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
<xsl:variable name="txt-celeste">#D9E4EF</xsl:variable>
<xsl:variable name="txt-rojo">#cc0000</xsl:variable>

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
				<fo:block font-size="6pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">
					Depto. Comercio Exterior 
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding-before="1cm">
				<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
					Stgo (Chile), <fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/fechaImpresion"/></fo:inline>
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

			<!-- Titulo del Documento -->
				<fo:block font-size="12pt" font-weight="bold" space-after="1mm" text-align="center">
					ACUSE RECIBO DOCUMENTOS
				</fo:block>
			<!-- fin titulo del documento -->

			<!-- Parrafo destinatario -->
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					Señores:
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/nombre"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/comprobante/direccionCliente"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/comprobante/comunaCliente"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/comprobante/ciudadCliente"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="3mm" text-align="left">
					Presente
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="4mm" text-align="left">
					R.U.T.: <fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/rut"/></fo:inline>
				</fo:block>
			<!-- fin titulo del documento -->


	<fo:block font-size="10pt" font-weight="bold" text-align="left" space-after="4mm">
					Referencias:
	</fo:block>

<!-- TABLA NUESTRA COBRANZA NRO -->
<fo:block>
	<fo:table table-layout="fixed" table-border="0">
	<fo:table-column column-width="4.5cm"/>
	<fo:table-column column-width="4.5cm"/>
	<fo:table-column column-width="4.5cm"/>
	<fo:table-column column-width="4.5cm"/>
	<fo:table-body>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm">
					Nuestra cobranza Nro.:
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm">
				&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/comprobante/numOperacion"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm">
					Cedente:
				</fo:block>
		
		</fo:table-cell>
		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm">
				&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/comprobante/referenciaCedente"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>


		</fo:table-row>
	</fo:table-body>
	</fo:table>
</fo:block>
<!-- fin TABLA NUESTRA COBRANZA NRO -->


<!-- TEXTO ESTIMADOS SEÑORES -->
				<fo:block font-size="8pt" font-weight="normal" text-align="left" space-before="4mm" space-after="2mm">
					Estimado Señor(es):
				</fo:block>
				<fo:block font-size="8pt" font-weight="normal" text-align="left" space-after="4mm">
					Hemos recibido de, <fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/comprobante/nombreCedente"/></fo:inline>, la cobranza documentaria
					girada a su nombre con las siguientes características y condiciones:
				</fo:block>
<!-- fin texto estimados señores -->

<xsl:call-template name="TablaPrincipal"/>


<fo:block font-size="8pt" space-after="4mm" space-before="3mm" text-align="left" font-weight="bold">
Observación(es) :
</fo:block>

<fo:block font-size="8pt" space-after="4mm" text-align="left">
Le(s) recordamos que de acuerdo a la normativa vigente, la(s) declaracion(es)
de ingreso que ampara(n) esta operación debe(n) ser informada(s) al Banco Central de Chile. Por lo tanto, deberá(n) proporcionarnos su información antes del pago de la cobranza.
</fo:block>

<fo:block font-size="8pt" space-after="4mm" text-align="left">
Agradeceremos concurrir a nuestras oficinas con este aviso, a objeto de dar cumplimiento a las instrucciones dadas por nuestro Cedente.
</fo:block>

<fo:block font-size="8pt" space-after="4mm" text-align="left">
Para cualquier consulta relacionada con esta operación, favor 
mencionar nuestra referencia Nº <fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/comprobante/numOperacion"/></fo:inline>
y dirigirse a su Ejecutivo de Comercio Exterior , <fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/comprobante/ejecutivoComex"/></fo:inline>.
</fo:block>

<fo:block font-size="8pt" space-after="4mm" text-align="left">
Cobranza acogida al Folleto 522 de la Cámara Internacional de Comercio
</fo:block>


<fo:block font-size="8pt" space-after="4mm" text-align="left">
Atentamente,
</fo:block>

<fo:block font-size="8pt" space-after="4mm" text-align="left">
Banco de Crédito e Inversiones.
</fo:block>

<fo:block font-size="8pt" space-after="4mm" text-align="left">
<fo:inline font-weight="bold" color="{$txt-rojo}">
<xsl:value-of select="comex/comprobante/numeroTraspaso"/>
</fo:inline>
</fo:block>




</xsl:template>



<xsl:template name="estimadoCliente">
<!-- texto -->
<fo:block font-size="7pt" space-after="4mm" space-before="3mm" text-align="left">
<fo:table table-layout="fixed">
<fo:table-column column-width="18cm" />
	<fo:table-body>
	<fo:table-row>

		<fo:table-cell border="0">
		<fo:block font-weight="bold" color="{$txt}" text-align="left">
		Estimado Cliente:</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
	<fo:table-row>

		<fo:table-cell border="0">
		<fo:block font-weight="normal" color="{$txt}" text-align="left">
		Informamos a Ud(es) que hemos procedido a efectuar curse de Crédito, el cual se detalla a continuación</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
                          
	</fo:table-body>
</fo:table>
</fo:block>
<!-- texto -->
</xsl:template>

<xsl:template name="tablaInferior">
<!-- tabla Inferior -->
<fo:block font-size="7pt" space-after="4mm" space-before="2mm" text-align="left">
<fo:table table-layout="fixed">
<fo:table-column column-width="4cm" />
<fo:table-column column-width="6cm" />
	<fo:table-body>

	<fo:table-row>

		<fo:table-cell>
		<fo:block>
		&#0160;
		</fo:block>
		</fo:table-cell>

		<fo:table-cell>
		<fo:block>
		&#0160;
		</fo:block>
		</fo:table-cell>


	</fo:table-row>
	<fo:table-row>

		<fo:table-cell>
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Monto en Cobro</fo:block>
		</fo:table-cell>

		<fo:table-cell>
		<fo:block color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/comprobante/divisaOperacion"/>&#0160;<xsl:value-of select="comex/comprobante/montoCobranza"/></fo:inline>
		</fo:block>
		</fo:table-cell>


	</fo:table-row>


	<fo:table-row>

		<fo:table-cell>
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Gastos del Cedente </fo:block>
		</fo:table-cell>

		<fo:table-cell>
		<fo:block color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/comprobante/divisaGastoCedente"/>&#0160;<xsl:value-of select="comex/comprobante/monto_GastoCedente"/></fo:inline>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>


	<fo:table-row>

		<fo:table-cell>
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Intereses del Proveedor </fo:block>
		</fo:table-cell>

		<fo:table-cell>
		<fo:block color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/comprobante/spreadProveedor"/></fo:inline>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>


	<fo:table-row>

		<fo:table-cell>
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Intereses por Mora
		</fo:block>
		</fo:table-cell>

		<fo:table-cell>
		<fo:block color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/comprobante/spreadMora"/></fo:inline>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>


	<fo:table-row>

		<fo:table-cell>
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Cond. Entrega de Documentos</fo:block>
		</fo:table-cell>

		<fo:table-cell>
		<fo:block color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/comprobante/ConEntregaDocs"/></fo:inline>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>


	<fo:table-row>

		<fo:table-cell>
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Condición de Protesto
		</fo:block>
		</fo:table-cell>

		<fo:table-cell>
		<fo:block color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/comprobante/condicionProtesto"/></fo:inline>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>


	<fo:table-row>

		<fo:table-cell>
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Girador
		</fo:block>
		</fo:table-cell>

		<fo:table-cell>
		<fo:block color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/comprobante/girador"/></fo:inline>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>


	</fo:table-body>
</fo:table>
</fo:block>
<!-- tabla inferior -->
</xsl:template>



<xsl:template name="TablaPrincipal">
<!-- tabla Vencimiento -->
<fo:block font-size="7pt" space-after="4mm" space-before="2mm" text-align="left">
<fo:table table-layout="fixed">
<fo:table-column column-width="10cm" />
<fo:table-column column-width="8cm" />
	<fo:table-body>

	<fo:table-row>

		<fo:table-cell>
		<xsl:call-template name="tablaInferior"/>
		</fo:table-cell>

		<fo:table-cell>
		<xsl:call-template name="TablaVencimiento"/>
		</fo:table-cell>

	</fo:table-row>

	</fo:table-body>
</fo:table>
</fo:block>
<!-- vencimiento -->
</xsl:template>

<xsl:template name="TablaVencimiento">
<!-- tabla Vencimiento -->
<fo:block font-size="7pt" space-after="4mm" space-before="2mm" text-align="center">
<fo:table table-layout="fixed">
<fo:table-column column-width="4cm" />
<fo:table-column column-width="4cm" />
	<fo:table-body>

	<fo:table-row>

		<fo:table-cell>
		<fo:block font-weight="bold" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
		Vencimiento </fo:block>
		</fo:table-cell>

		<fo:table-cell>
		<fo:block font-weight="bold" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
		Letra por (US$) </fo:block>
		</fo:table-cell>

	</fo:table-row>

	<xsl:for-each select="comex/comprobante/letras/letra">
	<fo:table-row>

		<fo:table-cell>
		<fo:block font-weight="normal" color="{$txt-rojo}" padding-before="1mm" padding-after="1mm" text-align="center">
		<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="vencimiento"/></fo:inline></fo:block>
		</fo:table-cell>

		<fo:table-cell>
		<fo:block color="{$txt-rojo}" padding-before="1mm" padding-after="1mm" text-align="center">
		<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="monto"/></fo:inline>
		</fo:block>
		</fo:table-cell>


	</fo:table-row>
	</xsl:for-each>

	</fo:table-body>
</fo:table>
</fo:block>
<!-- vencimiento -->
</xsl:template>


</xsl:stylesheet>
