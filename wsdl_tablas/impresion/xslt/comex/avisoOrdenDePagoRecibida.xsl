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
					AVISO ORDEN DE PAGO RECIBIDA
				</fo:block>
			<!-- fin titulo del documento -->

			<!-- Parrafo destinatario -->
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					Señores:
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="bold" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOrdenDePagoRecibida/nombreBeneficiario"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="0mm" text-align="left">
					<fo:inline font-weight="normal" color="{$txt-rojo}"><xsl:value-of select="comex/avisoOrdenDePagoRecibida/ciudadBeneficiario"/></fo:inline>
				</fo:block>
				<fo:block font-size="10pt" font-weight="normal" space-after="4mm" text-align="left">
					Presente
				</fo:block>
			<!-- fin titulo del documento -->

<xsl:call-template name="TablaPrincipal"/>

	<fo:block font-size="8pt" font-weight="normal" text-align="left" space-before="4mm">
					 De nuestra consideración:
	</fo:block>
	<fo:block font-size="8pt" font-weight="normal" text-align="left" space-after="4mm">
					  Hemos recibido la orden de pago detallada a su favor, cuyo importe deberá ser reclamado en nuestra oficina indicada 
					  dentro de un plazo máximo de 30 días, contados desde la fecha de este aviso.
	</fo:block>



<fo:block font-size="8pt" space-before="4mm" space-after="4mm" text-align="left">
Les saluda atentamente a Ud.(es).
</fo:block>

<fo:block font-size="8pt" text-align="left">
Banco de Crédito e Inversiones.
</fo:block>
<fo:block font-size="8pt" text-align="left">
Operaciones Internacionales
</fo:block>
<fo:block font-size="8pt" text-align="left">
 Sección Cambios
</fo:block>




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