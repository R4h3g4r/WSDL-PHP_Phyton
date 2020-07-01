<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.1" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo"
>
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />
 
  
    <xsl:template match="ComprobanteSolicitud">
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xf="http://www.ecrion.com/xf/1.0" xmlns:xc="http://www.ecrion.com/2008/xc" xmlns:svg="http://www.w3.org/2000/svg">
	<fo:layout-master-set>
		<fo:simple-page-master master-name="Letter Page" page-width="215.900mm" page-height="279.400mm">
			<fo:region-body region-name="xsl-region-body" margin="17.780mm" />
			<fo:region-before region-name="xsl-region-before" display-align="after" extent="17.780mm"/>
			<fo:region-after region-name="xsl-region-after" display-align="before" extent="17.780mm"/>
			<fo:region-start region-name="xsl-region-start" extent="17.780mm"/>
			<fo:region-end region-name="xsl-region-end" extent="17.780mm"/>
		</fo:simple-page-master>
	</fo:layout-master-set>
	<fo:page-sequence master-reference="Letter Page">
		<fo:static-content flow-name="xsl-region-before" font-size="12pt" font-family="Times">
			<fo:block>&#x00A0;</fo:block>
		</fo:static-content>
		<fo:static-content flow-name="xsl-region-after" font-size="12pt" font-family="Times">
			<fo:block>&#x00A0;</fo:block>
		</fo:static-content>
		<fo:static-content flow-name="xsl-region-start" font-size="12pt" font-family="Times">
			<fo:block>&#x00A0;</fo:block>
		</fo:static-content>
		<fo:static-content flow-name="xsl-region-end" font-size="12pt" font-family="Times">
			<fo:block>&#x00A0;</fo:block>
		</fo:static-content>
		<fo:flow flow-name="xsl-region-body" font-family="Times" font-size="12pt">
			<fo:block font-family="Arial, Helvetica, sans-serif" font-size="16pt" font-weight="bold">Crédito de Consumo</fo:block>
			<fo:block font-family="Arial, Helvetica, sans-serif" font-size="20pt" font-weight="bold">Comprobante de Solicitud</fo:block>
			<fo:block font-family="Arial" font-size="10pt">&#x00A0;</fo:block>
			<fo:block font-family="Arial" font-size="10pt">
			
			
			
			  <xsl:call-template name="FormatDate">
			    <xsl:with-param name="DateTime" select="fechaActual"/>
			  </xsl:call-template>
			
			
			
			
			</fo:block>
			<fo:block font-family="Arial" font-size="10pt">&#x00A0;</fo:block>
			<fo:block font-family="Arial" font-size="10pt">
				<fo:table table-layout="fixed" width="100%" border-collapse="collapse">
					<fo:table-column column-width="proportional-column-width(80.446)" column-number="1"/>
					<fo:table-column column-width="proportional-column-width(19.554)" column-number="2"/>
					<fo:table-body border="1px solid yellow" background-color="#FFFEE8">
						<fo:table-row height="23.975mm" overflow="hidden">
							<fo:table-cell padding="2pt" display-align="center" text-align="left" border-bottom-width="1pt" border-bottom-color="black" border-left-width="1pt" border-left-color="black" border-right-width="1pt" border-right-color="black" border-top-width="1pt" border-top-color="black">
								<fo:block font-family="Arial, Helvetica, sans-serif" font-size="14pt" font-weight="bold">Su solicitud ha sido enviada exitosamente</fo:block>
								<fo:block font-family="Arial, Helvetica, sans-serif" font-size="14pt" font-weight="bold">&#x00A0;</fo:block>
								<fo:block></fo:block>
								<fo:block>
									<fo:block>
										Un ejecutivo se contactará con usted a la brevedad.
									</fo:block>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt" border-top-width="1pt" border-top-color="black" border-right-width="1pt" border-right-color="black" border-bottom-width="1pt" border-bottom-color="black" border-left-width="1pt" border-left-color="black">
								<fo:block text-align="center">
									<fo:external-graphic>
										<xsl:attribute name="src">
										<xsl:value-of select="timbre"/>
										</xsl:attribute>									
									</fo:external-graphic>	
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<fo:block font-family="Arial" font-size="10pt">&#x00A0;</fo:block>
			<fo:block font-family="Arial, Helvetica, sans-serif" font-size="14pt" font-weight="bold">Condiciones del Crédito</fo:block>
			<fo:block font-family="Arial, Helvetica, sans-serif" font-size="14pt" font-weight="bold" text-align="center">
				<fo:table table-layout="fixed" width="100%" border-collapse="collapse">
					<fo:table-column column-width="proportional-column-width(50)" column-number="1"/>
					<fo:table-column column-width="proportional-column-width(50)" column-number="2"/>
					<fo:table-body>
						<fo:table-row background-color="#E5E5E5">
							<fo:table-cell padding="2pt" display-align="center" text-align="center">
								<fo:block font-size="10pt" text-align="right">Nombres :</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt">
								<fo:block text-align="left" font-size="10pt" font-weight="normal"><xsl:value-of select="nombres"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2pt" display-align="center" text-align="center">
								<fo:block text-align="right" font-size="10pt">Apellido Paterno :</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt">
								<fo:block text-align="left" font-size="10pt" font-weight="normal"><xsl:value-of select="apellidoPaterno"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row background-color="#E5E5E5">
							<fo:table-cell padding="2pt" display-align="center" text-align="center">
								<fo:block text-align="right" font-size="10pt">Apellido Materno :</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt">
								<fo:block text-align="left" font-size="10pt" font-weight="normal"><xsl:value-of select="apellidoMaterno"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2pt" display-align="center" text-align="center">
								<fo:block text-align="right" font-size="10pt">RUT :</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt">
								<fo:block text-align="left" font-size="10pt" font-weight="normal"><xsl:value-of select="rutClienteCompleto"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row background-color="#E5E5E5">
							<fo:table-cell padding="2pt" display-align="center" text-align="center">
								<fo:block text-align="right" font-size="10pt">Número de solicitud :</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt">
								<fo:block text-align="left" font-size="10pt" font-weight="normal"><xsl:value-of select="numeroOperacion"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2pt" display-align="center" text-align="center">
								<fo:block text-align="right" font-size="10pt">Monto líquido del crédito :</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt">
								<fo:block text-align="left" font-size="10pt" font-weight="normal"><xsl:value-of select="montoLiquido"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row background-color="#E5E5E5">
							<fo:table-cell padding="2pt" display-align="center" text-align="center">
								<fo:block text-align="right" font-size="10pt">Impuestos y seguros :</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt">
								<fo:block text-align="left" font-size="10pt" font-weight="normal"><xsl:value-of select="impuestosSeguros"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2pt" display-align="center" text-align="center">
								<fo:block text-align="right" font-size="10pt">Monto final del crédito :</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt">
								<fo:block text-align="left" font-size="10pt" font-weight="normal"><xsl:value-of select="montoFinal"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row background-color="#E5E5E5">
							<fo:table-cell padding="2pt" display-align="center" text-align="center">
								<fo:block text-align="right" font-size="10pt">Tasa final :</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt">
								<fo:block text-align="left" font-size="10pt" font-weight="normal"><xsl:value-of select="tasaFinal"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2pt" display-align="center" text-align="center">
								<fo:block text-align="right" font-size="10pt">Valor de la cuota :</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt">
								<fo:block text-align="left" font-size="10pt" font-weight="normal"><xsl:value-of select="cuota"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row background-color="#E5E5E5">
							<fo:table-cell padding="2pt" display-align="center" text-align="center">
								<fo:block text-align="right" font-size="10pt">Meses de no pago :</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt">
							  <fo:block text-align="left" font-size="10pt" font-weight="normal"><xsl:value-of select="cantidadMesesNoPago"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2pt" display-align="center" text-align="center">
								<fo:block text-align="right" font-size="10pt">Fecha de vencimiento :</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt" display-align="center" text-align="center">
								<fo:block text-align="left" font-size="10pt" font-weight="normal"><xsl:value-of select="fechaPrimerVencimiento"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>&#x00A0;</fo:block>
			
		</fo:flow>
	</fo:page-sequence>
