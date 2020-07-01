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
					AVISO LIQUIDACIÓN DE CRÉDITO
				</fo:block>
			<!-- fin titulo del documento -->

			<!-- Parrafo destinatario -->
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					Señores:
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/nombreCliente"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/direccionCliente"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/comunaCliente"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/ciudadCliente"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="4mm" text-align="left">
					Presente
				</fo:block>
			<!-- fin titulo del documento -->

	<fo:block font-size="8pt" font-weight="normal" text-align="left" space-before="4mm">
					 R.U.T.: <fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/rutCliente"/></fo:inline>
	</fo:block>

	<fo:block font-size="8pt" font-weight="normal" text-align="left" space-before="4mm">
					 Estimado cliente :
	</fo:block>
	<fo:block font-size="8pt" font-weight="normal" text-align="left" space-after="4mm">
					   De acuerdo a sus instrucciones , con esta fecha hemos procedido a efectuar Liquidación por Pago de Crédito, la cual se detalla a continuación:
	</fo:block>

<xsl:call-template name="TablaUno"/>



<fo:block font-size="8pt" space-before="4mm" space-after="4mm" text-align="left" font-weight="bold">
Detalle Cobertura en Moneda Extranjera
</fo:block>

<xsl:call-template name="detalles"/>

<fo:block font-size="8pt" text-align="left" space-before="4mm" font-weight="bold" background-color="#E6E6E6">
Total pagado mediante
</fo:block>
<fo:block font-size="8pt" text-align="left" space-after="8mm" font-weight="bold">
<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/divisa"/>&#0160;<xsl:value-of select="comex/avisoLiquidacionPagoCredito/total1MX"/></fo:inline>
</fo:block>


<xsl:call-template name="TablaMN"/>
<fo:block font-size="8pt" text-align="left" space-after="8mm" font-weight="bold" background-color="#E6E6E6">
Total pagado mediante
</fo:block>
<fo:block font-size="8pt" text-align="left" font-weight="bold">
<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/totalPagadoMN"/></fo:inline>
</fo:block>



			<fo:block font-size="8pt" font-weight="normal" space-before="4mm">
				Rogamos tomar nota de este débito, el cual se entenderá confirmado por Ud.(s) si no es objetado por escrito 
				dentro de 15 días contados de la fecha de cobertura antes citada.
			</fo:block>

			<fo:block font-size="8pt" font-weight="normal" space-before="4mm">
				 Para cualquier consulta relacionada con esta operación, favor mencionar nuestra referencia Nº<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/numOperacion"/></fo:inline>
 
				  y dirigirse a su Ejecutivo de Comercio Exterior, <fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/ejecutivoComex"/></fo:inline>.
.
			</fo:block>

			<fo:block font-size="8pt" font-weight="normal" space-before="4mm">
				Atentamente,
			</fo:block>

			<fo:block font-size="8pt" font-weight="normal" space-before="4mm">
				 Banco de Crédito e Inversiones
			</fo:block>

			<fo:block font-size="8pt" font-weight="normal" space-before="4mm">
				<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/numeroTraspaso"/></fo:inline>
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
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/ejecutivoCuenta"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Su ref.
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/referencia"/></fo:inline>
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
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/sucursal"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Fecha curse
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/evento"/></fo:inline>
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
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/numOperacion"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Producto  
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/producto"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Tipo Cambio
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/tipoCambio"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
				Tipo Tasa
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:<fo:inline font-weight="bold" color="{$txt-rojo}">&#0160;<xsl:value-of select="comex/avisoLiquidacionPagoCredito/tipoTasa"/></fo:inline>
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
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/divisa"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Spread
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/spread"/>%</fo:inline>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>


		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Capital Original
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/divisa"/>&#0160;<xsl:value-of select="comex/avisoLiquidacionPagoCredito/capitalOriginal"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Tasa Final  
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/tasaFinal"/>%</fo:inline>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Saldo Capital
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/saldo"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Fecha Vcto. 
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/vencimiento"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

	</fo:table-body>
	</fo:table>
</fo:block>
<!-- fin TABLA UNO -->
</xsl:template>

<xsl:template name="tablaCoberturaMX">
<fo:block>
	<fo:table table-layout="fixed">
	<fo:table-column column-width="33%"/>
	<fo:table-column column-width="33%"/>


</fo:table>
</fo:block>
</xsl:template>

