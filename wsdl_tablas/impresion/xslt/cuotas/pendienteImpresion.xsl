<?xml version="1.0" encoding="ISO-8859-1" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
<xsl:decimal-format name="european" decimal-separator=',' grouping-separator='.' />
<xsl:template match="certificado">
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:fox="http://xml.apache.org/fop/extensions">
	<fo:layout-master-set>
		<fo:simple-page-master margin-right="2.0cm" margin-left="2.0cm" margin-bottom="1.0cm" margin-top="1.0cm" page-width="21cm" page-height="29.7cm" master-name="first">
			<fo:region-body margin-bottom="1.5cm" margin-top="1.5cm"/>
		</fo:simple-page-master>
	</fo:layout-master-set>
<fo:page-sequence master-reference="first" language="en" hyphenate="true">
<xsl:variable name="rutaImg">
<xsl:value-of select="DetalleProtesto/ciudad"/>/belwls/bciexpress/img/logo_bci.jpg
</xsl:variable>
<xsl:variable name="rutaImg2">
<xsl:value-of select="DetalleProtesto/ciudad"/>/belwls/bciexpress/img/sello_bci.gif
</xsl:variable>		
<fo:flow flow-name="xsl-region-body"><fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><fo:inline font-size="10pt">
</fo:inline><fo:table text-align="left" table-layout="fixed">
<fo:table-column column-width="2cm"/>
<fo:table-column column-width="10.15cm"/>
<fo:table-body>
<fo:table-row>
<fo:table-cell number-columns-spanned="2"><fo:block line-height="12pt" font-size="14pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Comprobante de Avance Efectivo en Cuotas en Curso</fo:block></fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Empresa:</fo:block></fo:table-cell>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><xsl:value-of select="ProtestosPorCuenta/codProtesto"/></fo:block></fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Rut:</fo:block></fo:table-cell>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><xsl:value-of select="ProtestosPorCuenta/codMotivoProtesto"/></fo:block></fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Usuario:</fo:block></fo:table-cell>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><xsl:value-of select="ProtestosPorCuenta/descMotivoProtesto"/></fo:block></fo:table-cell>
</fo:table-row>
</fo:table-body>
</fo:table>
<fo:table text-align="left" table-layout="fixed">
<fo:table-column column-width="16.30cm"/>
<fo:table-body>
<fo:table-row>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">___________________________________________________________________________________</fo:block></fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end"><xsl:value-of select="ProtestosPorCuenta/ctaCargo"/> - <xsl:value-of select="ProtestosPorCuenta/codEstadoProtesto"/></fo:block></fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">___________________________________________________________________________________</fo:block></fo:table-cell>
</fo:table-row>
</fo:table-body>
</fo:table>
<fo:table text-align="left" table-layout="fixed">
<fo:table-column column-width="16.30cm" />
<fo:table-body>
<fo:table-row>
<fo:table-cell>
<fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="2.5pt" keep-together="always">Datos de Comprobante : </fo:block>
</fo:table-cell>
</fo:table-row>
</fo:table-body>
</fo:table>
<fo:table text-align="left" border-top-style="double" table-layout="double" border-bottom-style="double" border-left-style="double" border-right-style="double">
<fo:table-column column-width="6.30cm"/>
<fo:table-column column-width="5.10cm"/>
<fo:table-column column-width="3cm"/>
<fo:table-column column-width="2cm"/>
<fo:table-body>
<fo:table-row>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end">Cliente : </fo:block></fo:table-cell>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><xsl:value-of select="ProtestosPorCuenta/descMotivoProtesto"/></fo:block></fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end">Usuario de Tarjeta de Cr�dito : </fo:block></fo:table-cell>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><xsl:value-of select="ProtestosPorCuenta/indEnvioBoletin"/></fo:block></fo:table-cell></fo:table-row>
<fo:table-row>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end">Tarjeta de Cr�dito : </fo:block></fo:table-cell>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><xsl:value-of select="ProtestosPorCuenta/oficinaReceptora"/></fo:block></fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end">Cuenta de Destino : </fo:block></fo:table-cell>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><xsl:value-of select="ProtestosPorCuenta/descOficinaReceptora"/></fo:block></fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end">Monto a Abonar en Cuenta Corriente : </fo:block></fo:table-cell>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">$<xsl:value-of select="ProtestosPorCuenta/indDevolucion"/></fo:block></fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end">N� de Cuotas : </fo:block></fo:table-cell>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><xsl:value-of select="ProtestosPorCuenta/indAclaracion"/></fo:block></fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end">Comisi�n : </fo:block></fo:table-cell>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">$<xsl:value-of select="ProtestosPorCuenta/oficinaCargo"/></fo:block></fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end">Tasa de Interes Mensual : </fo:block></fo:table-cell>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><xsl:value-of select="ProtestosPorCuenta/descOficinaCargo"/>%</fo:block></fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end">Monto Cuota Mensual : </fo:block></fo:table-cell>
<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">$<xsl:value-of select="ProtestosPorCuenta/origenProtesto"/></fo:block></fo:table-cell>
</fo:table-row>
</fo:table-body>
</fo:table>

<fo:block space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" id="LastPage" line-height="1pt" font-size="1pt"></fo:block></fo:block></fo:flow>
</fo:page-sequence></fo:root>
</xsl:template>
</xsl:stylesheet>