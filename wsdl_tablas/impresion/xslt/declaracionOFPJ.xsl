<?xml version="1.0" encoding="iso-8859-1"?>
<!-- <== version: 2006/10/25 12:00 ==> -->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
	<xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
	<xsl:template match="declaracionOF">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="dof" page-width="215.9mm" page-height="279.4mm" margin-top="5mm" margin-bottom="5mm" margin-left="20mm" margin-right="20mm">
					<fo:region-body margin-top="41mm" margin-bottom="45mm"/>
					<fo:region-before extent="90mm"/>
					<fo:region-after extent="40mm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="dof">
				<fo:static-content flow-name="xsl-region-before">
					<fo:block font-family="Times" text-align="left" font-size="9pt" line-height="4mm">
						<!--INICIO Imagen, Titulo y datos banco-->
						<!--<fo:block space-before="5mm"> -->
						<fo:block space-before="2mm">
							<!--<fo:table table-layout="fixed" width="219.4mm"> -->
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(60)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block padding-top="2mm" padding-bottom="5mm" text-align="center" font-weight="bold" font-size="17pt" color="#000000">Declaraci�n de Origen de Fondos</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(60)"/>
								<fo:table-column column-width="proportional-column-width(40)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block>
												<xsl:variable name="filename">
													<xsl:value-of disable-output-escaping="no" select="DeclaracionPersonaJuridicaTO/imagenPath"/>
												</xsl:variable>
												<fo:external-graphic src="{$filename}/logoBci.gif"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="right">
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block space-before="0mm">
												<fo:table table-layout="fixed" width="50mm">
													<fo:table-column column-width="proportional-column-width(100)"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell padding-left="2mm" padding-top="1mm">
																<fo:block>Banco de Cr�dito e Inversiones</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell padding-left="2mm">
																<fo:block>R.U.T 97.006.000-6</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell padding-left="2mm" padding-bottom="1mm">
																<fo:block>Avda. El Golf N�125 - Las Condes</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
												</fo:table>
											</fo:block>
										</fo:table-cell>
										
										<fo:table-cell>
											<!--INICIO Datos Cliente y encabezado de reporte-->
												<fo:block space-before="0mm" font-size="12pt">
													<fo:table table-layout="fixed" width="100%">
														<fo:table-column column-width="proportional-column-width(100)"/>
														<fo:table-body>
															<fo:table-row>
																<fo:table-cell>
																	<fo:block font-size="10pt">
																		<fo:table table-layout="fixed" width="100%">
																			<fo:table-column column-width="proportional-column-width(25)"/>
																			<fo:table-column column-width="proportional-column-width(5)"/>
																			<fo:table-column column-width="proportional-column-width(34)"/>
																			<fo:table-column column-width="proportional-column-width(34)"/>
																			<fo:table-body>
																				<fo:table-row>
																					<fo:table-cell padding-top="0.5mm" padding-bottom="0.5mm" padding-left="3mm" border-left="0.25pt solid #5885AC" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC">
																						<fo:block>P�gina</fo:block>
																					</fo:table-cell>
																					<fo:table-cell padding-top="0.5mm" padding-bottom="0.5mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
																						<fo:block>
																							<fo:page-number/>
																						</fo:block>
																					</fo:table-cell>
																					<fo:table-cell padding-top="0.5mm" padding-bottom="0.5mm" padding-left="3mm" border-left="0.25pt solid #5885AC" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC">
																						<fo:block>Folio</fo:block>
																					</fo:table-cell>
																					<fo:table-cell padding-top="0.5mm" padding-bottom="0.5mm" padding-right="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" text-align="right">
																						<fo:block>
																							<xsl:value-of select="DeclaracionPersonaJuridicaTO/caiFolio"/><xsl:value-of select="DeclaracionPersonaJuridicaTO/iicFolio"/>
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
												<!--FIN Datos Cliente y encabezado de reporte-->
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
						<!--FIN Imagen, Titulo y datos banco-->
						
					</fo:block>
				</fo:static-content>
								
				<fo:flow flow-name="xsl-region-body">
						<fo:block font-family="Times" text-align="left" font-size="9pt">
						<!--INICIO Cuadro Texto Informativo, cliente y firma-->
						<fo:block>
							<!--  INICIO IDENTIFICACION -->
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(100)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
											<fo:block font-weight="bold" color="#70A0C1">I. IDENTIFICACI�N</fo:block>
										</fo:table-cell>
									</fo:table-row>								
									<fo:table-row>
										<fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
											<fo:block font-weight="bold" color="#5885AC" font-size="8pt">Nombre / Raz�n Social</fo:block>
										</fo:table-cell>						
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell padding-top="2mm" padding-left="2mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
											<fo:block><xsl:value-of select="PersonaJuridicaTO/nombre"/></fo:block>
										</fo:table-cell>										
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
										</fo:table-cell>
									</fo:table-row>									
								</fo:table-body>
							</fo:table>
							<!--  FIN IDENTIFICACION -->
							
							<!--  INICIO TIPOENTIDAD -->
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(100)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
											<fo:block font-weight="bold" color="#70A0C1">II. TIPO DE ENTIDAD LEGAL</fo:block>
										</fo:table-cell>
									</fo:table-row>								
									<fo:table-row>
										<fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
											<fo:block font-weight="bold" color="#5885AC" font-size="8pt">Tipo de Entidad Legal</fo:block>
										</fo:table-cell>						
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
											<fo:block><xsl:value-of select="PersonaJuridicaTO/tipo"/></fo:block>
										</fo:table-cell>										
									</fo:table-row>			
									<fo:table-row>
										<fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
											<fo:block font-weight="bold" color="#5885AC" font-size="8pt">Indicar</fo:block>
										</fo:table-cell>						
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
											<fo:block><xsl:value-of select="PersonaJuridicaTO/indicacionTipoSociedad"/></fo:block>
										</fo:table-cell>										
									</fo:table-row>																
								</fo:table-body>
							</fo:table>
							
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(100)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
											<fo:block font-weight="bold" color="#5885AC" font-size="8pt">Direcci�n</fo:block>
										</fo:table-cell>						
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(100)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
											<fo:block><xsl:value-of select="DireccionTO/calle"/></fo:block>
										</fo:table-cell>
										
									</fo:table-row>
		
								</fo:table-body>
							</fo:table>
							
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(50)"/>
								<fo:table-column column-width="proportional-column-width(50)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
											<fo:block font-weight="bold" color="#5885AC" font-size="8pt">Comuna</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
											<fo:block font-weight="bold" color="#5885AC" font-size="8pt">Ciudad</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
											<fo:block><xsl:value-of select="DireccionTO/comuna"/></fo:block>
										</fo:table-cell>
										<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
											<fo:block><xsl:value-of select="DireccionTO/ciudad"/></fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(50)"/>
								<fo:table-column column-width="proportional-column-width(50)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
											<fo:block font-weight="bold" color="#5885AC" font-size="8pt">Tel�fono</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
											<fo:block font-weight="bold" color="#5885AC" font-size="8pt">E-mail</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
											<fo:block><xsl:value-of select="DireccionTO/telefono"/></fo:block>
										</fo:table-cell>
										<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
											<fo:block><xsl:value-of select="DireccionTO/email"/></fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(45)"/>
								<fo:table-column column-width="proportional-column-width(55)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
											<fo:block font-weight="bold" color="#5885AC" font-size="8pt">Verificaci�n Domicilio Representante Legal</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
											<fo:block>
												<xsl:choose>
													  <xsl:when test="PersonaJuridicaTO/verificacionDomicilio = 'dicom'">
															DICOM
													  </xsl:when>
													  <xsl:when test="PersonaJuridicaTO/verificacionDomicilio = 'boleta'">
															BOLETA DE SERVICIOS
													  </xsl:when>																				  
													  <xsl:otherwise>
														 <xsl:value-of select="PersonaJuridicaTO/verificacionDomicilio"/>
													  </xsl:otherwise>
												</xsl:choose>				
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(33)"/>
								<fo:table-column column-width="proportional-column-width(33)"/>
								<fo:table-column column-width="proportional-column-width(34)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
											<fo:block font-weight="bold" color="#5885AC" font-size="8pt">Actividad Empresa</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
											<fo:block font-weight="bold" color="#5885AC" font-size="8pt">Rut Empresa</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
											<fo:block font-weight="bold" color="#5885AC" font-size="8pt">P�gina Web</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
											<fo:block><xsl:value-of select="PersonaJuridicaTO/actividadEmpresa"/></fo:block>
										</fo:table-cell>
										<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
											<fo:block><xsl:value-of select="PersonaJuridicaTO/rut"/>-<xsl:value-of select="PersonaJuridicaTO/dv"/></fo:block>
										</fo:table-cell>
										<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
											<fo:block><xsl:value-of select="PersonaJuridicaTO/paginaWeb"/></fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(33)"/>
								<fo:table-column column-width="proportional-column-width(33)"/>
								<fo:table-column column-width="proportional-column-width(34)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
											<fo:block font-weight="bold" color="#5885AC" font-size="8pt">Representante Legal</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
											<fo:block font-weight="bold" color="#5885AC" font-size="8pt">RUT</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
											<fo:block font-weight="bold" color="#5885AC" font-size="8pt">Tel�fono</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<xsl:for-each select='RepresentanteLegalTO'>
										<fo:table-row>
											<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
												<fo:block><xsl:value-of select="nombre"/></fo:block>
											</fo:table-cell>
											<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
												<fo:block><xsl:value-of select="rut"/>-<xsl:value-of select="dv"/></fo:block>
											</fo:table-cell>
											<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
												<fo:block><xsl:value-of select="telefono"/></fo:block>
											</fo:table-cell>
										</fo:table-row>
									</xsl:for-each> 
									<fo:table-row>
										<fo:table-cell height="10px" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
											<fo:block></fo:block>
										</fo:table-cell>
										<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
											<fo:block></fo:block>
										</fo:table-cell>
										<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
											<fo:block></fo:block>
										</fo:table-cell>
									</fo:table-row>		
								</fo:table-body>
							</fo:table>
							
							
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(60)"/>
								<fo:table-column column-width="proportional-column-width(40)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
											<fo:block font-weight="bold" color="#5885AC" font-size="8pt">Principales Accionistas o Socios (sobre 25%)</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
											<fo:block font-weight="bold" color="#5885AC" font-size="8pt">RUT</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<xsl:for-each select='PrincipalAccionistaTO'>
										<fo:table-row>
											<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
												<fo:block><xsl:value-of select="nombre"/></fo:block>
											</fo:table-cell>
											<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
												<fo:block><xsl:value-of select="rut"/>-<xsl:value-of select="dv"/></fo:block>
											</fo:table-cell>
										</fo:table-row>
									</xsl:for-each>
								</fo:table-body>
							</fo:table>
							<!--  FIN TIPOENTIDAD -->
							
							<!--  INICIO PRODUCTOS -->
							<fo:block>
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(100)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
												<fo:block font-weight="bold" color="#70A0C1">III. PRODUCTO(S) SOLICITADO(S) (MONTO EN SU EQUIVALENTE EN $)</fo:block>
											</fo:table-cell>
										</fo:table-row>															
									</fo:table-body>
								</fo:table>
							</fo:block>
							
							<fo:block keep-with-previous="always">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(60)"/>
									<fo:table-column column-width="proportional-column-width(40)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
												<fo:block font-weight="bold" color="#5885AC" font-size="8pt">Producto</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
												<fo:block font-weight="bold" color="#5885AC" font-size="8pt">Monto</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<xsl:for-each select='ProductoTO'>
										<fo:table-row keep-with-previous="always">
											<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
												<fo:block><xsl:value-of select="descripcion"/></fo:block>
											</fo:table-cell>
											<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
												<fo:block><xsl:value-of select="format-number(monto, '#')"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										</xsl:for-each>
										<fo:table-row>
											<fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
							<!--  FIN PRODUCTOS -->
							
							<!--  INICIO ORIGEN -->
							<fo:table table-layout="fixed" width="100%"  break-before="page">
								<fo:table-column column-width="proportional-column-width(100)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
											<fo:block font-weight="bold" color="#70A0C1">IV. ORIGEN DE LOS FONDOS</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-previous="always">
										<fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
											<fo:block font-weight="bold" color="#5885AC" font-size="8pt">Los fondos provienen de:</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-previous="always">
										<fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
											<fo:block  overflow="hidden" wrap-option="wrap"><xsl:value-of select="DeclaracionPersonaJuridicaTO/origenFondos"/></fo:block>
										</fo:table-cell>
									</fo:table-row>	
									<fo:table-row>
										<fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
										</fo:table-cell>
									</fo:table-row>														
								</fo:table-body>
							</fo:table>
							<!--  FIN ORIGEN -->
							
							<!--  INICIO TRAMO -->
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(100)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
											<fo:block font-weight="bold" color="#70A0C1">V. TRAMOS DE RENTA MENSUALES</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-previous="always">
										<fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
											<fo:block font-weight="bold" color="#5885AC" font-size="8pt">Tramo Seleccionado:</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-previous="always">
										<fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
											<xsl:if test="DeclaracionPersonaJuridicaTO/tramo = 1">
												<fo:block>Menos de MM$ 3</fo:block>
											</xsl:if>
											<xsl:if test="DeclaracionPersonaJuridicaTO/tramo = 2">
												<fo:block>MM$ 3 a MM$ 10</fo:block>
											</xsl:if>
											<xsl:if test="DeclaracionPersonaJuridicaTO/tramo = 3">
												<fo:block>MM$ 10 a MM$ 40</fo:block>
											</xsl:if>
											<xsl:if test="DeclaracionPersonaJuridicaTO/tramo = 4">
												<fo:block>Sobre MM$ 40</fo:block>
											</xsl:if>
										</fo:table-cell>
									</fo:table-row>	
									<fo:table-row>
										<fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<!--  FIN TRAMO -->
							
							<!--  INICIO DECLARACION -->
							<fo:block>
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(100)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
												<fo:block font-weight="bold" color="#70A0C1">VI. DECLARACI�N</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row keep-with-previous="always">
											<fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
												<fo:block>Declaro(amos) asumir integral responsabilidad por la veracidad de la informaci�n entregada en este documento y se�alo expresamente que dichos fondos tienen su origen en actividades l�citas.</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
							
							<fo:block keep-with-previous="always">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(50)"/>
									<fo:table-column column-width="proportional-column-width(50)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell  text-align="center" padding-top="2cm" padding-left="3mm" border-left="0.25pt solid #5885AC">
												<fo:block>_________________________________</fo:block>
											</fo:table-cell>
											<fo:table-cell  text-align="center" padding-top="2cm" padding-left="3mm" border-right="0.25pt solid #5885AC">
												<fo:block>_________________________________</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row keep-with-previous="always">
											<fo:table-cell  text-align="center" padding-top="2mm" padding-left="3mm" border-left="0.25pt solid #5885AC">
												<fo:block>NOMBRE Y FIRMA REPRESENTANTE LEGAL</fo:block>
											</fo:table-cell>
											<fo:table-cell  text-align="center" padding-top="2mm" padding-left="3mm" border-right="0.25pt solid #5885AC">
												<fo:block>NOMBRE Y FIRMA REPRESENTANTE LEGAL</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
							
							<fo:block keep-with-previous="always">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(100)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell  text-align="center" padding-top="2cm" padding-left="3mm" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
												<fo:block>_________________________________</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell  text-align="center" padding-top="2mm" padding-left="3mm" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC">
												<fo:block>NOMBRE Y FIRMA REPRESENTANTE LEGAL</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
							<!--  FIN DECLARACION -->
							
							<!--  INICIO RECEPCION -->
							<fo:block keep-with-previous="always">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(100)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
												<fo:block font-weight="bold" color="#70A0C1">VII. RECEPCI�N BANCO</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
							
							<fo:block keep-with-previous="always">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(50)"/>
									<fo:table-column column-width="proportional-column-width(50)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell  text-align="center" padding-top="2cm" padding-left="3mm" border-left="0.25pt solid #5885AC">
												<fo:block>____________________________________________</fo:block>
											</fo:table-cell>
											<fo:table-cell  text-align="center" padding-top="2cm" padding-left="3mm" border-right="0.25pt solid #5885AC">
												<fo:block>_____________________________</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell  text-align="center" padding-top="2mm" padding-left="3mm" border-left="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC">
												<fo:block>NOMBRE, TIMBRE Y FIRMA REPRESENTANTE BANCO</fo:block>
											</fo:table-cell>
											<fo:table-cell  text-align="center" padding-top="2mm" padding-left="3mm" border-right="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC">
												<fo:block>FECHA Y LUGAR DE RECEPCI�N</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
							<!--  FIN RECEPCION -->
							
							<!--  INICIO DOCUMENTOS -->
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(100)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
											<fo:block font-weight="bold" color="#70A0C1">DOCUMENTACI�N DE RESPALDO INCLUIDA</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-previous="always">
										<fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC">
											<fo:block>Documentos incluidos:</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<xsl:for-each select='DocumentoRespaldoTO'>
									<fo:table-row keep-with-previous="always">
										<fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
											<fo:block>- <xsl:value-of select="descripcion"/></fo:block>
										</fo:table-cell>
									</fo:table-row>		
									</xsl:for-each>	
									<fo:table-row>
											<fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm" border-top="0.25pt solid #5885AC">
										</fo:table-cell>
									</fo:table-row>												
								</fo:table-body>
							</fo:table>
							<!--  FIN DOCUMENTOS -->
							
						</fo:block>
						<!--FIN Cuadro Texto Informativo, cliente y firma-->
					</fo:block>
				</fo:flow>
			</fo:page-sequence>			
		</fo:root>
	</xsl:template>
</xsl:stylesheet>
