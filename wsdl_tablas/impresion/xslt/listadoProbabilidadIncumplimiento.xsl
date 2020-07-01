<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<xsl:variable name="alto-filas">5mm</xsl:variable>
	<xsl:variable name="espacio-subtitulos">2mm</xsl:variable>
	<xsl:variable name="borde-tabla">#CCCCCC</xsl:variable>
	<xsl:variable name="espacio-texto-celda-left">2mm</xsl:variable>
	<xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
	<xsl:variable name="espacio-celda-top">2mm</xsl:variable>
	<xsl:variable name="size-fuente-margen">7pt</xsl:variable>
	<xsl:decimal-format name="peso" decimal-separator="," grouping-separator="."/>
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina" page-height="28cm" page-width="22cm" margin-top="1cm" margin-bottom="1cm" margin-left="2cm" margin-right="2cm">
					<fo:region-body margin-top="2.5cm" margin-bottom="2.5cm" background-color="#ffffff"/>
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
				<fo:static-content flow-name="xsl-region-before">
					<fo:block space-after="3mm">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="13cm"/>
							<fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src">
												<xsl:value-of select="Info/RutaImagen"/>02-logo-bci.gif</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:call-template name="formato-fecha">
												<xsl:with-param name="texto" select="Info/FechaImpresion"/>
											</xsl:call-template>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block space-after="2mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
					</fo:block>
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after">
					<fo:block space-after="1mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
					</fo:block>
					<fo:block font-size="9pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">Para Consultas o Comentarios Comuníquese al 600 6928000</fo:block>
					<fo:block font-size="5pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Página <fo:page-number/></fo:block>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<xsl:call-template name="contenido"/>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
	<xsl:template name="contenido">
		<fo:block font-size="5pt" space-after="1mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="11cm"/>
				<fo:table-column column-width="7cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}"></fo:inline>
								<fo:inline color="{$txt-azul-claro}">
									<xsl:value-of select="Info/Cliente/Nombre"/>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
								<fo:inline color="{$txt}">RUT:</fo:inline>
								<fo:inline color="{$txt-azul-claro}">
									<xsl:value-of select="Info/Cliente/Rut"/>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="18cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">Probabilidad Incumplimientos (PI)</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<fo:block>
			<fo:table table-layout="fixed" space-before="3mm">
				<fo:table-column column-width="10"/>
				<fo:table-column column-width="10"/>
				<fo:table-column column-width="10"/>
				<fo:table-column column-width="10"/>
                <xsl:if test="1>count(Info/RiesgoCliente/RiesgoCliente)">
                    
