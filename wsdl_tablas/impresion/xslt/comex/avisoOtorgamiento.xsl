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
					AVISO OTORGAMIENTO DE CRÉDITO
				</fo:block>
			<!-- fin titulo del documento -->

			<!-- Parrafo destinatario -->
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					Señores:
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOtorgamiento/nombreCliente"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOtorgamiento/direccionCliente"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOtorgamiento/comunaCliente"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOtorgamiento/ciudadCliente"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="4mm" text-align="left">
					Presente
				</fo:block>
			<!-- fin titulo del documento -->

	<fo:block font-size="8pt" font-weight="normal" text-align="left" space-before="4mm">
					 R.U.T.: <fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOtorgamiento/rutCliente"/></fo:inline>
	</fo:block>

	<fo:block font-size="8pt" font-weight="bold" text-align="left" space-before="4mm">
					 Estimado cliente:
	</fo:block>
	<fo:block font-size="8pt" font-weight="bold" text-align="left" space-after="4mm">
					  Informamos a Ud(es) que hemos procedido a efectuar curse de Crédito, el cual se detalla a continuación:
	</fo:block>

<xsl:call-template name="TablaUno"/>



<fo:block font-size="8pt" space-before="4mm" space-after="8mm" text-align="left" font-weight="bold">
Interés :
</fo:block>

<xsl:call-template name="TablaDos"/>

<fo:block font-size="8pt" text-align="left" space-after="8mm">
<fo:table>
<fo:table-column column-width="8cm"/>
<fo:table-column column-width="6cm"/>
<fo:table-body>
	<fo:table-row>
		<fo:table-cell>
			<fo:block font-weight="bold" font-size="8pt">
				Moneda y Monto cursado 
			</fo:block>
		</fo:table-cell>
		<fo:table-cell>
			<fo:block font-size="6pt">
				:&#0160;<xsl:value-of select="comex/avisoOtorgamiento/divisa"/>&#0160;<xsl:value-of select="comex/avisoOtorgamiento/totalPagadoMX"/>
			</fo:block>
		</fo:table-cell>
	</fo:table-row>
</fo:table-body>
</fo:table>
</fo:block>


<xsl:call-template name="TablaTres"/>


			<fo:block font-size="8pt" font-weight="bold" space-before="4mm">
				Total Moneda Nacional:
			</fo:block>

			<fo:block font-size="6pt" font-weight="normal">
				<xsl:value-of select="comex/avisoOtorgamiento/totalPagadoMN"/>
			</fo:block>



<fo:block font-size="8pt" text-align="left" space-before="8mm">
Rogamos tomar nota del Reembolso/Desembolso efectuado, el cual se entenderá confirmado por Ud.(s) si no es objetado por 
escrito dentro de 15 días contados de la fecha de curse antes citada.
</fo:block>
<fo:block font-size="8pt" text-align="left" space-before="4mm">
Para cualquier consulta relacionada con esta operación, favor mencionar nuestra referencia Nº 
<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOtorgamiento/numOperacion"/></fo:inline>
 y dirigirse a su Ejecutivo de Comercio Exterior, <fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOtorgamiento/ejecutivoComex"/></fo:inline>.
</fo:block>
<fo:block font-size="8pt" text-align="left" space-before="8mm">
Atentamente,
</fo:block>
<fo:block font-size="8pt" text-align="left" space-before="8mm">
Banco de Crédito e Inversiones.
</fo:block>
<fo:block font-size="6pt" text-align="left">
<fo:inline font-weight="bold" color="{$txt-rojo}">trs/<xsl:value-of select="comex/avisoOtorgamiento/numeroTraspaso"/></fo:inline>
</fo:block>
<fo:block font-size="8pt" text-align="left">
 Sección Cambios
</fo:block>




</xsl:template>

