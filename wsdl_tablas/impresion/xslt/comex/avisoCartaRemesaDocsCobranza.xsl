<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
<xsl:variable name="lineas">#CCCCCC</xsl:variable>
<xsl:variable name="txt">#000000</xsl:variable>
<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
<xsl:variable name="txt-azul-oscuro">#E7E5EF</xsl:variable>
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
					 CARTA REMESA DE DOCUMENTOS
				</fo:block>
			<!-- fin titulo del documento -->

			<!-- Parrafo destinatario -->
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					Señores:
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/nombreCliente"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/direccionCliente"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/ciudadCliente"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/paisCliente"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="right">
					Atn.: Depto. Cobranzas Extranjeras - Exportaciones 
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="4mm" text-align="left">
					<fo:inline text-decoration="underline">Presente</fo:inline>
				</fo:block>
			<!-- fin titulo del documento -->


	<fo:block font-size="8pt" font-weight="normal" text-align="left" space-before="4mm">
					 Estimados señores:
	</fo:block>
	<fo:block font-size="8pt" font-weight="normal" text-align="left" space-after="4mm">
					  Sírvanse encontrar adjunto a la presente, Documento(s) para Cobranza, que les agradeceremos manejar bajo 
					  las siguientes instrucciones :
	</fo:block>

<fo:block font-size="8pt" text-align="left" font-weight="bold" space-after="4mm">
Referencias:
</fo:block>

            <xsl:call-template name="TablaPrincipal"/>

<fo:block font-size="8pt" space-before="4mm" space-after="4mm" text-align="left">
Con relación al crédito antes citado, nos permitimos enviarles los siguientes documentos:
</fo:block>

            <xsl:call-template name="TablaDocumentos"/>

<fo:block space-before="4mm">
<fo:table table-layout="fixed">
<fo:table-column/>
<fo:table-column/>
<fo:table-body>
	<fo:table-row>
		<fo:table-cell>
		<fo:block text-align="center">
		<!-- sub tabla -->
			<fo:table table-layout="fixed">
			<fo:table-column/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="left" padding-before="1mm" padding-after="1mm">
							Otro(s) Documento(s) 
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="left" padding-before="1mm" padding-after="1mm">
							Original(es)
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="left" padding-before="1mm" padding-after="1mm">
							Copia(s)
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		<!-- fin sub tabla -->
		</fo:block>
		</fo:table-cell>
		<fo:table-cell>
		<fo:block text-align="left">
			<xsl:call-template name="TablaOtrosDocs"/>
		</fo:block>
		</fo:table-cell>
	</fo:table-row>
</fo:table-body>
</fo:table>
</fo:block>


<fo:block font-size="8pt" text-align="left" space-before="8mm" font-weight="bold">
Plan de Pago
</fo:block>
<fo:block font-size="8pt" text-align="left" space-before="4mm" font-weight="bold">
Vencimiento&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;Moneda y Monto
</fo:block>



<xsl:for-each select="comex/avisoCartaRemesaDocsCobranza/planDePago/detalle">
<fo:block font-size="8pt" text-align="left" color="{$txt-rojo}">
<xsl:value-of select="vencimiento"/>&#0160;&#0160;&#0160;&#0160;&#0160;
&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="glosaMoneda"/>&#0160;<xsl:value-of select="montoCuota"/>
</fo:block>
</xsl:for-each>








<fo:block font-size="8pt" text-align="left" space-before="8mm" font-weight="bold">
Instrucciones de Reembolso:
</fo:block>
<fo:block font-size="8pt" text-align="left" color="{$txt-rojo}">
	<fo:list-block>
		<fo:list-item>
			<fo:list-item-label>
				<fo:block>*</fo:block>
			</fo:list-item-label>
			<fo:list-item-body>
				<fo:block>&#0160;&#0160;&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/instruccionesReembolso"/></fo:block>
			</fo:list-item-body>
		</fo:list-item>
	</fo:list-block>
</fo:block>