<fo:table-column column-width="10"/>
                </xsl:if>
				<fo:table-body>
				    <xsl:if test="count(Info/RiesgoCliente/RiesgoCliente)>0">
                        <fo:table-row>
                            <xsl:call-template name="celda-cabecera">
                                <xsl:with-param name="texto" select="'Fecha de Cálculo'"/>
                            </xsl:call-template>
                            <xsl:call-template name="celda-cabecera">
                                <xsl:with-param name="texto" select="'PI (%)'"/>
                            </xsl:call-template>
                            <xsl:call-template name="celda-cabecera">
                                <xsl:with-param name="texto" select="'PE BCI (%)'"/>
                            </xsl:call-template>
                            <xsl:call-template name="celda-cabecera">
                                <xsl:with-param name="texto" select="'PE Leasing (%)'"/>
                            </xsl:call-template>
                        </fo:table-row>
                        <xsl:for-each select="Info/RiesgoCliente/RiesgoCliente">
                            <fo:table-row>
                                <xsl:call-template name="celda">
                                    <xsl:with-param name="texto">
                                        <xsl:call-template name="formato-fecha">
                                            <xsl:with-param name="texto" select="Fecha"/>
                                        </xsl:call-template>
                                    </xsl:with-param>
                                </xsl:call-template>
                                <xsl:call-template name="celda">
                                    <xsl:with-param name="texto" select="PI"/>
                                </xsl:call-template>
                                <xsl:call-template name="celda">
                                    <xsl:with-param name="texto" select="PPEBCI"/>
                                </xsl:call-template>
                                <xsl:call-template name="celda">
                                    <xsl:with-param name="texto" select="PPELeasing"/>
                                </xsl:call-template>
                            </fo:table-row>
                        </xsl:for-each>
                    </xsl:if>
                    
                    <xsl:if test="1>count(Info/RiesgoCliente/RiesgoCliente)">
						<fo:table-row>
							<xsl:call-template name="celda-cabecera">
								<xsl:with-param name="texto" select="'Fecha Balance'"/>
							</xsl:call-template>
							<xsl:call-template name="celda-cabecera">
								<xsl:with-param name="texto" select="'Tipo'"/>
							</xsl:call-template>
							<xsl:call-template name="celda-cabecera">
								<xsl:with-param name="texto" select="'Balance'"/>
							</xsl:call-template>
							<xsl:call-template name="celda-cabecera">
								<xsl:with-param name="texto" select="'Pl(%) 1 año'"/>
							</xsl:call-template>
							<xsl:call-template name="celda-cabecera">
								<xsl:with-param name="texto" select="'Pl(%) 5 año'"/>
							</xsl:call-template>
						</fo:table-row>
						<xsl:for-each select="Info/ProbabilidadesDeIncumplimiento/ProbabilidadDeIncumpliento">
							<fo:table-row>
								<xsl:call-template name="celda-izq">
									<xsl:with-param name="texto">
										<xsl:call-template name="formato-fecha">
											<xsl:with-param name="texto" select="FecProbalidadIncumplimiento"/>
										</xsl:call-template>
									</xsl:with-param>
								</xsl:call-template>
								<xsl:call-template name="celda-izq">
									<xsl:with-param name="texto" select="GloTipo"/>
								</xsl:call-template>
								<xsl:call-template name="celda">
									<xsl:with-param name="texto" select="GloSubTipo"/>
								</xsl:call-template>
								<xsl:call-template name="celda">
									<xsl:with-param name="texto" select="ValorPsvVpi"/>
								</xsl:call-template>
								<xsl:call-template name="celda">
									<xsl:with-param name="texto" select="ValorYr5Idd"/>
								</xsl:call-template>
							</fo:table-row>
					   </xsl:for-each>
				    </xsl:if>
				</fo:table-body>
			</fo:table>

            <xsl:if test="1>count(Info/RiesgoCliente/RiesgoCliente)">
				<xsl:call-template name="subTitulo">
					<xsl:with-param name="titulo" select="'PI Proporcional a Calificación'"/>
				</xsl:call-template>
				<fo:table table-layout="fixed" space-before="3mm">
					<fo:table-column column-width="3.5cm"/>
					<fo:table-column column-width="3.5cm"/>
					<fo:table-column column-width="3.5cm"/>
					<fo:table-column column-width="3.5cm"/>
					<fo:table-body>
	
						<xsl:for-each select="Info/TablaEquivalencia/Titulos">
							<fo:table-row>
								<xsl:call-template name="celda-cabecera">
									<xsl:with-param name="texto" select="Tit1"/>
								
</xsl:call-template>
								
								<xsl:call-template name="celda-cabecera">
									<xsl:with-param name="texto" select="Tit2"/>
								</xsl:call-template>
								
								
								<xsl:call-template name="celda-cabecera">
									<xsl:with-param name="texto" select="Tit3"/>
								</xsl:call-template>
								
								
								
<xsl:call-template name="celda-cabecera">
									<xsl:with-param name="texto" select="Tit4"/>
								</xsl:call-template>
							</fo:table-row>
						</xsl:for-each>		
						
						
						
<xsl:for-each select="Info/TablaEquivalencia/DetalleTabla">
							<fo:table-row>
								<xsl:call-template name="celda-cen">
									<xsl:with-param name="texto" select="Det1"/>
								</xsl:call-template>
								
								<xsl:call-template name="celda-cen">
									<xsl:with-param name="texto" select="Det2"/>
								</xsl:call-template>
								