<xsl:template name="detalles">
<fo:block>
	<fo:table table-layout="fixed" width="66%">
	<fo:table-column column-width="2.88cm"/>
	<fo:table-column column-width="2.88cm"/>
	<fo:table-column column-width="0.72cm"/>
	<fo:table-column column-width="2.88cm"/>
	<fo:table-column column-width="2.88cm"/>
	<fo:table-column column-width="2.88cm"/>
	<fo:table-column column-width="2.88cm"/>
	<fo:table-body>

		<fo:table-row>

		<fo:table-cell number-columns-spanned="2" background-color="#E6E6E6">
				<fo:block border="0" font-size="8pt" text-align="center">
				Detalle de Pago en Moneda de origen
				</fo:block>
		</fo:table-cell>

		<fo:table-cell >
				<fo:block border="0" font-size="8pt">
				</fo:block>
		</fo:table-cell>

		<fo:table-cell number-columns-spanned="4" background-color="#E6E6E6">
				<fo:block border="0" font-size="8pt" text-align="center">
				Detalle de Intereses
				</fo:block>
		</fo:table-cell>

		</fo:table-row>

		<fo:table-row>

		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left">
					Capital Pagado
				</fo:block>
		</fo:table-cell>


		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left">
					<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/divisa"/>&#0160;<xsl:value-of select="comex/avisoLiquidacionPagoCredito/capitalPagado"/></fo:inline>
				</fo:block>
		</fo:table-cell>


		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left">
				</fo:block>
		</fo:table-cell>


		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="center">
					Inicio  
				</fo:block>
		</fo:table-cell>


		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="center">
					Final  
				</fo:block>
		</fo:table-cell>


		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="center">
					Días  
				</fo:block>
		</fo:table-cell>


		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="center">
					Tasa  
				</fo:block>
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row>

		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left">
					Intereses Normales
				</fo:block>
		</fo:table-cell>


		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left">
					<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/divisa"/>&#0160;<xsl:value-of select="comex/avisoLiquidacionPagoCredito/interesNormal"/></fo:inline>
				</fo:block>
		</fo:table-cell>


		<fo:table-cell >
		</fo:table-cell>


		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="center">
					<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/inicioInteresNormal"/></fo:inline>  
				</fo:block>
		</fo:table-cell>


		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="center">
					<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/final_InteresNormal"/></fo:inline>   
				</fo:block>
		</fo:table-cell>


		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="center">
					<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/diasNormal"/></fo:inline>
				</fo:block>
		</fo:table-cell>


		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="center">
					<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/tasaNormal"/></fo:inline>
				</fo:block>
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row>

		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left">
					Intereses Mora
				</fo:block>
		</fo:table-cell>


		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left">
					<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/divisa"/>&#0160;<xsl:value-of select="comex/avisoLiquidacionPagoCredito/interesMora"/></fo:inline>
				</fo:block>
		</fo:table-cell>


		<fo:table-cell >
		</fo:table-cell>


		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="center">
					<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/inicioInteresMora"/></fo:inline>  
				</fo:block>
		</fo:table-cell>


		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="center">
					<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/final_InteresMora"/></fo:inline>   
				</fo:block>
		</fo:table-cell>


		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="center">
					<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/diasMora"/></fo:inline>
				</fo:block>
		</fo:table-cell>


		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="center">
					<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/tasaMora"/></fo:inline>
				</fo:block>
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row>

		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left">
					Intereses Adicionales
				</fo:block>
		</fo:table-cell>


		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left">
					<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/divisa"/>&#0160;<xsl:value-of select="comex/avisoLiquidacionPagoCredito/interesesAdicionales"/></fo:inline>
				</fo:block>
		</fo:table-cell>


		<fo:table-cell >
		</fo:table-cell>


		<fo:table-cell >
		</fo:table-cell>

		<fo:table-cell >
		</fo:table-cell>

		<fo:table-cell >
		</fo:table-cell>

		<fo:table-cell >
		</fo:table-cell>
	</fo:table-row>

		<fo:table-row>

		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left" font-weight="bold">
					Total moneda origen
				</fo:block>
		</fo:table-cell>


		<fo:table-cell >
				<fo:block border="0" font-size="8pt" text-align="left">
					<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoLiquidacionPagoCredito/divisa"/>&#0160;<xsl:value-of select="comex/avisoLiquidacionPagoCredito/totalMonedaOrigen"/></fo:inline>
				</fo:block>
		</fo:table-cell>


		<fo:table-cell >
		</fo:table-cell>


		<fo:table-cell >
		</fo:table-cell>

		<fo:table-cell >
		</fo:table-cell>

		<fo:table-cell >
		</fo:table-cell>

		<fo:table-cell >
		</fo:table-cell>
	</fo:table-row>

	</fo:table-body>
	</fo:table>
</fo:block>
</xsl:template>


<xsl:template name="TablaMN">
<!-- TABLA TRES -->
<fo:block space-before="4mm">
	<fo:table table-layout="fixed" table-border="1mm">
	<fo:table-column column-width="6cm"/>
	<fo:table-column column-width="12cm"/>
	<fo:table-body>

		<fo:table-row background-color="#f7f7f7">
		<fo:table-cell number-columns-spanned="2">
				<fo:block border="0" font-size="8pt" text-align="left" font-weight="bold">
					Detalle Moneda Nacional
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<xsl:for-each select="comex/avisoLiquidacionPagoCredito/detallePagoMN/detalle">
		<fo:table-row background-color="#f7f7f7">
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
				&#0160;<xsl:value-of select="comex/avisoLiquidacionPagoCredito/numeroOrdenPago"/>
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
				&#0160;<xsl:value-of select="comex/avisoLiquidacionPagoCredito/nombreOrdenante"/>
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
				&#0160;<xsl:value-of select="comex/avisoLiquidacionPagoCredito/referenciaExterna"/>
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
				&#0160;<xsl:value-of select="comex/avisoLiquidacionPagoCredito/montoOperacion"/>&#0160;<xsl:value-of select="comex/avisoOrdenDePagoRecibida/glosaMoneda"/>
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
				&#0160;<xsl:value-of select="comex/avisoLiquidacionPagoCredito/glosaSucursal"/>
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
				&#0160;<xsl:value-of select="comex/avisoLiquidacionPagoCredito/montoOperacion"/>
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
				&#0160;<xsl:value-of select="comex/avisoLiquidacionPagoCredito/cuentaCorriente"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

	</fo:table-body>
	</fo:table>
</fo:block>
<!-- fin TABLA PRINCIPAL -->
</xsl:template>






</xsl:stylesheet>