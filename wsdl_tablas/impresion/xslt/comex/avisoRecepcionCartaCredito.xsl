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
					AVISO RECEPCIÓN DE CARTA DE CRÉDITO
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
					<fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoRecepcionCartaCredito/direccionExportador"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoRecepcionCartaCredito/ciudadEportador"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="4mm" text-align="left" text-decoration="underline">
					Presente
				</fo:block>
			<!-- fin titulo del documento -->
	<fo:block font-size="8pt" font-weight="normal" text-align="left" space-before="4mm">
					  R.U.T.:&#0160;<fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoRecepcionCartaCredito/rutExportador"/></fo:inline>
	</fo:block>


	<fo:block font-size="8pt" font-weight="normal" text-align="left" space-before="4mm">
					 Estimado cliente:
	</fo:block>
	<fo:block font-size="8pt" font-weight="normal" text-align="left" space-after="4mm">
					   Tenemos el agrado de adjuntar a la presente, copia de Carta de
					   Crédito recepcionada a vuestro favor , de acuerdo al siguiente detalle:
	</fo:block>



<xsl:call-template name="TablaPrincipal"/>

<fo:block font-size="8pt" space-before="4mm" text-align="left">
Recomendamos un examen cuidadoso de todos los términos y condiciones de la Carta de Crédito,
especialmente la descripción de la mercadería, la cual debe ser detallada en las facturas en
los mismos términos. En todo caso, de existir inconvenientes o discrepancias de cualquier índole
en lo acordado con el ordenante, sírvanse contactarlo solicitando efectuar las modificaciones
respectivas, a fin de no demorar la negociación de los documentos y el posterior pago de la misma.
</fo:block>

<fo:block font-size="8pt" text-align="left">
 Los documentos deben ser titulados, tal como son requeridos en la Carta de Crédito.
</fo:block>
<fo:block font-size="8pt" space-before="4mm" text-align="left">
<fo:inline text-decoration="underline">Instrucciones al Exportador:</fo:inline>
</fo:block>
<fo:block font-size="8pt" text-align="left">
 &#0160;<xsl:value-of select="comex/avisoRecepcionCartaCredito/instruccionesExportador"/>
</fo:block>

<fo:block font-size="8pt" space-before="4mm" text-align="left">
<fo:inline text-decoration="underline">IMPORTANTE</fo:inline>
</fo:block>

<fo:block font-size="8pt" text-align="left">
 Este Crédito está sujeto a las reglas y usos uniformes relativos a los 
 "Créditos Documentarios (revisión 1993) publicación Nro. 500 de la Cámara de Comercio Internacional".
</fo:block>

<xsl:variable name="confirm" select="comex/avisoRecepcionCartaCredito/confirmacion"/>

<xsl:if test="$confirm = 'TRUE'"> 
<fo:block font-size="8pt" text-align="left" space-before="4mm">
 Sírvanse adjuntar 1 copia extra de todos los documentos solicitados, para nuestro archivo. Y copia o 
 fotocopia de la declaración de exportación, la que es indispensable para obtener el reembolso.
</fo:block>
<fo:block font-size="8pt" text-align="left">
 Esta Carta de Crédito cuenta con nuestra confirmación.
</fo:block>
<fo:block font-size="8pt" text-align="left">
 Nuestra confirmación queda sujeta al cumplimiento de todos los términos y condiciones estipulados en 
 la Carta de Crédito. Sírvanse adjuntar 1 copia extra de todos los documentos solicitados, para nuestro archivo.
</fo:block>
</xsl:if>

<xsl:if test="$confirm = 'FALSE'"> 
<fo:block font-size="8pt" text-align="left" space-before="4mm">
  Sírvanse adjuntar 1 copia extra de todos los documentos solicitados, para nuestro archivo.
</fo:block>
<fo:block font-size="8pt" text-align="left" space-before="4mm">
 Esta Carta de Crédito no cuenta con nuestra confirmación, por consiguiente sólo nos limitamos a comunicarles su 
 recepción y no asumimos ningún compromiso de pago o aceptación.
</fo:block>
</xsl:if>

<fo:block font-size="8pt" text-align="left" space-before="4mm">
 Para cualquier comunicación con nosotros, sírvanse citar nuestra referencia Nro. 
 <fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoRecepcionCartaCredito/nuestraReferencia"/></fo:inline>
  y vuestro Nro. de R.U.T. y dirigirse a su Ejecutivo de Comercio Exterior, <fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoRecepcionCartaCredito/ejecutivoCOMEX"/></fo:inline>
</fo:block>
<fo:block font-size="8pt" text-align="left" space-before="4mm">
 Atentamente,
</fo:block>
<fo:block font-size="8pt" text-align="left">
  Banco de Crédito e Inversiones
</fo:block>
<fo:block font-size="6pt" text-align="left" space-before="4mm">
 Incl.lo citados
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
					Carta de Crédito emitida por :
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				&#0160;<xsl:value-of select="comex/avisoRecepcionCartaCredito/emisorCartaCredito"/>
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
					Ref. Banco Emisor :
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				&#0160;<xsl:value-of select="comex/avisoRecepcionCartaCredito/referenciaEmisor"/>
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
					Ordenante :
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				&#0160;<xsl:value-of select="comex/avisoRecepcionCartaCredito/nombreOrdenante"/>
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
					Fecha emisión :
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				&#0160;<xsl:value-of select="comex/avisoRecepcionCartaCredito/emision"/>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm">
					Validez para embarcar :
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				&#0160;<xsl:value-of select="comex/avisoRecepcionCartaCredito/validezEmbarcar"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>


		<fo:table-row >
		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm">
					Validez para negociar :
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				&#0160;<xsl:value-of select="comex/avisoRecepcionCartaCredito/validezNegociar"/>
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block border="0" font-size="8pt" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm">
					Moneda y Monto :
				</fo:block>
		
		</fo:table-cell>

		<fo:table-cell >

				<fo:block font-size="8pt" border="0" font-weight="bold" text-align="left" padding-before="1mm" padding-after="1mm" color="{$txt-rojo}">
				&#0160;<xsl:value-of select="comex/avisoRecepcionCartaCredito/divisaOperacion"/>&#0160;<xsl:value-of select="comex/avisoRecepcionCartaCredito/monto_Operacion"/>
				</fo:block>
		
		</fo:table-cell>
		</fo:table-row>


	</fo:table-body>
	</fo:table>
</fo:block>
<!-- fin TABLA PRINCIPAL -->
</xsl:template>



</xsl:stylesheet>