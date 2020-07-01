<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="PageMaster" page-height="28cm" page-width="22cm" margin-top="1cm" margin-bottom="1cm" margin-left="2cm" margin-right="2cm">
					<fo:region-body margin-top="2.5cm" margin-bottom="2.5cm" background-color="#ffffff"/>
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<xsl:for-each select="/comprobante">
				<fo:page-sequence master-reference="PageMaster" force-page-count="no-force">
					<fo:flow flow-name="xsl-region-body">
						<fo:block-container position="absolute">
							<fo:block-container position="absolute" height="25.00mm" left="0.00mm" top="-13.60mm" width="30.69mm" overflow="hidden" display-align="before" bgcolor="green">
								<fo:block text-align="right">
									<fo:external-graphic content-type="image/jpeg" content-width="30.96mm" vertical-align="middle">
										<xsl:attribute name="src">
											 <xsl:value-of select="rutaImagen"/>logo_bci_460x250.jpg
										</xsl:attribute>
									</fo:external-graphic> 
								</fo:block>
							</fo:block-container>
							<fo:block-container position="absolute" font-family="Arial,Helvetica,sans-serif" font-size="16.00pt" font-weight="bold" height="6.88mm" left="0mm" top="6.25mm" width="75.14mm" >
								<fo:block start-indent="0pt">Un amigo es un Premio</fo:block>
							</fo:block-container>
							<fo:block-container position="absolute" font-family="Arial,Helvetica,sans-serif" font-size="24.00pt" font-weight="bold" height="13.76mm" left="0.26mm" top="14.19mm" width="101.86mm" >
								<fo:block start-indent="0pt">Canje de Premios</fo:block>
							</fo:block-container>
							<fo:block-container position="absolute" font-family="Arial,Helvetica,sans-serif" font-size="14.00pt" height="7.14mm" left="0.53mm" top="40mm" width="140.23mm" >
								<fo:block start-indent="0pt">Comprobante N°: <xsl:value-of select="numeroComprobante"/></fo:block>
							</fo:block-container>
							<fo:block-container position="absolute" font-family="Arial,Helvetica,sans-serif" font-size="14.00pt" height="7.14mm" left="0.53mm" top="48mm" width="140.23mm" >
								<fo:block start-indent="0pt"><xsl:value-of select="fechaCanje"/></fo:block>
							</fo:block-container>
							<fo:block-container position="absolute" height="28.00mm" left="15cm" top="29.80mm" width="28.00mm" overflow="hidden" display-align="before">
								<fo:block text-align="start">
									<fo:external-graphic content-type="image/jpeg" content-width="28.00mm" vertical-align="middle">
										<xsl:attribute name="src">
											 <xsl:value-of select="rutaImagen"/>sello_bci.gif
										</xsl:attribute>
									</fo:external-graphic> 
								</fo:block>
							</fo:block-container>
							<fo:block-container position="absolute" font-family="Arial,Helvetica,sans-serif" font-size="12.00pt" height="5.30mm" left="0.00mm" top="65mm" width="140.49mm">
								<fo:block start-indent="0pt">Información del Canje</fo:block>
							</fo:block-container>
							<fo:block-container position="absolute" font-family="Arial,Helvetica,sans-serif" font-size="10.00pt" height="30.00mm" left="0.00mm" top="75mm" width="140.49mm">
								<fo:table width="140.00mm" table-layout="fixed">
									<fo:table-column column-width="9cm"/>
									<fo:table-column column-width="9cm"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell  border="solid 0.50pt Black">
												<fo:block font-size="10.00pt" text-align="right">
													RUT:&#0160;
												</fo:block>
											</fo:table-cell>
											<fo:table-cell  border="solid 0.50pt Black">
												<fo:block  font-size="10.00pt" text-align="left">
													&#0160;<xsl:value-of select="rut"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell  border="solid 0.50pt Black">
												<fo:block font-size="10.00pt" text-align="right">
													Nombre:&#0160;
												</fo:block>
											</fo:table-cell>
											<fo:table-cell  border="solid 0.50pt Black">
												<fo:block  font-size="10.00pt" text-align="left">
													&#0160;<xsl:value-of select="nombre"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block-container>
							<fo:block-container position="absolute" font-family="Arial,Helvetica,sans-serif" font-size="10.00pt" height="30.00mm" left="0.00mm" top="91.86mm" width="140.49mm">
								<fo:table width="140.00mm" table-layout="fixed">
									<fo:table-column column-width="12cm"/>
									<fo:table-column column-width="6cm"/>
									<fo:table-header start-indent="0pt">
										<fo:table-row height="4.76mm">
											<fo:table-cell   border="solid 0.50pt Black">
												<fo:block  height="4.76mm" font-weight="bold" font-size="10.00pt"  text-align="center">
													Producto y/o Servicio
												</fo:block>
											</fo:table-cell>
											<fo:table-cell   border="solid 0.50pt Black">
												<fo:block  height="4.76mm" font-weight="bold" font-size="10.00pt"  text-align="center">
													Cantidad canjeada
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-header>
									<fo:table-body>
										<xsl:for-each select="premios/premio">
											<fo:table-row>
												<fo:table-cell  border="solid 0.50pt Black">
													<fo:block font-size="10.00pt" >
															&#0160;<xsl:value-of select="nombre"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell  border="solid 0.50pt Black">
													<fo:block  font-size="10.00pt" text-align="center">
															<xsl:value-of select="cantidad"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</xsl:for-each>		
									</fo:table-body>
								</fo:table>
							</fo:block-container>
						</fo:block-container>
					</fo:flow>
				</fo:page-sequence>
			</xsl:for-each>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>
