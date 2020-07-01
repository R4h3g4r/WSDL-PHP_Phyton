<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:java="http://xml.apache.org/xslt/java" exclude-result-prefixes="java">
	
<xsl:template match="/" name="inicio">
	<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
		<fo:layout-master-set>
			<fo:simple-page-master master-name="default-page" 
				page-height="11in" 
				page-width="8.5in" 
				margin-left="0.6in" 
				margin-right="0.6in">
				<fo:region-body margin-top="0.0in" margin-bottom="0.79in" />
			</fo:simple-page-master>
		</fo:layout-master-set>
		<fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
		
                <fo:flow flow-name="xsl-region-body">
                    <fo:block>						
                            
							<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                <fo:table-column />
                                <fo:table-column />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="white" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                            <fo:block>
											
												<fo:external-graphic width="100px" height="42px">
													<xsl:attribute name="src">
														<xsl:value-of select="VisacionXml/logo"/>
													</xsl:attribute>
												</fo:external-graphic>
											
											<!--
                                                <xsl:for-each select="VisacionXml/logo">
                                                    <fo:external-graphic space-before.optimum="4pt" space-after.optimum="4pt">
                                                        <xsl:attribute name="src">url('<xsl:value-of select="VisacionXml/logo" />')</xsl:attribute>
                                                    </fo:external-graphic>
                                                </xsl:for-each>
											-->
												
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                            <fo:block>
												<xsl:for-each select="VisacionXml/Fecha">
                                                    <fo:inline font-size="10pt">
                                                        <xsl:apply-templates />
                                                    </fo:inline>
                                                </xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                <fo:table-column />
                                <fo:table-column />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="white" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                            <fo:block>
												<xsl:for-each select="VisacionXml/nombreCliente">
													<fo:inline color="#0361A2" font-size="10pt">
														<xsl:apply-templates />
													</fo:inline>
												</xsl:for-each>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                            <fo:block>RUT : 
                                                    <xsl:for-each select="VisacionXml/rutCli">
                                                        <fo:inline color="#0361A2" font-size="10pt">
                                                            <xsl:apply-templates />
                                                        </fo:inline>
                                                    </xsl:for-each>

                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                            <fo:block color="#C0C0C0" space-before.optimum="-8pt">
                                <fo:leader leader-length="100%" leader-pattern="rule" rule-thickness="1pt" />
                            </fo:block>
							<fo:block>
								<fo:inline color="#0361A2" font-size="16pt">Visación</fo:inline>
							</fo:block>
							
							
							
							
							
                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                <fo:table-column />
                                <fo:table-column />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="before" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                                            <fo:block>
                                                    <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                        <fo:table-column />
                                                        <fo:table-body>
                                                            <fo:table-row>
                                                                <fo:table-cell border-bottom-color="gray" border-left-color="gray" border-right-color="gray" border-top-color="gray" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:table padding="0" width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                            <fo:table-column />
                                                                            <fo:table-column />
                                                                            <fo:table-body>
                                                                                <fo:table-row>
                                                                                    <fo:table-cell line-height="75%" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline font-size="8px" font-weight="bold">File</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell line-height="75%" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" text-align="right" display-align="center">
                                                                                        <fo:block>
                                                                                                <xsl:for-each select="VisacionXml/File/Fileglosa">
                                                                                                    <fo:inline font-size="8px" font-weight="bold">
                                                                                                        <xsl:apply-templates />
                                                                                                    </fo:inline>
                                                                                                </xsl:for-each>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                </fo:table-row>
                                                                            </fo:table-body>
                                                                        </fo:table>
                                                                        <fo:inline font-size="8px" font-weight="bold">Detalle File</fo:inline>

                                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                    <fo:table-column column-width="proportional-column-width(9)" />
                                                                                    <fo:table-column column-width="proportional-column-width(47)" />
                                                                                    <fo:table-column column-width="proportional-column-width(25)" />
                                                                                    <fo:table-column column-width="proportional-column-width(20)" />
                                                                                    <fo:table-header>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" display-align="before" width="9%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px" font-weight="bold">Est.</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" display-align="before" width="47%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px" font-weight="bold">Motivo</fo:inline>
                                                                                                    <fo:inline font-size="8px" font-weight="bold" line-height="-0.5"></fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" display-align="before" width="25%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px" font-weight="bold" line-height="11px">Fec. Ingreso</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" display-align="before" width="20%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px" font-weight="bold">Fuente</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                    </fo:table-header>
                                                                                    <fo:table-body>
																						<xsl:for-each select="VisacionXml/File/FileDetalle">
																							<fo:table-row>
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="left">
																									<fo:block color="#444444" font-size="8px">
																										<xsl:value-of select='codMotivo' />
																									</fo:block>
																								</fo:table-cell>
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																									<fo:block color="#444444" font-size="8px">
																										<xsl:value-of select='descMotivo' /> 
																									</fo:block>
																								</fo:table-cell>
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																									<fo:block color="#444444" font-size="8px">
																										<xsl:value-of select='fecIngreso' /> 
																									</fo:block>
																								</fo:table-cell>
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																									<fo:block color="#444444" font-size="8px">
																										<xsl:value-of select='descFuente' /> 
																									</fo:block>
																								</fo:table-cell>
																							</fo:table-row>
																						</xsl:for-each>
                                                                                    </fo:table-body>
                                                                                </fo:table>
                                                                    </fo:block>
                                                                </fo:table-cell>
                                                            </fo:table-row>
                                                        </fo:table-body>
                                                    </fo:table>
                                                
                                                        <fo:block>
                                                            <xsl:text>&#xA;</xsl:text>
                                                        </fo:block>
													
													<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                            <fo:table-column />
                                                            <fo:table-body>
                                                                <fo:table-row>
                                                                    <fo:table-cell border-bottom-color="gray" border-left-color="gray" border-right-color="gray" border-top-color="gray" line-height="75%" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                        <fo:block>
                                                                            <fo:inline font-size="8px" font-weight="bold">Indicador Complementario de Riesgo (ICR)</fo:inline>
                                                                            <fo:block>
                                                                                <xsl:text>&#xA;</xsl:text>
                                                                            </fo:block>
                                                                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                <fo:table-column column-width="proportional-column-width(13)" />
                                                                                <fo:table-column column-width="proportional-column-width(87)" />
                                                                                <fo:table-body>
                                                                                    <fo:table-row>
                                                                                        <fo:table-cell line-height="75%" border-style="solid" border-width="1pt" border-color="white" width="13%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                            <fo:block>
                                                                                                <fo:inline color="#444444" font-size="8px">Estado:</fo:inline>
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                        <fo:table-cell line-height="75%" border-style="solid" border-width="1pt" border-color="white" width="87%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                            <fo:block>
                                                                                                <xsl:for-each select="VisacionXml/icr/ICRglosa">
                                                                                                    <fo:inline color="#444444" font-size="8px">
                                                                                                        <xsl:apply-templates />
                                                                                                    </fo:inline>
                                                                                                </xsl:for-each>
                                                                                            </fo:block>
                                                                                        </fo:table-cell>
                                                                                    </fo:table-row>
                                                                                </fo:table-body>
                                                                            </fo:table>
                                                                            <fo:inline font-size="8px" font-weight="bold">Detalle Indicador complementario de Riesgo</fo:inline>
                                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                    <fo:table-column column-width="proportional-column-width(17)" />
                                                                                    <fo:table-column column-width="proportional-column-width(44)" />
                                                                                    <fo:table-column column-width="proportional-column-width(20)" />
                                                                                    <fo:table-column column-width="proportional-column-width(20)" />
                                                                                    <fo:table-header>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px" font-weight="bold">Est.</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="44%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px" font-weight="bold">Motivo</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="center" width="20%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px" font-weight="bold">Fec. Ingreso</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="20%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px" font-weight="bold">Fuente</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                    </fo:table-header>
                                                                                    <fo:table-body>
                                                                                            <fo:table-row>
                                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="center" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                                    <fo:block>
                                                                                                        <xsl:for-each select="VisacionXml/icr/icrDetalle/clasificacion">
                                                                                                            <fo:inline color="#444444" font-size="8px">
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </fo:block>
                                                                                                </fo:table-cell>
                                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="44%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                    <fo:block>
                                                                                                        <xsl:for-each select="VisacionXml/icr/icrDetalle/descripcion">
                                                                                                            <fo:inline color="#444444" font-size="8px">
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </fo:block>
                                                                                                </fo:table-cell>
                                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="20%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                    <fo:block>
                                                                                                        <xsl:for-each select="VisacionXml/icr/icrDetalle/fechaIngreso">
                                                                                                            <fo:inline color="#444444" font-size="8px">
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
                                                                                                    </fo:block>
                                                                                                </fo:table-cell>
                                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="20%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                    <fo:block>
                                                                                                        <xsl:for-each select="VisacionXml/icr/icrDetalle/fuente">
                                                                                                            <fo:inline color="#444444" font-size="8px">
                                                                                                                <xsl:apply-templates />
                                                                                                            </fo:inline>
                                                                                                        </xsl:for-each>
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
                                                
                                                        <fo:block>
                                                            <xsl:text>&#xA;</xsl:text>
                                                        </fo:block>
													
												<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell border-bottom-color="gray" border-left-color="gray" border-right-color="gray" border-top-color="gray" line-height="75%" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                <fo:block>
                                                                        <fo:inline font-size="8px" font-weight="bold">Deuda Bci (M$)</fo:inline>
                                                                        <fo:block>
                                                                            <xsl:text>&#xA;</xsl:text>
                                                                        </fo:block>
                                                                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                            <fo:table-column column-width="proportional-column-width(35)" />
                                                                            <fo:table-column column-width="proportional-column-width(15)" />
                                                                            <fo:table-column column-width="proportional-column-width(35)" />
                                                                            <fo:table-column column-width="proportional-column-width(15)" />
                                                                            <fo:table-body>
                                                                                <fo:table-row>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="35%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Total Directa:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/deudaBCI/deudaTotalDirectaBCI">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="35%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Total Complementaria:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/deudaBCI/deudaTotalComplemBCI">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                </fo:table-row>
                                                                                <fo:table-row>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="35%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Total Vencida Directa:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/deudaBCI/dTotalVencDirectaBCI">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="35%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Total Banco Nova:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/deudaBCI/deudaTotalBancoNova">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                </fo:table-row>
                                                                                <fo:table-row>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="35%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Total Indirecta:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/deudaBCI/deudaTotalIndirectaBCI">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
										    
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="35%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Castigada : </fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/deudaBCI/indicadorCastigada">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>                                                                                    
                                                                                </fo:table-row>
                                                                                <fo:table-row>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="35%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Total Vencida Indirecta:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/deudaBCI/dTotalVencIndirectaBCI">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="35%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Clasificación :</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/deudaBCI/clasificacion">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                </fo:table-row>
                                                                                <fo:table-row>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="35%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                           
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="35%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Total Deuda:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/deudaBCI/deudaTotalBCI">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                </fo:table-row>
                                                                            </fo:table-body>
                                                                        </fo:table>
																	
                                                                    <fo:block>
                                                                        <fo:leader leader-pattern="space" />
                                                                    </fo:block>
                                                                    <fo:inline font-size="9px" font-weight="bold">Detalle Deuda Bci</fo:inline>
                                                                    <xsl:if test="VisacionXml/detDeudaBCI/detalleDeudaBCICOD != 0">
                                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                    <fo:table-column column-width="proportional-column-width(34)" />
                                                                                    <fo:table-column column-width="proportional-column-width(28)" />
                                                                                    <fo:table-column column-width="proportional-column-width(21)" />
                                                                                    <fo:table-column column-width="proportional-column-width(21)" />
                                                                                    <fo:table-column column-width="proportional-column-width(26)" />
                                                                                    <fo:table-header>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px" font-weight="bold">Producto</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="28%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px" font-weight="bold">Moneda</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="21%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px" font-weight="bold">Sit. Contable</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="21%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px" font-weight="bold">Sit. Cartera</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="26%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px" font-weight="bold">Monto</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                    </fo:table-header>
                                                                                    <fo:table-body>
																					
																						<xsl:for-each select="VisacionXml/detDeudaBCI/detalleDeudaBCI">
																							<fo:table-row>
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="left">
																									<fo:block color="#444444" font-size="8px">
																										<xsl:value-of select='codOperacion' />
																									</fo:block>
																								</fo:table-cell>
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="left">
																									<fo:block color="#444444" font-size="8px">
																										<xsl:value-of select='codValores' /> 
																									</fo:block>
																								</fo:table-cell>
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																									<fo:block color="#444444" font-size="8px">
																										<xsl:value-of select='situacionContable' /> 
																									</fo:block>
																								</fo:table-cell>
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																									<fo:block color="#444444" font-size="8px">
																										<xsl:value-of select='situacionCartera' /> 
																									</fo:block>
																								</fo:table-cell>
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="right">
																									<fo:block color="#444444" font-size="8px">
																										<xsl:value-of select='monto' />
																									</fo:block>
																								</fo:table-cell>
																							</fo:table-row>
																						</xsl:for-each>
																					
                                                                                    </fo:table-body>
                                                                                </fo:table>
                                                                    </xsl:if>
                                                                    <xsl:if test="VisacionXml/detDeudaBCI/detalleDeudaBCICOD = 0">
                                                                        <fo:block>
                                                                            <fo:leader leader-pattern="space" />
                                                                        </fo:block>
                                                                        <fo:inline font-size="8px">Cliente no registra información de detalle.</fo:inline>
                                                                    </xsl:if>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>

												<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell border-bottom-color="gray" border-left-color="gray" border-right-color="gray" border-top-color="gray" line-height="75%" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                <fo:block>
                                                                    <fo:inline font-size="8px" font-weight="bold">Líneas de Crédito Directa (M$)</fo:inline>
                                                                    <fo:block>
                                                                        <xsl:text>&#xA;</xsl:text>
                                                                    </fo:block>
                                                                    <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                        <fo:table-column column-width="proportional-column-width(35)" />
                                                                        <fo:table-column column-width="proportional-column-width(15)" />
                                                                        <fo:table-column column-width="proportional-column-width(35)" />
                                                                        <fo:table-column column-width="proportional-column-width(15)" />
                                                                        <fo:table-body>
                                                                            <fo:table-row>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="35%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                    <fo:block>
                                                                                        <fo:inline color="#444444" font-size="8px">Total Autorizado :</fo:inline>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                    <fo:block>
                                                                                        <xsl:for-each select="VisacionXml/linCredDirecta/totalAutLineaCredito">
                                                                                            <fo:inline font-size="8px">
                                                                                                <xsl:apply-templates />
                                                                                            </fo:inline>
                                                                                        </xsl:for-each>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="35%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                    <fo:block>
                                                                                        <fo:inline color="#444444" font-size="8px">Total Disponible :</fo:inline>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                    <fo:block>
                                                                                        <xsl:for-each select="VisacionXml/linCredDirecta/totalDisLineaCredito">
                                                                                            <fo:inline font-size="8px">
                                                                                                <xsl:apply-templates />
                                                                                            </fo:inline>
                                                                                        </xsl:for-each>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                            </fo:table-row>
                                                                        </fo:table-body>
                                                                    </fo:table>
                                                                    <fo:block>
                                                                        <fo:leader leader-pattern="space" />
                                                                    </fo:block>
                                                                    <fo:inline font-size="8px" font-weight="bold">Detalle Línea de Credito Directa</fo:inline>
                                                                    <xsl:if test="VisacionXml/detLinCredDirecta/detLinCredDirectaCOD != 0">
                                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                    <fo:table-column column-width="proportional-column-width(40)" />
                                                                                    <fo:table-column column-width="proportional-column-width(20)" />
                                                                                    <fo:table-column column-width="proportional-column-width(20)" />
                                                                                    <fo:table-column column-width="proportional-column-width(20)" />
                                                                                    <fo:table-header>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="40%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px" font-weight="bold">Producto</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="20%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px" font-weight="bold">Monto Autor.</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="20%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px" font-weight="bold">Monto Disp.</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="20%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px" font-weight="bold">Fec. Venc.</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                        </fo:table-row>
                                                                                    </fo:table-header>
                                                                                    <fo:table-body>
																					
																					
																					<xsl:for-each select="VisacionXml/detLinCredDirecta/detalleLinCredDirecta">
																							<fo:table-row>
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="left">
																									<fo:block color="#444444" font-size="8px">
																										<xsl:value-of select='descAbrevProd' />
																									</fo:block>
																								</fo:table-cell>
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="left">
																									<fo:block color="#444444" font-size="8px">
																										<xsl:value-of select='montoCupoTotalAut' /> 
																									</fo:block>
																								</fo:table-cell>
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																									<fo:block color="#444444" font-size="8px">
																										<xsl:value-of select='montoDisponible' /> 
																									</fo:block>
																								</fo:table-cell>
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																									<fo:block color="#444444" font-size="8px">
																										<xsl:value-of select='fecVenc' /> 
																									</fo:block>
																								</fo:table-cell>
																							</fo:table-row>
																						</xsl:for-each>
																						
                                                                                    </fo:table-body>
                                                                                </fo:table>
                                                                    </xsl:if>
                                                                    <xsl:if test="VisacionXml/detLinCredDirecta/detLinCredDirectaCOD = 0">
                                                                        <fo:block>
                                                                            <fo:leader leader-pattern="space" />
                                                                        </fo:block>
                                                                        <fo:inline font-size="8px">Cliente no registra información de detalle.</fo:inline>
                                                                    </xsl:if>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
									
                                                    <fo:block>
                                                        <xsl:text>&#xA;</xsl:text>
                                                    </fo:block>
												
												<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                        <fo:table-column />
                                                        <fo:table-body>
                                                            <fo:table-row>
                                                                <fo:table-cell border-bottom-color="gray" border-left-color="gray" border-right-color="gray" border-top-color="gray" line-height="75%" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8px" font-weight="bold">Informe Cuenta Corriente (M$)</fo:inline>
                                                                        <fo:block>
                                                                            <xsl:text>&#xA;</xsl:text>
                                                                        </fo:block>
                                                                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                            <fo:table-column column-width="proportional-column-width(35)" />
                                                                            <fo:table-column column-width="proportional-column-width(15)" />
                                                                            <fo:table-column column-width="proportional-column-width(35)" />
                                                                            <fo:table-column column-width="proportional-column-width(15)" />
                                                                            <fo:table-body>
                                                                                <fo:table-row>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="35%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Nro. de Ctas. Ctes:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/infCuentaCrte/nroCtasCtes">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="35%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Prom. Trim. Actual:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/infCuentaCrte/saldoPromActual">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                </fo:table-row>
                                                                                <fo:table-row>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="35%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Saldo Disponible:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/infCuentaCrte/saldoDisponible">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="35%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Prom. Trim. Anterior:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/infCuentaCrte/saldoPromAnterior">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                </fo:table-row>
                                                                                <fo:table-row>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="35%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Total Depósitos Trim. Actual:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/infCuentaCrte/totalDepTrimAct">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="35%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Antigüedad:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/infCuentaCrte/fecApertura">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
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
												
												
												<xsl:if test="VisacionXml/exCliente != ''">
													<fo:block>
														<xsl:text>&#xA;</xsl:text>
													</fo:block>
                                                
													<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                        <fo:table-column />
                                                        <fo:table-body>
                                                            <fo:table-row>
                                                                <fo:table-cell border-bottom-color="gray" border-left-color="gray" border-right-color="gray" border-top-color="gray" line-height="75%" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                    <fo:block>
                                                                        <fo:inline font-size="8px" font-weight="bold">Resumen Histórico</fo:inline>
                                                                        <fo:block>
                                                                            <xsl:text>&#xA;</xsl:text>
                                                                        </fo:block>
                                                                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                            <fo:table-column column-width="proportional-column-width(75)" />
                                                                            <fo:table-column column-width="proportional-column-width(25)" />
                                                                            <fo:table-body>
                                                                                <fo:table-row>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="35%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Ex Cliente Cta. Cte. BCI:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>    
                                                                                          <fo:inline color="#444444" font-size="8px">
                                                                                            <xsl:value-of select="VisacionXml/exCliente"/>
                                                                                          </fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                  </fo:table-row>
                                                                                  <fo:table-row>  
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="35%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Cliente con Deuda Vigente BCI:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                          <fo:inline color="#444444" font-size="8px">
                                                                                            <xsl:value-of select="VisacionXml/clienteConDeuda"/>
                                                                                          </fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                </fo:table-row>
                                                                                <fo:table-row>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="35%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Registra Protestos sin Aclarar en BCI:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                          <fo:inline color="#444444" font-size="8px">
                                                                                            <xsl:value-of select="VisacionXml/protestosSinAclarar"/>
                                                                                          </fo:inline>
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
                                                 </xsl:if>
												 
														<fo:block>
															<xsl:text>&#xA;</xsl:text>
														</fo:block>
												
												<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column column-width="proportional-column-width(35)" />
                                                    <fo:table-column column-width="proportional-column-width(65)" />
                                                    <fo:table-body>
                                                        <fo:table-row>
															<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="35%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                <fo:block>
                                                                    <fo:inline color="#444444" font-size="8px" font-weight="bold">Factor de Riesgo % :</fo:inline>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell border-bottom-color="gray" border-left-color="gray" border-right-color="gray" border-top-color="gray" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="65%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                <fo:block>
                                                                    <xsl:for-each select="VisacionXml/factorRiesgo">
                                                                        <fo:inline font-size="8px">
                                                                            <xsl:apply-templates />
                                                                        </fo:inline>
                                                                    </xsl:for-each>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
												
												<fo:block>
                                                    <fo:leader leader-pattern="space" />
                                                </fo:block>

                                            </fo:block>
                                        </fo:table-cell>
										<!-- 
										*********************************************************************************************
										*********************************************************************************************
										PANEL IZQUIERDO
										*********************************************************************************************
										*********************************************************************************************
										-->
                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="before" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
												
												<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell border-bottom-color="gray" border-left-color="gray" border-right-color="gray" border-top-color="gray" line-height="75%" border-style="solid" border-width="1pt" border-color="black" display-align="before" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                                                                <fo:block>
                                                                    <fo:inline font-size="8px" font-weight="bold">Visación Bci</fo:inline>
                                                                    <fo:block>
                                                                        <xsl:text>&#xA;</xsl:text>
                                                                    </fo:block>
                                                                    <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                        <fo:table-column column-width="proportional-column-width(40)" />
                                                                        <fo:table-column column-width="proportional-column-width(10)" />
                                                                        <fo:table-column column-width="proportional-column-width(40)" />
                                                                        <fo:table-column column-width="proportional-column-width(10)" />
                                                                        <fo:table-body>
                                                                            <fo:table-row>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="40%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                    <fo:block>
                                                                                        <fo:inline color="#444444" font-size="8px">Protestos Vigentes : </fo:inline>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                    <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/visacionBCI/protestos">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="40%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                    <fo:block>
                                                                                        <fo:inline color="#444444" font-size="8px">Impedimento de Abrir Cta. Cte. :</fo:inline>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                    <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/visacionBCI/indImpeAbrirCuenta">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                            </fo:table-row>
                                                                            <fo:table-row>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="40%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                    <fo:block>
                                                                                        <fo:inline color="#444444" font-size="8px">Aclaraciones : </fo:inline>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                    <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/visacionBCI/aclaraciones">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="40%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                    <fo:block>
                                                                                        <fo:inline color="#444444" font-size="8px">Juicio Banco Central : </fo:inline>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                    <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/visacionBCI/nroInfracciones">
                                                                                                <fo:inline font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                        </xsl:for-each>
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
										
												<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell border-bottom-color="gray" border-left-color="gray" border-right-color="gray" border-top-color="gray" line-height="75%" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                <fo:block>
                                                                        <fo:inline font-size="8px" font-weight="bold">Deuda Super (M$) al </fo:inline>                                                                       
																			<xsl:for-each select="VisacionXml/deudaSuper/periodoDeuda">
																				<fo:inline font-size="8px" font-weight="bold">
																					<xsl:apply-templates />
																				</fo:inline>
																			</xsl:for-each>
                                                                        <fo:block>
                                                                            <xsl:text>&#xA;</xsl:text>
                                                                        </fo:block>
                                                                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                            <fo:table-column column-width="proportional-column-width(33)" />
                                                                            <fo:table-column column-width="proportional-column-width(17)" />
                                                                            <fo:table-column column-width="proportional-column-width(30)" />
                                                                            <fo:table-column column-width="proportional-column-width(20)" />
                                                                            <fo:table-body>
                                                                                <fo:table-row>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="33%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Directa Vigente:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/deudaSuper/directaVig">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="30%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Morosidad 30-90 días:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="20%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/deudaSuper/moroso30_90">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                </fo:table-row>
                                                                                <fo:table-row>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="33%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Directa Vencida:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/deudaSuper/directaVenc">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="30%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Indirecta Vigente:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="20%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/deudaSuper/idirectaVig">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                </fo:table-row>
                                                                                <fo:table-row>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="33%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Directa Inv. Financiera:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/deudaSuper/dirInvFinanciera">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="30%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Indirecta Vencida:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="20%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/deudaSuper/indirectaVenc">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                </fo:table-row>
                                                                                <fo:table-row>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="33%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Directa OP.Pacto:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/deudaSuper/dirOpPacto">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="30%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Indirecta Castigada:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="20%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/deudaSuper/indirectaCastigada">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                </fo:table-row>
                                                                                <fo:table-row>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="33%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Directa Castigada:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/deudaSuper/directaCastigada">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="30%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block />
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="20%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block />
                                                                                    </fo:table-cell>
                                                                                </fo:table-row>
                                                                                <fo:table-row>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="33%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Inst. en que registra Créd. Consumo:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                        <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/deudaSuper/instituciones">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="30%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                        <fo:block>
                                                                                            <fo:inline color="#444444" font-size="8px">Total Deuda Super:</fo:inline>
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                    <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" display-align="center" text-align="right" width="20%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
                                                                                        <fo:block>																								
																							<xsl:for-each select="VisacionXml/deudaSuper/totalDeudaSuper">
																								<fo:inline font-size="8px">
																									<xsl:apply-templates />
																								</fo:inline>
																							</xsl:for-each>																									
                                                                                        </fo:block>
                                                                                    </fo:table-cell>
                                                                                </fo:table-row>
                                                                            </fo:table-body>
                                                                        </fo:table>
																		
                                                                    <fo:inline font-size="8px" font-weight="bold">Detalle Evolución Deuda Super</fo:inline>

                                                                            <xsl:if test="VisacionXml/detEvDeudaSuper/detalleEvDeudaSuper/periodoDeuda  != &quot;&quot;">
                                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                    <fo:table-column column-width="proportional-column-width(32)" />
                                                                                    <xsl:for-each select="VisacionXml/detEvDeudaSuper/detalleEvDeudaSuper/periodoDeuda">
                                                                                        <fo:table-column column-width="proportional-column-width(17)" />
                                                                                    </xsl:for-each>
                                                                                    <fo:table-body>
																						
																						 <fo:table-row>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="32%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block />
                                                                                            </fo:table-cell>
																							<xsl:for-each select="VisacionXml/detEvDeudaSuper/detalleEvDeudaSuper">
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="right">
																									<fo:block color="#444444" font-size="8px" font-weight="bold">
																											<xsl:value-of select='periodoDeuda' />
																									</fo:block>
																								</fo:table-cell>
																							</xsl:for-each>																								
                                                                                        </fo:table-row>
																						
																						<fo:table-row>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="32%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px">Dir. Vigentes</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>																							
																							<xsl:for-each select="VisacionXml/detEvDeudaSuper/detalleEvDeudaSuper">
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																									<fo:block color="#444444" font-size="8px">
																											<xsl:value-of select='deudaDirVig' />
																									</fo:block>
																								</fo:table-cell>
																							</xsl:for-each>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="32%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px">Dir. Morosa</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
																							<xsl:for-each select="VisacionXml/detEvDeudaSuper/detalleEvDeudaSuper">
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																									<fo:block color="#444444" font-size="8px">
																											<xsl:value-of select='deudaMorosa' />
																									</fo:block>
																								</fo:table-cell>
																							</xsl:for-each>
																						</fo:table-row>
																						
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="32%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px">Dir. Vencida</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
																							<xsl:for-each select="VisacionXml/detEvDeudaSuper/detalleEvDeudaSuper">
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																									<fo:block color="#444444" font-size="8px">
																											<xsl:value-of select='deudaDirVenc' />
																									</fo:block>
																								</fo:table-cell>
																							</xsl:for-each>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="32%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px">Dir. Consumo / Acr</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
																							<xsl:for-each select="VisacionXml/detEvDeudaSuper/detalleEvDeudaSuper">
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																									<fo:block color="#444444" font-size="8px">
																											<xsl:value-of select='deudaCredConsumo' />
																									</fo:block>
																								</fo:table-cell>
																							</xsl:for-each>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="32%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px">Dir. Hipotecaria</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
																							<xsl:for-each select="VisacionXml/detEvDeudaSuper/detalleEvDeudaSuper">
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																									<fo:block color="#444444" font-size="8px">
																											<xsl:value-of select='deudaCredHip' />
																									</fo:block>
																								</fo:table-cell>
																							</xsl:for-each>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="32%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px">Dir. Inv. Financiera</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
																							<xsl:for-each select="VisacionXml/detEvDeudaSuper/detalleEvDeudaSuper">
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																									<fo:block color="#444444" font-size="8px">
																											<xsl:value-of select='deudaInvFin' />
																									</fo:block>
																								</fo:table-cell>
																							</xsl:for-each>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="32%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px">Dir. Ope C / Pacto</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
																							<xsl:for-each select="VisacionXml/detEvDeudaSuper/detalleEvDeudaSuper">
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																									<fo:block color="#444444" font-size="8px">
																											<xsl:value-of select='deudaOpPacto' />
																									</fo:block>
																								</fo:table-cell>
																							</xsl:for-each>
                                                                                        </fo:table-row>
																						
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="32%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px">Dir. Comercial</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
																							<xsl:for-each select="VisacionXml/detEvDeudaSuper/detalleEvDeudaSuper">
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																									<fo:block color="#444444" font-size="8px">
																											<xsl:value-of select='deudaComercial' />
																									</fo:block>
																								</fo:table-cell>
																							</xsl:for-each>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="32%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px">+Mex. Vigente</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
																							<xsl:for-each select="VisacionXml/detEvDeudaSuper/detalleEvDeudaSuper">
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																									<fo:block color="#444444" font-size="8px">
																											<xsl:value-of select='deudaComVigMonex' />
																									</fo:block>
																								</fo:table-cell>
																							</xsl:for-each>
                                                                                        </fo:table-row>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="32%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px">+Mex. Vencida</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
																							<xsl:for-each select="VisacionXml/detEvDeudaSuper/detalleEvDeudaSuper">
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																									<fo:block color="#444444" font-size="8px">
																											<xsl:value-of select='deudaComVencMonex' />
																									</fo:block>
																								</fo:table-cell>
																							</xsl:for-each>
                                                                                        </fo:table-row>
																						
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="32%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px">Ind. Vigente</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
																							<xsl:for-each select="VisacionXml/detEvDeudaSuper/detalleEvDeudaSuper">
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																									<fo:block color="#444444" font-size="8px">
																										<xsl:value-of select='deudaIndVig' />
																									</fo:block>
																								</fo:table-cell>
																							</xsl:for-each>
                                                                                        </fo:table-row>
																						
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="32%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px">Ind. Vencida</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
																							<xsl:for-each select="VisacionXml/detEvDeudaSuper/detalleEvDeudaSuper">
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																									<fo:block color="#444444" font-size="8px">
																											<xsl:value-of select='deudaIndVenc' />
																									</fo:block>
																								</fo:table-cell>
																							</xsl:for-each>
                                                                                        </fo:table-row>
																						
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="32%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px">Castigada Dir.</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
																							<xsl:for-each select="VisacionXml/detEvDeudaSuper/detalleEvDeudaSuper">
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																									<fo:block color="#444444" font-size="8px">
																											<xsl:value-of select='deudaDirCast' />
																									</fo:block>
																								</fo:table-cell>
																							</xsl:for-each>
                                                                                        </fo:table-row>
																						
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="32%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px">Castigada ind.</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
																							<xsl:for-each select="VisacionXml/detEvDeudaSuper/detalleEvDeudaSuper">
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																									<fo:block color="#444444" font-size="8px">
																											<xsl:value-of select='deudaIndCast' />
																									</fo:block>
																								</fo:table-cell>
																							</xsl:for-each>
                                                                                        </fo:table-row>
																						
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="32%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px">L. Crédito Disp. N.U.</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
																							<xsl:for-each select="VisacionXml/detEvDeudaSuper/detalleEvDeudaSuper">
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																									<fo:block color="#444444" font-size="8px">
																											<xsl:value-of select='lineaCredDisp' />
																									</fo:block>
																								</fo:table-cell>
																							</xsl:for-each>
                                                                                        </fo:table-row>
                                                                                    </fo:table-body>
                                                                                </fo:table>
                                                                            </xsl:if>
																			
																		<fo:inline font-size="8px" font-weight="bold">Detalle Evolución Deuda Super Leasing</fo:inline>
																		   <xsl:if test="VisacionXml/detEvDeudaSuperLea/detalleEvDeudaSuperLea/periodoDeuda  != &quot;&quot;">
                                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                    <fo:table-column column-width="proportional-column-width(32)" />
                                                                                    <xsl:for-each select="VisacionXml/detEvDeudaSuperLea/detalleEvDeudaSuperLea">
                                                                                        <fo:table-column column-width="proportional-column-width(17)" />
                                                                                    </xsl:for-each>
                                                                                    <fo:table-body>
																					
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="32%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block />
                                                                                            </fo:table-cell>
																							<xsl:for-each select="VisacionXml/detEvDeudaSuperLea/detalleEvDeudaSuperLea">
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="right">
																									<fo:block color="#444444" font-size="8px" font-weight="bold">
																											<xsl:value-of select='periodoDeuda' />
																									</fo:block>
																								</fo:table-cell>
																							</xsl:for-each>																								
                                                                                        </fo:table-row>
																						
																						<fo:table-row>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="32%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px">Deuda Leasing</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>																							
																							<xsl:for-each select="VisacionXml/detEvDeudaSuperLea/detalleEvDeudaSuperLea">
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																									<fo:block color="#444444" font-size="8px">
																											<xsl:value-of select='deudaLeasing' />
																									</fo:block>
																								</fo:table-cell>
																							</xsl:for-each>
                                                                                        </fo:table-row>
																						
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="32%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px">Morosa Leasing</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>																							
																							<xsl:for-each select="VisacionXml/detEvDeudaSuperLea/detalleEvDeudaSuperLea">
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="17%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																									<fo:block color="#444444" font-size="8px">
																											<xsl:value-of select='deudaMoraLeasing' />
																									</fo:block>
																								</fo:table-cell>
																							</xsl:for-each>
                                                                                        </fo:table-row>																						
                                                                                    </fo:table-body>
                                                                                </fo:table>
                                                                            </xsl:if>
                                                                    <fo:block>
                                                                        <fo:leader leader-pattern="space" />
                                                                    </fo:block>
                                                                    <fo:block>
                                                                        <xsl:text>&#xA;</xsl:text>
                                                                    </fo:block>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
												
												<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell border-bottom-color="gray" border-left-color="gray" border-right-color="gray" border-top-color="gray" line-height="75%" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                <fo:block>
                                                                    <fo:inline font-size="8px" font-weight="bold">Visación Informe Comercial</fo:inline>
                                                                    <fo:block>
                                                                        <xsl:text>&#xA;</xsl:text>
                                                                    </fo:block>
                                                                    <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                        <fo:table-column column-width="proportional-column-width(40)" />
                                                                        <fo:table-column column-width="proportional-column-width(10)" />
                                                                        <fo:table-column column-width="proportional-column-width(40)" />
                                                                        <fo:table-column column-width="proportional-column-width(10)" />
                                                                        <fo:table-body>
                                                                            <fo:table-row>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="40%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                    <fo:block>
                                                                                        <fo:inline color="#444444" font-size="8px">Protestos Vigentes :</fo:inline>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                    <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/visInfComercial/totalProtestos">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="40%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                    <fo:block>
                                                                                        <fo:inline color="#444444" font-size="8px">Infracciones Laborales :</fo:inline>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                    <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/visInfComercial/InfraccionLaboral">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                            </fo:table-row>
                                                                            <fo:table-row>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="40%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                    <fo:block>
                                                                                        <fo:inline color="#444444" font-size="8px">Protestos Históricos : </fo:inline>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                    <fo:block>
                                                                                        <xsl:for-each select="VisacionXml/visInfComercial/protHistoricos">
                                                                                            <fo:inline font-size="8px">
                                                                                                <xsl:apply-templates />
                                                                                            </fo:inline>
                                                                                        </xsl:for-each>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="40%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                    <fo:block>
                                                                                        <fo:inline color="#444444" font-size="8px">Morosos Comercio :</fo:inline>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                    <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/visInfComercial/totalDoctosImpagos">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                            </fo:table-row>
                                                                            <fo:table-row>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="40%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                    <fo:block>
                                                                                        <fo:inline color="#444444" font-size="8px">Aclaraciones : </fo:inline>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                    <fo:block>
                                                                                        <xsl:for-each select="VisacionXml/visInfComercial/totalAclarados">
                                                                                            <fo:inline font-size="8px">
                                                                                                <xsl:apply-templates />
                                                                                            </fo:inline>
                                                                                        </xsl:for-each>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="40%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                    <fo:block>
                                                                                        <fo:inline color="#444444" font-size="8px">Quiebras : </fo:inline>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                    <fo:block>
                                                                                            <xsl:for-each select="VisacionXml/visInfComercial/indQuiebra">
                                                                                                <fo:inline color="#444444" font-size="8px">
                                                                                                    <xsl:apply-templates />
                                                                                                </fo:inline>
                                                                                            </xsl:for-each>
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
										
												<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell border-bottom-color="gray" border-left-color="gray" border-right-color="gray" border-top-color="gray" line-height="75%" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                <fo:block>
                                                                    <fo:inline font-size="8px" font-weight="bold">Garantías (M$)</fo:inline>
                                                                    <fo:block>
                                                                        <xsl:text>&#xA;</xsl:text>
                                                                    </fo:block>
                                                                    <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                        <fo:table-column column-width="proportional-column-width(30)" />
                                                                        <fo:table-column column-width="proportional-column-width(20)" />
                                                                        <fo:table-column column-width="proportional-column-width(30)" />
                                                                        <fo:table-column column-width="proportional-column-width(15)" />
                                                                        <fo:table-body>
                                                                            <fo:table-row>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="30%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                    <fo:block>
                                                                                        <fo:inline color="#444444" font-size="8px">Total Comercial :</fo:inline>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="20%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                    <fo:block>
                                                                                        <xsl:for-each select="VisacionXml/garantias/totalComGarantias">
                                                                                            <fo:inline font-size="8px">
                                                                                                <xsl:apply-templates />
                                                                                            </fo:inline>
                                                                                        </xsl:for-each>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="30%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                    <fo:block>
                                                                                        <fo:inline color="#444444" font-size="8px">Total Ponderado :</fo:inline>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="15%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                    <fo:block>
                                                                                        <xsl:for-each select="VisacionXml/garantias/totalPondGarantias">
                                                                                            <fo:inline font-size="8px">
                                                                                                <xsl:apply-templates />
                                                                                            </fo:inline>
                                                                                        </xsl:for-each>
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
												<!--  DETALLE  GARANTIAS-->
												<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                    <fo:table-column />
                                                    <fo:table-body>
                                                        <fo:table-row>
                                                            <fo:table-cell border-bottom-color="gray" border-left-color="gray" border-right-color="gray" border-top-color="gray" line-height="75%" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                <fo:block>
                                                                    <fo:inline font-size="8px" font-weight="bold">Detalle Garantías (M$)</fo:inline>
                                                                    <fo:block>
                                                                        <xsl:text>&#xA;</xsl:text>
                                                                    </fo:block>
                                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                                    <fo:table-column column-width="proportional-column-width(20)" />
                                                                                    <fo:table-column column-width="proportional-column-width(20)" />
                                                                                    <fo:table-column column-width="proportional-column-width(20)" />
                                                                                    <fo:table-column column-width="proportional-column-width(20)" />
                                                                                    
                                                                                    <fo:table-header>
                                                                                        <fo:table-row>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px" font-weight="bold">Tipo Gtía</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="28%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px" font-weight="bold">Gtía</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="21%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px" font-weight="bold">Valor Tasación</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>
                                                                                            <fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="21%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                                <fo:block>
                                                                                                    <fo:inline font-size="8px" font-weight="bold">Garantías Facultades</fo:inline>
                                                                                                </fo:block>
                                                                                            </fo:table-cell>                                                                                      
                                                                                        </fo:table-row>
                                                                                    </fo:table-header>
																					
                                                                                    <fo:table-body>
																						<xsl:for-each select="VisacionXml/detGarantias/detalleGarantias">
																							<fo:table-row>
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="left">
																									<fo:block color="#444444" font-size="8px">
																										<xsl:value-of select='descGarantia' />
																									</fo:block>
																								</fo:table-cell>
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="left">
																									<fo:block color="#444444" font-size="8px">
																											<!-- -->
																											<xsl:variable name="limite">General</xsl:variable>
																												<xsl:if test="detGtia = 'G'">
																													<fo:inline color="#444444" font-size="8px">                                                                                                               
																													 <xsl:value-of select="$limite"/>
																													</fo:inline>
																												</xsl:if>
																											<xsl:variable name="limite">Ambas</xsl:variable>
																												<xsl:if test="detGtia = 'A'">																											
																													<fo:inline color="#444444" font-size="8px">
																														<xsl:value-of select="$limite"/>
																													</fo:inline>
																												</xsl:if>
																											<xsl:variable name="limite">Específico</xsl:variable>
																												<xsl:if test="detGtia = 'E'">
																													<fo:inline color="#444444" font-size="8px">
																														<xsl:value-of select="$limite"/>
																													</fo:inline>
																												</xsl:if>	
																											<!-- -->
																									</fo:block>
																								</fo:table-cell>
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="right" text-align="start">
																									<fo:block color="#444444" font-size="8px">
																										<xsl:value-of select='valorComercial' /> 
																									</fo:block>
																								</fo:table-cell>
																								<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="right" text-align="start">
																									<fo:block color="#444444" font-size="8px">
																										<xsl:value-of select='valorAjustado' /> 
																									</fo:block>
																								</fo:table-cell>
																							</fo:table-row>
																						</xsl:for-each>
                                                                                    </fo:table-body>
                                                                                </fo:table> 
																</fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
							
							
							
							<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
								<fo:table-column />
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell border-bottom-color="gray" border-left-color="gray" border-right-color="gray" border-top-color="gray" line-height="75%" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
											<fo:block>
												<fo:inline font-size="8px" font-weight="bold">Relación Deuda Garantías $</fo:inline>
												<fo:block>
													<xsl:text>&#xA;</xsl:text>
												</fo:block>
												<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
													<fo:table-column column-width="proportional-column-width(23)" />
													<fo:table-column column-width="proportional-column-width(10)" />
													<fo:table-column column-width="proportional-column-width(23)" />
													<fo:table-column column-width="proportional-column-width(10)" />
													<fo:table-column column-width="proportional-column-width(24)" />
													<fo:table-column column-width="proportional-column-width(10)" />
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="23%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																<fo:block>
																	<fo:inline color="#444444" font-size="8px">Total Ponderado :</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																<fo:block>
																	<xsl:for-each select="VisacionXml/rdg/totalPondGarantias">
																		<fo:inline color="#444444" font-size="8px">
																			<xsl:apply-templates />
																		</fo:inline>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="23%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																<fo:block>
																	<fo:inline color="#444444" font-size="8px">Deuda Total :</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																<fo:block>
																		<xsl:for-each select="VisacionXml/rdg/deudaTotalBCI">
																			<fo:inline color="#444444" font-size="8px">
																				<xsl:apply-templates />
																			</fo:inline>
																		</xsl:for-each>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="24%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																<fo:block>
																	<fo:inline color="#444444" font-size="8px">Diferencia (Favor/Contra) :</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" text-align="right" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																<fo:block>
																	<xsl:for-each select="VisacionXml/rdg/totalPondGarantiasDiferencia">
																		<fo:inline color="#444444" font-size="8px">
																			<xsl:apply-templates />
																		</fo:inline>
																	</xsl:for-each>
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
							
							
						<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
							<fo:table-column />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-bottom-color="gray" border-left-color="gray" border-right-color="gray" border-top-color="gray" line-height="75%" border-style="solid" border-width="1pt" border-color="black" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
										<fo:block>
											<fo:inline font-size="8px" font-weight="bold">Detalle Protestos Vigentes</fo:inline>
											<xsl:if test="VisacionXml/detProtVig/existeDetalle=  &quot;S&quot;">
												<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
													<fo:table-column column-width="proportional-column-width(11)" />
													<fo:table-column column-width="proportional-column-width(10)" />
													<fo:table-column column-width="proportional-column-width(10)" />
													<fo:table-column column-width="proportional-column-width(5)" />
													<fo:table-column column-width="proportional-column-width(8)" />
													<fo:table-column column-width="proportional-column-width(10)" />
													<fo:table-column column-width="proportional-column-width(7)" />
													<fo:table-column column-width="proportional-column-width(13)" />
													<fo:table-column column-width="proportional-column-width(10)" />
													<fo:table-column column-width="proportional-column-width(5)" />
													<fo:table-column column-width="proportional-column-width(11)" />
													<fo:table-header>
														<fo:table-row>
															<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="11%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																<fo:block>
																	<fo:inline font-size="8px" font-weight="bold">Nº Pág.</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																<fo:block>
																	<fo:inline font-size="8px" font-weight="bold">Fecha Bol. Comp.</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																<fo:block>
																	<fo:inline font-size="8px" font-weight="bold">Fecha Venc.</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="5%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																<fo:block>
																	<fo:inline font-size="8px" font-weight="bold">Tipo Doc.</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="8%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																<fo:block>
																	<fo:inline font-size="8px" font-weight="bold">Moneda</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																<fo:block>
																	<fo:inline font-size="8px" font-weight="bold">Monto</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="7%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																<fo:block>
																	<fo:inline font-size="8px" font-weight="bold">Motivo</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="13%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																<fo:block>
																	<fo:inline font-size="8px" font-weight="bold">Localidad</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="10%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																<fo:block>
																	<fo:inline font-size="8px" font-weight="bold">Notaria</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="5%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																<fo:block>
																	<fo:inline font-size="8px" font-weight="bold">Nº Oper.</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="11%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																<fo:block>
																	<fo:inline font-size="8px" font-weight="bold">Librador</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-header>
													<fo:table-body>													
													
														<xsl:for-each select="VisacionXml/detProtVig/detalleProtVig">
															<fo:table-row>
																<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="left">
																	<fo:block color="#444444" font-size="8px">
																		<xsl:value-of select='nropag' />
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																	<fo:block color="#444444" font-size="8px">
																		<xsl:value-of select='fecBoletinComercial' /> 
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
																	<fo:block color="#444444" font-size="8px">
																		<xsl:value-of select='fecVenc' /> 
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="right">
																	<fo:block color="#444444" font-size="8px">
																		<xsl:value-of select='tipoDocto' />
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="right">
																	<fo:block color="#444444" font-size="8px">
																		<xsl:value-of select='tipoMoneda' />
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="right">
																	<fo:block color="#444444" font-size="8px">
																		<xsl:value-of select='monto' />
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="right">
																	<fo:block color="#444444" font-size="8px">
																		<xsl:value-of select='motivo' />
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="right">
																	<fo:block color="#444444" font-size="8px">
																		<xsl:value-of select='localidad' />
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="right">
																	<fo:block color="#444444" font-size="8px">
																		<xsl:value-of select='notaria' />
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="right">
																	<fo:block color="#444444" font-size="8px">
																		<xsl:value-of select='nroOperacion' />
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell border-bottom-color="#C0C0C0" border-left-color="#C0C0C0" border-right-color="#C0C0C0" border-top-color="#C0C0C0" line-height="75%" border-style="solid" border-width="1pt" border-color="black" width="34%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="right">
																	<fo:block color="#444444" font-size="8px">
																		<xsl:value-of select='bancoLibrador' />
																	</fo:block>
																</fo:table-cell>
															</fo:table-row>
														</xsl:for-each>
													</fo:table-body>
												</fo:table>
											</xsl:if>
											<xsl:if test="VisacionXml/detProtVig/existeDetalle = &quot;N&quot;">
												<fo:inline font-size="8px">&#160;</fo:inline>
												<fo:block>
													<fo:leader leader-pattern="space" />
												</fo:block>
												<fo:inline font-size="8px">Cliente no registra protestos vigentes.</fo:inline>
											</xsl:if>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
							

                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
