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
					  AVISO LIQUIDACIÓN ORDEN DE PAGO ENVIADA
				</fo:block>
			<!-- fin titulo del documento -->

			<!-- Parrafo destinatario -->
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					Señores:
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOrdenDePagoEmitida/nombreCliente"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOrdenDePagoEmitida/direccionCliente"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOrdenDePagoEmitida/comunaCliente"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOrdenDePagoEmitida/ciudadCliente"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="4mm" text-align="left">
					Presente
				</fo:block>
			<!-- fin titulo del documento -->

	<fo:block font-size="8pt" font-weight="bold" text-align="left" space-before="4mm" space-after="4mm">
					 R.U.T.: &#0160;<fo:inline color="{$txt-rojo}"><xsl:value-of select="comex/avisoOrdenDePagoEmitida/rutCliente"/></fo:inline>
	</fo:block>
	<fo:block font-size="8pt" font-weight="normal" text-align="left">
					  Estimado cliente:
	</fo:block>
	<fo:block font-size="8pt" font-weight="normal" text-align="left" space-after="4mm">
					   De acuerdo a sus instrucciones , con esta fecha hemos procedido 
					   a efectuar curse de Liquidación de Orden de Pago de Importación, detallada a continuación :
	</fo:block>

	<xsl:call-template name="TablaUno"/>

<fo:block font-size="8pt" font-weight="bold" space-before="8mm" space-after="3mm" text-align="left">
Detalle Moneda Extranjera:
</fo:block>

	<xsl:call-template name="TablaDos"/>


<fo:block font-size="8pt" font-weight="bold" space-before="8mm" text-align="left">
Total Pagado Mediante
</fo:block>

<fo:block font-size="8pt" font-weight="normal" space-after="8mm" text-align="left" color="{$txt-rojo}">
<fo:inline><xsl:value-of select="comex/avisoOrdenDePagoEmitida/totalPagadoMX"/></fo:inline>
</fo:block>


	<xsl:call-template name="TablaTres"/>

<fo:block font-size="8pt" space-before="4mm" space-after="4mm" text-align="left">
Rogamos tomar nota de este débito, el cual se entenderá confirmado por Ud(s)
si no es objetado por escrito dentro de 15 días contados de la fecha de liquidación antes citada.
</fo:block>



<fo:block font-size="8pt" space-before="4mm" space-after="4mm" text-align="left">
 Debe informar a su Despachador de Aduana, que debe registrar en la correpondiente Declaración de
 Ingreso asociada a este pago, el Nº de Planilla  <fo:inline color="{$txt-rojo}"><xsl:value-of select="comex/avisoOrdenDePagoEmitida/numeroPlanilla"/></fo:inline>
 del <fo:inline color="{$txt-rojo}"><xsl:value-of select="comex/avisoOrdenDePagoEmitida/fecha_Planilla"/></fo:inline> y el código de la empresa Bancaria 04. 
 Para cualquier consulta relacionada con esta operación, favor mencionar nuestra referencia Nº <fo:inline color="{$txt-rojo}" font-weight="bold"><xsl:value-of select="comex/avisoOrdenDePagoEmitida/numOperacion"/></fo:inline> y
 dirigirse a su Ejecutivo de Comercio Exterior , <fo:inline color="{$txt-rojo}"><xsl:value-of select="comex/avisoOrdenDePagoEmitida/ejecutivoComex"/></fo:inline>.
</fo:block>

