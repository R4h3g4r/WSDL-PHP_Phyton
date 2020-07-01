<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pageMaster" page-height="28cm" page-width="22cm" margin-top="1cm" margin-bottom="1cm" margin-left="2cm" margin-right="2cm">
					<fo:region-body margin-top="1cm" margin-bottom="1cm" background-color="#ffffff"/>
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<xsl:for-each select="/comprobante">
				<fo:page-sequence master-reference="pageMaster" force-page-count="no-force">
					<fo:flow flow-name="xsl-region-body">
						<fo:block font-size="10pt">
							<fo:table table-layout="fixed">
								<fo:table-column column-width="11cm"/>
								<fo:table-column column-width="8cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:external-graphic content-width="30.96mm" vertical-align="middle" height="1.5cm">
												<xsl:attribute name="src"><xsl:value-of select="ruta-imagen"/>logo_bci_460x250.jpg
												</xsl:attribute>
											</fo:external-graphic>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block vertical-align="middle">
												<fo:table table-layout="fixed">
													<fo:table-column column-width="7cm"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell>
																<fo:block>
																	<xsl:value-of select="rut-usuario"/>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell>
																<fo:block>
																	<xsl:value-of select="nombre-usuario"/>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
												</fo:table>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
						<fo:block font-size="11pt" font-weight="bold" padding-top="1cm" padding-bottom="0.25cm">
							Solicitud Producto <xsl:value-of select="nombre-producto"/>
						</fo:block>
						<fo:block font-size="18pt" font-weight="bold" padding-top="0.25cm" padding-bottom="0.25cm">
							Comprobante de solicitud de financiamiento
						</fo:block>
						<fo:block font-size="12pt" font-weight="bold" padding-top="1cm" padding-bottom="0.5cm">
							Datos solicitud
						</fo:block>
						<fo:block>
							<fo:table table-layout="fixed">
								<fo:table-column column-width="5cm"/>
								<fo:table-column column-width="8cm"/>
								<fo:table-column column-width="9cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<xsl:call-template name="label-tabla">
												<xsl:with-param name="texto" select="'Rut Empresa:'"/>
											</xsl:call-template>
										</fo:table-cell>
										<fo:table-cell>
											<xsl:call-template name="dato-tabla">
												<xsl:with-param name="texto" select="rut-empresa"/>
											</xsl:call-template>
										</fo:table-cell>
										<fo:table-cell number-rows-spanned="6">
											<fo:external-graphic content-type="image/jpeg" content-width="28.00mm" vertical-align="middle"
												height="2.5cm">
												<xsl:attribute name="src">
													 <xsl:value-of select="ruta-imagen"/>sello_bci.gif
												</xsl:attribute>
											</fo:external-graphic>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<xsl:call-template name="label-tabla">
												<xsl:with-param name="texto" select="'Nombre Empresa:'"/>
											</xsl:call-template>
										</fo:table-cell>
										<fo:table-cell>
											<xsl:call-template name="dato-tabla">
												<xsl:with-param name="texto" select="nombre-empresa"/>
											</xsl:call-template>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<xsl:call-template name="label-tabla">
												<xsl:with-param name="texto" select="'Monto:'"/>
											</xsl:call-template>
										</fo:table-cell>
										<fo:table-cell>
											<xsl:call-template name="dato-tabla">
												<xsl:with-param name="texto" select="monto"/>
											</xsl:call-template>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<xsl:call-template name="label-tabla">
												<xsl:with-param name="texto" select="'Destino u observaciones:'"/>
											</xsl:call-template>
										</fo:table-cell>
										<fo:table-cell>
											<xsl:call-template name="dato-tabla">
												<xsl:with-param name="texto" select="observaciones"/>
											</xsl:call-template>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<xsl:call-template name="label-tabla">
												<xsl:with-param name="texto" select="'Fecha:'"/>
											</xsl:call-template>
										</fo:table-cell>
										<fo:table-cell>
											<xsl:call-template name="dato-tabla">
												<xsl:with-param name="texto" select="fecha"/>
											</xsl:call-template>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<xsl:call-template name="label-tabla">
												<xsl:with-param name="texto" select="'Hora:'"/>
											</xsl:call-template>
										</fo:table-cell>
										<fo:table-cell>
											<xsl:call-template name="dato-tabla">
												<xsl:with-param name="texto" select="hora"/>
											</xsl:call-template>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
					</fo:flow>
				</fo:page-sequence>
			</xsl:for-each>
		</fo:root>
	</xsl:template>
	<xsl:template name="label-tabla">
		<xsl:param name="texto"/>
		<fo:block font-size="10pt" font-weight="bold" padding-bottom="0.25cm">
			<xsl:value-of select="$texto"/>
		</fo:block>
	</xsl:template>
	<xsl:template name="dato-tabla">
		<xsl:param name="texto"/>
		<fo:block font-size="10pt" padding-bottom="0.25cm">
			<xsl:value-of select="$texto"/>
		</fo:block>
	</xsl:template>
</xsl:stylesheet>