<fo:block font-size="8pt" text-align="left" space-before="8mm" font-weight="bold">
Instrucciones especiales:
</fo:block>
<fo:block font-size="8pt" text-align="left" space-before="0mm" color="{$txt}">
 <fo:list-block>
 	<fo:list-item>
 		<fo:list-item-label>
   			<fo:block>*</fo:block>
 		</fo:list-item-label>
 		<fo:list-item-body>
   			<fo:block>&#0160;&#0160;&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/instruccionesEspeciales"/></fo:block>
 		</fo:list-item-body>
 	</fo:list-item>
 </fo:list-block>
</fo:block>


<fo:block font-size="8pt" text-align="left" space-before="8mm">
Sin otro particular, les saluda atentamente,
</fo:block>


<fo:block font-size="8pt" text-align="left" space-before="8mm">
Banco de Crédito e Inversiones
</fo:block>
<fo:block font-size="8pt" text-align="left">
Depto. Internacional Huérfanos 1134
</fo:block>
<fo:block font-size="8pt" text-align="left">
P.O. BOX 136 D- Santiago - Chile
</fo:block>


<fo:block font-size="4pt" text-align="left" space-before="8mm" color="{$txt-rojo}">
CC/ <xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/nombreDelGirador"/>
</fo:block>


</xsl:template>

<xsl:template name="TablaOtrosDocs">
<!-- TABLA OTROS DOCS -->
<fo:table table-layout="fixed">
	<xsl:for-each select="comex/avisoCartaRemesaDocsCobranza/detalles/detalle">
		<fo:table-column/>
	</xsl:for-each>
<fo:table-body>
	<fo:table-row>

	<xsl:for-each select="comex/avisoCartaRemesaDocsCobranza/detalles/detalle">
		<fo:table-cell padding-before="1mm" padding-after="1mm">
			<fo:block font-size="8pt" font-weight="normal" text-align="center">
				<xsl:value-of select="descripcion"/>
			</fo:block>
		</fo:table-cell>
	</xsl:for-each>

	</fo:table-row>


	<fo:table-row>

	<xsl:for-each select="comex/avisoCartaRemesaDocsCobranza/detalles/detalle">
		<fo:table-cell padding-before="1mm" padding-after="1mm">
			<fo:block font-size="8pt" font-weight="normal" text-align="center">
				<xsl:value-of select="originales"/>
			</fo:block>
		</fo:table-cell>
	</xsl:for-each>

	</fo:table-row>


	<fo:table-row>

	<xsl:for-each select="comex/avisoCartaRemesaDocsCobranza/detalles/detalle">
		<fo:table-cell padding-before="1mm" padding-after="1mm">
			<fo:block font-size="8pt" font-weight="normal" text-align="center">
				<xsl:value-of select="copias"/>
			</fo:block>
		</fo:table-cell>
	</xsl:for-each>

	</fo:table-row>

</fo:table-body>
</fo:table>
<!-- fin tabla otros docs -->
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

				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="left" padding-before="1mm" padding-after="1mm">
					Nuestra ref. 
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				:&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/nuestraReferencia"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="left" padding-before="1mm" padding-after="1mm">
					Girador 
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				:&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/nombreDelGirador"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="left" padding-before="1mm" padding-after="1mm">
					Girado
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				:&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/nombreGirado"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="left" padding-before="1mm" padding-after="1mm">
					Monto
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				:&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/divisaCobranza"/>&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/monto_Cobranza"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="left" padding-before="1mm" padding-after="1mm">
					Vcto
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				:&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/vencimiento"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="left" padding-before="1mm" padding-after="1mm">
					Entrega de Documentos contra 
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				:&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/entregaDocsContra"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="left" padding-before="1mm" padding-after="1mm">
					Condición de Protesto
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				:&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/condicionesProtesto"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="left" padding-before="1mm" padding-after="1mm">
					Nro. B/L 
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				:&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/numeroBL"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="left" padding-before="1mm" padding-after="1mm">
					Fecha B/L
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				:&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/fecha_BL"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="left" padding-before="1mm" padding-after="1mm">
					Mercadería
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				:&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/mercaderia"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

	</fo:table-body>
	</fo:table>
</fo:block>
<!-- fin TABLA PRINCIPAL -->
</xsl:template>

