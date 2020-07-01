<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<!-- Variables -->
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina"
					page-height="28cm"
					page-width="23cm"
					margin-top="1cm"
					margin-bottom="1cm"
					margin-left="2cm"
					margin-right="2cm">
					<fo:region-body margin-top="2cm" margin-bottom="2.5cm" background-color="#ffffff"/> 
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Propiedades pagina -->
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
				<fo:static-content flow-name="xsl-region-before">
					<fo:block font-size="14pt" font-weight="normal" space-after="1mm" text-align="left">
						<xsl:value-of select="/principal/titulo"/>
					</fo:block>
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after">
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
				<fo:block position="absolute" font-family="Arial,Helvetica,sans-serif" font-size="11.00pt" font-weight="bold" height="7.41mm" left="0.34mm" top="38.79mm" width="180.01mm" text-align="left" >
					<fo:table width="180.00mm" table-layout="fixed" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black">
									<fo:table-column column-width="35.00mm"/>
									<fo:table-column column-width="35.00mm"/>
									<fo:table-column column-width="40.00mm"/>
									<fo:table-column column-width="35.00mm"/> 
									<fo:table-column column-width="35.00mm"/>
									<fo:table-header border="inherit" font-size="10.00pt" font-weight="bold" text-align="center">
										<fo:table-row border="inherit">
											<fo:table-cell border="inherit" padding="4pt">
												<fo:block>
													Fecha Aprobacion
												</fo:block>
											</fo:table-cell>
											<fo:table-cell border="inherit" padding="4pt">
												<fo:block>
													Fecha Balance
												</fo:block>
											</fo:table-cell>
											<fo:table-cell border="inherit" padding="4pt">
												<fo:block>
													Calificacion Actual
												</fo:block>
											</fo:table-cell>
											<fo:table-cell border="inherit" padding="4pt">
												<fo:block>
													Ejecutivo
												</fo:block>
											</fo:table-cell>
											<fo:table-cell border="inherit" padding="4pt">
												<fo:block>
													Aprobado Por
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-header>
									<fo:table-body font-weight="normal" border="0.5pt solid black">
										<xsl:for-each select="/principal/historial/historia">
											<fo:table-row border="inherit">
												<fo:table-cell border="inherit" padding="2pt">
													<fo:block font-size="10.00pt" text-align="center">
															<xsl:value-of select="fechaAprobacion"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell  border="inherit" padding="2pt">
													<fo:block font-size="10.00pt" text-align="center">
															<xsl:value-of select="fechaBalance"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell  border="inherit" padding="2pt">
													<fo:block  font-size="10.00pt" text-align="center">
															<xsl:value-of select="calificacion"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell  border="inherit" padding="2pt">
													<fo:block font-size="10.00pt" text-align="center">
															<xsl:value-of select="ejecutivo"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell  border="inherit" padding="2pt">
													<fo:block font-size="10.00pt" text-align="center">
															<xsl:value-of select="aprobadoPor"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</xsl:for-each>		
									</fo:table-body>
								</fo:table>
				</fo:block>
				</fo:flow>				
			</fo:page-sequence> 
		</fo:root>
	</xsl:template>	
</xsl:stylesheet>