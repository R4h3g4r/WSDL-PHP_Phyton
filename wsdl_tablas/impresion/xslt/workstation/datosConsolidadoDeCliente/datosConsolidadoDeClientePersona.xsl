<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="celda_background">#EFEFEF</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-blanco">#FFFFFF</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0361a2</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<xsl:variable name="txt-font">Arial,Helvetica,sans-serif</xsl:variable>
	<xsl:variable name="TEXTO_PRUEBA">+TEXTO</xsl:variable>
	<xsl:variable name="NUMERO_PRUEBA">+000000</xsl:variable>
	<xsl:variable name="vinieta">
		<xsl:value-of select="relojEverest/imagenes/ruta"/>01-bullet1-rj.gif
	</xsl:variable>
	<xsl:include href="datosConsolidadoDeClienteEmpresaEstilos.xsl"/>
	<xsl:include href="productosVigentes.xsl"/>
	<xsl:template match="/">

		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina" page-height="28cm" page-width="23cm"
					margin-top="1cm" margin-bottom="1cm" margin-left="2cm" margin-right="2cm">
					<fo:region-body margin-top="1cm" margin-bottom="1.5cm"
						background-color="#ffffff"/>
					<fo:region-before extent="1cm"/>
					<fo:region-after extent="1cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en"
				country="us">
				

				<fo:static-content flow-name="xsl-region-after">
					<!-- Separador -->
					<fo:block space-after="1mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="19cm"/>
					</fo:block>

					<fo:block font-size="8pt" text-align="left" font-family="{$txt-font}"
						color="{$txt-azul-claro}">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="10cm"/>
							<fo:table-column column-width="9cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block>
											<fo:inline font-size="10pt">
												<xsl:value-of select="relojEverest/datosCliente/rut"
												/>
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block text-align="right">
											<xsl:value-of select="relojEverest/datosCliente/fecha"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<xsl:choose>
							<xsl:when test="relojEverest/datosCliente/rut">
								<xsl:call-template name="cabecera"/>
								<xsl:call-template name="areaCentral"/>
								<xsl:call-template name="oportunidadDeNegocio"/>
								<xsl:call-template name="incentivarUso"/>
								<xsl:call-template name="productosVigentes"/>
								<xsl:call-template name="datosBasicos"/>
							</xsl:when>
							<xsl:otherwise>
								<fo:block padding-top="2cm" text-align="center">No existen Datos a
									imprimir.</fo:block>
							</xsl:otherwise>
						</xsl:choose>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>

	<xsl:template name="cabecera">
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="15cm"/>
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="2cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="10pt" text-align="left" font-family="{$txt-font}"
								color="{$txt-azul-claro}">
								<xsl:value-of select="relojEverest/datosCliente/nombre"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="10pt" text-align="right" font-family="{$txt-font}"
								color="{$txt-azul-claro}">RUT :</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="10pt" text-align="center" font-family="{$txt-font}"
								color="{$txt-azul-claro}">
								<xsl:value-of select="relojEverest/datosCliente/rut"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="3" padding-before="0.5cm">
							<fo:block font-size="18pt" text-align="left" font-weight="bold"
								font-family="{$txt-font}" color="{$txt-azul-claro}">Reloj Everest
								Banca Persona</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block>
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="20cm"/>
		</fo:block>
	</xsl:template>

	<xsl:template name="areaCentral">
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="19cm" background-color="{$celda_background}"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding="2pt" border="0.3pt solid #E2E2E2">
							<fo:block font-size="13pt" text-align="left" font-weight="bold"
								font-family="{$txt-font}" color="{$txt-azul-claro}">Área
								Central</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>

		<fo:block space-before="0.1cm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4cm" padding-left="0.5pt"
					border-right="0.3pt solid #CCCCCC"/>
				<fo:table-column column-width="12cm" border-right="0.3pt solid #CCCCCC"/>
				<fo:table-column column-width="3cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-left="0.1cm">
							<fo:block font-size="8pt" text-align="left" font-weight="bold"
								font-family="{$txt-font}" color="{$txt-azul-claro}">Alertas del
								Cliente <fo:table table-layout="fixed">
									<fo:table-column column-width="3.8cm"/>
									<fo:table-body>
										<xsl:choose>
											<xsl:when
												test="relojEverest/areaCentral/alertasCliente/alerta">
												<xsl:for-each
												select="relojEverest/areaCentral/alertasCliente/alerta">
												<fo:table-row>
												<fo:table-cell border="0.3pt solid #E2E2E2">
												<fo:block>
												<xsl:value-of select="."/>
												</fo:block>
												</fo:table-cell>
												</fo:table-row>
												</xsl:for-each>
											</xsl:when>
											<xsl:otherwise>
												<fo:table-row>
												<fo:table-cell border="0.3pt solid #E2E2E2">
												<fo:block><xsl:value-of select="relojEverest/areaCentral/alertasCliente/mensaje"/></fo:block>
												</fo:table-cell>
												</fo:table-row>
											</xsl:otherwise>
										</xsl:choose>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell padding-left="0.1cm">
							<fo:block font-size="7pt" text-align="left" font-family="{$txt-font}"
								color="{$txt-azul-claro}">
								<fo:table table-layout="fixed">
									<fo:table-column column-width="2.2cm"
										background-color="{$celda_background}"/>
									<fo:table-column column-width="3.1cm"/>
									<fo:table-column column-width="3.1cm"
										background-color="{$celda_background}"/>
									<fo:table-column column-width="3.4cm"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>Banca :</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
												select="relojEverest/areaCentral/banca"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>Segmento :</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
												select="relojEverest/areaCentral/segmento"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>

										<fo:table-row>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>Antiguedad :</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
												select="relojEverest/areaCentral/antiguedad"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>Fecha de Nacimiento
												:</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
												select="relojEverest/areaCentral/fechaNacimiento"
												/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>

										<fo:table-row>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>Renta Fija :</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
												select="relojEverest/areaCentral/rentaFija"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>Fecha de Renta Fija
												:</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
												select="relojEverest/areaCentral/fechaRentaFija"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>

										<fo:table-row>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>Renta Variable :</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
												select="relojEverest/areaCentral/rentaVariable"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>Fecha de Renta Variable
												:</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
												select="relojEverest/areaCentral/fechaRentaVariable"
												/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>

                                        <fo:table-row>
                                            <fo:table-cell border="0.3pt solid #E2E2E2"
                                                padding-left="2pt" padding-top="2pt">
                                                <fo:block>
                                                <fo:external-graphic width="1.5px" height="1.5px"
                                                src="{vinieta}">
                                                <xsl:attribute name="src">
                                                <xsl:value-of select="$vinieta"/>
                                                </xsl:attribute>
                                                </fo:external-graphic>Plan :</fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border="0.3pt solid #E2E2E2"
                                                padding-left="2pt" padding-top="2pt">
                                                <fo:block font-weight="bold">
                                                <xsl:value-of
                                                select="relojEverest/areaCentral/plan"/>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border="0.3pt solid #E2E2E2"
                                                padding-left="2pt" padding-top="2pt">
                                                <fo:block>
                                                <fo:external-graphic width="1.5px" height="1.5px"
                                                src="{vinieta}">
                                                <xsl:attribute name="src">
                                                <xsl:value-of select="$vinieta"/>
                                                </xsl:attribute>
                                                </fo:external-graphic>Convenio:
                                                :</fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell border="0.3pt solid #E2E2E2"
                                                padding-left="2pt" padding-top="2pt">
                                                <fo:block font-weight="bold">
                                                <xsl:value-of
                                                select="relojEverest/areaCentral/convenio"
                                                />
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>

										<fo:table-row>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>Sucursal :</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
												select="relojEverest/areaCentral/sucursal"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>Ejecutivo :</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
												select="relojEverest/areaCentral/ejecutivo"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>

										<fo:table-row>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>Cuenta Corriente :</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
                                                select="relojEverest/areaCentral/cuentaCorriente"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block></fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold"> </fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell padding-left="0.1cm">
							<fo:table table-layout="fixed">
								<fo:table-column column-width="1cm"/>
								<fo:table-column column-width="1.9cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell padding-bottom="2pt"
											number-columns-spanned="2"
											border-bottom="0.2pt solid #538AC8">
											<fo:block font-size="6pt" text-align="left"
												font-family="{$txt-font}" color="black">Cliente:
												<xsl:value-of
												select="relojEverest/areaCentral/tipoCliente"
												/></fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell padding-bottom="2pt" padding-top="2pt"
											number-columns-spanned="2"
											border-bottom="0.2pt solid #538AC8">
											<fo:block font-size="8pt" text-align="left"
												font-weight="bold" font-family="{$txt-font}"
												color="{$txt-azul-claro}">Riesgo</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell padding-bottom="2pt" padding-top="2pt"
											border-bottom="0.2pt solid #C6CCDC">
											<fo:block font-size="8pt" text-align="left"
												font-weight="bold" font-family="{$txt-font}"
												color="{$txt-azul-claro}">Filtros Internos de Riesgo</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" padding-bottom="2pt"
											padding-top="2pt" border-bottom="0.2pt solid #C6CCDC">
											<fo:block font-size="8pt" font-weight="bold"
												font-family="{$txt-font}" color="{$txt-azul-claro}">
												<xsl:value-of
												select="relojEverest/areaCentral/coloSemaforoFile"
												/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell number-columns-spanned="2"
											padding-bottom="1pt" padding-top="2pt">
											<fo:block font-size="8pt" text-align="left"
												font-weight="bold" font-family="{$txt-font}"
												color="{$txt-azul-claro}">Eventos
												Pendientes</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell padding-bottom="2pt" padding-top="2pt"
											border-bottom="0.2pt solid #C6CCDC">
											<fo:block font-size="8pt" text-align="left"
												font-weight="bold" font-family="{$txt-font}"
												color="{$txt-azul-claro}">(<xsl:value-of
												select="relojEverest/areaCentral/numeroEventos"
												/>)</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" padding-bottom="2pt"
											padding-top="2pt" border-bottom="0.2pt solid #C6CCDC">
											<fo:block font-size="8pt" font-weight="bold"
												font-family="{$txt-font}" color="{$txt-azul-claro}">
												<xsl:value-of
												select="relojEverest/areaCentral/colorEvento"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="oportunidadDeNegocio">
		<fo:block space-before="0.3cm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="19cm" background-color="{$celda_background}"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding="2pt" border="0.3pt solid #E2E2E2">
							<fo:block font-size="13pt" text-align="left" font-weight="bold"
								font-family="{$txt-font}" color="{$txt-azul-claro}">Oportunidad de
								Negocio</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>

		<fo:block space-before="0.1cm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="9.5cm" border-right="0.1pt solid #CCCCCC"/>
				<fo:table-column column-width="9.5cm" padding-left="0.5pt"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-weight="bold" font-size="9pt" text-align="left"
								font-family="{$txt-font}" color="{$txt-azul-claro}">Campañas
								Vigentes</fo:block>
							<fo:block font-size="7pt" text-align="left" font-family="{$txt-font}"
								color="{$txt-azul-claro}">
								<xsl:choose>
									<xsl:when
										test="relojEverest/oportunidadDeNegocio/campanaVigente/campana">
										<fo:table table-layout="fixed">
											<fo:table-column column-width="7cm"
												background-color="{$celda_background}"/>
											<fo:table-column column-width="2.4cm"/>
											<fo:table-body>
												<xsl:for-each
												select="relojEverest/oportunidadDeNegocio/campanaVigente/campana">
												<fo:table-row>
												<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>
												<xsl:value-of select="nombre"/>:</fo:block>
												</fo:table-cell>
												<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of select="valor"/>
												</fo:block>
												</fo:table-cell>
												</fo:table-row>
												</xsl:for-each>
											</fo:table-body>
										</fo:table>
									</xsl:when>
									<xsl:otherwise>
										<fo:table table-layout="fixed">
											<fo:table-column column-width="9.4cm"
												background-color="{$celda_background}"/>
											<fo:table-body>
												<fo:table-row>
												<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold"><xsl:value-of select="relojEverest/oportunidadDeNegocio/campanaVigente/mensaje"/></fo:block>
												</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>
									</xsl:otherwise>
								</xsl:choose>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell padding-left="0.1cm">
							<fo:block font-weight="bold" font-size="9pt" text-align="left"
								font-family="{$txt-font}" color="{$txt-azul-claro}">Productos en
								Proceso de Compra</fo:block>
							<fo:block font-size="7pt" text-align="left" font-family="{$txt-font}"
								color="{$txt-azul-claro}">
								<fo:table table-layout="fixed">
									<fo:table-column column-width="9.45cm"
										background-color="{$celda_background}"/>
									<fo:table-body>
										<xsl:choose>
											<xsl:when
												test="relojEverest/oportunidadDeNegocio/productosProcesoCompra/producto">
												<xsl:for-each
												select="relojEverest/oportunidadDeNegocio/productosProcesoCompra/producto">
												<fo:table-row>
												<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>
												<xsl:value-of select="."/>:</fo:block>
												</fo:table-cell>
												</fo:table-row>
												</xsl:for-each>
											</xsl:when>
											<xsl:otherwise>
												<fo:table-row>
												<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic><xsl:value-of select="relojEverest/oportunidadDeNegocio/productosProcesoCompra/mensaje"/></fo:block>
												</fo:table-cell>
												</fo:table-row>
											</xsl:otherwise>
										</xsl:choose>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="incentivarUso">
		<fo:block space-before="0.3cm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="19cm" background-color="{$celda_background}"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding="2pt" border="0.3pt solid #E2E2E2">
							<fo:block font-size="13pt" text-align="left" font-weight="bold"
								font-family="{$txt-font}" color="{$txt-azul-claro}">Incentivar
								Uso</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>

		<fo:block space-before="0.1cm" font-size="8pt" text-align="left" font-family="{$txt-font}"
			color="{$txt-azul-claro}">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="5cm" background-color="{$celda_background}"/>
				<fo:table-column column-width="10cm"/>
				<fo:table-column column-width="4cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
							padding-top="2pt">
							<fo:block>
								<fo:external-graphic width="1.5px" height="1.5px" src="{vinieta}">
									<xsl:attribute name="src">
										<xsl:value-of select="$vinieta"/>
									</xsl:attribute>
								</fo:external-graphic>Cruce Bci / CMFChile</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
							padding-top="2pt">
							<fo:block font-weight="bold">Deuda Total :</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
							padding-top="2pt">
							<fo:block font-weight="bold">
								<xsl:value-of
									select="relojEverest/incentivarUso/cruceBCI_SBIF/deudaTotal"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<fo:table-row>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
							padding-top="2pt"><fo:block></fo:block></fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
							padding-top="2pt">
							<fo:block font-weight="bold">Deuda sin CHIP :</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
							padding-top="2pt">
							<fo:block font-weight="bold">
								<xsl:value-of
									select="relojEverest/incentivarUso/cruceBCI_SBIF/deudaSinCHIP"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<fo:table-row>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
							padding-top="2pt">
							<fo:block>
								<fo:external-graphic width="1.5px" height="1.5px" src="{vinieta}">
									<xsl:attribute name="src">
										<xsl:value-of select="$vinieta"/>
									</xsl:attribute>
								</fo:external-graphic>Margen Global</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
							padding-top="2pt">
							<fo:block font-weight="bold">Margen Global :</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
							padding-top="2pt">
							<fo:block font-weight="bold">
								<xsl:value-of
									select="relojEverest/incentivarUso/margenglobal/margen"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<fo:table-row>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
							padding-top="2pt"><fo:block></fo:block></fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
							padding-top="2pt">
							<fo:block font-weight="bold">Margen Disponible :</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
							padding-top="2pt">
							<fo:block font-weight="bold">
								<xsl:value-of
									select="relojEverest/incentivarUso/margenglobal/disponible"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<fo:table-row>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
							padding-top="2pt">
							<fo:block>
								<fo:external-graphic width="1.5px" height="1.5px" src="{vinieta}">
									<xsl:attribute name="src">
										<xsl:value-of select="$vinieta"/>
									</xsl:attribute>
								</fo:external-graphic>Rentabilidad</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
							padding-top="2pt">
							<fo:block font-weight="bold">Rentabilidad Esperada :</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
							padding-top="2pt">
							<fo:block font-weight="bold">
								<xsl:value-of
									select="relojEverest/incentivarUso/rentabilidad/esperada"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<fo:table-row>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
							padding-top="2pt"><fo:block></fo:block></fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
							padding-top="2pt">
							<fo:block font-weight="bold">Rentabilidad Actual :</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
							padding-top="2pt">
							<fo:block font-weight="bold">
								<xsl:value-of
									select="relojEverest/incentivarUso/rentabilidad/actual"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<fo:table-row>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
							padding-top="2pt">
							<fo:block>
								<fo:external-graphic width="1.5px" height="1.5px" src="{vinieta}">
									<xsl:attribute name="src">
										<xsl:value-of select="$vinieta"/>
									</xsl:attribute>
								</fo:external-graphic>Uso de Productos</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
							padding-top="2pt">
							<fo:block font-weight="bold">Saldos Promedios :</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
							padding-top="2pt">
							<fo:block font-weight="bold">
								<xsl:value-of
									select="relojEverest/incentivarUso/usoProductos/promedios"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<fo:table-row>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
							padding-top="2pt"><fo:block></fo:block></fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
							padding-top="2pt">
							<fo:block font-weight="bold">Saldos Promedios Depósito :</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
							padding-top="2pt">
							<fo:block font-weight="bold">
								<xsl:value-of
									select="relojEverest/incentivarUso/usoProductos/deposito"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>

		<fo:block space-before="0.1cm" font-size="9pt" text-align="left" font-weight="bold"
			font-family="{$txt-font}" color="{$txt-azul-claro}">Saldos Promedios / Evolución Deuda
			Super (Últimos 12 Meses)</fo:block>
		<xsl:choose>
			<xsl:when test="relojEverest/incentivarUso/saldosPromedios/meses/mesAnyo">
				<fo:block space-before="0.1cm" font-size="8pt" text-align="left"
					font-family="{$txt-font}" color="{$txt-azul-claro}">
					<fo:table table-layout="fixed">
						<fo:table-column column-width="3.5cm"/>
						<xsl:for-each
							select="relojEverest/incentivarUso/saldosPromedios/meses/mesAnyo">
							<fo:table-column/>
						</xsl:for-each>
						<fo:table-body>
							<fo:table-row background-color="{$celda_background}">
								<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
									padding-top="2pt">
									<fo:block text-align="center" font-weight="bold"
										>Productos</fo:block>
								</fo:table-cell>
								<xsl:for-each
									select="relojEverest/incentivarUso/saldosPromedios/meses/mesAnyo">
									<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
										padding-top="2pt">
										<fo:block text-align="center" font-weight="bold">
											<xsl:value-of select="."/>
										</fo:block>
									</fo:table-cell>
								</xsl:for-each>
							</fo:table-row>

							<xsl:for-each
								select="relojEverest/incentivarUso/saldosPromedios/productos/producto">
								<fo:table-row>
									<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
										padding-top="2pt">
										<fo:block>
											<xsl:value-of select="nombre"/>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="valorMes">
										<fo:table-cell border="0.3pt solid #E2E2E2"
											padding-left="2pt" padding-top="2pt">
											<fo:block text-align="right">
												<xsl:value-of select="."/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
							</xsl:for-each>
						</fo:table-body>
					</fo:table>
				</fo:block>
			</xsl:when>
			<xsl:otherwise>
				<fo:block space-before="0.1cm" font-size="8pt" text-align="left"
					font-family="{$txt-font}" color="{$txt-azul-claro}">
					<fo:table table-layout="fixed">
						<fo:table-column column-width="19cm"/>
						<fo:table-body>
							<fo:table-row background-color="{$celda_background}">
								<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt"
									padding-top="2pt">
									<fo:block text-align="center" font-weight="bold"><xsl:value-of select="relojEverest/incentivarUso/saldosPromedios/mensaje"/></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="datosBasicos">
		<fo:block space-before="0.3cm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="19cm" background-color="{$celda_background}"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding="2pt" border="0.3pt solid #E2E2E2">
							<fo:block font-size="13pt" text-align="left" font-weight="bold"
								font-family="{$txt-font}" color="{$txt-azul-claro}">Datos
								Básicos</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>

		<fo:block space-before="0.1cm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="6.3cm" border-right="0.1pt solid #CCCCCC"/>
				<fo:table-column column-width="6.4cm" border-right="0.1pt solid #CCCCCC"/>
				<fo:table-column column-width="6.3cm" padding-left="0.5pt"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="7pt" text-align="left" font-family="{$txt-font}"
								color="{$txt-azul-claro}">
								<fo:table table-layout="fixed">
									<fo:table-column column-width="3cm"
										background-color="{$celda_background}"/>
									<fo:table-column column-width="3.2cm"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>Situación Laboral
												:</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
												select="relojEverest/datosBasicos/situacionLaboral"
												/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>Nivel Educacional
												:</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
												select="relojEverest/datosBasicos/nivelEducacional"
												/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>Profesión / Oficio
												:</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
												select="relojEverest/datosBasicos/profesionOficio"
												/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>Universidad :</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
												select="relojEverest/datosBasicos/universidad"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>Año de Egreso :</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
												select="relojEverest/datosBasicos/anyoEgreso"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell padding-left="0.1cm">
							<fo:block font-size="7pt" text-align="left" font-family="{$txt-font}"
								color="{$txt-azul-claro}">
								<fo:table table-layout="fixed">
									<fo:table-column column-width="3cm"
										background-color="{$celda_background}"/>
									<fo:table-column column-width="3.2cm"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>Fecha Nacimiento
												:</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
												select="relojEverest/datosBasicos/fechaNacimiento"
												/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>Sexo :</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
												select="relojEverest/datosBasicos/sexo"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>Nacionalidad :</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
												select="relojEverest/datosBasicos/nacionalidad"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>Estado Civil :</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
												select="relojEverest/datosBasicos/estadoCivil"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>Régimen Conyugal
												:</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
												select="relojEverest/datosBasicos/regimenConyugal"
												/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>Número de Hijos :</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
												select="relojEverest/datosBasicos/numeroDeHijos"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>Número de Cargas
												:</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
												select="relojEverest/datosBasicos/numeroDeCargas"
												/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>RUT Cónyuge :</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
												select="relojEverest/datosBasicos/rutConyuge"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell padding-left="0.1cm">
							<fo:block font-size="7pt" text-align="left" font-family="{$txt-font}"
								color="{$txt-azul-claro}">
								<fo:table table-layout="fixed">
									<fo:table-column column-width="3cm"
										background-color="{$celda_background}"/>
									<fo:table-column column-width="3.2cm"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>Situación Vivienda
												:</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
												select="relojEverest/datosBasicos/situacionVivencia"
												/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>Tiempo de Residencia
												:</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
												select="relojEverest/datosBasicos/tiempoDeResidencia"
												/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block>
												<fo:external-graphic width="1.5px" height="1.5px"
												src="{vinieta}">
												<xsl:attribute name="src">
												<xsl:value-of select="$vinieta"/>
												</xsl:attribute>
												</fo:external-graphic>Cliente con Transfer
												:</fo:block>
											</fo:table-cell>
											<fo:table-cell border="0.3pt solid #E2E2E2"
												padding-left="2pt" padding-top="2pt">
												<fo:block font-weight="bold">
												<xsl:value-of
												select="relojEverest/datosBasicos/clienteConTrasfer"
												/>
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
	</xsl:template>

</xsl:stylesheet>