<xsl:template name="TablaDocumentos">
<!-- TABLA DOCUMENTOS -->
<fo:table table-layout="fixed" table-border="0">
<fo:table-column column-width="3cm"/>
<fo:table-column column-width="3cm"/>
<fo:table-column column-width="2cm"/>
<fo:table-column column-width="2cm"/>
<fo:table-column column-width="2cm"/>
<fo:table-column column-width="2cm"/>
<fo:table-column column-width="2cm"/>
<fo:table-column column-width="2cm"/>
<fo:table-body>
	<fo:table-row>

		<fo:table-cell>
				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="center" padding-before="1mm" padding-after="1mm">
					Documento
				</fo:block>
		</fo:table-cell>


		<fo:table-cell>
				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="center" padding-before="1mm" padding-after="1mm">
					Factura
				</fo:block>
		</fo:table-cell>


		<fo:table-cell>
				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="center" padding-before="1mm" padding-after="1mm">
					B/L
				</fo:block>
		</fo:table-cell>


		<fo:table-cell>
				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="center" padding-before="1mm" padding-after="1mm">
					Seguro
				</fo:block>
		</fo:table-cell>


		<fo:table-cell>
				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="center" padding-before="1mm" padding-after="1mm">
					Lista Empaque
				</fo:block>
		</fo:table-cell>


		<fo:table-cell>
				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="center" padding-before="1mm" padding-after="1mm">
					Cert. Origen
				</fo:block>
		</fo:table-cell>


		<fo:table-cell>
				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="center" padding-before="1mm" padding-after="1mm">
					Cert. Análisis
				</fo:block>
		</fo:table-cell>


		<fo:table-cell>
				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="center" padding-before="1mm" padding-after="1mm">
					Cert. Peso
				</fo:block>
		</fo:table-cell>


	</fo:table-row>

	<fo:table-row>

		<fo:table-cell>
				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="left" padding-before="1mm" padding-after="1mm">
					Original(es)
				</fo:block>
		</fo:table-cell>


		<fo:table-cell>
				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="center" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
					&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/originalesDocsFactura"/>
				</fo:block>
		</fo:table-cell>


		<fo:table-cell>
				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="center" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
					<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/originalesDocsBL"/>
				</fo:block>
		</fo:table-cell>


		<fo:table-cell>
				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="center" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
					&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/originalesDocsSeguro"/>
				</fo:block>
		</fo:table-cell>


		<fo:table-cell>
				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="center" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
					&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/originalesDocsListaEmpaque"/>
				</fo:block>
		</fo:table-cell>


		<fo:table-cell>
				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="center" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
					&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/originalesDocsOrigen"/>
				</fo:block>
		</fo:table-cell>


		<fo:table-cell>
				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="center" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
					&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/originalesDocsAnalisis"/>
				</fo:block>
		</fo:table-cell>


		<fo:table-cell>
				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="center" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
					&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/originalesDocsPeso"/>
				</fo:block>
		</fo:table-cell>

	</fo:table-row>

	<fo:table-row>

		<fo:table-cell>
				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="left" padding-before="1mm" padding-after="1mm">
					Copia(s)
				</fo:block>
		</fo:table-cell>


		<fo:table-cell>
				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="center" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
					&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/copiaDocsFactura"/>
				</fo:block>
		</fo:table-cell>


		<fo:table-cell>
				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="center" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
					<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/copiaDocsBL"/>
				</fo:block>
		</fo:table-cell>


		<fo:table-cell>
				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="center" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
					&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/copiaDocsSeguro"/>
				</fo:block>
		</fo:table-cell>


		<fo:table-cell>
				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="center" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
					&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/copiaDocsListaEmpaque"/>
				</fo:block>
		</fo:table-cell>


		<fo:table-cell>
				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="center" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
					&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/copiaDocsOrigen"/>
				</fo:block>
		</fo:table-cell>


		<fo:table-cell>
				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="center" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
					&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/copiaDocsAnalisis"/>
				</fo:block>
		</fo:table-cell>


		<fo:table-cell>
				<fo:block border="0" font-size="8pt" font-weight="normal" text-align="center" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
					&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/copiaDocsPeso"/>
				</fo:block>
		</fo:table-cell>

	</fo:table-row>

</fo:table-body>
</fo:table>
<!-- fin tabla documentos -->
</xsl:template>



</xsl:stylesheet>