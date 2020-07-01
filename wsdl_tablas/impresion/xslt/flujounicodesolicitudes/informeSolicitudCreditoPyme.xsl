<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

<!-- VARIABLES DE CONFIGURACION -->
	<xsl:variable name="tamano-texto">8pt</xsl:variable>
	<xsl:variable name="fuente-texto">Arial,Helvetica,sans-serif</xsl:variable>
   <xsl:variable name="color-subrayado">#000000</xsl:variable>
    <xsl:variable name="tamano-titulo">16pt</xsl:variable>
    <xsl:variable name="color-cabecera-detalle-ventas">#DC143C</xsl:variable>



    <!-- PARAMETROS -->
    <xsl:param name="imagenes"/>

	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:fox="http://xml.apache.org/fop/extensions">
			<fo:layout-master-set>
				<fo:simple-page-master margin-right="1.3cm" margin-left="1.3cm" margin-bottom="0.95cm" margin-top="0.95cm" page-width="21.6cm" page-height="27.9cm" master-name="first">
					<fo:region-body margin-bottom="1.5cm" margin-top="1.5cm"/>
					<fo:region-before extent="2cm"/>
					<fo:region-after extent="0.5cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="first" id="pagina" language="en" hyphenate="true" initial-page-number="1" >
                <fo:static-content flow-name="xsl-region-before">
                    <xsl:call-template name="titulo">
                        <xsl:with-param name="texto">SOLICITUD DE CREDITO BANCA <xsl:value-of select="solcred/banca"/> - N&#xb0; <xsl:value-of select="solcred/datosSolicitud/numSolicitud"/> (<xsl:value-of select="solcred/datosSolicitud/estadoSolicitud"/>)
                        </xsl:with-param>
                    </xsl:call-template>
                </fo:static-content>
                <fo:static-content flow-name="xsl-region-after">
                   <!-- Separador -->
                    <fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid" border-top-color="#CCCCCC" border-top-width="0.5pt">
                      P&#225;gina <fo:page-number/> de <fo:page-number-citation ref-id="endofdoc"/>
                    </fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <xsl:call-template name="cabecera"/>
                    <xsl:call-template name="tablaGrupoEconomico"/>
                    <xsl:call-template name="detalleLinea"/>
                    <xsl:call-template name="cuadroHipotecario"/>
                    <xsl:call-template name="detalleGarantias"/>
                    <xsl:call-template name="EstadoDeResultados"/>
                    <xsl:call-template name="Visacion"/>
                    <xsl:call-template name="RelacionesGrupoEconomico"/>
                    <xsl:call-template name="ventas"/>
                    <xsl:call-template name="indicesSolicitante"/>
                    <xsl:call-template name="rubroBienRaiz"/>
		    <xsl:call-template name="rubroTransporte"/>
                    <xsl:call-template name="analisis" />
                    <xsl:call-template name="tablaimpresionCargaFinancierasTO" />
                    <xsl:call-template name="moduloObservacionesSolicitud"/>
                    <xsl:call-template name="excepcionesSolicitud"/>
                    <xsl:call-template name="estadoEvaluacionSolicitud"/>
                    <xsl:call-template name="mensajesAlertaSolicitud" />
                    <fo:block id="endofdoc"/>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>

	<!-- +++++++++++++++++ TEMPLATES ++++++++++++++++-->
	<!-- CABECERA SOLICITUD -->
	<xsl:template name="cabecera">
		<fo:block> </fo:block>
		<fo:block font-size="{$tamano-texto}" font-weight="normal" space-after="1mm" font-family="{$fuente-texto}">
			<fo:table table-layout="fixed" padding-top="5pt" width="100%" >
				<fo:table-column column-width="4cm"/>
				<fo:table-column column-width="8cm"/>
				<fo:table-column column-width="7cm"/>
				<fo:table-body>
					<fo:table-row font-weight="bold">
						<fo:table-cell>
							<fo:block/>
						</fo:table-cell>
						<fo:table-cell border-style="solid" padding="1pt">
							<fo:block>SOLICITUD DE CREDITO BANCA <xsl:value-of select="solcred/banca"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-style="solid" padding="1pt">
							<fo:block>FECHA: <xsl:value-of select="solcred/datosSolicitud/fechaSolicitud"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block>
                                <fo:external-graphic vertical-align="middle">
                                    <xsl:attribute name="src"><xsl:value-of select="$imagenes"/>bci_somos_diferentes.bmp</xsl:attribute>
                                </fo:external-graphic>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-style="solid" padding="1pt">
							<fo:block>NOMBRE:  <xsl:value-of select="/solcred/datosSolicitante/nombreSolicitante"/>
							</fo:block>
							<fo:block border-bottom-style="solid">RUT: <xsl:value-of select="/solcred/datosSolicitante/rut"/>-<xsl:value-of select="/solcred/datosSolicitante/digito"/>
							</fo:block>
							<fo:block>ACTIVIDAD: <xsl:value-of select="/solcred/datosSolicitante/actividad"/>
							</fo:block>
							<xsl:if test="solcred/datosSolicitante/esPersona ='false'">
								<fo:block>CATEGOR&#205;A: <xsl:value-of select="/solcred/datosSolicitante/categoria"/>
								</fo:block>
							</xsl:if>
							<xsl:if test="solcred/datosSolicitante/esPersona ='true'">
								<fo:block>FECHA NACIMIENTO: <xsl:value-of select="solcred/datosSolicitante/fechaNacimiento"/>
								</fo:block>
								<fo:block>ESTADO CIVIL: <xsl:value-of select="solcred/datosSolicitante/estadoCivil"/>
								</fo:block>
								<fo:block>NIVEL EDUCACIONAL: <xsl:value-of select="solcred/datosSolicitante/nivelEducacional"/>
								</fo:block>
							</xsl:if>
						</fo:table-cell>
						<fo:table-cell border-style="solid" padding="1pt">
							<fo:block>OFICINA: <xsl:value-of select="/solcred/datosSolicitud/oficina"/>
							</fo:block>
							<fo:block>FONO: <xsl:if test="/solcred/datosSolicitud/fonoEjecutivo != -1"><xsl:value-of select="/solcred/datosSolicitud/fonoEjecutivo"/></xsl:if>
							 
							</fo:block>
							<fo:block>EJECUTIVO: <xsl:value-of select="/solcred/datosSolicitud/ejecutivo"/>
							</fo:block>
							<fo:block>BANCA: <xsl:value-of select="/solcred/banca"/>
							</fo:block>
							<fo:block>FEC. CTA CTE.: <xsl:value-of select="/solcred/datosSolicitante/fecCtaCte"/>
							</fo:block>
								<fo:block>CLASIFICACI&#211;N: <xsl:value-of select="/solcred/datosSolicitante/clasificacion"/></fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<!-- TABLA GRUPO ECONOMICO -->
	<xsl:template name="tablaGrupoEconomico">
		<fo:block font-size="8pt"> &#xa0;</fo:block>
		<fo:block font-size="9pt" font-weight="bold">GRUPO ECONOMICO</fo:block>
		<fo:block font-size="{$tamano-texto}" font-weight="normal" space-after="1mm" font-family="{$fuente-texto}">
			<fo:table>
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-column column-width="3cm"/>
				<fo:table-column column-width="3cm"/>
				<fo:table-column column-width="3cm"/>
				<fo:table-column column-width="3cm"/>
				<fo:table-body>
					<fo:table-row font-weight="bold">
						<fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
							<fo:block>RUT</fo:block>
						</fo:table-cell>
						<fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
							<fo:block>NOMBRE</fo:block>
						</fo:table-cell>
						<fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
							<fo:block>PERIODO VIGENCIA</fo:block>
						</fo:table-cell>
						<fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
							<fo:block>MONTO LCG (M$)</fo:block>
						</fo:table-cell>
						<fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
							<fo:block>GARANTIAS (M$)</fo:block>
						</fo:table-cell>
						<fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
							<fo:block>DÉFICIT/EXCEDENTES</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:for-each select="solcred/grupoSolicitantes/solicitante">
						<fo:table-row>
							<fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid">
								<fo:block>
									<xsl:value-of select="rut"/>-<xsl:value-of select="digito"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid">
								<fo:block>
									<xsl:value-of select="nombre"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="right">
								<fo:block>
									<xsl:value-of select="periodoVigencia"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="right">
								<fo:block>
									<xsl:value-of select="montoMaximoLCG"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="right">
								<fo:block>
									<xsl:value-of select="sumaGarantias"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="right">
								<fo:block>
									<xsl:value-of select="lineaDeCredito/deficit"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:for-each>
					<fo:table-row>
						<fo:table-cell>
							<fo:block/>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block/>
						</fo:table-cell>
						<fo:table-cell padding="1pt" text-align="right">
							<fo:block font-size="6pt" font-weight="bold">Monto Total LINEAS(M$)</fo:block>
						</fo:table-cell>
						<fo:table-cell padding="1pt" text-align="right">
							<fo:block>
								<xsl:value-of select="/solcred/sumaTotalLineas"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell padding="1pt" text-align="right">
							<fo:block>
								<xsl:value-of select="/solcred/sumaTotalGarantias"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block/>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block/>
						</fo:table-cell>
						<fo:table-cell padding="1pt" text-align="right">
							<fo:block font-weight="bold">
								<xsl:value-of select="/solcred/excedente-deficit"/>  (M$)</fo:block>
						</fo:table-cell>
						<fo:table-cell padding="1pt" text-align="right">
							<fo:block>
								<xsl:value-of select="/solcred/monto-excedente-deficit"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell padding="1pt">
							<fo:block/>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>

		<!-- Separador -->
		<fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid"
			border-top-color="#CCCCCC" border-top-width="0.5pt" padding-before="10pt"></fo:block>
		<!-- Fin Separador -->
	</xsl:template>

	<!-- DETALLE LINEA-->
	<xsl:template name="detalleLinea">
		<fo:block font-size="8pt"> &#xa0;</fo:block>
		<fo:block font-size="10pt" font-weight="bold" padding-bottom="10pt">LINEA DE CREDITO SOLICITADA</fo:block>
		<fo:block font-size="{$tamano-texto}" font-weight="normal" space-after="1mm" font-family="{$fuente-texto}">
			<fo:table>
				<fo:table-column column-width="3cm"/> <!-- Linea -->
				<fo:table-column column-width="1.5cm"/> <!-- Moneda -->
				<fo:table-column column-width="2.5cm"/>	<!-- Monto Maximo -->
				<fo:table-column column-width="2.5cm"/>	<!-- F.Vcto -->
				<fo:table-column column-width="2cm"/>	<!-- cond gtia -->
				<fo:table-column column-width="2cm"/>	<!-- Tipo Gatia -->
				<fo:table-column column-width="2cm"/>	<!-- Sub Tipo Gtia -->
				<fo:table-column column-width="2cm"/>	<!-- cobertura -->
				<fo:table-column column-width="1.5cm"/>	<!-- NVO/VIG -->
				<fo:table-body>
					<xsl:for-each select="solcred/grupoSolicitantes/solicitante">
						<fo:table-row font-weight="bold" font-size="10pt">
							<fo:table-cell number-columns-spanned="3" >
								<fo:block >RUT: <xsl:value-of select="rut"/>-<xsl:value-of select="digito"/></fo:block>
							</fo:table-cell>
							<fo:table-cell number-columns-spanned="3">
								<fo:block>
								MONTO TOTAL LCG (M$): <xsl:value-of select="lineaDeCredito/montoMaximoLCG"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell number-columns-spanned="3">
								<fo:block>
								MONTO TOTAL LCG (UF): <xsl:value-of select="lineaDeCredito/montoMaximoLCG_UF"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="lineaDeCredito/grupoDeFamilia">
							<fo:table-row font-weight="bold" font-size="9pt">
								<fo:table-cell number-columns-spanned="3" >
									<fo:block >
									<xsl:value-of select="glosa"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell number-columns-spanned="3">
									<fo:block>
									MONTO TOTAL (M$): <xsl:value-of select="montoEnPesos"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell number-columns-spanned="3">
									<fo:block>
									MONTO TOTAL (UF): <xsl:value-of select="montoEnUf"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<xsl:for-each select="familiaDeLinea">
								<fo:table-row font-weight="bold" >
									<fo:table-cell number-columns-spanned="3" border-bottom-style="solid" border-top-style="solid" border-left-style="solid">
										<fo:block>
										<xsl:value-of select="glosa" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell number-columns-spanned="3" border-bottom-style="solid" border-top-style="solid">
										<fo:block>
										MONTO TOTAL (M$): <xsl:value-of select="montoEnPesos"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell number-columns-spanned="3" border-bottom-style="solid" border-top-style="solid" border-right-style="solid">
										<fo:block>
										MONTO TOTAL (UF): <xsl:value-of select="montoEnUf"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								
								<fo:table-row>
									<fo:table-cell border-bottom-style="solid" border-top-style="solid" border-left-style="solid">
										<fo:block font-weight="bold">LINEA</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-style="solid" border-top-style="solid" >
										<fo:block font-weight="bold" text-align="right">MONEDA</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-style="solid" border-top-style="solid" >
										<fo:block font-weight="bold" text-align="right">MONTO</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-style="solid" border-top-style="solid" >
										<fo:block font-weight="bold" text-align="right">F.VCTO</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-style="solid" border-top-style="solid" >
										<fo:block font-weight="bold" text-align="right">COND GTIA</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-style="solid" border-top-style="solid" >
										<fo:block font-weight="bold" text-align="right">TIPO GTIA</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-style="solid" border-top-style="solid" >
										<fo:block font-weight="bold" text-align="right">SUBTIPO GTIA</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-style="solid" border-top-style="solid" >
										<fo:block font-weight="bold" text-align="right">COBERTURA</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-style="solid" border-top-style="solid" border-right-style="solid">
										<fo:block font-weight="bold" text-align="right">NVO/VIG</fo:block>
									</fo:table-cell>
								</fo:table-row>
								
								<xsl:choose>
									<xsl:when test="detalleDeLinea">
										<xsl:for-each select="detalleDeLinea">
											<fo:table-row padding="1pt">
												<fo:table-cell border-bottom-style="solid" border-top-style="solid" border-left-style="solid">
													<fo:block>
														<xsl:value-of select="tipoLinea"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="right" border-bottom-style="solid" border-top-style="solid">
													<fo:block>
														<xsl:value-of select="moneda"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="right" border-bottom-style="solid" border-top-style="solid">
													<fo:block>
														<xsl:value-of select="monto"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="right" border-bottom-style="solid" border-top-style="solid">
													<fo:block>
														<xsl:value-of select="fechaVencimiento"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="right" border-bottom-style="solid" border-top-style="solid">
													<fo:block>
														<xsl:value-of select="condicionGarantia"/>
													</fo:block>
												</fo:table-cell>

												<!-- inicio tipos garantias -->
												<fo:table-cell text-align="right" number-columns-spanned="3" border-bottom-style="solid" border-top-style="solid">
													<xsl:for-each select="detalleGarantia">
														<fo:table>
														<fo:table-column column-width="2cm"/> 	<!-- Tipo Gatia -->
															<fo:table-column column-width="2mm"/> 	<!-- vacia -->
															<fo:table-column column-width="2cm"/>	<!-- Sub Tipo Gtia -->
															<fo:table-column column-width="2mm"/> 	<!-- vacia -->
															<fo:table-column column-width="2cm"/>	<!-- cobertura -->
															<fo:table-body>
																<fo:table-row border-top-style="solid">
																	<fo:table-cell text-align="right">
																		<fo:block>
																			<xsl:value-of select="tipoGarantia"/>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell></fo:table-cell>
																	<fo:table-cell text-align="right">
																		<fo:block>
																			<xsl:value-of select="subtipoGarantia"/>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell></fo:table-cell>
																	<fo:table-cell text-align="right">
																		<fo:block>
																			<xsl:value-of select="cobertura"/>
																		</fo:block>
																	</fo:table-cell>
																</fo:table-row>
															</fo:table-body>
														</fo:table>
													</xsl:for-each>
												</fo:table-cell>
												<!-- Termino tipos garantia -->

												<fo:table-cell text-align="right" border-bottom-style="solid" border-top-style="solid" border-right-style="solid">
													<fo:block>
														<xsl:value-of select="nuevo-vigente"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</xsl:for-each>
									</xsl:when>
									<xsl:otherwise>
										<fo:table-row>
											<fo:table-cell border-style="solid" number-columns-spanned="9">
												<fo:block>
													Cliente No Posee Detalle L&#237;nea de Cr&#233;dito.
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</xsl:otherwise>
								</xsl:choose>
								<!-- linea en blanco para seprar un detalle de otro-->
								<fo:table-row>
									<fo:table-cell number-columns-spanned="9">
										<fo:block>&#xa0;</fo:block>
									</fo:table-cell>
								</fo:table-row>

							</xsl:for-each>
						</xsl:for-each>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>

		<!-- Separador -->
		<fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid"
			border-top-color="#CCCCCC" border-top-width="0.5pt" padding-before="10pt"></fo:block>
		<!-- Fin Separador -->
	</xsl:template>

	<!-- DETALLE GARANTIAS-->
	<xsl:template name="detalleGarantias">
		<fo:block font-size="8pt"> &#xa0;</fo:block>
		<fo:block font-size="9pt" font-weight="bold">GARANTIAS</fo:block>
		<fo:block font-size="{$tamano-texto}" font-weight="normal" space-after="1mm" font-family="{$fuente-texto}">
			<fo:table>
				<fo:table-column column-width="4cm"/>
				<fo:table-column column-width="3cm"/>
				<fo:table-column column-width="3cm"/>
				<fo:table-column column-width="3cm"/>
				<fo:table-column column-width="3cm"/>
				<fo:table-column column-width="3cm"/>
				<fo:table-body>
					<xsl:for-each select="solcred/grupoSolicitantes/solicitante">
                        <fo:table-row font-weight="bold">
                            <fo:table-cell>
                                <fo:block>
                                    RUT: <xsl:value-of select="rut"/>-<xsl:value-of select="digito"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-columns-spanned="2">
                                <fo:block>
                                    Total Garantias (M$): <xsl:value-of select="sumaGarantias"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-columns-spanned="4">
                                <fo:block>
                                    NOMBRE: <xsl:value-of select="nombre"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>

                        <fo:table-row>
                            <fo:table-cell text-align="center">
                                <fo:block text-decoration="underline">TIPO GTIA</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                                <fo:block text-decoration="underline">G/E</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                                <fo:block text-decoration="underline">OFRECIDA/VIGENTE</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                                <fo:block text-decoration="underline">FECHA TAS</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                                <fo:block text-decoration="underline">VALOR TAS</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                                <fo:block text-decoration="underline">VALOR LIQ</fo:block>
                            </fo:table-cell>
                        </fo:table-row>

						<xsl:for-each select="listado_garantias/garantia">
							<fo:table-row>
								<fo:table-cell text-align="left">
									<fo:block>
										<xsl:value-of select="tipo"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center">
									<fo:block>
										<xsl:value-of select="general-especifica"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center">
									<fo:block>
										<xsl:value-of select="ofrecida-vigente"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center">
									<fo:block>
										<xsl:value-of select="fechaTasacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="right">
									<fo:block>
										<xsl:value-of select="valorTasacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="right">
									<fo:block>
										<xsl:value-of select="valorLiquidacion"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</xsl:for-each>
						<!-- linea en blanco para seprar un detalle de otro-->
						<fo:table-row>
							<fo:table-cell number-columns-spanned="7">
								<fo:block>&#xa0;</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>

		<!-- Separador -->
		<fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid"
			border-top-color="#CCCCCC" border-top-width="0.5pt" padding-before="10pt"></fo:block>
		<!-- Fin Separador -->
	</xsl:template>
	<!-- ESTADO DE SITUACION-->
	<xsl:template name="EstadoDeResultados">
		<fo:block font-size="8pt"> &#xa0;</fo:block>
		<fo:block font-size="9pt" font-weight="bold">ESTADO SITUACION</fo:block>

		<xsl:for-each select="solcred/listadoImpresionEstadoSituacionTO/impresionEstadoSituacionTO">
			<fo:block font-size="{$tamano-texto}" font-weight="normal" space-after="1mm" font-family="{$fuente-texto}">
				<fo:block font-weight="bold">RUT: <xsl:value-of select="rut"/>-<xsl:value-of select="digito"/>
				</fo:block>
				<fo:block>NOMBRE: <xsl:value-of select="nombre"/>
				</fo:block>
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="9cm"/>
					<fo:table-column column-width="9cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block>
									<fo:table>
										<fo:table-column column-width="4cm"/>
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="3cm"/>
										<fo:table-body>
											<fo:table-row font-weight="bold">
												<fo:table-cell border-style="solid" text-align="center" padding="1pt">
													<fo:block>ACTIVOS</fo:block>
												</fo:table-cell>
												<fo:table-cell border-style="solid" text-align="center" padding="1pt">
													<fo:block> N&#xb0;</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" border-style="solid" padding="1pt">
													<fo:block>MONTO (M$)</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<xsl:for-each select="estadoDeSituacion/items">
												<xsl:if test="es_activo = 'true'">
													<fo:table-row>
														<fo:table-cell border-style="solid" padding="1pt">
															<fo:block>
																<xsl:value-of select="nombre"/>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-style="solid" text-align="right" padding="1pt">
															<fo:block>
																<xsl:value-of select="cantidadItems"/>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-style="solid" text-align="right" padding="1pt">
															<fo:block>
																<xsl:value-of select="monto"/>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
												</xsl:if>
											</xsl:for-each>
											<fo:table-row font-weight="bold">
												<fo:table-cell border-style="solid" padding="4pt">
													<fo:block>TOTAL ACTIVOS</fo:block>
												</fo:table-cell>
												<fo:table-cell border-style="solid" padding="4pt">
													<fo:block/>
												</fo:table-cell>
												<fo:table-cell border-style="solid" padding="4pt" text-align="right">
													<fo:block>
														<xsl:value-of select="totalActivos"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block>
									<fo:table>
										<fo:table-column column-width="4cm"/>
										<fo:table-column column-width="1cm"/>
										<fo:table-column column-width="3cm"/>
										<fo:table-body>
											<fo:table-row font-weight="bold">
												<fo:table-cell border-style="solid" text-align="center" padding="1pt">
													<fo:block>PASIVOS</fo:block>
												</fo:table-cell>
												<fo:table-cell border-style="solid" text-align="center" padding="1pt">
													<fo:block> N&#xb0;</fo:block>
												</fo:table-cell>
												<fo:table-cell border-style="solid" text-align="center" padding="1pt">
													<fo:block>MONTO (M$)</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<xsl:for-each select="estadoDeSituacion/items">
												<xsl:if test="es_pasivo = 'true'">
													<fo:table-row>
														<fo:table-cell border-style="solid" padding="1pt">
															<fo:block>
																<xsl:value-of select="nombre"/>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-style="solid" text-align="right" padding="1pt">
															<fo:block>
																<xsl:value-of select="cantidadItems"/>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-style="solid" text-align="right" padding="1pt">
															<fo:block>
																<xsl:value-of select="monto"/>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
												</xsl:if>
											</xsl:for-each>
											<fo:table-row font-weight="bold">
												<fo:table-cell border-style="solid" padding="4pt">
													<fo:block>TOTAL PASIVOS</fo:block>
												</fo:table-cell>
												<fo:table-cell border-style="solid" padding="4pt">
													<fo:block/>
												</fo:table-cell>
												<fo:table-cell border-style="solid" padding="4pt" text-align="right">
													<fo:block>
														<xsl:value-of select="totalPasivos"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row font-weight="bold">
												<fo:table-cell border-style="solid" padding="4pt">
													<fo:block>PATRIMONIO</fo:block>
												</fo:table-cell>
												<fo:table-cell border-style="solid" padding="4pt" text-align="right">
													<fo:block/>
												</fo:table-cell>
												<fo:table-cell border-style="solid" padding="4pt" text-align="right">
													<fo:block>
														<xsl:value-of select="estadoDeSituacion/items[es_patrimonio = 'true']/monto"/>
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
				<xsl:call-template name="Ingresos">
					<xsl:with-param name="fijo"        select="rentaFija"/>
					<xsl:with-param name="variable"    select="rentaVariable"/>
					<xsl:with-param name="fuente"      select="fuenteIngresos"/>
					<xsl:with-param name="total"       select="rentaTotal"/>
				</xsl:call-template>
			</fo:block>
		</xsl:for-each>
        

		<!-- Separador -->
		<fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid"
			border-top-color="#CCCCCC" border-top-width="0.5pt" padding-before="10pt"></fo:block>
		<!-- Fin Separador -->
	</xsl:template>

	<!-- INGRESOS-->
	<xsl:template name="Ingresos">
		<xsl:param name="fijo"/>
		<xsl:param name="variable"/>
		<xsl:param name="fuente"/>
		<xsl:param name="total"/>

		<fo:block font-size="8pt"> &#xa0;</fo:block>
		<fo:block font-size="{$tamano-texto}" text-decoration="underline">INGRESOS (M$)</fo:block>
		<fo:block font-size="{$tamano-texto}" font-weight="normal" space-after="1mm" font-family="{$fuente-texto}">
			<fo:table>
				<fo:table-column column-width="5cm"/>
				<fo:table-column column-width="4cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block>FIJO:</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								<xsl:value-of select="$fijo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block>VARIABLE:</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								<xsl:value-of select="$variable"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block>FUENTE:</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								<xsl:value-of select="$fuente"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block>TOTAL INGRESOS</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								<xsl:value-of select="$total"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<!-- VISACION-->
	<xsl:template name="Visacion">
    <xsl:if test="solcred/posee-visacion = 'true'">
		<fo:block font-size="8pt"> &#xa0;</fo:block>
		<fo:block font-size="9pt" font-weight="bold">VISACION</fo:block>

		<!-- RESUMEN VISACION -->
		<fo:block padding-before="5mm" font-size="{$tamano-texto}" font-weight="bold" text-decoration="underline">
			RESUMEN VISACION (M$)
		</fo:block>

		<fo:block font-size="{$tamano-texto}" font-weight="normal" space-after="1mm" font-family="{$fuente-texto}">
			<fo:table>
					<fo:table-column column-width="5cm"/>	<!-- Titulo fila -->
					<fo:table-column column-width="0.2cm"/>	<!-- Dos puntos -->
					<fo:table-column column-width="1.9cm"/>	<!-- Solicitante 1 -->
					<fo:table-column column-width="1.9cm"/>	<!-- Solicitante 2 -->
					<fo:table-column column-width="1.9cm"/>	<!-- Solicitante 3 -->
					<fo:table-column column-width="1.9cm"/>	<!-- Solicitante 4 -->
					<fo:table-column column-width="1.9cm"/>	<!-- Solicitante 5 -->
					<fo:table-column column-width="1.9cm"/>	<!-- Solicitante 6 -->
					<fo:table-column column-width="1.9cm"/>	<!-- Solicitante 7 -->
				<fo:table-body>
					<!-- FILA RUT -->
					<fo:table-row>
						<fo:table-cell>
							<!-- VACIO POR FORMATO -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- VACIO POR FORMATO -->
						</fo:table-cell>
						<xsl:for-each select="//visacion/resumen-visacion">
							<fo:table-cell>
								<fo:block text-align="right" font-weight="bold">
									<xsl:value-of select="rut"/>-<xsl:value-of select="digito"/>
								</fo:block>
							</fo:table-cell>
						</xsl:for-each>
					</fo:table-row>

					<!-- FILA CTA CTE -->
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left">
								CUENTA CTE
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<!-- VACIO POR FORMATO -->
						</fo:table-cell>
						<xsl:for-each select="//visacion/resumen-visacion">
							<fo:table-cell>
								<fo:block text-align="right">
									<xsl:value-of select="cuenta"/>
								</fo:block>
							</fo:table-cell>
						</xsl:for-each>
					</fo:table-row>

					<!-- FILA NUMERO CUENTAS -->
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left">
								NUMERO CUENTAS
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="center">
								:
							</fo:block>
						</fo:table-cell>
						<xsl:for-each select="//visacion/resumen-visacion">
							<fo:table-cell>
								<fo:block text-align="right">
									<xsl:value-of select="numero-cuentas"/>
								</fo:block>
							</fo:table-cell>
						</xsl:for-each>
					</fo:table-row>

					<!-- FILA FECHA APERTURA -->
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left">
								FECHA APERTURA
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="center">
								:
							</fo:block>
						</fo:table-cell>
						<xsl:for-each select="//visacion/resumen-visacion">
							<fo:table-cell>
								<fo:block text-align="right">
									<xsl:value-of select="fecha-apertura"/>
								</fo:block>
							</fo:table-cell>
						</xsl:for-each>
					</fo:table-row>

					<!-- FILA SALDO PROMEDIO -->
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left">
								SALDO PROMEDIO TRIM. ACT.(M$)
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="center">
								:
							</fo:block>
						</fo:table-cell>
						<xsl:for-each select="//visacion/resumen-visacion">
							<fo:table-cell>
								<fo:block text-align="right">
									<xsl:value-of select="saldo-promedio"/>
								</fo:block>
							</fo:table-cell>
						</xsl:for-each>
					</fo:table-row>

					<!-- FILA TOTAL DEPOSITOS -->
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left">
								TOTAL DEPOSITOS TRIM. ACT.(M$)
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="center">
								:
							</fo:block>
						</fo:table-cell>
						<xsl:for-each select="//visacion/resumen-visacion">
							<fo:table-cell>
								<fo:block text-align="right">
									<xsl:value-of select="total-depositos"/>
								</fo:block>
							</fo:table-cell>
						</xsl:for-each>
					</fo:table-row>

					<!-- FILA PROTESTOS / ACLARACIONES -->
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left">
								PROT VIGENTES / ACLARAC
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="center">
								:
							</fo:block>
						</fo:table-cell>
						<xsl:for-each select="//visacion/resumen-visacion">
							<fo:table-cell>
								<fo:block text-align="right">
									<xsl:value-of select="protest_aclarac"/>
								</fo:block>
							</fo:table-cell>
						</xsl:for-each>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>

		<!-- Separador -->
		<fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid"
			border-top-color="#CCCCCC" border-top-width="0.5pt" padding-before="10pt"></fo:block>
		<!-- Fin Separador -->
    </xsl:if>
	</xsl:template>

    <!-- RELACIONES DEL GRUPO ECONOMICO -->
    <xsl:template name="RelacionesGrupoEconomico">
        <xsl:if test="//grupoEconomico/integrante">
            <fo:block font-size="8pt"> &#xa0;</fo:block>
            <fo:block font-size="9pt" font-weight="bold">RELACIONES DEL GRUPO ECONOMICO</fo:block>
            <fo:block font-size="{$tamano-texto}" font-weight="normal" space-after="1mm" font-family="{$fuente-texto}">
                <fo:table>
                    <fo:table-column column-width="3cm"/>
                    <fo:table-column column-width="2.5cm"/>
                    <fo:table-column column-width="3cm"/>
                    <fo:table-column column-width="2.5cm"/>
                    <fo:table-column column-width="2.5cm"/>
                    <fo:table-column column-width="3cm"/>
                    <fo:table-column column-width="2.5cm"/>
                    <fo:table-body>
                        <fo:table-row font-weight="bold">
                            <fo:table-cell border-style="solid" text-align="center">
                                <fo:block>CLIENTE</fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-style="solid" text-align="center">
                                <fo:block>SOCIO</fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-style="solid" text-align="center">
                                <fo:block>PARTICIPACION %</fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-style="solid" text-align="center">
                                <fo:block>AVAL</fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-style="solid" text-align="center">
                                <fo:block>CONYUGE</fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-style="solid" text-align="center">
                                <fo:block>DEUDOR COMP.</fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-style="solid" text-align="center">
                                <fo:block>OTRO</fo:block>
                            </fo:table-cell>
                        </fo:table-row>

                        <xsl:for-each select="solcred/grupoSolicitantes/solicitante">
                        <xsl:for-each select="grupoEconomico/integrante">
                            <fo:table-row text-align="right">
                                <fo:table-cell border-style="solid">
                                    <xsl:if test="position()=1">
                                        <fo:block>
                                            <xsl:value-of select="../../rut"/>-<xsl:value-of select="../../digito"/>
                                        </fo:block>
                                    </xsl:if>
                                </fo:table-cell>
                                <fo:table-cell border-style="solid">
                                    <fo:block>
                                        <xsl:if test="tipoRelacion='SOC'">
                                            <xsl:value-of select="rut-integrante"/>-<xsl:value-of select="digito-integrante"/>
                                        </xsl:if>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-style="solid">
                                    <fo:block>
                                        <xsl:if test="tipoRelacion='SOC'">
                                            <xsl:value-of select="participacion"/>
                                        </xsl:if>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-style="solid">
                                    <fo:block>
                                        <xsl:if test="tipoRelacion='AVA'">
                                            <xsl:value-of select="rut-integrante"/>-<xsl:value-of select="digito-integrante"/>
                                        </xsl:if>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-style="solid">
                                    <fo:block>
                                        <xsl:if test="tipoRelacion='CNY'">
                                            <xsl:value-of select="rut-integrante"/>-<xsl:value-of select="digito-integrante"/>
                                        </xsl:if>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-style="solid">
                                    <fo:block>
                                        <xsl:if test="tipoRelacion='DC'">
                                            <xsl:value-of select="rut-integrante"/>-<xsl:value-of select="digito-integrante"/>
                                        </xsl:if>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-style="solid">
                                    <fo:block>
                                        <xsl:if test="tipoRelacion='OTR'">
                                            <xsl:value-of select="rut-integrante"/>-<xsl:value-of select="digito-integrante"/>
                                        </xsl:if>
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </xsl:for-each>
                        </xsl:for-each>
                    </fo:table-body>
                </fo:table>
            </fo:block>

            <!-- Separador -->
            <fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid"
                border-top-color="#CCCCCC" border-top-width="0.5pt" padding-before="10pt"></fo:block>
            <!-- Fin Separador -->
        </xsl:if>
    </xsl:template>

    <!--VENTAS -->
    <xsl:template name="ventas">
        <xsl:if test="//ventas and //compras">
		<fo:block font-size="8pt"> &#xa0;</fo:block>
		<xsl:for-each select="solcred/grupoSolicitantes/solicitante">
		    <xsl:if test="ventas and compras">
                <xsl:call-template name="DetalleVentas">
                    <xsl:with-param name="ventas" select="ventas"/>
                    <xsl:with-param name="compras" select="compras"/>
                    <xsl:with-param name="costInd" select="costInd"/>
                    <xsl:with-param name="genOperNeta" select="genOperNeta"/>
                    <xsl:with-param name="rut" select="rut"/>
                    <xsl:with-param name="digito" select="digito"/>
                </xsl:call-template>
			</xsl:if>
		</xsl:for-each>

		<!-- Separador -->
		<fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid"
			border-top-color="#CCCCCC" border-top-width="0.5pt" padding-before="10pt"></fo:block>
		<!-- Fin Separador -->
        </xsl:if>
	</xsl:template>

	<!-- TITULO-->
	<xsl:template name="titulo2">
		<xsl:param name="texto"/>
		<fo:block font-size="16pt" font-weight="bold" text-align="left" font-family="{$fuente-texto}" border-bottom-style="solid" border-bottom-color="#CCCCCC" border-bottom-width="0.5pt" margin-bottom="3pt" margin-top="10pt">
			<xsl:value-of select="$texto"/>
		</fo:block>
		<fo:block font-size="8pt"> &#xa0;</fo:block>
	</xsl:template>

	<!-- DETALLE VENTAS, COMPRAS, COSTOS INDIRECTOS Y GENERACION OPERATIVA NETA (GON) -->
	<xsl:template name="DetalleVentas">
		<xsl:param name="ventas"/>
		<xsl:param name="compras"/>
		<xsl:param name="costInd"/>
		<xsl:param name="genOperNeta"/>
		<xsl:param name="rut"/>
		<xsl:param name="digito"/>

        <xsl:if test="$ventas and $ventas/periodo[3] and $compras/periodo[3]">
			<fo:block font-size="{$tamano-texto}" font-weight="normal" space-after="10pt" space-before="1pt" font-family="{$fuente-texto}">
				<fo:table>
					<fo:table-column column-width="3cm"/>
					<fo:table-column column-width="4cm"/>
					<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="4cm"/>
					<fo:table-body>
							<!-- GLOSA RUT Y VALOR -->
						<fo:table-row>
								<fo:table-cell number-columns-spanned="5" font-weight="bold" border-style="solid" padding="1pt">
								<fo:block>RUT: <xsl:value-of select="$rut"/>-<xsl:value-of select="$digito"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
							
							<!-- GLOSA AÑO y VALOR -->
						<fo:table-row font-weight="bold">
								<fo:table-cell text-align="center" border-style="solid" padding="1pt" color="{$color-cabecera-detalle-ventas}">						
									<fo:block>A&#xD1;O</fo:block>
							</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt" color="{$color-cabecera-detalle-ventas}">
								<fo:block>
										<xsl:value-of select="$ventas/periodo[3]/anio"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" padding="1pt">
									<fo:block font-size="8pt"> &#xa0;</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt">
									<fo:block font-size="8pt"> &#xa0;</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt">
									<fo:block font-size="8pt"> &#xa0;</fo:block>
							</fo:table-cell>
						</fo:table-row>
							
							<!-- CABECERA: MES, VENTAS, COMPRAS, COSTOS INDIRECTOS Y GENERACION OPER NETA (GON) -->
						<fo:table-row font-weight="bold">
								<fo:table-cell text-align="center" border-style="solid" padding="1pt" color="{$color-cabecera-detalle-ventas}">
									<fo:block>MES</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt" color="{$color-cabecera-detalle-ventas}">
								<fo:block>VENTAS</fo:block>
							</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt" color="{$color-cabecera-detalle-ventas}">
									<fo:block>COMPRAS</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt" color="{$color-cabecera-detalle-ventas}">
									<fo:block>COSTOS INDIRECTOS</fo:block>
							</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt" color="{$color-cabecera-detalle-ventas}">
									<fo:block>GENERACION OPER NETA (GON)</fo:block>
							</fo:table-cell>
						</fo:table-row>
							
							
							<xsl:for-each select="$ventas/periodo[3]/montos">
							<xsl:variable name="indice" select="position()" />						
								
								<!-- VALORES: MES, VENTAS, COMPRAS, COSTOS INDIRECTOS Y GENERACION OPER NETA (GON) -->
						<fo:table-row>
							<fo:table-cell text-align="left" border-style="solid" padding="1pt">
										<xsl:if test="position() = 1">
								<fo:block>Enero</fo:block>
										</xsl:if>
										<xsl:if test="position() = 2">
											<fo:block>Febrero</fo:block>
										</xsl:if>
										<xsl:if test="position() = 3">
											<fo:block>Marzo</fo:block>
										</xsl:if>
										<xsl:if test="position() = 4">
											<fo:block>Abril</fo:block>
										</xsl:if>
										<xsl:if test="position() = 5">
											<fo:block>Mayo</fo:block>
										</xsl:if>
										<xsl:if test="position() = 6">
											<fo:block>Junio</fo:block>
										</xsl:if>
										<xsl:if test="position() = 7">
											<fo:block>Julio</fo:block>
										</xsl:if>
										<xsl:if test="position() = 8">
											<fo:block>Agosto</fo:block>
										</xsl:if>
										<xsl:if test="position() = 9">
											<fo:block>Septiembre</fo:block>
										</xsl:if>
										<xsl:if test="position() = 10">
											<fo:block>Octubre</fo:block>
										</xsl:if>
										<xsl:if test="position() = 11">
											<fo:block>Noviembre</fo:block>
										</xsl:if>
										<xsl:if test="position() = 12">
											<fo:block>Diciembre</fo:block>
										</xsl:if>
										<xsl:if test="position() = 13">
											<fo:block>Total</fo:block>
										</xsl:if>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" padding="1pt">
								<fo:block>
											<xsl:value-of select="$ventas/periodo[3]/montos[$indice]"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" padding="1pt">
								<fo:block>
											<xsl:value-of select="$compras/periodo[3]/montosCompras[$indice]"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" padding="1pt">
								<fo:block>
											<xsl:value-of select="$costInd/periodo[3]/montosCostInd[$indice]"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" padding="1pt">
								<fo:block>
											<xsl:value-of select="$genOperNeta/periodo[3]/montosGenOperNeta[$indice]"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
							</xsl:for-each>
						</fo:table-body>
					</fo:table>
				</fo:block>
		</xsl:if>

		<xsl:if test="$ventas and $ventas/periodo[2] and $compras/periodo[2]">
				<fo:block font-size="{$tamano-texto}" font-weight="normal" space-after="10pt" space-before="1pt" font-family="{$fuente-texto}">
					<fo:table>
						<fo:table-column column-width="3cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-body>
							<!-- GLOSA RUT Y VALOR -->
						<fo:table-row>
								<fo:table-cell number-columns-spanned="5" font-weight="bold" border-style="solid" padding="1pt">
									<fo:block>RUT: <xsl:value-of select="$rut"/>-<xsl:value-of select="$digito"/>
									</fo:block>
							</fo:table-cell>
							</fo:table-row>
							
							<!-- GLOSA AÑO y VALOR -->
							<fo:table-row font-weight="bold">
								<fo:table-cell text-align="center" border-style="solid" padding="1pt" color="{$color-cabecera-detalle-ventas}">						
									<fo:block>A&#xD1;O</fo:block>
							</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt" color="{$color-cabecera-detalle-ventas}">
								<fo:block>
										<xsl:value-of select="$ventas/periodo[2]/anio"/>
								</fo:block>
							</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt">
									<fo:block font-size="8pt"> &#xa0;</fo:block>
							</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt">
									<fo:block font-size="8pt"> &#xa0;</fo:block>
							</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt">
									<fo:block font-size="8pt"> &#xa0;</fo:block>
							</fo:table-cell>
						</fo:table-row>
							
							<!-- CABECERA: MES, VENTAS, COMPRAS, COSTOS INDIRECTOS Y GENERACION OPER NETA (GON) -->
							<fo:table-row font-weight="bold">
								<fo:table-cell text-align="center" border-style="solid" padding="1pt" color="{$color-cabecera-detalle-ventas}">
									<fo:block>MES</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt" color="{$color-cabecera-detalle-ventas}">
									<fo:block>VENTAS</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt" color="{$color-cabecera-detalle-ventas}">
									<fo:block>COMPRAS</fo:block>
							</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt" color="{$color-cabecera-detalle-ventas}">
									<fo:block>COSTOS INDIRECTOS</fo:block>
							</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt" color="{$color-cabecera-detalle-ventas}">
									<fo:block>GENERACION OPER NETA (GON)</fo:block>
							</fo:table-cell>
						</fo:table-row>
							
							<xsl:for-each select="$ventas/periodo[2]/montos">
							<xsl:variable name="indice" select="position()" />
								
								<!-- VALORES: MES, VENTAS, COMPRAS, COSTOS INDIRECTOS Y GENERACION OPER NETA (GON) -->
						<fo:table-row>
							<fo:table-cell text-align="left" border-style="solid" padding="1pt">
										<xsl:if test="position() = 1">
											<fo:block>Enero</fo:block>
										</xsl:if>
										<xsl:if test="position() = 2">
											<fo:block>Febrero</fo:block>
										</xsl:if>
										<xsl:if test="position() = 3">
											<fo:block>Marzo</fo:block>
										</xsl:if>
										<xsl:if test="position() = 4">
											<fo:block>Abril</fo:block>
										</xsl:if>
										<xsl:if test="position() = 5">
											<fo:block>Mayo</fo:block>
										</xsl:if>
										<xsl:if test="position() = 6">
								<fo:block>Junio</fo:block>
										</xsl:if>
										<xsl:if test="position() = 7">
											<fo:block>Julio</fo:block>
										</xsl:if>
										<xsl:if test="position() = 8">
											<fo:block>Agosto</fo:block>
										</xsl:if>
										<xsl:if test="position() = 9">
											<fo:block>Septiembre</fo:block>
										</xsl:if>
										<xsl:if test="position() = 10">
											<fo:block>Octubre</fo:block>
										</xsl:if>
										<xsl:if test="position() = 11">
											<fo:block>Noviembre</fo:block>
										</xsl:if>
										<xsl:if test="position() = 12">
											<fo:block>Diciembre</fo:block>
										</xsl:if>
										<xsl:if test="position() = 13">
											<fo:block>Total</fo:block>
										</xsl:if>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" padding="1pt">
								<fo:block>
											<xsl:value-of select="$ventas/periodo[2]/montos[$indice]"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" padding="1pt">
								<fo:block>
											<xsl:value-of select="$compras/periodo[2]/montosCompras[$indice]"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" padding="1pt">
								<fo:block>
											<xsl:value-of select="$costInd/periodo[2]/montosCostInd[$indice]"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" padding="1pt">
								<fo:block>
											<xsl:value-of select="$genOperNeta/periodo[2]/montosGenOperNeta[$indice]"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
							</xsl:for-each>
						</fo:table-body>
					</fo:table>
				</fo:block>
		</xsl:if>
			
		<xsl:if test="$ventas and $ventas/periodo[1] and $compras/periodo[1]">
				<fo:block font-size="{$tamano-texto}" font-weight="normal" space-after="10pt" space-before="1pt" font-family="{$fuente-texto}">
					<fo:table>
						<fo:table-column column-width="3cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-body>
							<!-- GLOSA RUT Y VALOR -->
						<fo:table-row>
								<fo:table-cell number-columns-spanned="5" font-weight="bold" border-style="solid" padding="1pt">
									<fo:block>RUT: <xsl:value-of select="$rut"/>-<xsl:value-of select="$digito"/>
									</fo:block>
							</fo:table-cell>
							</fo:table-row>
							
							<!-- GLOSA AÑO y VALOR -->
							<fo:table-row font-weight="bold">
								<fo:table-cell text-align="center" border-style="solid" padding="1pt" color="{$color-cabecera-detalle-ventas}">						
									<fo:block>A&#xD1;O</fo:block>
							</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt" color="{$color-cabecera-detalle-ventas}">
								<fo:block>
										<xsl:value-of select="$ventas/periodo[1]/anio"/>
								</fo:block>
							</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt">
									<fo:block font-size="8pt"> &#xa0;</fo:block>
							</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt">
									<fo:block font-size="8pt"> &#xa0;</fo:block>
							</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt">
									<fo:block font-size="8pt"> &#xa0;</fo:block>
							</fo:table-cell>
						</fo:table-row>
							
							<!-- CABECERA: MES, VENTAS, COMPRAS, COSTOS INDIRECTOS Y GENERACION OPER NETA (GON) -->
							<fo:table-row font-weight="bold">
								<fo:table-cell text-align="center" border-style="solid" padding="1pt" color="{$color-cabecera-detalle-ventas}">
									<fo:block>MES</fo:block>
							</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt" color="{$color-cabecera-detalle-ventas}">
									<fo:block>VENTAS</fo:block>
							</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt" color="{$color-cabecera-detalle-ventas}">
									<fo:block>COMPRAS</fo:block>
							</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt" color="{$color-cabecera-detalle-ventas}">
									<fo:block>COSTOS INDIRECTOS</fo:block>
							</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt" color="{$color-cabecera-detalle-ventas}">
									<fo:block>GENERACION OPER NETA (GON)</fo:block>
							</fo:table-cell>
						</fo:table-row>
							
							<xsl:for-each select="$ventas/periodo[1]/montos">
							<xsl:variable name="indice" select="position()" />
								
								<!-- VALORES: MES, VENTAS, COMPRAS, COSTOS INDIRECTOS Y GENERACION OPER NETA (GON) -->
						<fo:table-row>
							<fo:table-cell text-align="left" border-style="solid" padding="1pt">
										<xsl:if test="position() = 1">
											<fo:block>Enero</fo:block>
										</xsl:if>
										<xsl:if test="position() = 2">
											<fo:block>Febrero</fo:block>
										</xsl:if>
										<xsl:if test="position() = 3">
											<fo:block>Marzo</fo:block>
										</xsl:if>
										<xsl:if test="position() = 4">
											<fo:block>Abril</fo:block>
										</xsl:if>
										<xsl:if test="position() = 5">
											<fo:block>Mayo</fo:block>
										</xsl:if>
										<xsl:if test="position() = 6">
											<fo:block>Junio</fo:block>
										</xsl:if>
										<xsl:if test="position() = 7">
											<fo:block>Julio</fo:block>
										</xsl:if>
										<xsl:if test="position() = 8">
											<fo:block>Agosto</fo:block>
										</xsl:if>
										<xsl:if test="position() = 9">
											<fo:block>Septiembre</fo:block>
										</xsl:if>
										<xsl:if test="position() = 10">
											<fo:block>Octubre</fo:block>
										</xsl:if>
										<xsl:if test="position() = 11">
											<fo:block>Noviembre</fo:block>
										</xsl:if>
										<xsl:if test="position() = 12">
								<fo:block>Diciembre</fo:block>
										</xsl:if>
										<xsl:if test="position() = 13">
											<fo:block>Total</fo:block>
										</xsl:if>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" padding="1pt">
								<fo:block>
											<xsl:value-of select="$ventas/periodo[1]/montos[$indice]"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" padding="1pt">
								<fo:block>
											<xsl:value-of select="$compras/periodo[1]/montosCompras[$indice]"/>
								</fo:block>
							</fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
											<xsl:value-of select="$costInd/periodo[1]/montosCostInd[$indice]"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
											<xsl:value-of select="$genOperNeta/periodo[1]/montosGenOperNeta[$indice]"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
							</xsl:for-each>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</xsl:if>
			
	</xsl:template>
	
	
	    <!--INDICES ESTADO FINANCIERO -->
    <xsl:template name="indicesSolicitante">
        <xsl:if test="//solcred/grupoSolicitantes/solicitante/indices">
        <fo:block font-size="8pt"> &#xa0;</fo:block>
        <fo:block font-size="9pt" font-weight="bold">INDICES ESTADO FINANCIERO</fo:block>
        <xsl:for-each select="solcred/grupoSolicitantes/solicitante">
            <xsl:if test="indices">
                <xsl:call-template name="DetalleIndice">
                    <xsl:with-param name="indices" select="indices"/>
                    <xsl:with-param name="rut" select="rut"/>
                    <xsl:with-param name="digito" select="digito"/>
                </xsl:call-template>
            </xsl:if>
        </xsl:for-each>

        </xsl:if>
    </xsl:template>

    <!-- RUBRO BIEN RAIZ-->

	<xsl:template name="rubroBienRaiz">
		<fo:block font-size="8pt"> &#xa0;</fo:block>
		<xsl:for-each select="solcred/grupoSolicitantes/solicitante">
        	    <xsl:if test="propiedades">
        	    <fo:block font-size="9pt" font-weight="bold">
				RUBRO BIEN RAIZ RUT: <xsl:value-of select="rut"/>-<xsl:value-of select="digito"/>
				</fo:block>
		
		<fo:block font-size="{$tamano-texto}" font-weight="normal" space-after="1mm" font-family="{$fuente-texto}">
			<fo:table>
					<fo:table-column column-width="3cm"/>
                    <fo:table-column column-width="2.5cm"/>
                    <fo:table-column column-width="2cm"/>
                    <fo:table-column column-width="5cm"/>
                    <fo:table-column column-width="6.5cm"/>
					<fo:table-body>
						<fo:table-row font-weight="bold">
							<fo:table-cell border-style="solid" text-align="center">
                                <fo:block>VALOR DEL BIEN M$</fo:block>
                            </fo:table-cell>
							<fo:table-cell border-style="solid" text-align="center">
                                <fo:block>TIPO BIEN</fo:block>
                            </fo:table-cell>
							<fo:table-cell border-style="solid" text-align="center">
                                <fo:block>ROL</fo:block>
                            </fo:table-cell>
							<fo:table-cell border-style="solid" text-align="center">
                                <fo:block>DESTINO DEL BIEN</fo:block>
                            </fo:table-cell>
							<fo:table-cell border-style="solid" text-align="center">
                                <fo:block>FUENTE DE INFORMACION</fo:block>
                            </fo:table-cell>
						</fo:table-row>
						<!-- aqui viene la informacion que llena las tablas foreach-->
					<xsl:for-each select="propiedades">   
						<fo:table-row>
							<fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid">
								<fo:block text-align="right">
									<xsl:value-of select="avaluoPP"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid">
								<fo:block text-align="center">
									<xsl:value-of select="tipoPropiedad"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid">
								<fo:block text-align="center">
									<xsl:value-of select="rolPropiedad"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid">
								<fo:block text-align="center">
									<xsl:value-of select="destino"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid">
								<fo:block text-align="center">
									<xsl:value-of select="descripcionFuente"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
        			</xsl:for-each>						

					</fo:table-body>
			</fo:table>
		</fo:block>
		</xsl:if>
		<fo:block font-size="8pt"> &#xa0;</fo:block>
			</xsl:for-each>	


	</xsl:template>


	<!-- RUBRO TRANSPORTE-->

	<xsl:template name="rubroTransporte">
		<fo:block font-size="8pt"> &#xa0;</fo:block>
		<xsl:for-each select="solcred/grupoSolicitantes/solicitante">
        	<xsl:if test="vehiculos">
        	<fo:block font-size="9pt" font-weight="bold">
				RUBRO TRANSPORTE RUT: <xsl:value-of select="rut"/>-<xsl:value-of select="digito"/>
			</fo:block>
		
			<fo:block font-size="{$tamano-texto}" font-weight="normal" space-after="1mm" font-family="{$fuente-texto}">
				<fo:table>
					<fo:table-column column-width="3cm"/>
                    <fo:table-column column-width="4.5cm"/>
                    <fo:table-column column-width="2.5cm"/>
                    <fo:table-column column-width="2.5cm"/>
                    <fo:table-column column-width="6.5cm"/>
					<fo:table-body>
						<fo:table-row font-weight="bold">
							<fo:table-cell border-style="solid" text-align="center">
                                <fo:block>VALOR VEHICULO M$</fo:block>
                            </fo:table-cell>
							<fo:table-cell border-style="solid" text-align="center">
                                <fo:block>TIPO VEHICULO</fo:block>
                            </fo:table-cell>
							<fo:table-cell border-style="solid" text-align="center">
                                <fo:block>MARCA</fo:block>
                            </fo:table-cell>
							<fo:table-cell border-style="solid" text-align="center">
                                <fo:block>AÑO VEHICULO</fo:block>
                            </fo:table-cell>
							<fo:table-cell border-style="solid" text-align="center">
                                <fo:block>FUENTE DE INFORMACION</fo:block>
                            </fo:table-cell>
						</fo:table-row>

						<xsl:for-each select="vehiculos">          			
							<fo:table-row>
								<fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid">
									<fo:block text-align="right">
										<xsl:value-of select="tasacionFiscal"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid">
									<fo:block text-align="center">
										<xsl:value-of select="tipoVehiculo"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid">
									<fo:block text-align="center">
										<xsl:value-of select="marcaVehiculo"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid">
									<fo:block text-align="center">
										<xsl:value-of select="anioFabricacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid">
									<fo:block text-align="center">
										<xsl:value-of select="descripcionFuente"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>            			
        				</xsl:for-each>						
					</fo:table-body>
				</fo:table>
			</fo:block>
		</xsl:if>
		<fo:block font-size="8pt"> &#xa0;</fo:block>

		</xsl:for-each>
	</xsl:template>
    <!-- TITULO-->
    <xsl:template name="tituloIndice">
        <xsl:param name="texto"/>
        <fo:block font-size="16pt" font-weight="bold" text-align="left" font-family="{$fuente-texto}" border-bottom-style="solid" border-bottom-color="#CCCCCC" border-bottom-width="0.5pt" margin-bottom="3pt" margin-top="10pt">
            <xsl:value-of select="$texto"/>
        </fo:block>
        <fo:block font-size="8pt"> &#xa0;</fo:block>
    </xsl:template>

    <!-- DETALLE INDICES-->
    <xsl:template name="DetalleIndice">
        <xsl:param name="indices"/>
        <xsl:param name="rut"/>
        <xsl:param name="digito"/>

        <xsl:if test="$indices and $indices/indiceSolicitante[2] and $indices/indiceSolicitante[1]">
            <fo:block font-size="{$tamano-texto}" font-weight="normal" space-after="10pt" space-before="1pt" font-family="{$fuente-texto}">
                <fo:table>
                    <fo:table-column column-width="3cm"/>
                    <fo:table-column column-width="4cm"/>
                    <fo:table-column column-width="4cm"/>
                    <fo:table-body>
                        <fo:table-row>
                            <fo:table-cell number-columns-spanned="3" font-weight="bold" border-style="solid" padding="1pt">
                                <fo:block>RUT: <xsl:value-of select="$rut"/>-<xsl:value-of select="$digito"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row font-weight="bold">
                            <fo:table-cell border-style="solid" padding="1pt">
                                <fo:block>Periodo</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[2]/anyoAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[1]/anyoAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row font-weight="bold">
                            <fo:table-cell border-style="solid" padding="1pt">
                                <fo:block>INDICES</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                                <fo:block>
                                    MONTO (M$)
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                                <fo:block>
                                    MONTO (M$)
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                                <fo:block>Generación Operativa Bruta</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[2]/generacionAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[1]/generacionAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                                <fo:block>Utilidad operacional/ventas</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[2]/utilidadOperacionalAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[1]/utilidadOperacionalAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                                <fo:block>Utilidad/Ventas</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[2]/utilidadVentasAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[1]/utilidadVentasAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                                <fo:block>Utilidad/patrimonio</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[2]/utilidadPatrimonioAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[1]/utilidadPatrimonioAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                                <fo:block>Liquidez Corriente</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[2]/liquidezCorrienteAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[1]/liquidezCorrienteAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                                <fo:block>Liquidez Acida</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[2]/liquidezAcidaAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[1]/liquidezAcidaAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                                <fo:block>Permanencia Inventario</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[2]/permanenciaInventarioAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[1]/permanenciaInventarioAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                                <fo:block>Permanencia de Crédito</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[2]/permanenciaDeCreditoeAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[1]/permanenciaDeCreditoeAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                                <fo:block>Permanencia cuentas por pagar</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[2]/permanenciaCuentasAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[1]/permanenciaCuentasAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                                <fo:block>Resultado operacional/gastos financieros</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[2]/resultadoAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[1]/resultadoAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                                <fo:block>Cobertura Pasivos</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[2]/coberturaAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[1]/coberturaAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                                <fo:block>Leverage</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[2]/leverageAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[1]/leverageAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                                <fo:block>Patrimonio</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[2]/patrimonioAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                <fo:block>
                                    <xsl:value-of select="$indices/indiceSolicitante[1]/patrimonioAlerta"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                        <!-- Final indices -->
                    </fo:table-body>
                </fo:table>
            </fo:block>
        </xsl:if>
    </xsl:template>


    <!-- OBSERVACIONES SOLICITUD -->
    <xsl:template name="moduloObservacionesSolicitud">
        <fo:block font-size="8pt"> &#xa0;</fo:block>
        <fo:block font-size="12pt" font-weight="bold">OBSERVACIONES</fo:block>

        <xsl:call-template name="detalle-observaciones-solicitud"/>

        <xsl:call-template name="observaciones-solicitud"/>
    </xsl:template>

    <!-- LISTADO OBSERVACIONES RESOLUCION -->
    <xsl:template name="observaciones-solicitud">
        <fo:block font-size="9pt" font-weight="bold" space-before="0.5cm">COMENTARIOS Y RESOLUCI&#211;N</fo:block>

        <!-- Separador -->
        <fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid"
            border-top-color="#CCCCCC" border-top-width="0.5pt" padding-before="10pt"></fo:block>
        <!-- Fin Separador -->

        <fo:block font-size="{$tamano-texto}" font-weight="normal" space-after="1mm" font-family="{$fuente-texto}">
            <fo:table>
                <fo:table-column column-width="2cm"/>
                <fo:table-column column-width="12cm"/>
                <fo:table-column column-width="2.5cm"/>
                <fo:table-column column-width="2.5cm"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                            <fo:block font-weight="bold">
                                Fecha
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                            <fo:block font-weight="bold">
                                Observaci&#243;n
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                            <fo:block font-weight="bold">
                                Nuevo Estado
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                            <fo:block font-weight="bold">
                                Usuario
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>

                    <xsl:choose>
                        <xsl:when test="solcred/observaciones-solicitud/observacion">
                            <xsl:for-each select="solcred/observaciones-solicitud/observacion">
                                <fo:table-row>
                                    <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                                        <fo:block>
                                            <xsl:value-of select="fecha"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                                        <fo:block white-space-collapse="false">
                                            <xsl:value-of select="texto"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                                        <fo:block>
                                            <xsl:value-of select="estado"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                                        <fo:block>
                                            <xsl:value-of select="usuario"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </xsl:for-each>
                        </xsl:when>
                        <xsl:otherwise>
                            <fo:table-row>
                                <fo:table-cell text-align="left" border-style="solid" padding="1pt" number-columns-spanned="4">
                                    <fo:block>
                                        La solicitud no Posee Observaciones.
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </xsl:otherwise>
                    </xsl:choose>
                </fo:table-body>
            </fo:table>
        </fo:block>
        <!-- Separador -->
        <fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid"
            border-top-color="#CCCCCC" border-top-width="0.5pt" padding-before="20pt"></fo:block>
        <!-- Fin Separador -->
    </xsl:template>

    <!--  EXCEPCIONES DE LA SOLICITUD -->
    <xsl:template name="excepcionesSolicitud">
        <fo:block font-size="8pt"> &#xa0;</fo:block>
        <fo:block font-size="9pt" font-weight="bold">EXCEPCIONES DE LA SOLICITUD</fo:block>

        <!-- Separador -->
        <fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid"
            border-top-color="#CCCCCC" border-top-width="0.5pt" padding-before="10pt"></fo:block>
        <!-- Fin Separador -->
        <xsl:for-each select="solcred/grupoSolicitantes/solicitante">
        <fo:table>
            <fo:table-column column-width="5cm"/>
            <fo:table-column column-width="14cm"/>

                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell text-align="left" border-style="solid" padding="1pt" number-columns-spanned="2">
                            <fo:block font-weight="bold" font-size="8pt">
                                Excepciones de Pol&#237;tica Para Rut:<xsl:value-of select="rut"/>-<xsl:value-of select="digito"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                            <fo:block font-weight="bold" font-size="8pt">
                                Nivel Excepci&#243;n
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                            <fo:block font-weight="bold" font-size="8pt">
                                Descripci&#243;n
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>

                    <xsl:choose>
                        <xsl:when test="excepciones">
                            <xsl:for-each select="excepciones">
                                <fo:table-row font-size="9pt">
                                    <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                                        <fo:block>
                                            <xsl:value-of select="cargoResolutor"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                                        <fo:block>
                                            <xsl:value-of select="descripcionDeExcepcion"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </xsl:for-each>
                        </xsl:when>
                        <xsl:otherwise>
                            <fo:table-row>
                                <fo:table-cell text-align="left" border-style="solid" padding="1pt" number-columns-spanned="4" font-size="8pt">
                                    <fo:block>
                                        El cliente evaluado no posee Excepciones.
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </xsl:otherwise>
                    </xsl:choose>
                </fo:table-body>
            </fo:table>
	        <!-- Separador -->
			<fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid"
				border-top-color="#CCCCCC" border-top-width="0.5pt" padding-before="10pt"></fo:block>
			<!-- Fin Separador -->
            </xsl:for-each>  
    
    </xsl:template>
    

    <!-- DETALLE DE OBSERVACIONES SOLICITUD -->
    <xsl:template name="detalle-observaciones-solicitud">
    <xsl:if test="/solcred/detalle-observacion/detalle">
        <fo:block font-size="8pt"> &#xa0;</fo:block>
        <fo:block font-size="9pt" font-weight="bold">SOLICITUD EJECUTIVO COMERCIAL</fo:block>

        <!-- Separador -->
        <fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid"
            border-top-color="#CCCCCC" border-top-width="0.5pt" padding-before="10pt"></fo:block>
        <!-- Fin Separador -->

        <fo:block font-size="9pt" font-weight="bold" space-after="0.2cm">Productos Solicitados</fo:block>
        <fo:table>
            <fo:table-column column-width="19cm"/>
            <fo:table-body>
                <xsl:for-each select="/solcred/detalle-observacion/detalle">
                    <xsl:if test="codigoObservacion = 'LDC_SOL'">
                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                                <fo:block font-size="9pt">
                                    <xsl:value-of select="observacion"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </xsl:if>
                </xsl:for-each>
            </fo:table-body>
        </fo:table>

        <!-- Separador -->
        <fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" padding-before="20pt"></fo:block>
        <!-- Fin Separador -->

        <fo:block font-size="9pt" font-weight="bold">RESOLUCI&#211;N AUTOM&#193;TICA</fo:block>

        <!-- Separador -->
        <fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid"
            border-top-color="#CCCCCC" border-top-width="0.5pt" padding-before="10pt"></fo:block>
        <!-- Fin Separador -->
        
		<xsl:choose>
			<xsl:when test="solcred/detalle-observacion/linea-aprobada">
				<xsl:for-each select="solcred/detalle-observacion/linea-aprobada">
					<fo:table>
						<fo:table-column column-width="6cm"/>
						<fo:table-column column-width="6cm"/>
						<fo:table-column column-width="7cm"/>   

						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left" border-style="solid" padding="1pt" number-columns-spanned="3" >
									<fo:block font-weight="bold" font-size="8pt">
									L&#237;nea de Cr&#233;dito Global Rut:<xsl:value-of select="rutSolicitante"/>-<xsl:value-of select="dvSolicitante"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>

							<fo:table-row>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt">
									<fo:block font-weight="bold" font-size="8pt">
									Moneda
									</fo:block>
								</fo:table-cell>
									<fo:table-cell text-align="center" border-style="solid" padding="1pt">
									<fo:block font-weight="bold" font-size="8pt">
									Monto M&#225;ximo
									</fo:block>
									</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt">
									<fo:block font-weight="bold" font-size="8pt">
									Vencimiento
									</fo:block>
								</fo:table-cell>
							</fo:table-row>

							<fo:table-row font-size="9pt">
								<fo:table-cell text-align="center" border-style="solid" padding="1pt">
									<fo:block>
									<xsl:value-of select="moneda"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt">
									<fo:block>
									<xsl:value-of select="montoMaximoLCG_UF"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt">
									<fo:block>
									<xsl:value-of select="vencimiento"/>
									</fo:block>
								</fo:table-cell> 
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					
					<!-- Separador -->
					<fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" padding-before="20pt"></fo:block>
					<!-- Fin Separador -->
					
					<fo:table>
						<fo:table-column column-width="8.5cm"/>
						<fo:table-column column-width="2.5cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="4cm"/>

						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left" border-style="solid" padding="1pt" number-columns-spanned="4" >
									<fo:block font-weight="bold" font-size="8pt">
									Detalle L&#237;nea de Cr&#233;dito
									</fo:block>
								</fo:table-cell>
							</fo:table-row>

							<fo:table-row>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt">
									<fo:block font-weight="bold" font-size="8pt">
									Tipo L&#237;nea
								</fo:block>
								</fo:table-cell>
									<fo:table-cell text-align="center" border-style="solid" padding="1pt">
										<fo:block font-weight="bold" font-size="8pt">
										Moneda
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt">
									<fo:block font-weight="bold" font-size="8pt">
									Monto M&#225;ximo
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" padding="1pt">
									<fo:block font-weight="bold" font-size="8pt">
									Vencimiento
									</fo:block>
								</fo:table-cell>
							</fo:table-row>

							<xsl:for-each select="detalleLinea">
								<fo:table-row font-size="9pt">
									<fo:table-cell text-align="left" border-style="solid" padding="1pt">
										<fo:block>
										<xsl:value-of select="tipoLinea"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" border-style="solid" padding="1pt">
										<fo:block>
										<xsl:value-of select="moneda"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" border-style="solid" padding="1pt">
										<fo:block>
										<xsl:value-of select="monto"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" border-style="solid" padding="1pt">
										<fo:block>
										<xsl:value-of select="fechaVencimiento"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</xsl:for-each>
						</fo:table-body>
					</fo:table>
					<!-- Separador -->
					<fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" padding-before="20pt"></fo:block>
					<!-- Fin Separador -->			
				</xsl:for-each>    
			</xsl:when>
			<xsl:otherwise>
			<fo:table>
			<fo:table-column column-width="6cm"/>
			<fo:table-column column-width="6cm"/>
			<fo:table-column column-width="7cm"/>   
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell text-align="left" border-style="solid" padding="1pt" number-columns-spanned="3" >
						<fo:block font-weight="bold" font-size="8pt">
						L&#237;nea de Cr&#233;dito Global
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="center" border-style="solid" padding="1pt">
						<fo:block font-weight="bold" font-size="8pt">
						Moneda
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="center" border-style="solid" padding="1pt">
						<fo:block font-weight="bold" font-size="8pt">
						Monto M&#225;ximo
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="center" border-style="solid" padding="1pt">
						<fo:block font-weight="bold" font-size="8pt">
						Vencimiento
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="left" border-style="solid" padding="1pt" number-columns-spanned="4" font-size="8pt">
						<fo:block>
						La solicitud no posee Observaciones.
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				</fo:table-body>
			</fo:table>
			<!-- Separador -->
			<fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" padding-before="20pt"></fo:block>
			<!-- Fin Separador -->
		
			<fo:table>
				<fo:table-column column-width="8.5cm"/>
				<fo:table-column column-width="2.5cm"/>
				<fo:table-column column-width="4cm"/>
				<fo:table-column column-width="4cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="left" border-style="solid" padding="1pt" number-columns-spanned="4" >
							<fo:block font-weight="bold" font-size="8pt">
							Detalle L&#237;nea de Cr&#233;dito
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="center" border-style="solid" padding="1pt">
							<fo:block font-weight="bold" font-size="8pt">
							Tipo L&#237;nea
						</fo:block>
						</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" padding="1pt">
								<fo:block font-weight="bold" font-size="8pt">
								Moneda
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="center" border-style="solid" padding="1pt">
							<fo:block font-weight="bold" font-size="8pt">
							Monto M&#225;ximo
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="center" border-style="solid" padding="1pt">
							<fo:block font-weight="bold" font-size="8pt">
							Vencimiento
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="left" border-style="solid" padding="1pt" number-columns-spanned="4" font-size="8pt">
							<fo:block>
							La solicitud no posee Observaciones.
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>		

			</xsl:otherwise>
		</xsl:choose>	

        <!-- Separador -->
        <fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid"
            border-top-color="#CCCCCC" border-top-width="0.5pt" padding-before="10pt"></fo:block>
        <!-- Fin Separador -->

        <fo:block font-size="9pt" font-weight="bold" space-after="0.2cm">Condici&#243;n de Curse Resoluci&#243;n Autom&#225;tica</fo:block>