<xsl:template name="TablaUno">
<!-- TABLA UNO -->
<fo:block>
	<fo:table table-layout="fixed" table-border="0">
	<fo:table-column column-width="4.5cm"/>
	<fo:table-column column-width="4.5cm"/>
	<fo:table-column column-width="4.5cm"/>
	<fo:table-column column-width="4.5cm"/>
	<fo:table-body>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Ejecutivo Cta
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOtorgamiento/ejecutivoCuenta"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Su ref.
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOtorgamiento/referenciaSolicitante"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Oficina
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOtorgamiento/sucursal"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Fecha curse
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOtorgamiento/curse"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Nuestra referencia
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOtorgamiento/numOperacion"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Producto  
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOtorgamiento/producto"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Moneda
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOtorgamiento/divisa"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Monto
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:<fo:inline font-weight="bold" color="{$txt-rojo}">&#0160;<xsl:value-of select="comex/avisoOtorgamiento/divisa"/>&#0160;<xsl:value-of select="comex/avisoOtorgamiento/monto"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>


		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Vcto.validez L/C
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOtorgamiento/vencimiento"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Vcto.para embarcar 
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:<fo:inline font-weight="bold" color="{$txt-rojo}">&#0160;<xsl:value-of select="comex/avisoOtorgamiento/vencimientoEmbarque"/>&#0160;<xsl:value-of select="comex/avisoOtorgamiento/monto"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Beneficiario 
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOtorgamiento/beneficiario"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Corresponsal 
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:<fo:inline font-weight="bold" color="{$txt-rojo}">&#0160;<xsl:value-of select="comex/avisoOtorgamiento/bancoCorresponsal"/>&#0160;<xsl:value-of select="comex/avisoOtorgamiento/monto"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Forma de Pago
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOtorgamiento/formaDePago"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					L/C
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:<fo:inline font-weight="bold" color="{$txt-rojo}">&#0160;<xsl:value-of select="comex/avisoOtorgamiento/LC"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Aval(es)
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOtorgamiento/cantidadAvales"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					&#0160;
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				&#0160;
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

	</fo:table-body>
	</fo:table>
</fo:block>
<!-- fin TABLA UNO -->
</xsl:template>


<xsl:template name="TablaDos">
<!-- TABLA PRINCIPAL -->
<fo:block space-after="4mm">
	<fo:table table-layout="fixed" table-border="0">
	<fo:table-column column-width="6cm"/>
	<fo:table-column column-width="3cm"/>
	<fo:table-column column-width="3cm"/>
	<fo:table-column column-width="3cm"/>
	<fo:table-column column-width="3cm"/>
	<fo:table-body>

		<fo:table-row background-color="#e6e6e6">
		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left" padding-before="1mm" padding-after="1mm">
					
				</fo:block>
		</fo:table-cell>

		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left" padding-before="1mm" padding-after="1mm">
					Tipo Tasa 
				</fo:block>
		</fo:table-cell>

		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left" padding-before="1mm" padding-after="1mm">
					Tasa
				</fo:block>
		</fo:table-cell>

		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left" padding-before="1mm" padding-after="1mm">
					Spread
				</fo:block>
		</fo:table-cell>

		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left" padding-before="1mm" padding-after="1mm">
					Tasa Final (%)
				</fo:block>
		</fo:table-cell>

</fo:table-row>
		<fo:table-row >
		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left" padding-before="1mm" padding-after="1mm">
					Apertura a Negociación
				</fo:block>
		</fo:table-cell>

		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left" padding-before="1mm" padding-after="1mm">
					<xsl:value-of select="comex/avisoOtorgamiento/tipoTasaAperturaNeg"/> 
				</fo:block>
		</fo:table-cell>

		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left" padding-before="1mm" padding-after="1mm">
					<xsl:value-of select="comex/avisoOtorgamiento/tasaAperturaNeg"/> 
				</fo:block>
		</fo:table-cell>

		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left" padding-before="1mm" padding-after="1mm">
					
				</fo:block>
		</fo:table-cell>

		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left" padding-before="1mm" padding-after="1mm">
					<xsl:value-of select="comex/avisoOtorgamiento/tasaFinal"/> 
				</fo:block>
		</fo:table-cell>

