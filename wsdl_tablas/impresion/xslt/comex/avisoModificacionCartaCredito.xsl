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
					 MODIFICACION CARTA DE CRÉDITO
				</fo:block>
			<!-- fin titulo del documento -->

			<!-- Parrafo destinatario -->
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					Señores:
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoModificacionCartaCredito/nombreExportador"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoModificacionCartaCredito/direccionExportador"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoModificacionCartaCredito/ciudadEportador"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="4mm" text-align="left">
					Presente
				</fo:block>
			<!-- fin titulo del documento -->

	<fo:block font-size="8pt" font-weight="normal" text-align="left" space-before="4mm">
					  R.U.T.:&#0160;<xsl:value-of select="comex/avisoModificacionCartaCredito/rutExportador"/>
	</fo:block>


	<fo:block font-size="8pt" font-weight="normal" text-align="left" space-before="4mm">
					 Estimado cliente:
	</fo:block>
	<fo:block font-size="8pt" font-weight="normal" text-align="left" space-after="4mm">
					   Tenemos el agrado de adjuntar a la presente, copia de Carta de
					   Crédito recepcionada a vuestro favor , de acuerdo al siguiente detalle:
	</fo:block>



<xsl:call-template name="TablaPrincipal"/>

<fo:block font-size="8pt" space-before="4mm" text-align="left" font-weight="bold">
<fo:inline text-decoration="underline">Instrucciones Especiales:</fo:inline>
</fo:block>

<fo:block font-size="8pt" text-align="left" font-weight="bold">
 &#0160;<xsl:value-of select="comex/avisoModificacionCartaCredito/instruccionesEspeciales"/>
</fo:block>

<fo:block font-size="8pt" space-before="4mm" text-align="left" font-weight="bold">
<fo:inline text-decoration="underline"> Nota Importante</fo:inline>
</fo:block>
<fo:block font-size="8pt" space-before="0mm" text-align="left">
De acuerdo al artículo 9 letra D Nro. III del folleto 500 de la Cámara de Comercio Internacional 
y a condiciones de la propia modificación, sírvanse informarnos vuestra conformidad o rechazo a la presente modificación.
</fo:block>

<fo:block font-size="8pt" text-align="left" space-before="4mm">
 No obstante, recomendamos analizar cuidadosamente los términos de esta modificación e independiente de su comunicación a 
 nosotros, de existir inconvenientes o discrepancias respecto del cumplimiento de los nuevos términos o en relación a lo 
 acordado con el ordenante, sírvanse contactarlo a objeto de requerir las modificaciones tendientes a no demorar o impedir 
 la negociación y/o pago de los documentos.
</fo:block>
<fo:block font-size="8pt" text-align="left" space-before="4mm">
  Para cualquier consulta relacionada con esta operación, favor mencionar nuestra referencia Nº 
 <fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoModificacionCartaCredito/nuestraReferencia"/></fo:inline>
   y dirigirse a su Ejecutivo de Comercio Exterior, <fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoModificacionCartaCredito/ejecutivoComex"/></fo:inline>
</fo:block>
<fo:block font-size="8pt" text-align="left" space-before="4mm">
  Saludamos atentamente a Ud(s)
</fo:block>
<fo:block font-size="8pt" text-align="left" space-before="4mm">
  Banco de Crédito e Inversiones
</fo:block>
<fo:block font-size="6pt" text-align="left" space-before="0mm">
Nota: Información actualizada a la fecha de emisión de este documento.
</fo:block>




</xsl:template>


<xsl:template name="TablaPrincipal">
<!-- TABLA PRINCIPAL -->
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
					Banco emisor
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				:&#0160;<xsl:value-of select="comex/avisoModificacionCartaCredito/emisorCartaCredito"/>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >
		</fo:table-cell>

		<fo:table-cell >
		</fo:table-cell>
		</fo:table-row>


		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm">
					Rer. Banco emisor
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				:&#0160;<xsl:value-of select="comex/avisoModificacionCartaCredito/referenciaEmisor"/>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >
		</fo:table-cell>

		<fo:table-cell >
		</fo:table-cell>
		</fo:table-row>


		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm">
					Nuestra Referencia
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				:&#0160;<xsl:value-of select="comex/avisoModificacionCartaCredito/nuestraReferencia"/>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >
		</fo:table-cell>

		<fo:table-cell >
		</fo:table-cell>
		</fo:table-row>


		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm">
					Ordenante 
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				:&#0160;<xsl:value-of select="comex/avisoModificacionCartaCredito/nombreOrdenante"/>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >


		
		</fo:table-cell>

		<fo:table-cell >


		
		</fo:table-cell>
		</fo:table-row>


		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm">
					Fecha emisión 
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				:&#0160;<xsl:value-of select="comex/avisoModificacionCartaCredito/emision"/>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm">
					Validez para embarcar 
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				:&#0160;<xsl:value-of select="comex/avisoModificacionCartaCredito/validezEmbarcar"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>


		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm">
					Validez para negociar 
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				:&#0160;<xsl:value-of select="comex/avisoModificacionCartaCredito/validezNegociar"/>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm">
					Moneda y Monto 
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				:&#0160;<xsl:value-of select="comex/avisoModificacionCartaCredito/divisa"/>&#0160;<xsl:value-of select="comex/avisoModificacionCartaCredito/monto"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>


	</fo:table-body>
	</fo:table>
</fo:block>
<!-- fin TABLA PRINCIPAL -->
</xsl:template>



</xsl:stylesheet>