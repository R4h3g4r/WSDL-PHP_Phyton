<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:variable name="sello"><!--<xsl:value-of select="comprobanteContratacion/imagen">-->
		<xsl:value-of select="comprobanteContratacion/rutaImagen"/>sello_bci.gif
	</xsl:variable>
	<xsl:variable name="logo"><!--<xsl:value-of select="comprobanteContratacion/logo">-->
		<xsl:value-of select="comprobanteContratacion/rutaImagen"/>logo_banco.gif
	</xsl:variable>
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set >
				<fo:simple-page-master master-name="pagina" 
					page-height="40cm"
					page-width="25.5cm"
					margin-top="3cm"
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
	<fo:block text-aling="left" padding-top="-95pt" margin-left="500pt" space-after="15mm">
		Rut: <xsl:value-of select="comprobanteContratacion/rut"/>
	</fo:block>	
	<fo:block text-aling="left" margin-left="" font-weight="bold" background-color="#A4A4A4" space-after="5mm" border="1pt solid" color="#FFFFFF">
		 &#0160;&#0160;Comprobante de Contrato 
	</fo:block>
	<!-- Subtitulo del PDF -->	
	<!-- <fo:table-and-caption> -->
	

	<fo:table table-layout="fixed" width="19cm"  border-color="black" border="20cm">

	<fo:table-column column-width="20cm" background-image="url({$sello})" background-repeat="no-repeat" padding-top="-110pt" padding-left="-20pt"/>
	<fo:table-column column-width="1.2cm" background-image="url({$logo})" background-repeat="no-repeat" padding-top="110pt" padding-left="550pt"/>
	<fo:table-column  />
	<fo:table-column  />

<!-- Hay que hacer 2 Columnas -->

<!-- Columna que contiene el sello BCI -->
	
	<fo:table-body border="1pt solid" width="21.5" padding-top="1pt">
		<fo:table-row>
			<fo:table-cell>
				<fo:block text-aling="left" margin-left="5pt" font-weight="lighter"  space-after="5mm" padding-top="5pt">
					La suscripci&#243;n de sus alertas se ha realizado exitosamente. A continuaci&#243;n presentamos el detalle:
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
		<fo:table-row>
			<fo:table-cell>				
				<fo:block text-aling="left" margin-left="5pt" font-weight="lighter" space-after="10mm" font-size="16pt">
					Alertas contratadas
				</fo:block>
			</fo:table-cell>	
		</fo:table-row>	
		<fo:table-row >
			<fo:table-cell>
				<fo:block margin-left="15pt" padding-top="-5pt">
					Producto
				</fo:block>
			</fo:table-cell>
			<fo:table-cell>
				<fo:block margin-left="-350pt" padding-top="-5pt">
					Asignada a 					
				</fo:block>
			</fo:table-cell>
			<fo:table-cell>
				<fo:block margin-left="-180pt" padding-top="-5pt">
					Con Cargo a
				</fo:block>
			</fo:table-cell>
		</fo:table-row >
		<fo:table-row >
			<fo:table-cell>
				<fo:block text-aling="left" margin-left="5pt" font-weight="lighter">
					<xsl:value-of select="comprobanteContratacion/producto"/>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell>
				<fo:block  font-weight="lighter" margin-left="-350pt" > 
					<xsl:value-of select="comprobanteContratacion/cuentaAlerta"/>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell>
				<fo:block space-after="10mm" margin-left="-170pt"  font-weight="lighter">
					<xsl:value-of select="comprobanteContratacion/cuentaCargo"/>
				</fo:block>
			</fo:table-cell>
		</fo:table-row>	
		<fo:table-row>
			<fo:table-cell>
			<fo:block space-after="5mm" margin-left="250pt">
					Descripci&#243;n
				</fo:block>
			</fo:table-cell>	
		</fo:table-row>
		<xsl:if test="comprobanteContratacion/contrataciones !=''" >
		<fo:table-row>
			<fo:table-cell>
				<fo:block font-weight="lighter" space-after="20mm" margin-left="250pt">
					Alertas contratadas correctamente
				</fo:block>
			</fo:table-cell>	
	
			<fo:table-cell>
				<fo:block font-weight="lighter" text-align="left" margin-left="-20pt">
					Valor $
				</fo:block>	
			</fo:table-cell>	
		</fo:table-row>	
		
			<xsl:for-each select="comprobanteContratacion/contrataciones">
				<fo:table-row>	
					<fo:table-cell>
						<fo:block text-aling="left" padding-top="-35pt" margin-left="250pt" space-after="15mm">
							<xsl:value-of select="glosasSeparadas" />&#0160;
							<xsl:value-of select="mtoAdicional"/>
						</fo:block>	
					</fo:table-cell>
					<fo:table-cell>
						<fo:block  text-aling="left" padding-top="-35pt" margin-left="-10pt">
							<xsl:value-of select="preciosSeparados"/>
						</fo:block>
					</fo:table-cell>		
				</fo:table-row>	
				
			</xsl:for-each>
			</xsl:if>
				<xsl:if test="comprobanteContratacion/contratacionesError !=''">
		<fo:table-row>
			<fo:table-cell>				
					<fo:block font-weight="lighter" space-after="20mm" margin-left="250pt">
					Alertas no contratadas
				</fo:block>
			</fo:table-cell>	
				<fo:table-cell>				
				<fo:block font-weight="lighter" text-align="left" margin-left="-10pt">
					Valor $
				</fo:block>
			</fo:table-cell>	
			
		</fo:table-row>	


			<xsl:for-each select="comprobanteContratacion/contratacionesError">
				<fo:table-row>	
					<fo:table-cell>
						<fo:block text-aling="left" padding-top="-35pt" margin-left="250pt" space-after="15mm">
							<xsl:value-of select="glosasSeparadasError"/>&#0160;
							<xsl:value-of select="mtoAdicionalError"/>
						</fo:block>	
					</fo:table-cell>
					<fo:table-cell>
						<fo:block text-aling="right" padding-top="-35pt" >
							<xsl:value-of select="preciosSeparadosError"/>
						</fo:block>
					</fo:table-cell>		
				</fo:table-row>	
			</xsl:for-each>
			</xsl:if>

		<fo:table-row>
			<fo:table-cell>
				<fo:block text-align="left" space-after="3.5mm" margin-left="50pt">
					Datos Titular
				</fo:block>	
			</fo:table-cell>	
		</fo:table-row>
		<fo:table-row>
			<fo:table-cell>
				<fo:block text-aling="left" margin-left="50pt">  
					Nombre Completo:
				</fo:block>	
			</fo:table-cell>	
			<fo:table-cell>
				<fo:block text-align="left" margin-left="-200pt">
					Tel&#233;fono Celular:
				</fo:block>	
			</fo:table-cell>	
		</fo:table-row>	
		<fo:table-row>
			<fo:table-cell>
				<fo:block text-align="left" margin-left="55pt" font-weight="lighter">
					<xsl:value-of select="comprobanteContratacion/nombreCompleto"/>
				</fo:block>	
			</fo:table-cell>
			<fo:table-cell>
				<fo:block text-align="left" space-after="10mm"  margin-left="-185pt" font-weight="lighter">
					<xsl:value-of select="comprobanteContratacion/telefono"/>
				</fo:block>	
			</fo:table-cell>	
		</fo:table-row>	
	</fo:table-body>
</fo:table>
<!--</fo:table-and-caption>-->
		<fo:block space-after="20mm" />
		<fo:block font-weight="lighter" space-after="10mm" font-size="8pt">
		</fo:block>
</xsl:template>
</xsl:stylesheet>