<xsl:for-each select="/solcred/detalle-observacion/detalle">
			<xsl:if test="tipoDetalle = 'TITULO'">
				<fo:block font-size="9pt"><xsl:value-of select="observacion"/></fo:block>
			</xsl:if>
		</xsl:for-each>

        <fo:table table-layout="fixed" padding-top="5pt" width="100%">
            <fo:table-column column-width="19cm"/>
            <fo:table-body>
                <fo:table-row>
                    <fo:table-cell text-align="left" border-style="solid" padding="1pt" number-columns-spanned="4" >
                        <fo:block font-weight="bold" font-size="9pt">
                            Motivos
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <xsl:for-each select="/solcred/detalle-observacion/detalle">
                    <xsl:if test="codigoObservacion = 'PARRAFO'">
                    	<xsl:if test="tipoDetalle = 'MOTIVO'">
                        <fo:table-row>
                            <fo:table-cell border-style="solid" border-bottom-style="solid" border-top-style="solid" border-left-style="solid">
                                <fo:block font-size="9pt" white-space-collapse="false">
                                    <xsl:value-of select="observacion"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </xsl:if>
                    </xsl:if>
                </xsl:for-each>
            </fo:table-body>
        </fo:table>
        <!-- Separador -->
        <fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid"
            border-top-color="#CCCCCC" border-top-width="0.5pt" padding-before="10pt"></fo:block>
        <!-- Fin Separador -->
        <fo:table table-layout="fixed" padding-top="5pt" width="100%">
            <fo:table-column column-width="19cm"/>
            <fo:table-body>
                <fo:table-row>
                    <fo:table-cell text-align="left" border-style="solid" padding="1pt" number-columns-spanned="4" >
                        <fo:block font-weight="bold" font-size="9pt">
                            Otros An&#225;lisis
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <xsl:for-each select="/solcred/detalle-observacion/detalle">
                    <xsl:if test="codigoObservacion = 'PARRAFO'">
                        <xsl:if test="tipoDetalle = 'ANALISIS'">
	                        <fo:table-row>
                            <fo:table-cell border-style="solid" border-bottom-style="solid" border-top-style="solid" border-left-style="solid">
                                <fo:block font-size="9pt" white-space-collapse="false">
                                    <xsl:value-of select="observacion"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </xsl:if>
                </xsl:if>
                </xsl:for-each>
            </fo:table-body>
        </fo:table>
    </xsl:if>
    </xsl:template>

    <!-- Cuadro Hipotecario -->
    <xsl:template name="cuadroHipotecario">
        <xsl:for-each select="solcred/grupoSolicitantes/solicitante">
            <xsl:if test="listado-hipotecarios">
                <fo:block font-size="8pt">&#xa0;</fo:block>
                <fo:block font-size="9pt" font-weight="bold" space-after="0.2cm">
                    DETALE CR&#201;DITOS HIPOTECARIOS RUT <xsl:value-of select="rut"/>-<xsl:value-of select="digito"/>
                </fo:block>

                <xsl:call-template name="detalleCuadroHipotecario">
                    <xsl:with-param name="listadoHipotecario" select="listado-hipotecarios"/>
                </xsl:call-template>

                <!-- Separador -->
                <fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid" border-top-color="#CCCCCC" border-top-width="0.5pt" padding-before="10pt"></fo:block>
                <!-- Fin Separador -->
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="detalleCuadroHipotecario">
        <xsl:param name="listadoHipotecario"/>
        <fo:block font-size="{$tamano-texto}" font-weight="normal" space-after="1mm" font-family="{$fuente-texto}">
            <xsl:for-each select="$listadoHipotecario/hipotecario">
                <fo:block space-after="0.2cm">
                    L&#237;nea: <xsl:value-of select="tipoLinea"/>
                </fo:block>
                <fo:table table-layout="fixed" width="100%">
                    <fo:table-column column-width="4.75cm"/>  <!-- Titulo -->
                    <fo:table-column column-width="4.75cm"/>  <!-- valor -->
                    <fo:table-column column-width="4.75cm"/>  <!-- Titulo -->
                    <fo:table-column column-width="4.75cm"/>  <!-- valor -->

                    <fo:table-body>
                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block font-weight="bold">
                                    Tipo Cr&#233;dito :
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center" border-style="solid">
                                <fo:block>
                                    <xsl:value-of select="tipoCredito"/>&#xa0;
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block font-weight="bold">
                                    Monto Cr&#233;dito UF:
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center" border-style="solid">
                                <fo:block>
                                    <xsl:value-of select="montoCreditoUF"/>&#xa0;
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>

                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block font-weight="bold">
                                    Tasaci&#243;n BCI UF :
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center" border-style="solid">
                                <fo:block font-weight="bold">
                                    <xsl:value-of select="tasacionUF"/>&#xa0;
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block font-weight="bold">
                                    Porcentaje a Financiar:
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center" border-style="solid">
                                <fo:block>
                                    <xsl:value-of select="porcentajeFinanciamiento"/>&#xa0;
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>

                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block font-weight="bold">
                                    Div. Estimado UF:
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center" border-style="solid">
                                <fo:block>
                                    <xsl:value-of select="dividendoEstimadoUF"/>&#xa0;
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block font-weight="bold">
                                    Objetivo:
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center" border-style="solid">
                                <fo:block>
                                    <xsl:value-of select="objetivo"/>&#xa0;
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>

                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block font-weight="bold">
                                    Plazo M&#225;ximo en A&#241;os :
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center" border-style="solid">
                                <fo:block>
                                    <xsl:value-of select="plazoMaximo"/>&#xa0;
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block font-weight="bold">
                                    Valor Venta UF:
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center" border-style="solid">
                                <fo:block>
                                    <xsl:value-of select="valorVentaUF"/>&#xa0;
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>

                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block font-weight="bold">
                                    Rel Renta Dividendo Titular:
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center" border-style="solid">
                                <fo:block>
                                    <xsl:value-of select="relacionRentaDividendo"/>&#xa0;
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-columns-spanned="2" border-style="solid">
                                <fo:block>&#xa0;</fo:block>
                            </fo:table-cell>
                        </fo:table-row>

                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block font-weight="bold">
                                    Se solicita recurses cr&#233;ditos hipotecarios BCI:
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center" border-style="solid">
                                <fo:block>
                                    <xsl:value-of select="solicitaRecurse"/>&#xa0;
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block font-weight="bold">
                                    Se solicita compra cartera hipotecaria CMFChile:
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center" border-style="solid">
                                <fo:block>
                                    <xsl:value-of select="solicitaCompraCartera"/>&#xa0;
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </fo:table-body>
                </fo:table>

                <fo:block space-before="0.5cm" space-after="0.1cm">Aval Cr&#233;dito Hipotecario</fo:block>
                <fo:table table-layout="fixed" width="100%">
                    <fo:table-column column-width="4.75cm"/>   <!-- Titulo -->
                    <fo:table-column column-width="4.75cm"/>   <!-- valor -->
                    <fo:table-column column-width="4.75cm"/>  <!-- Titulo -->
                    <fo:table-column column-width="4.75cm"/>  <!-- valor -->

                    <fo:table-body>
                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block font-weight="bold">
                                    Con aval:
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center" border-style="solid">
                                <fo:block>
                                    <xsl:value-of select="poseeAval"/>&#xa0;
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block font-weight="bold">
                                    Tipo de aval:
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center" border-style="solid">
                                <fo:block>
                                    <xsl:value-of select="tipoAval"/>&#xa0;
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>

                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block font-weight="bold">
                                    RUT Aval (distinto a conyuge):
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center" border-style="solid">
                                <fo:block>
                                    <xsl:if test="rutAval != 0">
                                        <xsl:value-of select="rutAval"/>-<xsl:value-of select="digitoAval"/>&#xa0;
                                    </xsl:if>
                                    &#160;
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block>
                                    RLM aval (UF):
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center" border-style="solid">
                                <fo:block>
                                    <xsl:value-of select="rentaLiquidaMensualAval"/>&#xa0;
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </fo:table-body>
                </fo:table>

                <!-- Separador -->
                <fo:block font-size="8pt" font-family="{$fuente-texto}" space-after="0.5cm">&#xa0;</fo:block>
                <!-- Fin Separador -->
            </xsl:for-each>
        </fo:block>
    </xsl:template>

    <xsl:template name="estadoEvaluacionSolicitud">
        <xsl:if test="solcred/evaluacionSolicitud">
            <fo:block font-size="8pt">&#xa0;</fo:block>
            <fo:block font-size="9pt" font-weight="bold" space-before="0.1cm" space-after="0.2cm">
                ESTADO EVALUACI&#211;N
            </fo:block>

            <fo:block font-size="{$tamano-texto}" font-weight="normal" space-after="1mm" font-family="{$fuente-texto}">
                <fo:table table-layout="fixed" width="100%">
                    <fo:table-column column-width="4.75cm"/>  <!-- Titulo -->
                    <fo:table-column column-width="4.75cm"/>  <!-- valor -->
                    <fo:table-column column-width="4.75cm"/>  <!-- Titulo -->
                    <fo:table-column column-width="4.75cm"/>  <!-- valor -->

                    <fo:table-body>
                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block font-weight="bold">
                                    Traspaso de banca a :
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block>
                                    <xsl:value-of select="solcred/evaluacionSolicitud/traspasoDeBanca"/>&#xa0;
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block font-weight="bold">
                                    Grupo Econ&#243;mico :
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block>
                                    <xsl:value-of select="solcred/evaluacionSolicitud/grupoEconomico"/>&#xa0;
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>

                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block font-weight="bold">
                                    Calidad de la Presentaci&#243;n:
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block>
                                    <xsl:value-of select="solcred/evaluacionSolicitud/calificacionPresentacion"/>&#xa0;
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block font-weight="bold">
                                    Perspectiva :
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block>
                                    <xsl:value-of select="solcred/evaluacionSolicitud/perspectiva"/>&#xa0;
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>

                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block font-weight="bold">
                                    Tipo de Resoluci&#243;n :
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block>
                                    <xsl:value-of select="solcred/evaluacionSolicitud/tipoDeResolucion"/>&#xa0;
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block font-weight="bold">
                                    Resolutor:
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block>
                                    <xsl:value-of select="solcred/evaluacionSolicitud/resolutor"/>&#xa0;
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>

                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block font-weight="bold">
                                    Pol&#237;tica:
                                </fo:block>
                            </fo:table-cell>
                          <fo:table-cell text-align="left" border-style="solid" number-columns-spanned="4">
                            <xsl:if test="/solcred/glosaPolitica">
                          <xsl:for-each select="/solcred/glosaPolitica">
                                        <fo:block font-weight="bold">
                                        <xsl:value-of select="."/>&#xa0;
                                        </fo:block>
                          </xsl:for-each>
                          </xsl:if>
                          </fo:table-cell>
                        </fo:table-row>

                        <fo:table-row>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block font-weight="bold">
                                    Renegociado:
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block>
                                    <xsl:value-of select="solcred/evaluacionSolicitud/renegociado"/>&#xa0;
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block font-weight="bold">
                                    Ingreso Lob:
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="left" border-style="solid">
                                <fo:block>
                                    <xsl:value-of select="solcred/evaluacionSolicitud/ingresoLob"/>&#xa0;
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
   
                        <fo:table-row>
                          <fo:table-cell text-align="left" border-style="solid">
                                <fo:block font-weight="bold">
                                    Razones de Rechazo:
                                </fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell text-align="left" border-style="solid" number-columns-spanned="4">
                            <xsl:if test="solcred/listadoRechazo/rechazos">
                          <xsl:for-each select="solcred/listadoRechazo/rechazos">
                                        <fo:block font-weight="bold">
                                        <xsl:value-of select="glosaRechazo"/>&#xa0;
                                        </fo:block>
                          </xsl:for-each>
                          </xsl:if>
                          </fo:table-cell>
                        </fo:table-row>
                        
                        
                    </fo:table-body>
                </fo:table>
            </fo:block>
            <!-- Separador -->
            <fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid"
                border-top-color="#CCCCCC" border-top-width="0.5pt" padding-before="20pt"></fo:block>
            <!-- Fin Separador -->
        </xsl:if>
    </xsl:template>

    <!-- ANALISIS -->
    <xsl:template name="analisis">
     <xsl:if test="solcred/observacionesAnalisisSolicitud">
		<xsl:if test="solcred/observacionesAnalisisSolicitud/recomendacion-eje != ''">
				 
			 <fo:block font-size="9pt" font-weight="bold" space-before="0.1cm" space-after="0.2cm">
                AN&#193;LISIS
            </fo:block>
					<!-- Actividad -->
					<xsl:call-template name="comentarios">
						<xsl:with-param name="titulo" select="'Actividad'"/>
						<xsl:with-param name="texto"  select="solcred/observacionesAnalisisSolicitud/recomendacion-eje"/>
					</xsl:call-template>
				 </xsl:if>	
			 
				 <xsl:if test="solcred/observacionesAnalisisSolicitud/historia != ''">   
							<!--Historia-->
					<xsl:call-template name="comentarios">
						<xsl:with-param name="titulo" select="'Historia'"/>
						<xsl:with-param name="texto"  select="solcred/observacionesAnalisisSolicitud/historia"/>
					</xsl:call-template>
				 </xsl:if>
					
				 <xsl:if test="solcred/observacionesAnalisisSolicitud/hechos-relevantes != ''">
					<!-- Solicitud -->
					<xsl:call-template name="comentarios">
						<xsl:with-param name="titulo" select="'Solicitud'"/>
						<xsl:with-param name="texto"  select="solcred/observacionesAnalisisSolicitud/hechos-relevantes"/>
					</xsl:call-template>
				 </xsl:if>

				 <xsl:if test="solcred/observacionesAnalisisSolicitud/comentarios-balance != ''">  
					<!-- Comentarios al balance -->
					<xsl:call-template name="comentarios">
						<xsl:with-param name="titulo" select="'Comentarios al Balance'"/>
						<xsl:with-param name="texto"  select="solcred/observacionesAnalisisSolicitud/comentarios-balance"/>
					</xsl:call-template>
				 </xsl:if>			
	
				<xsl:if test="solcred/observacionesAnalisisSolicitud/comentarios-est-resul != ''"> 
					<!-- Comentarios Estado de Resultados -->
					<xsl:call-template name="comentarios">
						<xsl:with-param name="titulo" select="'Comentarios Estados de Resultados'"/>
						<xsl:with-param name="texto"  select="solcred/observacionesAnalisisSolicitud/comentarios-est-resul"/>
					</xsl:call-template>
				 </xsl:if>

       <xsl:if test="solcred/observacionesAnalisisSolicitud/otros != ''">      
					<!-- Recomendacion del Ejecutivo -->
		<xsl:call-template name="comentarios">
			<xsl:with-param name="titulo" select="'Recomendacion del Ejecutivo'"/>
			<xsl:with-param name="texto"  select="solcred/observacionesAnalisisSolicitud/otros"/>
		</xsl:call-template>
 </xsl:if>		

				 <xsl:if test="solcred/observacionesAnalisisSolicitud/comentarioUsuario != ''">      
						<xsl:call-template name="comentarios">
							<xsl:with-param name="titulo" select="'Comentarios Adicionales'"/>
						<xsl:with-param name="texto">
							<xsl:for-each select="solcred/observacionesAnalisisSolicitud/comentarioUsuario/comentarios-usuarios">     
								<xsl:value-of select="observacion"/>
						</xsl:for-each>
						</xsl:with-param>
					</xsl:call-template>
       			<!-- Comentarios de usuarios -->
				</xsl:if>
				 <!-- Separador -->
            <fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid"
                border-top-color="#CCCCCC" border-top-width="0.5pt" padding-before="20pt"></fo:block>
            <!-- Fin Separador -->
			 </xsl:if>
    </xsl:template>    

    <!-- COMENTARIOS -->
    <xsl:template name="comentarios">
        <xsl:param name="titulo"/>
        <xsl:param name="texto"/>
        <fo:block font-size="{$tamano-texto}" font-weight="bold" text-align="left" font-family="{$fuente-texto}" margin-bottom="3pt" padding-before="10pt">
            <xsl:value-of select="$titulo"/>
        </fo:block>
        <fo:block font-size="{$tamano-texto}" text-align="left" font-family="{$fuente-texto}" border-top-style="solid" border-top-color="{$color-subrayado}" border-top-width="1pt" margin-bottom="20pt"/>
        <fo:block font-size="{$tamano-texto}" font-weight="normal" text-align="left" font-family="{$fuente-texto}" padding-before="5pt" padding-after="10pt" white-space-collapse="false">
            <xsl:value-of disable-output-escaping="yes" select="$texto"/>
        </fo:block>
    </xsl:template> 
    
        <!-- TITULO-->
    <xsl:template name="titulo">
        <xsl:param name="texto"/>
        <fo:block font-size="{$tamano-titulo}" font-weight="bold" text-align="left" font-family="{$fuente-texto}" border-bottom-style="solid" border-bottom-color="#CCCCCC" border-bottom-width="0.5pt" margin-bottom="3pt" margin-top="10pt">
            <xsl:value-of select="$texto"/>
        </fo:block>
        <fo:block font-size="{$tamano-titulo}">&#160;</fo:block>
    </xsl:template>
    
       <!-- MENSAJES ALERTAS VALIDACION SOLICITUD -->
    <xsl:template name="mensajesAlertaSolicitud">
    	<xsl:if test="solcred/datosSolicitud/origenSolicitud = 'EMP'">
			<fo:block font-size="9pt" font-weight="bold" space-before="0.5cm">ALERTAS</fo:block>
			<!-- Separador -->
	        <fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid"
	            border-top-color="#CCCCCC" border-top-width="0.5pt" padding-before="10pt"></fo:block>
	        <!-- Fin Separador -->

        	<fo:block font-size="{$tamano-texto}" font-weight="normal" space-after="1mm" font-family="{$fuente-texto}">
        	<xsl:choose>
	            <xsl:when test="solcred/listadojustificacionesAlertas/justificacionAlerta">
	                <xsl:for-each select="solcred/listadojustificacionesAlertas/justificacionAlerta">
	                	<fo:table table-layout="fixed" width="100%">
                    		<fo:table-column column-width="3cm"/>
                    		<fo:table-column column-width="16cm"/>
	                		<fo:table-body>
	                			<fo:table-row>
					    			<fo:table-cell text-align="left" border-style="solid">
					            		<fo:block>
					               			RUT:
					            		</fo:block>
					        		</fo:table-cell>
					        		<fo:table-cell text-align="left" border-style="solid">
							            <fo:block>
							                <xsl:value-of select="rutAlerta"/>&#xa0; - <xsl:value-of select="digitoAlerta"/>
							            </fo:block>
							        </fo:table-cell>
					    		</fo:table-row>
							    <fo:table-row>
							    	<fo:table-cell text-align="left" border-style="solid">
							            <fo:block>
							                Justificaci&#243;n:
							            </fo:block>
							        </fo:table-cell>
							        <fo:table-cell text-align="left" border-style="solid">
							            <fo:block>
							            	<xsl:if test="justificacionAlerta != ''">
							            		<xsl:value-of select="justificacionAlerta"/>&#xa0;
							            	</xsl:if>
							            	<xsl:if test="justificacionAlerta = ''">
							            		Sin informaci&#243;n&#xa0;
							            	</xsl:if>
							            </fo:block>
							        </fo:table-cell>
							    </fo:table-row>
	                		</fo:table-body>
	            		</fo:table>
	            		<fo:block/>
	            		<xsl:choose>
	            			<xsl:when test="listado_alertas/alerta">
	            				<fo:table table-layout="fixed" width="100%">
					                    <fo:table-column column-width="3cm"/>
					                    <fo:table-column column-width="13cm"/>
					                    <fo:table-column column-width="3cm"/>
						                <fo:table-body>
						                	<fo:table-row>
										    	<fo:table-cell text-align="left" border-style="solid">
										            <fo:block>
										                M&#243;dulo:
										            </fo:block>
										        </fo:table-cell>
										        <fo:table-cell text-align="left" border-style="solid">
										            <fo:block>
										                Tipo de alerta:
										            </fo:block>
										        </fo:table-cell>
										        <fo:table-cell text-align="left" border-style="solid">
										            <fo:block>
										                Categor&#237;a:
										            </fo:block>
										        </fo:table-cell>
										    </fo:table-row>
					                		<xsl:for-each select="listado_alertas/alerta">
							                	<fo:table-row>
											    	<fo:table-cell text-align="left" border-style="solid">
											            <fo:block>
											            	<xsl:value-of select="origenAlerta"/>&#xa0;
											            </fo:block>
											        </fo:table-cell>
											        <fo:table-cell text-align="left" border-style="solid">
											            <fo:block>
											                <xsl:value-of select="glosaMensajeAlerta"/>&#xa0;
											            </fo:block>
											        </fo:table-cell>
											        <fo:table-cell text-align="left" border-style="solid">
											            <fo:block>
											                <xsl:value-of select="categoriaAlerta"/>&#xa0;
											            </fo:block>
											        </fo:table-cell>
											    </fo:table-row>
							                </xsl:for-each>
				                	</fo:table-body>
					            </fo:table>
			                </xsl:when>
	            		</xsl:choose>
	            		<fo:block/>
	            		<fo:block/>
			            <!-- Separador -->
		            	<fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid"
		                border-top-color="#CCCCCC" border-top-width="0.5pt" padding-before="20pt"></fo:block>
		            	<!-- Fin Separador -->
	                </xsl:for-each>
	            </xsl:when>
	            <xsl:otherwise>
	            <fo:table table-layout="fixed" width="100%">
                    <fo:table-column column-width="19cm"/>
		            <fo:table-body>
		            	<fo:table-row>
					    	<fo:table-cell text-align="left" border-style="solid" padding="1pt">
					            <fo:block>
					                La solicitud no Posee Mensajes de Alerta.
					            </fo:block>
					        </fo:table-cell>
					    </fo:table-row>
		            </fo:table-body>
	            </fo:table>
				</xsl:otherwise>
	        </xsl:choose>
        </fo:block>
            <!-- Separador -->
            <fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid"
                border-top-color="#CCCCCC" border-top-width="0.5pt" padding-before="20pt"></fo:block>
            <!-- Fin Separador -->
        </xsl:if>
    </xsl:template>
    
    <!-- Carga Financiera Analisis -->
    <xsl:template name="tablaimpresionCargaFinancierasTO">
    
        <fo:block font-size="8pt"> &#xa0;</fo:block>
        <fo:block font-size="12pt" font-weight="bold">CARGA FINANCIERA</fo:block>

        <fo:block font-size="{$tamano-texto}" font-weight="normal" space-after="1mm" font-family="{$fuente-texto}">
            
              <xsl:if test="solcred/impresionCargaFinancierasTO/cargaFinancieraAnalisis/rut">
              
      <!-- Separador -->
        <fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid"
            border-top-color="#CCCCCC" border-top-width="0.5pt" padding-before="10pt"></fo:block>
        <!-- Fin Separador -->
                
              <fo:block font-size="9pt" font-weight="bold" space-before="0.5cm">Carga Financiera RUT:  <xsl:value-of select="solcred/impresionCargaFinancierasTO/cargaFinancieraAnalisis/rut"/>-<xsl:value-of select="solcred/impresionCargaFinancierasTO/cargaFinancieraAnalisis/dv"/></fo:block>
      
      
            <fo:table>
                <fo:table-column column-width="6cm"/>
                <fo:table-column column-width="5cm"/>
                <fo:table-column column-width="2cm"/>
                <fo:table-column column-width="2cm"/>
                <fo:table-column column-width="2cm"/>
                <fo:table-column column-width="2cm"/>
                <fo:table-body>
                    <fo:table-row font-weight="bold">
                        <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
                            <fo:block>Tipo de Crédito</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
                            <fo:block>Institución Financiera</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
                            <fo:block>Saldo Deuda M$</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
                            <fo:block>N° cuotas pactadas</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
                            <fo:block>N° cuotas pagadas</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
                            <fo:block>Valor Cuota M$</fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <xsl:for-each select="solcred/impresionCargaFinancierasTO/cargaFinancieraAnalisis/listaDetalle/items">
                        <fo:table-row>
                            <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid">
                                <fo:block>
                                    <xsl:value-of select="tipoDeuda"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid">
                                <fo:block>
                                    <xsl:value-of select="banco"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="right">
                                <fo:block>
                                    <xsl:value-of select="saldoDeuda"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="right">
                                <fo:block>
                                    <xsl:value-of select="cuotasPactadas"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="right">
                                <fo:block>
                                    <xsl:value-of select="cuotasPagadas"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="right">
                                <fo:block>
                                    <xsl:value-of select="valorCuota"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </xsl:for-each>
                </fo:table-body>
            </fo:table>
        
        
        <fo:table>
                <fo:table-column column-width="5cm"/>
                <fo:table-column column-width="2cm"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell padding="1pt" text-align="left">
                            <fo:block font-size="7pt">Total carga financiera anual (M$)</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" text-align="right">
                            <fo:block font-size="7pt" >
                                <xsl:value-of select="solcred/impresionCargaFinancierasTO/cargaFinancieraAnalisis/totalCargaFinancieraAnual"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell padding="1pt" text-align="left">
                            <fo:block font-size="7pt">Generación (GOB)(M$)</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" text-align="right">
                            <fo:block font-size="7pt" >
                                <xsl:value-of select="solcred/impresionCargaFinancierasTO/cargaFinancieraAnalisis/generacionOperativaBruta"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell padding="1pt" text-align="left">
                            <fo:block font-size="7pt">Ebitda (M$)</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" text-align="right">
                            <fo:block font-size="7pt" >
                                <xsl:value-of select="solcred/impresionCargaFinancierasTO/cargaFinancieraAnalisis/ingresosExogenos"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell padding="1pt" text-align="left">
                            <fo:block font-size="7pt">Excedente / Déficit (M$)</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" text-align="right">
                            <fo:block font-size="7pt" >
                                <xsl:value-of select="solcred/impresionCargaFinancierasTO/cargaFinancieraAnalisis/excedenteDeficit"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
                </xsl:if>
        </fo:block>
    
        <xsl:call-template name="tablaimpresionCargaFinancieraPersona" />
        <!-- Separador -->
        <fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid"
            border-top-color="#CCCCCC" border-top-width="0.5pt" padding-before="10pt"></fo:block>
        <!-- Fin Separador -->
        
    </xsl:template>
    
