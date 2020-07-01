<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables--><!--variables-->
	<xsl:variable name="bgcolor">#BDBDBD</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="txt">#FFFFF</xsl:variable>	
	<!-- Variables -->
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina"
						page-height="28cm"
						page-width="21.7cm"
						margin-top="1cm"
						margin-bottom="1cm"
						margin-left="2cm"
						margin-right="2cm">
					<fo:region-body margin-top="3cm" margin-bottom="1cm" background-color="#ffffff" 
							margin-left="0.5cm" margin-right="0.5cm"/> 
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Propiedades pagina -->
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us" >
				<fo:static-content flow-name="xsl-region-before">					
					<fo:block space-after="1mm">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="50%"/>
							<fo:table-column column-width="50%"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src">
												<xsl:value-of select="comprobante/rutaImagen"/>logo-banca-privada.gif 
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
										
										<xsl:if test="comprobante/nombre" >
											Usuario:
											<xsl:value-of select="comprobante/nombre"/>
											</xsl:if>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row  >
									<fo:table-cell  number-columns-spanned="2">
										<fo:block space-after="2mm">
											<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="100%"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="12pt" font-weight="bold" color="{$txt}">
											Bienvenida a Banca BCI privada
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="9pt" font-weight="bold" text-align="right" color="{$txt}">
											<xsl:value-of select="comprobante/fechaImpresion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after" >
					<fo:block space-after="2mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="100%"/>
					</fo:block>
					<fo:block font-size="6pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">
						Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
					</fo:block>
					<fo:block font-size="6pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">
						Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
					</fo:block>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<xsl:call-template name="contenido"/>
				</fo:flow>
			</fo:page-sequence> 
		</fo:root>
	</xsl:template>

	<xsl:template name="contenido">
		<fo:block>
			<fo:table  width="100%" border-style="solid" border-width="0.5pt" border-color="{$lineas}" background-repeat="repeat">
				<fo:table-column/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell border-style="none" border-width="0pt" padding="2pt" background-repeat="repeat" >
							<fo:block margin-left="0.3cm" margin-right="0.3cm" padding-before="0.3cm">
								<fo:table width="100%"  padding-after="0.5cm" border-style="none" border-width="0pt" border-color="white" background-repeat="repeat">
									<fo:table-column/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell border-style="inset" border-width="0pt" padding="2pt" background-repeat="repeat" >
												<fo:block>
													<fo:inline font-size="11pt" font-weight="bold">
														<xsl:text>Tipo de Operación : Cambio de Datos de Autentificación</xsl:text>
													</fo:inline>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
								<fo:table width="100%" font-size="10pt">
									<fo:table-column/>
									<fo:table-column/>
									<fo:table-body>
										<fo:table-row background-color="#C0C0C0">
											<fo:table-cell border-style="none"  border-color="white" background-color="silver" background-repeat="repeat">
												<fo:block background-color="#C0C0C0">
													<fo:block>
														Comprobante N° : <xsl:value-of select="comprobante/numeroComprobante"/>
													</fo:block>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell border-style="inset" border-width="0pt" padding="2pt" background-color="silver" background-repeat="repeat" >
												<fo:block text-align="right" background-color="#C0C0C0">
													<fo:block>
														<xsl:value-of select="comprobante/fechaComprobante"/> hrs.
													</fo:block>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
								<fo:table width="100%" border-left-style="none" border-right-style="none" border-start-style="solid" border-end-style="solid" border-width="1pt" border-color="black" background-repeat="repeat" padding-before="0.5cm">
									<fo:table-column/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell border-style="solid" border-width="0pt" padding="2pt" background-repeat="repeat" >
												<fo:block>
													<xsl:text>Detalle</xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>

								<fo:table width="100%" border-left-style="none" border-right-style="none" border-start-style="solid" border-end-style="solid" border-width="1pt" border-color="black" background-repeat="repeat" padding-before="0.5cm">
									<fo:table-column column-width="13cm"/>
									<fo:table-column/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell border-style="none" border-width="0pt" padding="2pt" background-repeat="repeat" >
												<fo:block>
													<fo:table width="100%" border-style="none" background-repeat="repeat" >
														<fo:table-column column-width="7.7cm"/>
														<fo:table-column />
														<fo:table-body>
															<xsl:if test="comprobante/tipoIdentificadorSeleccionado" >
																<fo:table-row >                                                    
																	<fo:table-cell margin-left="1cm" border-style="inset" border-width="0pt"  background-repeat="repeat" >
																		<fo:block>
																			<xsl:text>Tipo de identificador seleccionado</xsl:text>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border-style="inset" border-width="0pt" background-repeat="repeat" >
																		<fo:block text-align="left">
																			<fo:block>
																				:&#xA0;<xsl:value-of select="comprobante/tipoIdentificadorSeleccionado"/>
																			</fo:block>
																		</fo:block>
																	</fo:table-cell>
																</fo:table-row>
															</xsl:if>

															<xsl:if test="comprobante/extencionClave" >
																<fo:table-row>
																	<fo:table-cell margin-left="1cm" border-style="inset" border-width="0pt"  background-repeat="repeat" >
																		<fo:block>
																			<xsl:text>Extención de la clave:</xsl:text>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border-style="inset" border-width="0pt"  background-repeat="repeat" >
																		<fo:block text-align="left">
																			<fo:block>
																			:&#xA0;<xsl:value-of select="comprobante/extencionClave"/>&#xA0;caracteres
																			</fo:block>
																		</fo:block>
																	</fo:table-cell>
																</fo:table-row>
															</xsl:if>

															<xsl:if test="comprobante/detalleOperacion" >
																<fo:table-row>
																	<fo:table-cell margin-left="1cm"  border-style="inset" border-width="0pt" background-repeat="repeat" >
																		<fo:block>
																			<xsl:text>Detalle Operación</xsl:text>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border-style="inset" border-width="0pt"  background-repeat="repeat" >
																		<fo:block text-align="left">
																			<fo:block>
																			:&#xA0;<xsl:value-of select="comprobante/detalleOperacion"/>
																			</fo:block>
																		</fo:block>
																	</fo:table-cell>
																</fo:table-row>
															</xsl:if>

															<xsl:if test="comprobante/recomendacion" >
																<fo:table-row>
																	<fo:table-cell margin-left="1cm"   border-style="inset" border-width="0pt" background-repeat="repeat" >
																		<fo:block>
																			<xsl:text>Recomendación </xsl:text>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border-style="inset" border-width="0pt" background-repeat="repeat" >
																		<fo:block>
																		:&#xA0;<xsl:value-of select="comprobante/recomendacion"/>
																		</fo:block>
																		<fo:block>
																			<fo:table padding-after="0.5cm" border-style="none" border-width="0pt" border-color="white" background-repeat="repeat">
																				<fo:table-column />
																				<fo:table-body>
																					<fo:table-row>
																						<fo:table-cell display-align="left">
																							<fo:block>
																								<fo:external-graphic width="153.3px" height="12.6px">
																									<xsl:attribute name="src">
																										<xsl:value-of select="comprobante/rutaImagen"/>fono_mesa_ayuda_banca_privada.gif
																									</xsl:attribute>
																								</fo:external-graphic>
																							</fo:block>
																						</fo:table-cell>
																					</fo:table-row>
																				</fo:table-body>
																			</fo:table>
																		</fo:block>
																	</fo:table-cell>
																</fo:table-row>
															</xsl:if>
															
														</fo:table-body>
													</fo:table>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell border-style="solid" border-width="0pt" padding="2pt" background-repeat="repeat" >
												<fo:block >
                                                    <xsl:if test="comprobante/tipoIdentificadorSeleccionado" >
													   <fo:external-graphic width="80px" height="80px">
														  <xsl:attribute name="src">
															 <xsl:value-of select="comprobante/rutaImagen"/>timbre-banca-privada.jpg
														  </xsl:attribute>
													   </fo:external-graphic>
                                                    </xsl:if>
                                                    
                                                    <xsl:if test="comprobante/detalleOperacion" >
                                                       <fo:external-graphic width="80px" height="80px">
                                                          <xsl:attribute name="src">
                                                             <xsl:value-of select="comprobante/rutaImagen"/>timbre-banca-privada-notif.jpg
                                                          </xsl:attribute>
                                                       </fo:external-graphic>
                                                    </xsl:if>  
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
<!-- Stylus Studio meta-information - (c) 2004-2009. Progress Software Corporation. All rights reserved.

