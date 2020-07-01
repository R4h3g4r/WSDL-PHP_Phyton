<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!-- tamaño Carta
	<xsl:variable name="varPagAncho">21.59cm</xsl:variable>
	<xsl:variable name="varPagAlto">27.94cm</xsl:variable>
	-->
	<!-- tamaño A4
	<xsl:variable name="varPagAncho">210mm</xsl:variable>
	<xsl:variable name="varPagAlto">297mm</xsl:variable>
	-->
	<!-- tamaño A4 sin margen-->
	<xsl:variable name="varPagAncho">200mm</xsl:variable>
	<xsl:variable name="varPagAlto">287mm</xsl:variable>
	
	<!-- <xsl:variable name="varPagMargenSuperior">1mm</xsl:variable> -->
	<xsl:variable name="varPagMargenSuperior">10mm</xsl:variable>
	<xsl:variable name="varPagMargenInferior">1mm</xsl:variable>
	<xsl:variable name="varPagMargenIzquierdo">1mm</xsl:variable>
	<xsl:variable name="varPagMargenDerecho">1mm</xsl:variable>
	
	<xsl:variable name="varTablaAncho">100%</xsl:variable>
	
	<xsl:variable name="varTablaColumnaLabelAncho">proportional-column-width(24)</xsl:variable>
	<xsl:variable name="varTablaColumnaValorAncho">proportional-column-width(26)</xsl:variable>
	
	<xsl:variable name="varTablaTituloColor">#dedede</xsl:variable>
	<xsl:variable name="varTablaTituloTextColor">#000066</xsl:variable>
	<xsl:variable name="varTablaColumnaLabelColor">#f0f0f0</xsl:variable>
	<xsl:variable name="varTablaColumnaValorColor">#ffffff</xsl:variable>

	<xsl:variable name="varEspacioExtreSecciones">2pt</xsl:variable>
	
	<!--xsl:variable name="varRutaImg">C:\Documents and Settings\ext_jocanal\Desktop\prop_pdf\propuestas_xml</xsl:variable-->
	<xsl:param name="varRutaImg"/>
	<!--xsl:variable name="varRutaImg">W:\WORKDIR\proyectos\apolo\NS_PDF\prop_pdf\propuestas_xml\plantillas</xsl:variable-->
	<xsl:variable name="varRutaLogos"><xsl:value-of select="$varRutaImg"/>/logos/</xsl:variable>
	<xsl:variable name="varRutaFirmas"><xsl:value-of select="$varRutaImg"/>/firmas/</xsl:variable>
</xsl:stylesheet>