<xsl:call-template name="celda-cen">
									<xsl:with-param name="texto" select="Det3"/>
								</xsl:call-template>
								<xsl:call-template name="celda-cen">
									<xsl:with-param name="texto" select="Det4"/>
								</xsl:call-template>
							</fo:table-row>
						</xsl:for-each>					
	
						
					</fo:table-body>
				
</fo:table>
            </xsl:if>
			
			
		</fo:block>


	</xsl:template>
	<xsl:template name="subTitulo">
		<xsl:param name="titulo"/>
		<xsl:param name="fecha"/>
		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" space-before="5mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm"/>
				<fo:table-column column-width="8cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src">
									<xsl:value-of select="Info/RutaImagen"/>01-bullet2-rj.gif</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								<xsl:value-of select="$titulo"/>
								<xsl:if test="$fecha != ''">
									<xsl:value-of select="$fecha"/>
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<xsl:template name="itemTitulo">
		<xsl:param name="titulo"/>
		<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.5cm"/>
				<fo:table-column column-width="8cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-left="2mm" padding-before="1mm">
							<fo:external-graphic height="1mm" width="1mm">
								<xsl:attribute name="src">
									<xsl:value-of select="/Info/RutaImagen"/>01-bullet1-rj.gif</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								<xsl:value-of select="$titulo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<xsl:template name="vineta-roja">
		<xsl:param name="texto"/>
		<fo:block>
			<fo:external-graphic width="1mm" height="1mm">
				<xsl:attribute name="src">
					<xsl:value-of select="/Info/RutaImagen"/>01-bullet1-rj.gif</xsl:attribute>
			</fo:external-graphic>
			<fo:leader leader-length="2mm"/>
			<xsl:value-of select="$texto"/>
		</fo:block>
	</xsl:template>
	<xsl:template name="celda">
		<xsl:param name="texto"/>
		<fo:table-cell border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid" border-left-width="thin"
		               border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
			<fo:block font-size="8pt" font-weight="normal" text-align="right" space-before="{$espacio-texto-celda-top}">
				<fo:inline>
					<xsl:value-of select="$texto"/>
				</fo:inline>
			</fo:block>
		</fo:table-cell>
	</xsl:template>
	
		<xsl:template name="celda-cen">
		<xsl:param name="texto"/>
		<fo:table-cell border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid" border-left-width="thin"
		               border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
			<fo:block font-size="8pt" font-weight="normal" text-align="center" space-before="{$espacio-texto-celda-top}">
				<fo:inline>
					<xsl:value-of select="$texto"/>
				</fo:inline>
			</fo:block>
		</fo:table-cell>
	</xsl:template>
	
	
	
	
	
	<xsl:template name="celda-izq">
		<xsl:param name="texto"/>
		<fo:table-cell border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid" border-left-width="thin"
		               border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
			<fo:block font-size="8pt" font-weight="normal" text-align="left" space-before="{$espacio-texto-celda-top}">
				<fo:inline>
					<xsl:value-of select="$texto"/>
				</fo:inline>
			</fo:block>
		</fo:table-cell>
	</xsl:template>
	
	<xsl:template name="celda-cabecera">
		<xsl:param name="texto"/>
		<fo:table-cell background-color="{$bgcolor}" border-top-style="solid" border-top-width="thin" border-top-color="{$borde-tabla}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$borde-tabla}" border-left-style="solid"
		               border-left-width="thin" border-left-color="{$borde-tabla}" border-right-style="solid" border-right-width="thin" border-right-color="{$borde-tabla}">
			<fo:block text-align="center" font-weight="bold" font-size="9pt" space-before="{$espacio-texto-celda-top}">
				<fo:inline color="{$txt-azul-claro}">
					<xsl:value-of select="$texto"/>
				</fo:inline>
			</fo:block>
		</fo:table-cell>
	</xsl:template>
	
	
	
	<xsl:template name="formato-fecha">
		<xsl:param name="texto"/>
		<xsl:value-of select="translate(substring (string($texto),1,10), '/', '/')"/>
	</xsl:template>
	<xsl:template name="formato-fecha-hora">
		<xsl:param name="texto"/>
		<xsl:value-of select="translate(translate($texto , '/', '.'), 'T', ' ')"/>
	</xsl:template>
</xsl:stylesheet>