<metaInformation>
	<scenarios>
		<scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="calendario.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml=""
		          commandline="" additionalpath="" additionalclasspath="" postprocessortype="fop" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="">
			<advancedProp name="sInitialMode" value=""/>
			<advancedProp name="bXsltOneIsOkay" value="true"/>
			<advancedProp name="bSchemaAware" value="true"/>
			<advancedProp name="bGenerateByteCode" value="true"/>
			<advancedProp name="bXml11" value="false"/>
			<advancedProp name="iValidation" value="0"/>
			<advancedProp name="bExtensions" value="true"/>
			<advancedProp name="iWhitespace" value="0"/>
			<advancedProp name="sInitialTemplate" value=""/>
			<advancedProp name="bTinyTree" value="true"/>
			<advancedProp name="xsltVersion" value="2.0"/>
			<advancedProp name="bWarnings" value="true"/>
			<advancedProp name="bUseDTD" value="false"/>
			<advancedProp name="iErrorHandling" value="fatal"/>
		</scenario>
	</scenarios>
	<MapperMetaTag>
		<MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no">
			<SourceSchema srcSchemaPath="calendario.xml" srcSchemaRoot="comprobante" AssociatedInstance="" loaderFunction="document" loaderFunctionUsesURI="no"/>
		</MapperInfo>
		<MapperBlockPosition>
			<template match="/"></template>
			<template name="contenido"></template>
		</MapperBlockPosition>
		<TemplateContext></TemplateContext>
		<MapperFilter side="source"></MapperFilter>
	</MapperMetaTag>
</metaInformation>
-->