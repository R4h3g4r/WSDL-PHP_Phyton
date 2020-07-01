<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="PageMaster" page-height="297.00mm" page-width="210.00mm">
					<fo:region-body margin-bottom="30.00mm" margin-top="40.00mm" margin-left="39.95mm" margin-right="30.00mm"/>
					<fo:region-before display-align="after"/>
					<fo:region-after display-align="before"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<xsl:for-each select="/comprobanteNeutraliza">
				<fo:page-sequence master-reference="PageMaster" force-page-count="no-force">
					<fo:flow flow-name="xsl-region-body">
						<fo:block-container position="absolute">
							<fo:block-container position="absolute" height="25.00mm" left="0.00mm" top="-13.60mm" width="30.69mm" overflow="hidden" display-align="before">
								<fo:block text-align="start">
									<xsl:if test="canal = '110'">
										<fo:external-graphic content-type="image/jpeg" content-width="30.96mm" vertical-align="middle">
											<xsl:attribute name="src">
												 <xsl:value-of select="rutaImagen"/>logo_bci_460x250.jpg
											</xsl:attribute>
										</fo:external-graphic>
									</xsl:if>
									<xsl:if test="canal = '100'">
										<fo:external-graphic content-type="image/jpeg" content-width="30.96mm" vertical-align="middle">
											<xsl:attribute name="src">
												 <xsl:value-of select="rutaImagen"/>logo_tbanc.gif
											</xsl:attribute>
										</fo:external-graphic>
									</xsl:if>
								</fo:block>
							</fo:block-container>
							<fo:block-container position="absolute" font-family="Arial,Helvetica,sans-serif" font-size="16.00pt" font-weight="bold" height="6.88mm" left="0mm" top="6.25mm" width="75.14mm" >
								<fo:block start-indent="0pt">Tarjetas de Crédito</fo:block>
							</fo:block-container>
							<fo:block-container position="absolute" font-family="Arial,Helvetica,sans-serif" font-size="24.00pt" font-weight="bold" height="13.76mm" left="0.26mm" top="14.19mm" width="101.86mm" >
								<fo:block start-indent="0pt">Programa Yo Neutralizo!</fo:block>
							</fo:block-container>
							<fo:block-container position="absolute" font-family="Arial,Helvetica,sans-serif" font-size="14.00pt" height="7.14mm" left="0.53mm" top="49.85mm" width="140.23mm" >
								<fo:block start-indent="0pt">Comprobante N°: <xsl:value-of select="numeroComprobante"/></fo:block>
							</fo:block-container>
							<fo:block-container position="absolute" font-family="Arial,Helvetica,sans-serif" font-size="14.00pt" height="6.61mm" left="0.53mm" top="41.12mm" width="140.23mm" >
								<fo:block start-indent="0pt"><xsl:value-of select="nombre"/><xsl:text> </xsl:text><xsl:value-of select="apellido"/></fo:block>
							</fo:block-container>
							<fo:block-container position="absolute" font-family="Arial,Helvetica,sans-serif" font-size="12.00pt" height="20.58mm" left="0mm" top="71.23mm" width="140.49mm" >
								<fo:block start-indent="0pt">Su operación ha resultado exitosa.
Sus puntos serán rebajados en las próximas 48 horas.</fo:block>
							</fo:block-container>
							<fo:block-container position="absolute" height="28.00mm" left="106.89mm" top="29.80mm" width="28.00mm" overflow="hidden" display-align="before">
								<fo:block text-align="start">
									<xsl:if test="canal = '110'">
										<fo:external-graphic content-type="image/jpeg" content-width="28.00mm" vertical-align="middle">
											<xsl:attribute name="src">
												 <xsl:value-of select="rutaImagen"/>sello_bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</xsl:if>
									<xsl:if test="canal = '100'">
										<fo:external-graphic content-type="image/jpeg" content-width="28.00mm" vertical-align="middle">
											<xsl:attribute name="src">
												 <xsl:value-of select="rutaImagen"/>sello_tbanc.gif
											</xsl:attribute>
										</fo:external-graphic>
									</xsl:if>
								</fo:block>
							</fo:block-container>
							
							<fo:block-container position="absolute" font-family="Arial,Helvetica,sans-serif" font-size="10.00pt" height="30.00mm" left="0.00mm" top="91.86mm" width="140.49mm">
								
								<fo:table width="140.00mm" table-layout="fixed">
									<fo:table-column column-width="42.00mm"/>
									<fo:table-column column-width="39.00mm"/>
									<fo:table-column column-width="20.00mm"/>
									<fo:table-column column-width="39.00mm"/> 
									<fo:table-header start-indent="0pt">
										<fo:table-row height="4.76mm">
											<fo:table-cell   border-right="solid 0.50pt Black">
												<fo:block  height="4.76mm" font-weight="bold" font-size="9.00pt"  text-align="center">
													Producto y/o Servicio
												</fo:block>
											</fo:table-cell>
											<fo:table-cell   border-right="solid 0.50pt Black">
												<fo:block  height="4.76mm" font-weight="bold" font-size="9.00pt"  text-align="center">
													<xsl:if test="canal = '100'">
														Precio en EcoPuntos $
													</xsl:if>
													<xsl:if test="canal != '100'">
														Precio en Puntos $
													</xsl:if>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell   border-right="solid 0.50pt Black">
												<fo:block  height="4.76mm" font-weight="bold" font-size="9.00pt"  text-align="center">
													Cantidad
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block  height="4.76mm" font-weight="bold" font-size="9.00pt"  text-align="center">
													<xsl:if test="canal = '100'">
														Precio en EcoPuntos $
													</xsl:if>
													<xsl:if test="canal != '100'">
														Precio en Puntos $
													</xsl:if>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-header>
									<fo:table-body>
										<xsl:for-each select="canjes/canje">
											<fo:table-row>
												<fo:table-cell  border-right="solid 0.50pt Black" border-top="solid 0.50pt Black">
													<fo:block font-size="9.00pt" >
															<xsl:value-of select="nombreProducto"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell  border-right="solid 0.50pt Black" border-top="solid 0.50pt Black">
													<fo:block font-size="9.00pt" text-align="end">
															<xsl:value-of select="precioUnidad"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell  border-right="solid 0.50pt Black" border-top="solid 0.50pt Black">
													<fo:block  font-size="9.00pt" text-align="center">
															<xsl:value-of select="cantidad"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell  border-top="solid 0.50pt Black" >
													<fo:block font-size="9.00pt" text-align="end">
															<xsl:value-of select="precioCantidad"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</xsl:for-each>		
									</fo:table-body>
								</fo:table>
							</fo:block-container>
							<fo:block-container position="absolute" font-family="Arial,Helvetica,sans-serif" font-size="12.00pt" height="5.30mm" left="0.00mm" top="84.99mm" width="140.49mm" border-bottom="solid 1.00pt Black">
								<fo:block start-indent="0pt">Comprobante de Canje</fo:block>
							</fo:block-container>
						</fo:block-container>
					</fo:flow>
				</fo:page-sequence>
			</xsl:for-each>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>