<!-- Carga Financiera Analisis - FIN -->

<!-- Carga Financiera Cliente Persona -->
    <xsl:template name="tablaimpresionCargaFinancieraPersona">
        <xsl:for-each select="solcred/impresionCargaFinancierasTO/listaCargaFinancieraPersona/items">
        
        <!-- Separador -->
        <fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid"
            border-top-color="#CCCCCC" border-top-width="0.5pt" padding-before="10pt"></fo:block>
        <!-- Fin Separador -->
        
        <fo:block font-size="9pt" font-weight="bold" space-before="0.5cm">Carga Financiera RUT:  <xsl:value-of select="rut"/>-<xsl:value-of select="dv"/></fo:block>
        
        <fo:block font-size="{$tamano-texto}" font-weight="normal" space-after="1mm" font-family="{$fuente-texto}">
        
            <fo:table>
                <fo:table-column column-width="6cm"/>
                <fo:table-column column-width="5cm"/>
                <fo:table-column column-width="2cm"/>
                <fo:table-column column-width="2cm"/>
                <fo:table-column column-width="2cm"/>
                <fo:table-column column-width="2cm"/>
                <fo:table-body>
                    <fo:table-row font-weight="bold">
                        <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
                            <fo:block>Tipo de Crédito</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
                            <fo:block>Institución Financiera</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
                            <fo:block>Saldo Deuda M$</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
                            <fo:block>N° cuotas pactadas</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
                            <fo:block>N° cuotas pagadas</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
                            <fo:block>Valor Cuota M$</fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <xsl:for-each select="listaDetalleCargaFinanciera/items">
                        <fo:table-row>
                            <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid">
                                <fo:block>
                                    <xsl:value-of select="tipoDeuda"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid">
                                <fo:block>
                                    <xsl:value-of select="banco"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="right">
                                <fo:block>
                                    <xsl:value-of select="saldoDeuda"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="right">
                                <fo:block>
                                    <xsl:value-of select="cuotasPactadas"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="right">
                                <fo:block>
                                    <xsl:value-of select="cuotasPagadas"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="right">
                                <fo:block>
                                    <xsl:value-of select="valorCuota"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </xsl:for-each>
                </fo:table-body>
            </fo:table>
        </fo:block>
        <fo:block>
        <fo:table>
                <fo:table-column column-width="5cm"/>
                <fo:table-column column-width="2cm"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell padding="1pt" text-align="left">
                            <fo:block font-size="7pt">Detalle Carga Financiera BCI Corto Plazo (M$)</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" text-align="right">
                            <fo:block font-size="7pt" >
                                <xsl:value-of select="cargaFinancieraBCICortoPlazo"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell padding="1pt" text-align="left">
                            <fo:block font-size="7pt">Detalle Carga Financiera BCI Largo Plazo (M$)</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" text-align="right">
                            <fo:block font-size="7pt" >
                                <xsl:value-of select="cargaFinancieraBCILargoPlazo"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row> 
                     <fo:table-row>
                        <fo:table-cell padding="1pt" text-align="left">
                            <fo:block font-size="7pt">Renta Líquida Mensual (M$)</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" text-align="right">
                            <fo:block font-size="7pt" >
                                <xsl:value-of select="rentaFija"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell padding="1pt" text-align="left">
                            <fo:block font-size="7pt">Total carga financiera Mensual (M$)</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" text-align="right">
                            <fo:block font-size="7pt" >
                                <xsl:value-of select="totalCargaMensual"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell padding="1pt" text-align="left">
                            <fo:block font-size="7pt">Excedente / Déficit (M$)</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" text-align="right">
                            <fo:block font-size="7pt" >
                                <xsl:value-of select="mensualTotal"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
        
        
        </fo:block>

        </xsl:for-each>
        
                <xsl:call-template name="tablaimpresionCargaFinancieraEmpresas" />

    </xsl:template>
    <!-- fin carga financiera persona -->
    
    <!--  carga financiera empresas -->
    <xsl:template name="tablaimpresionCargaFinancieraEmpresas">
        <xsl:for-each select="solcred/impresionCargaFinancierasTO/listaCargaFinancieraEmpresas/items">
        
        <!-- Separador -->
        <fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid"
            border-top-color="#CCCCCC" border-top-width="0.5pt" padding-before="10pt"></fo:block>
        <!-- Fin Separador -->
        
        <fo:block font-size="9pt" font-weight="bold" space-before="0.5cm">Carga Financiera RUT:  <xsl:value-of select="rut"/>-<xsl:value-of select="dv"/></fo:block>
        
        <fo:block font-size="{$tamano-texto}" font-weight="normal" space-after="1mm" font-family="{$fuente-texto}">
        
            <fo:table>
                <fo:table-column column-width="6cm"/>
                <fo:table-column column-width="5cm"/>
                <fo:table-column column-width="2cm"/>
                <fo:table-column column-width="2cm"/>
                <fo:table-column column-width="2cm"/>
                <fo:table-column column-width="2cm"/>
                <fo:table-body>
                    <fo:table-row font-weight="bold">
                        <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
                            <fo:block>Tipo de Crédito</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
                            <fo:block>Institución Financiera</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
                            <fo:block>Saldo Deuda M$</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
                            <fo:block>N° cuotas pactadas</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
                            <fo:block>N° cuotas pagadas</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
                            <fo:block>Valor Cuota M$</fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <xsl:for-each select="listaDetalle/items">
                        <fo:table-row>
                            <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid">
                                <fo:block>
                                    <xsl:value-of select="tipoDeuda"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid">
                                <fo:block>
                                    <xsl:value-of select="banco"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="right">
                                <fo:block>
                                    <xsl:value-of select="saldoDeuda"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="right">
                                <fo:block>
                                    <xsl:value-of select="cuotasPactadas"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="right">
                                <fo:block>
                                    <xsl:value-of select="cuotasPagadas"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="right">
                                <fo:block>
                                    <xsl:value-of select="valorCuota"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </xsl:for-each>
                </fo:table-body>
            </fo:table>
        </fo:block>
        <fo:block>
       
       
        <fo:table>
                <fo:table-column column-width="5cm"/>
                <fo:table-column column-width="2cm"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell padding="1pt" text-align="left">
                            <fo:block font-size="7pt">Detalle Carga Financiera BCI Corto Plazo (M$)</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" text-align="right">
                            <fo:block font-size="7pt" >
                                <xsl:value-of select="cargaFinancieraBCICortoPlazo"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell padding="1pt" text-align="left">
                            <fo:block font-size="7pt">Detalle Carga Financiera BCI Largo Plazo (M$)</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" text-align="right">
                            <fo:block font-size="7pt" >
                                <xsl:value-of select="cargaFinancieraBCILargoPlazo"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row> 
                    <fo:table-row>
                        <fo:table-cell padding="1pt" text-align="left">
                            <fo:block font-size="7pt">Total carga financiera anual (M$)</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" text-align="right">
                            <fo:block font-size="7pt" >
                                <xsl:value-of select="totalCargaFinancieraAnual"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell padding="1pt" text-align="left">
                            <fo:block font-size="7pt">Generación (GOB)(M$)</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" text-align="right">
                            <fo:block font-size="7pt" >
                                <xsl:value-of select="generacionOperativaBruta"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell padding="1pt" text-align="left">
                            <fo:block font-size="7pt">Ebitda (M$)</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" text-align="right">
                            <fo:block font-size="7pt" >
                                <xsl:value-of select="ingresosExogenos"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell padding="1pt" text-align="left">
                            <fo:block font-size="7pt">Excedente / Déficit (M$)</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" text-align="right">
                            <fo:block font-size="7pt" >
                                <xsl:value-of select="excedenteDeficit"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
        
        </fo:block>

        </xsl:for-each>
        
                <!-- Separador -->
        <fo:block font-size="8pt" text-align="center" font-family="{$fuente-texto}" border-top-style="solid"
            border-top-color="#CCCCCC" border-top-width="0.5pt" padding-before="10pt"></fo:block>
        <!-- Fin Separador -->
        
                <fo:block font-size="{$tamano-texto}" font-weight="normal" space-after="1mm" font-family="{$fuente-texto}">
            <fo:table>
                <fo:table-column column-width="6cm"/>
                <fo:table-column column-width="13cm"/>
                <fo:table-body >
                    <fo:table-row >
                        <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center" >
                            <fo:block  font-size="{$tamano-texto}"  font-weight="bold" text-align="left" font-family="{$fuente-texto}" margin-bottom="3pt" padding-before="10pt">Comentarios a Carga Financiera:</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="left" >
                            <fo:block font-size="{$tamano-texto}" font-weight="normal" text-align="left" font-family="{$fuente-texto}" padding-before="5pt" padding-after="10pt" white-space-collapse="false" >
                                <xsl:value-of select="solcred/observacionesAnalisisSolicitud/comentarios"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
               </fo:table>
        </fo:block>

    </xsl:template>
<!-- Carga Financiera Empresas - FIN -->
</xsl:stylesheet>
