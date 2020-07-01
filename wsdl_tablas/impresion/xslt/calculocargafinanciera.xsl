<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
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
	<xsl:decimal-format name="peso" decimal-separator="." grouping-separator="."/>
	<!-- Variables -->
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina" page-height="28cm" page-width="22cm" margin-top="1cm" margin-bottom="1cm" margin-left="2cm" margin-right="2cm">
					<fo:region-body margin-top="2.5cm" margin-bottom="2.5cm" background-color="#ffffff"/>
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Propiedades pagina -->
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
				<fo:static-content flow-name="xsl-region-before">
					<!-- imagen bci -->
					<fo:block space-after="3mm">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="13cm"/>
							<fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src"><xsl:value-of select="info/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="info/fechaImpresion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- imagen bci -->
					<!-- Separador -->
					<fo:block space-after="2mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
					</fo:block>
					<!-- Separador -->
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after">
					<!-- Separador -->
					<fo:block space-after="1mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
					</fo:block>
					<!-- Separador -->
					<fo:block font-size="9pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">
						Para Consultas o Comentarios Comuníquese al 600 6928000
					</fo:block>
					<fo:block font-size="5pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
						Pagina <fo:page-number/>
					</fo:block>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<xsl:call-template name="contenido"/>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
	
	<xsl:template name="contenido">
		<!-- cabecera cliente -->		
		<fo:block font-size="5pt" space-after="1mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="11cm"/>
				<fo:table-column column-width="7cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt-azul-claro}">
									<xsl:value-of select="info/cliente/nombre"/>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
								<fo:inline color="{$txt}">RUT: </fo:inline>
								<fo:inline color="{$txt-azul-claro}">
									<xsl:value-of select="info/cliente/rut"/>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- cabecera cliente -->
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->			
		<!-- cabecera ejecutivo -->
		<fo:block font-size="5pt" space-after="1mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="11cm"/>
				<fo:table-column column-width="7cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}">Ejecutivo: </fo:inline>
								<fo:inline color="{$txt-azul-claro}">
									<xsl:value-of select="/info/colaborador/nombre"/>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}">Oficina: </fo:inline>
								<fo:inline color="{$txt-azul-claro}">
									<xsl:value-of select="/info/colaborador/oficina"/>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- cabecera ejecutivo -->	
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		<!-- Titulo Modulo -->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="18cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								Cálculo Carga Financiera								
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Titulo Modulo -->
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="12.5cm"/>
				<fo:table-column column-width="5mm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="8pt" font-weight="bold" text-align="left">
								<xsl:call-template name="subTitulo">
									<xsl:with-param name="titulo" select="'Renta Líquida Mensual (Sólo incluir rentas regulares)'"/>
								</xsl:call-template>							
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
						<fo:table-cell></fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="8pt" font-weight="bold" text-align="left" space-after="5mm">
								<xsl:call-template name="subTitulo">
									<xsl:with-param name="titulo" select="/info/periodo"/>
								</xsl:call-template>							
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>		
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="2.5cm"/>
				<fo:table-column column-width="2.5cm"/>
				<fo:table-column column-width="2.5cm"/>
				<fo:table-column column-width="2.5cm"/>
				<fo:table-column column-width="2.5cm"/>
				<fo:table-column column-width="5mm"/>
				<fo:table-column column-width="2.5cm"/>
				<fo:table-column column-width="2.5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline color="{$txt}">Renta Fija M$</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline color="{$txt}">Renta Var. M$</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline color="{$txt}">RLM M$</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline color="{$txt}">RLM UF</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline color="{$txt}">UF al </fo:inline>
								<fo:inline><xsl:value-of select="/info/fechaActual"/></fo:inline>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell>							
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline color="{$txt}">Consumo M$</fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">								
								<fo:inline><xsl:value-of select="/info/sbif/consumo"/></fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">								
								<fo:inline><xsl:value-of select="/info/renta/rentaFija"/></fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">								
								<fo:inline><xsl:value-of select="/info/renta/rentaVariable"/></fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">								
								<fo:inline><xsl:value-of select="/info/renta/rentaLMPesos"/></fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">								
								<fo:inline><xsl:value-of select="/info/renta/rentaLMUF"/></fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">								
								<fo:inline><xsl:value-of select="/info/renta/uf"/></fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell></fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline color="{$txt}">Comercial M$</fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">								
								<fo:inline><xsl:value-of select="/info/sbif/comercial"/></fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>			
				</fo:table-body>
			 </fo:table>
		</fo:block>
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="12.5cm"/>
				<fo:table-column column-width="5mm"/>
				<fo:table-column column-width="2.5cm"/>
				<fo:table-column column-width="2.5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="8pt" font-weight="bold" text-align="left">
								<xsl:call-template name="subTitulo">
									<xsl:with-param name="titulo" select="'Tipo Cálculo a realizar'"/>
								</xsl:call-template>							
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
						<fo:table-cell></fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline color="{$txt}">Hipotecaria M$</fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">								
								<fo:inline><xsl:value-of select="/info/sbif/hipotecario"/></fo:inline>
							</fo:block>
						</fo:table-cell>						
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>		
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="6.5cm"/>
				<fo:table-column column-width="6cm"/>
				<fo:table-column column-width="5.5cm"/>				
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/opcion"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/carga/calculoCargaFinanciera"/></fo:inline>								
							</fo:block>
						</fo:table-cell>	
						<fo:table-cell></fo:table-cell>			
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="12.5cm"/>
				<fo:table-column column-width="5mm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="8pt" font-weight="bold" text-align="left">
								<xsl:call-template name="subTitulo">
									<xsl:with-param name="titulo" select="'Deuda/Carga Financiera Actual'"/>
								</xsl:call-template>							
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
						<fo:table-cell></fo:table-cell>						
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="8pt" font-weight="bold" text-align="left">
								<xsl:call-template name="subTitulo">
									<xsl:with-param name="titulo" select="'Deuda/Carga Futura'"/>
								</xsl:call-template>							
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>					
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="2.5cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="5mm" />
				<fo:table-column column-width="2.5cm" />
				<fo:table-column column-width="2.5cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell></fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline color="{$txt}">Deuda BCI M$</fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline color="{$txt}">Dda. Sist. Fin. No BCI M$</fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline color="{$txt}">Deuda Total M$</fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline color="{$txt}">Carga Mensual M$</fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline color="{$txt}">Conoce Carga Real</fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell></fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline color="{$txt}">Incremento Deuda/Cupo</fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline color="{$txt}">Inc. Carga Mensual M$</fo:inline>								
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}">Cupo Línea Crédito</fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/lineaCredito/bciLineaCredito"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/lineaCredito/noBciLineaCredito"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/lineaCredito/totalLineaCredito"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/lineaCredito/mensualLineaCredito"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/lineaCredito/cargaReal"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell></fo:table-cell>
						
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/lineaCreditoFutura/incDeudaLineaCredito"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/lineaCreditoFutura/incCargaLineaCredito"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}">Cupo Tarjeta Crédito</fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/tarjetaCredito/bciTarjetaCredito"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/tarjetaCredito/noBciTarjetaCredito"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/tarjetaCredito/totalTarjetaCredito"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/tarjetaCredito/mensualTarjetaCredito"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/tarjetaCredito/cargaReal"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell></fo:table-cell>
						
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/tarjetaCreditoFutura/incDeudaTarjetaCredito"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/tarjetaCreditoFutura/incCargaTarjetaCredito"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}">Créditos de Consumo</fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/creditoConsumo/bciCreditoConsumo"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/creditoConsumo/noBciCreditoConsumo"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/creditoConsumo/totalCreditoConsumo"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/creditoConsumo/mensualCreditoConsumo"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/creditoConsumo/cargaReal"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell></fo:table-cell>
						
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/creditoConsumoFutura/incDeudaCreditoConsumo"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/creditoConsumoFutura/incCargaCreditoConsumo"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}">Créditos Hipotecarios</fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/creditoHipotecario/bciCreditoHipotecario"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/creditoHipotecario/noBciCreditoHipotecario"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/creditoHipotecario/totalCreditoHipotecario"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/creditoHipotecario/mensualCreditoHipotecario"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/creditoHipotecario/cargaReal"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell></fo:table-cell>
						
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/creditoHipotecarioFutura/incDeudaCreditoHipotecario"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/creditoHipotecarioFutura/incCargaCreditoHipotecario"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}">Créditos Corto Plazo</fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/creditoCortoPlazo/bciCreditoCortoPlazo"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/creditoCortoPlazo/noBciCreditoCortoPlazo"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/creditoCortoPlazo/totalCreditoCortoPlazo"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/creditoCortoPlazo/mensualCreditoCortoPlazo"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/creditoCortoPlazo/cargaReal"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell></fo:table-cell>
						
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/creditoCortoPlazoFutura/incDeudaCreditoCortoPlazo"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/creditoCortoPlazoFutura/incCargaCreditoCortoPlazo"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}">Otros</fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/otros/bciOtros"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/otros/noBciOtros"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/otros/totalOtros"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/otros/mensualOtros"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell></fo:table-cell>						
						<fo:table-cell></fo:table-cell>
						
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/otrosFutura/incDeudaOtros"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/otrosFutura/incCargaOtros"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}">Arriendo</fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell></fo:table-cell>
						<fo:table-cell></fo:table-cell>
						<fo:table-cell></fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/arriendo/mensualArriendo"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell></fo:table-cell>						
						<fo:table-cell></fo:table-cell>
						
						<fo:table-cell></fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/arriendoFutura/incCargaArriendo"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}">Total</fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/total/bciTotal"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/total/noBciTotal"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/total/totalTotal"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/total/mensualTotal"/></fo:inline>								
							</fo:block>							
						</fo:table-cell>
						
						<fo:table-cell></fo:table-cell>						
						<fo:table-cell></fo:table-cell>
						
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/totalFutura/incDeudaTotal"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline><xsl:value-of select="/info/totalFutura/incCargaTotal"/></fo:inline>								
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
				</fo:table-body>
			</fo:table>
		</fo:block>		
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="6cm"/>
				<fo:table-column column-width="6cm"/>
				<fo:table-column column-width="6cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline>Carga Máxima: </fo:inline>
								<fo:inline><xsl:value-of select="/info/carga/cargaMaxima"/></fo:inline>	
								<fo:inline>%</fo:inline>							
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline>Carga Actual: </fo:inline>
								<fo:inline><xsl:value-of select="/info/carga/cargaActual"/></fo:inline>	
								<fo:inline>%</fo:inline>							
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">
								<fo:inline>Carga Futura: </fo:inline>
								<fo:inline><xsl:value-of select="/info/carga/cargaFutura"/></fo:inline>	
								<fo:inline>%</fo:inline>							
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->	
	</xsl:template>

	<xsl:template name="subTitulo">
		<xsl:param name="titulo"/>
		<xsl:param name="fecha"/>
		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm"/>
				<fo:table-column column-width="8cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src"><xsl:value-of select="/info/rutaImagen"/>01-bullet2-rj.gif
								</xsl:attribute>
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
								<xsl:attribute name="src"><xsl:value-of select="/info/rutaImagen"/>01-bullet1-rj.gif
								</xsl:attribute>
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
</xsl:stylesheet>