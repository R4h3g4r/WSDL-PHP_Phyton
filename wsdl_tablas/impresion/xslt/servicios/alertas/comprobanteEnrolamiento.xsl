<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:variable name="sello">
		<xsl:value-of select="comprobanteEnrolamiento/rutaImagen"/>sello_bci.gif
	</xsl:variable>
	<xsl:variable name="logo">
		<xsl:value-of select="comprobanteEnrolamiento/rutaImagen"/>logo_banco.gif
	</xsl:variable>
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set >
				<fo:simple-page-master master-name="pagina" 
					page-height="22.7cm"
					page-width="25.5cm"
					margin-top="1cm"
					margin-bottom="1cm"
					margin-left="2cm"
					margin-right="2cm">
					<fo:region-body margin-top="2.5cm" margin-bottom="2.5cm"/> 
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Propiedades pagina -->
			<fo:page-sequence master-reference="pagina" initial-page-number="2" language="en" country="us" >
				<fo:static-content flow-name="xsl-region-before">			
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
				<xsl:call-template name="rut" />
				</fo:flow>
			</fo:page-sequence> 
		</fo:root>
	</xsl:template>
	<xsl:template name="rut" >
	<fo:block font-weight="bold"/>
	<!-- titulo PDF -->
	<fo:block text-aling="left" padding-top="-60pt" margin-left="500pt" space-after="15mm">
		Rut: <xsl:value-of select="comprobanteEnrolamiento/rut"/>
	</fo:block>	
	<fo:block font-weight="bold" background-color="#A4A4A4" space-after="5mm" border="1pt solid" color="#FFFFFF">
		 &#0160;&#0160;Comprobante de Contrato
	</fo:block>
		<!-- Subtitulo del PDF -->
    <fo:block text-aling="left" space-after="3mm" >
		Muy importante: Si es la primera vez que registra el n&#250;mero de celular para el servicio de mensajer&#237;a a celular en breve recibir&#225; un mensaje SMS de bienvenida desde el número 2241, el cual necesitamos que responda con la palabra Ok para poder finalizar exitosamente su proceso de inscripci&#243;n y quedar habilitado para este servicio.
	</fo:block>	
	 <fo:block text-aling="left" space-after="3mm" >
		Si su celular tiene un plan Empresa-Entel, es probable que no pueda recibir estas alertas, cont&#225;ctese con el responsable del servicio en su empresa para ver si existen restricciones para recibir mensajes SMS desde n&#250;meros cortos. 
	</fo:block>	
    <fo:block text-aling="left" space-after="3mm" >
		Servicio no disponible para Virgin Mobile y Nextel.
	</fo:block>	
	 <fo:block text-aling="left" space-after="3mm" >
		Gracias.
	</fo:block>	
	<!-- <fo:table-and-caption> -->
	<fo:table table-layout="fixed" width="19cm"  border-color="black" border="20cm">
	<fo:table-column column-width="19cm" background-image="url({$sello})" background-repeat="no-repeat" padding-top="-30pt" padding-left="-20pt"/>
	<fo:table-column column-width="1.2cm" background-image="url({$logo})" background-repeat="no-repeat" padding-top="220pt" padding-left="535pt"/>
	<fo:table-column  />
	<fo:table-column  />

<!-- Hay que hacer 2 Columnas -->

<!-- Columna que contiene el sello BCI -->
	
	<fo:table-body border="1pt solid" width="10">
		<fo:table-row>
			<fo:table-cell>
				<fo:block text-align="left" margin-left="3mm" font-weight="lighter" padding-top="5pt"  space-after="5mm">
					La suscripci&#243;n al servicio de mensajer&#237;a al celular se ha realizado exitosamente.
				</fo:block>
			</fo:table-cell>	
		</fo:table-row>		
		
		<fo:table-row>
			<fo:table-cell>
				<fo:block text-align="left" space-after="3.5mm" margin-left="200pt" padding-top="40pt">
					Descripci&#243;n
				</fo:block>	
			</fo:table-cell>	
		</fo:table-row>
		<fo:table-row>
			<fo:table-cell>
				<fo:block text-aling="left" margin-left="200pt" space-after="2mm">  
					Nombre Completo:
				</fo:block>	
			</fo:table-cell>	
			<fo:table-cell>
				<fo:block text-align="left" margin-left="-200pt">
					<xsl:value-of select="comprobanteEnrolamiento/nombreCompleto"/>
				</fo:block>	
			</fo:table-cell>	
		</fo:table-row>	
		<fo:table-row>
			<fo:table-cell>
				<fo:block text-align="left" margin-left="200pt" space-after="2mm">
					Tel&#233;fono Celular:
				</fo:block>	
			</fo:table-cell>
			<fo:table-cell>
				<fo:block text-align="left" space-after="10mm"  margin-left="-200pt" font-weight="lighter">
					<xsl:value-of select="comprobanteEnrolamiento/telefono"/>
				</fo:block>	
			</fo:table-cell>	
		</fo:table-row>	
		<fo:table-row>
			<fo:table-cell>
				
			</fo:table-cell>	
		</fo:table-row>	
		<fo:table-row>
			<fo:table-cell>
				
			</fo:table-cell>	
		</fo:table-row>
	</fo:table-body>
</fo:table>
<!--</fo:table-and-caption>-->
		<fo:block space-after="20mm" />
		<fo:block font-weight="lighter">
					No olvide que nuestro n&#250;mero oficial de env&#237;o de SMS es el 2241, as&#237; sabr&#225; que somos nosotros quienes lo estamos contactando.					
		</fo:block>
		<fo:block font-weight="lighter">
			Atenci&#243;n de incidentes y consultas sobre el servicio al 600 824 24 24
		</fo:block>
</xsl:template>
</xsl:stylesheet>