</fo:root>

</xsl:template>






 <xsl:template name="FormatDate">
	 <xsl:param name="DateTime" />
	 <xsl:variable name="day">
	 	<xsl:value-of select="substring-before($DateTime,'/')" />
	 </xsl:variable>
	 <xsl:variable name="mo-temp">
	 	<xsl:value-of select="substring-after($DateTime,'/')" />
	 </xsl:variable>
	 <xsl:variable name="mo">
	 	<xsl:value-of select="substring-before($mo-temp,'/')" />
	 </xsl:variable>
	 <xsl:variable name="year-temp">
	 	<xsl:value-of select="substring-after($mo-temp,'/')" />
	 </xsl:variable>
	 <xsl:variable name="year">
	 	<xsl:value-of select="substring($year-temp,1,4)" />
	 </xsl:variable>
	 
	 <xsl:value-of select="$day"/>
	 <xsl:value-of select="' de '"/>
	 <xsl:choose>
	 	<xsl:when test="$mo = '1' or $mo = '01'">Enero</xsl:when>
	 	<xsl:when test="$mo = '2' or $mo = '02'">Febrero</xsl:when>
	 	<xsl:when test="$mo = '3' or $mo = '03'">Marzo</xsl:when>
	 	<xsl:when test="$mo = '4' or $mo = '04'">Abril</xsl:when>
	 	<xsl:when test="$mo = '5' or $mo = '05'">Mayo</xsl:when>
	 	<xsl:when test="$mo = '6' or $mo = '06'">Junio</xsl:when>
	 	<xsl:when test="$mo = '7' or $mo = '07'">Julio</xsl:when>
	 	<xsl:when test="$mo = '8' or $mo = '08'">Agosto</xsl:when>
	 	<xsl:when test="$mo = '9' or $mo = '09'">Septiembre</xsl:when>
	 	<xsl:when test="$mo = '10'">Octubre</xsl:when>
	 	<xsl:when test="$mo = '11'">Noviembre</xsl:when>
 		<xsl:when test="$mo = '12'">Diciembre</xsl:when>
	 </xsl:choose>
	 <xsl:value-of select="' de '"/>
	 <xsl:value-of select="$year"/>
 	
</xsl:template> 



</xsl:stylesheet>