<fo:block font-size="8pt" text-align="left">
Atentamente,
</fo:block>
<fo:block font-size="8pt" text-align="left">
Banco de Crédito e Inversiones.
</fo:block>
<fo:block font-size="8pt" text-align="left" color="{$txt-rojo}">
<xsl:value-of select="comex/avisoOrdenDePagoEmitida/numeroTraspaso"/>
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
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOrdenDePagoEmitida/ejecutivoCuenta"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Su ref.
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0"  text-align="left">
				:&#0160;<fo:inline  color="{$txt-rojo}"><xsl:value-of select="comex/avisoOrdenDePagoEmitida/referencia"/></fo:inline>
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
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOrdenDePagoEmitida/sucursal"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Fecha curse
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0"  text-align="left">
				:&#0160;<fo:inline  color="{$txt-rojo}"><xsl:value-of select="comex/avisoOrdenDePagoEmitida/curse"/></fo:inline>
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
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOrdenDePagoEmitida/numOperacion"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Producto  
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0"  text-align="left">
				:&#0160;<fo:inline  color="{$txt-rojo}">Orden de Pago Emitida</fo:inline>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Tipo de Cambio
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOrdenDePagoEmitida/tipoCambio"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Comisión Aplicada
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0"  text-align="left">
				:&#0160;<fo:inline color="{$txt-rojo}"><xsl:value-of select="comex/avisoOrdenDePagoEmitida/divisaComision"/>&#0160;</fo:inline><fo:inline color="{$txt-rojo}"><xsl:value-of select="comex/avisoOrdenDePagoEmitida/monto_Comision"/></fo:inline>
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
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOrdenDePagoEmitida/divisa"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Monto
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0"  text-align="left">
				:&#0160;<fo:inline color="{$txt-rojo}"><xsl:value-of select="comex/avisoOrdenDePagoEmitida/monto"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>


	</fo:table-body>
	</fo:table>
</fo:block>
<!-- fin TABLA UNO -->
</xsl:template>


<xsl:template name="TablaDos">
<!-- TABLA DOS -->
<fo:block>
	<fo:table table-layout="fixed" table-border="0">
	<fo:table-column column-width="4.5cm"/>
	<fo:table-column column-width="4.5cm"/>
	<fo:table-body>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left" background-color="#F0f0f0">
					Monto Remesado
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0"  text-align="left" color="{$txt-rojo}">
				&#0160;<xsl:value-of select="comex/avisoOrdenDePagoEmitida/divisa"/>&#0160;<xsl:value-of select="comex/avisoOrdenDePagoEmitida/montoRemesado"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left" background-color="#F0f0f0">
					Beneficiario
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" text-align="left" color="{$txt-rojo}">
				&#0160;<xsl:value-of select="comex/avisoOrdenDePagoEmitida/beneficiario"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left" background-color="#F0f0f0">
					Corresponsal
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" text-align="left" color="{$txt-rojo}">
				&#0160;<xsl:value-of select="comex/avisoOrdenDePagoEmitida/corresponsal"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left" background-color="#D3D2D2">
					Valuta
				</fo:block>
		
		</fo:table-cell>
		

		<fo:table-cell >

				<fo:block font-size="8pt" border="0"  text-align="left" color="{$txt-rojo}">
				&#0160;<xsl:value-of select="comex/avisoOrdenDePagoEmitida/valuta"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

	</fo:table-body>
	</fo:table>
</fo:block>
<!-- fin TABLA DOS -->
</xsl:template>

<xsl:template name="TablaTres">
<!-- TABLA TRES -->
<fo:block>
	<fo:table table-layout="fixed" table-border="1mm">
	<fo:table-column column-width="6cm"/>
	<fo:table-column column-width="12cm"/>
	<fo:table-body>

		<fo:table-row background-color="#e6e6e6">
		<fo:table-cell number-columns-spanned="2">
				<fo:block border="0" font-size="8pt" text-align="left">
					Detalle Moneda Nacional
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<xsl:for-each select="comex/avisoOrdenDePagoEmitida/detalle/detalleMN">
		<fo:table-row background-color="#f0f0f0">
		<fo:table-cell number-columns-spanned="2">

				<fo:block font-size="8pt" border="0" text-align="left" >
				&#0160;<xsl:value-of select="valor"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		</xsl:for-each>

        <fo:table-row>
		<fo:table-cell text-align="left">
			<fo:block font-size="8pt" font-weight="bold">
				Total pagado mediante
			</fo:block>
		</fo:table-cell>

	
        </fo:table-row>

	</fo:table-body>
	</fo:table>
</fo:block>
<fo:block font-size="8pt" font-weight="normal">
				<xsl:value-of select="comex/avisoOrdenDePagoEmitida/totalPagadoMN"/>
			</fo:block>
<!-- fin TABLA TRES -->
</xsl:template>



</xsl:stylesheet>