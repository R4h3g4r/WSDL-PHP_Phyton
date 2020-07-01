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
					 CARTA REMESA DE DOCUMENTOS
				</fo:block>
			<!-- fin titulo del documento -->

			<!-- Parrafo destinatario -->
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					Señores:
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/nombreBancoEmisor"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/direccionBancoEmisor"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/ciudadBancoEmisor"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/paisBancoEmisor"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="right">
					Atn.: Depto. Cobranzas Extranjeras - Exportaciones 
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="4mm" text-align="left">
					<fo:inline text-decoration="underline">Presente</fo:inline>
				</fo:block>
			<!-- fin titulo del documento -->


<fo:block font-size="8pt" text-align="left" font-weight="bold" space-after="4mm">
Referencias:
</fo:block>

            <xsl:call-template name="TablaUno"/>

<fo:block font-size="8pt" space-before="4mm" space-after="4mm" text-align="left">
Con relación al crédito antes citado, nos permitimos enviarles los siguientes documentos:
</fo:block>

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
							Documento
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
Instrucciones Especiales : 
</fo:block>
<fo:block font-size="8pt" text-align="left" space-before="4mm" font-weight="normal">
&#0160;&#0160;&#0160;&#0160;Término y condiciones de L/C cumplidos
</fo:block>
<fo:block font-size="8pt" text-align="left" space-before="4mm" space-after="0mm">
 &#0160;&#0160;&#0160;&#0160;Al vencimiento, <fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/vencimiento"/></fo:inline> 
 nos reembolsaremos de acuerdo a términos de L/C, <fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/divisaNegociacion"/>
 &#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/monto_Negociacion"/></fo:inline>
</fo:block>









<fo:block font-size="8pt" text-align="left" space-before="8mm" font-weight="normal">
Sírvanse acusar recibo de la documentación acompañada.
</fo:block>
<fo:block font-size="8pt" text-align="left">
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
CC/ <xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/beneficiario"/>
</fo:block>
<fo:block font-size="4pt" text-align="left" color="{$txt-rojo}">
(Ref.:<xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/referenciaBeneficiario"/>)
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
					Nuestra
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/nuestraReferencia"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Cedente
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/cedente"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Monto Negociado
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/divisaNegociacion"/>&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/monto_Negociacion"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Vcto
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/vencimiento"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Nro. B/L
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/numeroBL"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Fecha B/L
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/fecha_BL"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Mercadería
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/mercaderia"/></fo:inline>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >
		
		</fo:table-cell>

		<fo:table-cell >

		</fo:table-cell>
		</fo:table-row>


		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Ordenante
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/ordenante"/></fo:inline>
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


		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" text-align="left">
					Beneficiario
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left">
				:&#0160;<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/beneficiario"/></fo:inline>
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






<xsl:template name="TablaOtrosDocs">
<!-- TABLA OTROS DOCS -->
<fo:table table-layout="fixed">
	<xsl:for-each select="comex/avisoCartaRemesaDocsCartaCreditoExp/listaDocumentos/documento">
		<fo:table-column/>
	</xsl:for-each>
<fo:table-body>
	<fo:table-row>

	<xsl:for-each select="comex/avisoCartaRemesaDocsCartaCreditoExp/listaDocumentos/documento">
		<fo:table-cell padding-before="1mm" padding-after="1mm">
			<fo:block font-size="8pt" font-weight="normal" text-align="center">
				<xsl:value-of select="nombre"/>
			</fo:block>
		</fo:table-cell>
	</xsl:for-each>

	</fo:table-row>


	<fo:table-row>

	<xsl:for-each select="comex/avisoCartaRemesaDocsCartaCreditoExp/listaDocumentos/documento">
		<fo:table-cell padding-before="1mm" padding-after="1mm">
			<fo:block font-size="8pt" font-weight="normal" text-align="center">
				<xsl:value-of select="originales"/>
			</fo:block>
		</fo:table-cell>
	</xsl:for-each>

	</fo:table-row>


	<fo:table-row>

	<xsl:for-each select="comex/avisoCartaRemesaDocsCartaCreditoExp/listaDocumentos/documento">
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
				:&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/nuestraReferencia"/>
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
				:&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/nombreDelGirador"/>
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
				:&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/nombreGirado"/>
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
				:&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/divisaCobranza"/>&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCobranza/monto_Cobranza"/>
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
				:&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/vencimiento"/>
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
				:&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/entregaDocsContra"/>
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
				:&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/condicionesProtesto"/>
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
				:&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/numeroBL"/>
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
				:&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/fecha_BL"/>
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
				:&#0160;<xsl:value-of select="comex/avisoCartaRemesaDocsCartaCreditoExp/mercaderia"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>

	</fo:table-body>
	</fo:table>
</fo:block>
<!-- fin TABLA PRINCIPAL -->
</xsl:template>


</xsl:stylesheet>