</fo:table-row>
		<fo:table-row >
		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left" padding-before="1mm" padding-after="1mm">
					Negoc. A Vcto. Plazo Proveedor
				</fo:block>
		</fo:table-cell>

		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left" padding-before="1mm" padding-after="1mm">
					<xsl:value-of select="comex/avisoOtorgamiento/tipoTasaPlazProv"/> 
				</fo:block>
		</fo:table-cell>

		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left" padding-before="1mm" padding-after="1mm">
					<xsl:value-of select="comex/avisoOtorgamiento/negPlazoProveedor"/> 
				</fo:block>
		</fo:table-cell>

		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left" padding-before="1mm" padding-after="1mm">
					
				</fo:block>
		</fo:table-cell>

		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left" padding-before="1mm" padding-after="1mm">
					<xsl:value-of select="comex/avisoOtorgamiento/tasaFinal"/> 
				</fo:block>
		</fo:table-cell>

</fo:table-row>
		<fo:table-row >
		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left" padding-before="1mm" padding-after="1mm">
					Financiamiento Banco 
				</fo:block>
		</fo:table-cell>

		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left" padding-before="1mm" padding-after="1mm">
					<xsl:value-of select="comex/avisoOtorgamiento/tipoTasa"/> 
				</fo:block>
		</fo:table-cell>

		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left" padding-before="1mm" padding-after="1mm">
					
				</fo:block>
		</fo:table-cell>

		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left" padding-before="1mm" padding-after="1mm">
					<xsl:value-of select="comex/avisoOtorgamiento/spreadFBanco"/> 
				</fo:block>
		</fo:table-cell>

		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left" padding-before="1mm" padding-after="1mm">
					<xsl:value-of select="comex/avisoOtorgamiento/tasaFBanco"/> 
				</fo:block>
		</fo:table-cell>

</fo:table-row>
</fo:table-body>
</fo:table>
</fo:block>
</xsl:template>


<xsl:template name="TablaTres">
<!-- TABLA Detalle Moneda Nacional -->
<fo:block space-before="4mm">
	<fo:table table-layout="fixed" table-border="1mm">
	<fo:table-column column-width="6cm"/>
	<fo:table-column column-width="12cm"/>
	<fo:table-body>

		<fo:table-row background-color="#e6e6e6">
		<fo:table-cell number-columns-spanned="2">
				<fo:block border="0" font-size="8pt" text-align="left" font-weight="bold">
					Detalle Moneda Nacional
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<xsl:for-each select="comex/avisoOtorgamiento/detalle/detalleMN">
		<fo:table-row>
		<fo:table-cell number-columns-spanned="2">

				<fo:block font-size="6pt" border="0" font-weight="normal" text-align="left">
				&#0160;<xsl:value-of select="valor"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		</xsl:for-each>

	</fo:table-body>
	</fo:table>
</fo:block>
<!-- fin TABLA TRES -->
</xsl:template>


<xsl:template name="TablaPrincipal">
<!-- TABLA PRINCIPAL -->
<fo:block>
	<fo:table table-layout="fixed" table-border="0">
	<fo:table-column column-width="4.5cm"/>
	<fo:table-column column-width="4.5cm"/>
	<fo:table-body>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm">
					Orden de pago N°:
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				&#0160;<xsl:value-of select="comex/avisoOrdenDePagoRecibida/numeroOrdenPago"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm">
					A su favor por orden de:
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				&#0160;<xsl:value-of select="comex/avisoOrdenDePagoRecibida/nombreOrdenante"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm">
					Referencia Externa:
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				&#0160;<xsl:value-of select="comex/avisoOrdenDePagoRecibida/referenciaExterna"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm">
					Por la suma de:
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				&#0160;<xsl:value-of select="comex/avisoOrdenDePagoRecibida/montoOperacion"/>&#0160;<xsl:value-of select="comex/avisoOrdenDePagoRecibida/glosaMoneda"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm">
					Oficina de pertenencia:
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				&#0160;<xsl:value-of select="comex/avisoOrdenDePagoRecibida/glosaSucursal"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm">
					Capital Original:
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				&#0160;<xsl:value-of select="comex/avisoOrdenDePagoRecibida/montoOperacion"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm">
					Cuenta Corriente:
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				&#0160;<xsl:value-of select="comex/avisoOrdenDePagoRecibida/cuentaCorriente"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

	</fo:table-body>
	</fo:table>
</fo:block>
<!-- fin TABLA PRINCIPAL -->
</xsl:template>






</xsl:stylesheet>
