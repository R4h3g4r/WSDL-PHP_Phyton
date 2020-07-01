<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:variable name="IMAGEEXT">gif</xsl:variable>
	<xsl:template match="info">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>

				<fo:simple-page-master master-name="paginaPrimera" page-height="200mm" page-width="287mm" margin-left="1mm" margin-right="1mm" margin-top="10mm" margin-bottom="1mm">
					<fo:region-body margin-top="1.0cm" margin-bottom="1.0cm" />
					<fo:region-before region-name="regionEncabezadoPrimera" extent="1.0cm" precedence="true" />
					<fo:region-after region-name="regionPiePrimera" extent="1.0cm" precedence="true"/>
				</fo:simple-page-master>

				<fo:simple-page-master master-name="paginaResto" page-height="200mm" page-width="287mm" margin-left="1mm" margin-right="1mm" margin-top="10mm" margin-bottom="1mm">
					<fo:region-body margin-top="1.0cm" margin-bottom="1.0cm" />
					<fo:region-before region-name="regionEncabezadoResto" extent="1.0cm" precedence="true" />
					<fo:region-after region-name="regionPieResto" extent="1.0cm" precedence="true"/>
				</fo:simple-page-master>

				<fo:simple-page-master master-name="paginaMandato" page-height="200mm" page-width="287mm" margin-left="1mm" margin-right="1mm" margin-top="10mm" margin-bottom="1mm">
					<fo:region-body margin-top="0cm" margin-bottom="0cm" />
					<fo:region-before extent="0cm" precedence="true" />
					<fo:region-after extent="0cm" precedence="true" />
				</fo:simple-page-master>

				<fo:page-sequence-master master-name="masterSequenceName1">
					<fo:repeatable-page-master-alternatives>
						<fo:conditional-page-master-reference master-reference="paginaPrimera" page-position="first" />
						<fo:conditional-page-master-reference master-reference="paginaResto" page-position="rest" />
					</fo:repeatable-page-master-alternatives>
				</fo:page-sequence-master>

			</fo:layout-master-set>

			<fo:page-sequence master-name="paginaPrincipal" master-reference="masterSequenceName1">
				<fo:static-content flow-name="regionEncabezadoPrimera">
					<fo:block text-align="right" font-size="11pt" color="#4D6175">
						<fo:block padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
									<fo:table-body>
									<fo:table-row>
										<fo:table-cell padding="4.0pt" text-align="start" border-top-style="solid" border-after-style="solid" display-align="before" border-width="1.0pt" border-color="#6B6765" padding-left="5pt">
											<fo:block text-align="center" color="#6B6765" font-size="12.0pt" font-weight="bold">
												<xsl:value-of disable-output-escaping="no" select="tituloXML"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
					</fo:block>
				</fo:static-content>
				<fo:static-content flow-name="regionEncabezadoResto">
					<fo:block text-align="right" font-size="11pt" color="#4D6175">
						<fo:block padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
									<fo:table-body>
									<fo:table-row>
										<fo:table-cell padding="4.0pt" text-align="start" border-top-style="solid" border-after-style="solid" display-align="before" border-width="1.0pt" border-color="#6B6765" padding-left="5pt">
											<fo:block text-align="center" color="#6B6765" font-size="12.0pt" font-weight="bold">
												<xsl:value-of disable-output-escaping="no" select="tituloXML"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
					</fo:block>
				</fo:static-content>
				<fo:static-content flow-name="regionPiePrimera">
					<fo:block text-align="right" font-size="11pt" color="#4D6175">
						<fo:table width="100%" table-layout="fixed" padding-before="10pt">
							<fo:table-column column-width="proportional-column-width(22)"/>
							<fo:table-column column-width="proportional-column-width(53)"/>
							<fo:table-column column-width="proportional-column-width(25)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell/>
									<fo:table-cell><fo:block text-align="center" font-size="10px" color="black">Página <fo:page-number/> de <fo:page-number-citation><xsl:attribute name="ref-id">last-page</xsl:attribute></fo:page-number-citation></fo:block></fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
				</fo:static-content>
				<fo:static-content flow-name="regionPieResto">
					<fo:block text-align="right" font-size="11pt" color="#4D6175">
						<fo:table width="100%" table-layout="fixed" padding-before="10pt">
							<fo:table-column column-width="proportional-column-width(22)"/>
							<fo:table-column column-width="proportional-column-width(53)"/>
							<fo:table-column column-width="proportional-column-width(25)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell/>
									<fo:table-cell><fo:block text-align="center" font-size="10px" color="black">Página <fo:page-number/> de <fo:page-number-citation><xsl:attribute name="ref-id">last-page</xsl:attribute></fo:page-number-citation></fo:block></fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
				</fo:static-content>


				<fo:flow flow-name="xsl-region-body" color="#4D6175" font-size="11pt">
					<fo:block>
						
						<fo:block span="none" padding-after="10pt" padding-before="10pt"/>
						
						<fo:block span="none" padding-before="6pt">
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(10)" background-color="#F4F4F4"/>
								<fo:table-column column-width="proportional-column-width(10)"/>
								<fo:table-column column-width="proportional-column-width(8)" background-color="#F4F4F4"/>
								<fo:table-column column-width="proportional-column-width(8)"/>
								<fo:table-column column-width="proportional-column-width(8)" background-color="#F4F4F4"/>
								<fo:table-column column-width="proportional-column-width(8)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
												<xsl:text>Nro. Transacción</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="filtrosXML/nTransaccion"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
												<xsl:text>Nombre Banquero</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="filtrosXML/nombreBanquero"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
												<xsl:text>Actividad</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="filtrosXML/actividad"/>
											</fo:block>
										</fo:table-cell>										
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
												<xsl:text>Rut Cliente</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="filtrosXML/rutCliente"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
												<xsl:text>Tipo Pendiente</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="filtrosXML/tipoPendiente"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
												<xsl:text>Producto</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="filtrosXML/producto"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
												<xsl:text>Rut Cabecera</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="filtrosXML/rutCabecera"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
												<xsl:text>Estado</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="filtrosXML/estado"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
												<xsl:text>Reportable</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="filtrosXML/reportable"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
												<xsl:text>Fecha Registro Desde</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="filtrosXML/fechaDesde"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
												<xsl:text>Fecha Registro Hasta</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="filtrosXML/fechaHasta"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
												<xsl:text>Memo</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="filtrosXML/memo"/>
											</fo:block>
										</fo:table-cell>
										
										
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
												<xsl:text>Fecha Comprometida Desde</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="filtrosXML/fechaComprometida"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
												<xsl:text>Fecha Comprometida Hasta</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="filtrosXML/fechaComprometidaHasta"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
												<xsl:text>Monto</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="filtrosXML/monto"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
												<xsl:text>Dias Vencidos Desde</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="filtrosXML/diasVencidosDesde"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
												<xsl:text>Dias Vencidos Hasta</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="filtrosXML/diasVencidosHasta"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
												<xsl:text></xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
												
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
						
						<fo:block span="none" padding-after="10pt" padding-before="10pt"/>
						
						<fo:block span="none" padding-before="6pt">
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(5)"/>
								<fo:table-column column-width="proportional-column-width(5)"/>
								<fo:table-column column-width="proportional-column-width(5)"/>
								<fo:table-column column-width="proportional-column-width(8)"/>
								<fo:table-column column-width="proportional-column-width(8)"/>
								<fo:table-column column-width="proportional-column-width(10)"/>
								<fo:table-column column-width="proportional-column-width(15)"/>
								<fo:table-column column-width="proportional-column-width(5)"/>
								<fo:table-column column-width="proportional-column-width(5)"/>
								<fo:table-column column-width="proportional-column-width(5)"/>
								<fo:table-column column-width="proportional-column-width(5)"/>
								<fo:table-column column-width="proportional-column-width(5)"/>
								<fo:table-column column-width="proportional-column-width(5)"/>
								<fo:table-column column-width="proportional-column-width(5)"/>
								<fo:table-column column-width="proportional-column-width(5)"/>
								<fo:table-column column-width="proportional-column-width(5)"/>
								<xsl:for-each select="listaTareasXML/listaTarea">
									<xsl:if test="position()=1">
										<fo:table-header>
										<fo:table-row>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="banquero"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="rutCabecera"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="rutCliente"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="cliente"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="nombreActividad"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="tipoPendiente"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="producto"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="monto"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="detallePendiente"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="fechaRegistro"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="fechaComprometida"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="diasVencidos"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="nTrx"/>
												</fo:block>
											</fo:table-cell>
											
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="reporteable"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="estado"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="memo"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										</fo:table-header>
									</xsl:if>
									<xsl:if test="position()>1">
										<fo:table-body>
										<fo:table-row>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
														<xsl:value-of disable-output-escaping="no" select="banquero"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
														<xsl:value-of disable-output-escaping="no" select="rutCabecera"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
														<xsl:value-of disable-output-escaping="no" select="rutCliente"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
														<xsl:value-of disable-output-escaping="no" select="cliente"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
														<xsl:value-of disable-output-escaping="no" select="nombreActividad"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
														<xsl:value-of disable-output-escaping="no" select="tipoPendiente"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
														<xsl:value-of disable-output-escaping="no" select="producto"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
														<xsl:value-of disable-output-escaping="no" select="monto"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
														<xsl:value-of disable-output-escaping="no" select="detallePendiente"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
														<xsl:value-of disable-output-escaping="no" select="fechaRegistro"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
														<xsl:value-of disable-output-escaping="no" select="fechaComprometida"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
														<xsl:value-of disable-output-escaping="no" select="diasVencidos"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
														<xsl:value-of disable-output-escaping="no" select="nTrx"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
														<xsl:value-of disable-output-escaping="no" select="reporteable"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
														<xsl:value-of disable-output-escaping="no" select="estado"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
														<xsl:value-of disable-output-escaping="no" select="memo"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</xsl:if>
								</xsl:for-each>
								</fo:table>
						</fo:block>
						
						<fo:block id="last-page" />
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>
