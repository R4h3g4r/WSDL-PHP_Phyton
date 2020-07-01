<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bgcolor">#F4F4F4</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<xsl:variable name="borde-amarillo">#FEE325</xsl:variable>
	<xsl:variable name="alto-filas">5mm</xsl:variable>
	<xsl:variable name="espacio-subtitulos">2mm</xsl:variable>
	<xsl:variable name="borde-tabla">#CCCCCC</xsl:variable>
	<xsl:variable name="espacio-texto-celda-left">2mm</xsl:variable>
	<xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
	<xsl:variable name="espacio-celda-top">2mm</xsl:variable>
	<xsl:variable name="size-fuente-margen">9pt</xsl:variable>
	<xsl:decimal-format name="peso" decimal-separator="," grouping-separator="."/>

	<!-- Variables -->
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina"
					page-height="28cm"
					page-width="22cm"
					margin-top="1cm"
					margin-bottom="1cm"
					margin-left="2cm"
					margin-right="2cm">
					<fo:region-body margin-top="2cm" margin-bottom="2.5cm" background-color="#ffffff"/> 
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Propiedades pagina -->
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
				<fo:static-content flow-name="xsl-region-before">
					<!-- imagen bci -->
					<fo:block space-after="2mm">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="13cm"/>
							<fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src">
												<xsl:value-of select="cobranza/rutaImagen"/>02-logo-bci.gif												
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="cobranza/fechaImpresion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- imagen bci -->
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
				<fo:table-column column-width="13cm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- nombre cliente -->
							<fo:block font-size="10pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="cobranza/nombre"/>
							</fo:block>
							<!-- nombre cliente -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- rut cliente -->
							<fo:block font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">
								<fo:inline color="{$txt}">RUT: </fo:inline>
								<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="format-number(cobranza/rut, '#.##0;', 'peso')"/>-<xsl:value-of select="cobranza/dv"/></fo:inline>
							</fo:block>
							<!-- rut cliente -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- cabecera cliente -->

		<!-- Separador -->
		<fo:block space-after="2mm">
			
		</fo:block>
		<!-- Separador -->

		<!-- Titulo Modulo -->
		<fo:block>
			<fo:table table-layout="fixed"  border-color="{$lineas}" border-style="solid"
				border-before-width="0pt"
				border-after-width="1pt"
            	border-start-width="0pt"
				border-end-width="0pt">
				<fo:table-column column-width="18cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell >
							<!-- titulo -->
							<fo:block font-size="16pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								Gestiones de Cobranza
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Titulo Modulo -->
		
		<fo:block space-after="0mm">
		</fo:block>

		<fo:block space-before="1.5mm" >
			<fo:table table-layout="fixed">
				<fo:table-column column-width="2.5cm"/>
				<fo:table-column column-width="2.5cm"/>
				<fo:table-column column-width="2.5cm"/>
				<fo:table-column column-width="1.5cm" />
				<fo:table-column column-width="1.4cm"/>
				<fo:table-column/>
				<fo:table-column column-width="2.5cm"/>
				<fo:table-body>
					<fo:table-row display-align="center">
						<fo:table-cell border-color="{$lineas}" border-style="solid"
						margin-left="2.0px"
						border-before-width="0.25pt"
						border-after-width="0.25pt"
		          		border-start-width="0.25pt"
						border-end-width="0.25pt" >
						 <fo:block font-size="8pt" font-weight="bold" text-align="center" 
						 space-after="0.5mm"
						 space-before="0.5mm"
						 color="{$txt-azul-claro}">																		 
						 Acción Cobranza
						</fo:block>
						</fo:table-cell>
						<fo:table-cell border-color="{$lineas}" border-style="solid" 
						margin-left="2.0px"
						border-before-width="0.25pt"
						border-after-width="0.25pt"
		          		border-start-width="0pt"
						border-end-width="0.25pt">
							 <fo:block font-size="8pt" font-weight="bold" text-align="center" 
							 space-after="0.5mm"
							 space-before="0.5mm"
							 color="{$txt-azul-claro}">																		 
							     Contacto Gestión
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-color="{$lineas}" border-style="solid" 
						margin-left="2.0px"
						border-before-width="0.25pt"
						border-after-width="0.25pt"
		          		border-start-width="0pt"
						border-end-width="0.25pt">
						 <fo:block font-size="8pt" font-weight="bold" text-align="center" 
						 space-after="0.5mm"
						 space-before="0.5mm"
						 color="{$txt-azul-claro}">																		 
						 	Respuesta Gestión
						</fo:block>
						</fo:table-cell>
						<fo:table-cell border-color="{$lineas}" border-style="solid" 
						margin-left="2.0px"
						border-before-width="0.25pt"
						border-after-width="0.25pt"
		          		border-start-width="0pt"
						border-end-width="0.25pt">
						 <fo:block font-size="8pt" font-weight="bold" text-align="center" 
						 space-after="0.5mm"
						 space-before="0.5mm"
						 color="{$txt-azul-claro}">																		 
						  Fecha Gestión
						</fo:block>
						</fo:table-cell>
						<fo:table-cell border-color="{$lineas}" border-style="solid" 
						margin-left="2.0px"
						border-before-width="0.25pt"
						border-after-width="0.25pt"
		          						border-start-width="0.25pt"
						border-end-width="0.25pt">
						 <fo:block font-size="8pt" font-weight="bold" text-align="center"  
						 space-after="0.5mm"
						 space-before="0.5mm"
						 color="{$txt-azul-claro}">																		 
						 Hora Gestión
						</fo:block>
						</fo:table-cell>
						<fo:table-cell border-color="{$lineas}" border-style="solid" 
						margin-left="2.0px"
						border-before-width="0.25pt"
						border-after-width="0.25pt"
		          		border-start-width="0pt"
						border-end-width="0.25pt">
							 <fo:block font-size="8pt" font-weight="bold" text-align="center" 
							 space-after="0.5mm"
							 space-before="0.5mm"
							 color="{$txt-azul-claro}">																		 
							     Glosa Gestión
							</fo:block>
							</fo:table-cell>
						<fo:table-cell border-color="{$lineas}" border-style="solid" 
						margin-left="2.0px"
						border-before-width="0.25pt"
						border-after-width="0.25pt"
		          		border-start-width="0pt"
						border-end-width="0.25pt">
						 <fo:block font-size="8pt" font-weight="bold" text-align="center" 
						 space-after="0.5mm"
						 space-before="0.5mm"
						 color="{$txt-azul-claro}">																		 
						 Agente
						</fo:block>
						</fo:table-cell>
						
						
					</fo:table-row>
					
					<xsl:for-each select="cobranza/lista-gestion">					
						<fo:table-row display-align="center">
							<fo:table-cell border-color="{$lineas}" border-style="solid"
							margin-left="2.0px"
							border-before-width="0.25pt"
							border-after-width="0.25pt"
			          		border-start-width="0.25pt"
							border-end-width="0.25pt">
							 <fo:block font-size="7pt" font-weight="normal" text-align="center"
							 space-after="0.5mm"
							 space-before="0.5mm">																		 
							 	<xsl:value-of select="accion"/>
							</fo:block>
							</fo:table-cell>
							<fo:table-cell border-color="{$lineas}" border-style="solid" 
							margin-left="2.0px"
							border-before-width="0.25pt"
							border-after-width="0.25pt"
			          		border-start-width="0pt"
							border-end-width="0.25pt">
								 <fo:block font-size="7pt" font-weight="normal" text-align="center"
								 space-after="0.5mm"
								 space-before="0.5mm">																		 
								     <xsl:value-of select="contacto"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border-color="{$lineas}" border-style="solid" 
							margin-left="2.0px"
							border-before-width="0.25pt"
							border-after-width="0.25pt"
			          		border-start-width="0pt"
							border-end-width="0.25pt">
							 <fo:block font-size="7pt" font-weight="normal" text-align="center"
							 space-after="0.5mm"
							 space-before="0.5mm">																		 
								 <xsl:value-of select="respuesta"/>
							</fo:block>
							</fo:table-cell>
							<fo:table-cell border-color="{$lineas}" border-style="solid" 
							margin-left="2.0px"
							border-before-width="0.25pt"
							border-after-width="0.25pt"
			          		border-start-width="0pt"
							border-end-width="0.25pt">
							 <fo:block font-size="7pt" font-weight="normal" text-align="center"
							 space-after="0.5mm"
							 space-before="0.5mm">																		 
							 	<xsl:value-of select="fecha"/>
							</fo:block>
							</fo:table-cell>
							<fo:table-cell border-color="{$lineas}" border-style="solid" 
							margin-left="2.0px"
							border-before-width="0.25pt"
							border-after-width="0.25pt"
			          						border-start-width="0.25pt"
							border-end-width="0.25pt">
							 <fo:block font-size="7pt" font-weight="normal" text-align="center"
							 space-after="0.5mm"
							 space-before="0.5mm">																		 
								<xsl:value-of select="hora"/>
							</fo:block>
							</fo:table-cell>
							<fo:table-cell border-color="{$lineas}" border-style="solid" 
							margin-left="2.0px"
							border-before-width="0.25pt"
							border-after-width="0.25pt"
			          		border-start-width="0pt"
							border-end-width="0.25pt">
								 <fo:block font-size="7pt" font-weight="normal" text-align="center"
								 space-after="0.5mm"
								 space-before="0.5mm">																		 
								     <xsl:value-of select="glosa"/>
								</fo:block>
								</fo:table-cell>
							<fo:table-cell border-color="{$lineas}" border-style="solid" 
							margin-left="2.0px"
							border-before-width="0.25pt"
							border-after-width="0.25pt"
			          		border-start-width="0pt"
							border-end-width="0.25pt">
							 <fo:block font-size="7pt" font-weight="normal" text-align="center"
							 space-after="0.5mm"
							 space-before="0.5mm">																		 							 	
							 	<xsl:value-of select="agente"/>
							</fo:block>
							</fo:table-cell>							
						
						</fo:table-row>
					</xsl:for-each>
				
				
				</fo:table-body>
			</fo:table>
			</fo:block>
			
			
		<xsl:if test="cobranza/mostrarCompromisos = 'SI'">
		
		<fo:block space-before="1.2mm">
			<fo:table table-layout="fixed"  border-color="{$lineas}" border-style="solid"
							border-before-width="1pt"
							border-after-width="1pt"
                			border-start-width="0pt"
							border-end-width="10t">
				<fo:table-column column-width="18cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell >
							<!-- titulo -->
							<fo:block font-size="11pt" font-weight="bold" text-align="left" space-before="2mm" space-after="2mm">
								Compromisos de Pago
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		

		<!-- Separador -->
		<fo:block space-before="1.2mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="5cm" />
				<fo:table-column/>
				<fo:table-column column-width="4cm"/>
				<fo:table-column/>
				<fo:table-body>
					<fo:table-row display-align="center">
						<fo:table-cell border-color="{$lineas}" border-style="solid" 
						margin-left="2.0px"
						border-before-width="0.25pt"
						border-after-width="0.25pt"
		          		border-start-width="0.25pt"
						border-end-width="0.25pt">
						 <fo:block font-size="8pt" font-weight="bold" text-align="left"
						 space-after="0.5mm"
						 space-before="0.5mm">																		 
						 Nº. Promesas Históricas Hechas :
						</fo:block>
						</fo:table-cell>
						<fo:table-cell border-color="{$lineas}" border-style="solid" 
						margin-left="2.0px"
						border-before-width="0.25pt"
						border-after-width="0.25pt"
		          		border-start-width="0pt"
						border-end-width="0.25pt">
							 <fo:block font-size="8pt" font-weight="normal" text-align="left"
							 space-after="0.5mm"
							 space-before="0.5mm">																		 
							     <xsl:value-of select="cobranza/numeroPromesasHistoricas"/>
							</fo:block>
							</fo:table-cell>
						<fo:table-cell border-color="{$lineas}" border-style="solid" 
						margin-left="2.0px"
						border-before-width="0.25pt"
						border-after-width="0.25pt"
		          						border-start-width="0pt"
						border-end-width="0.25pt">
						 <fo:block font-size="8pt" font-weight="bold" text-align="left"
						 space-after="0.5mm"
						 space-before="0.5mm">																		 
						 % Históricas Cumplidas :
						</fo:block>
						</fo:table-cell>
						<fo:table-cell border-color="{$lineas}" border-style="solid" 
						margin-left="2.0px"
						border-before-width="0.25pt"
						border-after-width="0.25pt"
		          						border-start-width="0pt"
						border-end-width="0.25pt">
						 <fo:block font-size="8pt" font-weight="normal" text-align="left"
						 space-after="0.5mm"
						 space-before="0.5mm">																		 
						 <xsl:value-of select="cobranza/porcentajeHistoricasCumplidas"/>%
						</fo:block>
						</fo:table-cell>
						
					</fo:table-row>
					<fo:table-row display-align="center">
						<fo:table-cell border-color="{$lineas}" border-style="solid" 
						margin-left="2.0px"
						border-before-width="0.25pt"
						border-after-width="0.25pt"
		          		border-start-width="0.25pt"
						border-end-width="0.25pt">
						 <fo:block font-size="8pt" font-weight="bold" text-align="left"
						 space-after="0.5mm"
						 space-before="0.5mm">																		 
						 Nº. Promesas Últimos 6 Meses :
						</fo:block>
						</fo:table-cell>
						<fo:table-cell border-color="{$lineas}" border-style="solid" 
						margin-left="2.0px"
						border-before-width="0.25pt"
						border-after-width="0.25pt"
		          						border-start-width="0pt"
						border-end-width="0.25pt">
						 <fo:block font-size="8pt" font-weight="normal" text-align="left"
						 space-after="0.5mm"
						 space-before="0.5mm">																		 
						     <xsl:value-of select="cobranza/numeroPromesasSeisMeses"/>
						</fo:block>
						</fo:table-cell>
						<fo:table-cell border-color="{$lineas}" border-style="solid" 
						margin-left="2.0px"
						border-before-width="0.25pt"
						border-after-width="0.25pt"
		          						border-start-width="0pt"
						border-end-width="0.25pt">
						 <fo:block font-size="8pt" font-weight="bold" text-align="left"
						 space-after="0.5mm"
						 space-before="0.5mm">																		 
						 % Cumplidas (6 meses) : 
						</fo:block>
						</fo:table-cell>
						<fo:table-cell border-color="{$lineas}" border-style="solid" 
						margin-left="2.0px"
						border-before-width="0.25pt"
						border-after-width="0.25pt"
		          						border-start-width="0pt"
						border-end-width="0.25pt">
						 <fo:block font-size="8pt" font-weight="normal" text-align="left"
						 space-after="0.5mm"
						 space-before="0.5mm">																		 
						 <xsl:value-of select="cobranza/porcentajeCumplidasSeisMeses"/>%
						</fo:block>
						</fo:table-cell>
						
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		
		<fo:block space-before="2.5mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4cm"/>
				<fo:table-column/>
				<fo:table-column column-width="4cm"/>
				<fo:table-column column-width="4cm" />
				<fo:table-body>
					<fo:table-row display-align="center">
						<fo:table-cell border-color="{$lineas}" border-style="solid"
						margin-left="2.0px"
						border-before-width="0.25pt"
						border-after-width="0.25pt"
		          		border-start-width="0.25pt"
						border-end-width="0.25pt" >
						 <fo:block font-size="8pt" font-weight="bold" text-align="center" 
						 space-after="0.5mm"
						 space-before="0.5mm"
						 color="{$txt-azul-claro}">																		 
						 Nº Promesa
						</fo:block>
						</fo:table-cell>
						<fo:table-cell border-color="{$lineas}" border-style="solid" 
						margin-left="2.0px"
						border-before-width="0.25pt"
						border-after-width="0.25pt"
		          		border-start-width="0pt"
						border-end-width="0.25pt">
							 <fo:block font-size="8pt" font-weight="bold" text-align="center" 
							 space-after="0.5mm"
							 space-before="0.5mm"
							 color="{$txt-azul-claro}">																		 
							     ID Compromiso
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-color="{$lineas}" border-style="solid" 
						margin-left="2.0px"
						border-before-width="0.25pt"
						border-after-width="0.25pt"
		          		border-start-width="0pt"
						border-end-width="0.25pt">
						 <fo:block font-size="8pt" font-weight="bold" text-align="center" 
						 space-after="0.5mm"
						 space-before="0.5mm"
						 color="{$txt-azul-claro}">																		 
						 	Fecha Compromiso
						</fo:block>
						</fo:table-cell>
						<fo:table-cell border-color="{$lineas}" border-style="solid" 
						margin-left="2.0px"
						border-before-width="0.25pt"
						border-after-width="0.25pt"
		          		border-start-width="0pt"
						border-end-width="0.25pt">
						 <fo:block font-size="8pt" font-weight="bold" text-align="center" 
						 space-after="0.5mm"
						 space-before="0.5mm"
						 color="{$txt-azul-claro}">																		 
						  Cumplido
						</fo:block>
						</fo:table-cell>						
						
					</fo:table-row>
					
					<xsl:for-each select="cobranza/lista-compromiso">					
						<fo:table-row display-align="center">
							<fo:table-cell border-color="{$lineas}" border-style="solid"
							margin-left="2.0px"
							border-before-width="0.25pt"
							border-after-width="0.25pt"
			          		border-start-width="0.25pt"
							border-end-width="0.25pt">
							 <fo:block font-size="7pt" font-weight="normal" text-align="center"
							 space-after="0.5mm"
							 space-before="0.5mm">																		 
							 	<xsl:value-of select="promesa"/>
							</fo:block>
							</fo:table-cell>
							<fo:table-cell border-color="{$lineas}" border-style="solid" 
							margin-left="2.0px"
							border-before-width="0.25pt"
							border-after-width="0.25pt"
			          		border-start-width="0pt"
							border-end-width="0.25pt">
								 <fo:block font-size="7pt" font-weight="normal" text-align="center"
								 space-after="0.5mm"
								 space-before="0.5mm">																		 
								     <xsl:value-of select="operacion"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border-color="{$lineas}" border-style="solid" 
							margin-left="2.0px"
							border-before-width="0.25pt"
							border-after-width="0.25pt"
			          		border-start-width="0pt"
							border-end-width="0.25pt">
							 <fo:block font-size="7pt" font-weight="normal" text-align="center"
							 space-after="0.5mm"
							 space-before="0.5mm">																		 
								 <xsl:value-of select="fecha"/>
							</fo:block>
							</fo:table-cell>
							<fo:table-cell border-color="{$lineas}" border-style="solid" 
							margin-left="2.0px"
							border-before-width="0.25pt"
							border-after-width="0.25pt"
			          		border-start-width="0pt"
							border-end-width="0.25pt">
							 <fo:block font-size="7pt" font-weight="normal" text-align="center"
							 space-after="0.5mm"
							 space-before="0.5mm">																		 
							 	<xsl:value-of select="cumplido"/>
							</fo:block>
							</fo:table-cell>													
						
						</fo:table-row>
					</xsl:for-each>
					
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Separador -->
		
		</xsl:if>
		

		<xsl:call-template name="datos_1" />
		
		
		<xsl:call-template name="datos_2" />
	</xsl:template>
	


	<xsl:template name="datos_1">
		<fo:block>


		</fo:block>
	</xsl:template>
	
	<xsl:template name="datos_2">
		<fo:block>

		</fo:block>
	</xsl:template>
	
	
</xsl:stylesheet>

