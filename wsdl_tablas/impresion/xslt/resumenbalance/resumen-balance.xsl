<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<xsl:variable name="txt-celeste">#D9E4EF</xsl:variable>
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
											<xsl:attribute name="src">
												<xsl:value-of select="resumen-balance/cabecera/ruta-imagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="resumen-balance/cabecera/fecha-impresion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- imagen bci -->
					<!-- Separador -->
					<fo:block space-after="1mm">
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
				<fo:table-column column-width="13cm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- nombre cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="resumen-balance/datos-generales/nombre-cliente"/>
							</fo:block>
							<!-- nombre cliente -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- rut cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
								<fo:inline color="{$txt}">RUT: </fo:inline>
								<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="resumen-balance/cabecera/rut"/></fo:inline>
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
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		
		<!-- Titulo Modulo -->
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="15cm"/>
			<fo:table-body>
				<fo:table-row >
					<fo:table-cell >
						<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							Resumen Balance
						</fo:block>
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
		
		<!-- Datos Generales (titulo) -->
			<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
				<fo:table table-layout="fixed">
					<fo:table-column column-width="0.3cm" />
					<fo:table-column column-width="8cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell padding-before="1mm">
								<fo:external-graphic height="1.2mm" width="1.2mm">
									<xsl:attribute name="src">
										<xsl:value-of select="resumen-balance/cabecera/ruta-imagen"/>01-bullet2-rj.gif
									</xsl:attribute>
								</fo:external-graphic>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block>
									Datos Generales
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		<!-- Datos Generales (titulo) -->
			
		<fo:block>
				<xsl:call-template name="datos-generales"/>	
		</fo:block>
			
			
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		
		<!-- Datos Generales (titulo) -->
			<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
				<fo:table table-layout="fixed">
					<fo:table-column column-width="0.3cm" />
					<fo:table-column column-width="8cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell padding-before="1mm">
								<fo:external-graphic height="1.2mm" width="1.2mm">
									<xsl:attribute name="src">
										<xsl:value-of select="resumen-balance/cabecera/ruta-imagen"/>01-bullet2-rj.gif
									</xsl:attribute>
								</fo:external-graphic>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block>
										Datos Balance
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		<!-- Datos Generales (titulo) -->
			
		<fo:block>
				<xsl:call-template name="datos-balance"/>	
		</fo:block>			
			

		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		
		<!-- Titulo Modulo -->
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="15cm"/>
			<fo:table-body>
				<fo:table-row >
					<fo:table-cell >
						<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							Activos
						</fo:block>
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
		
		<!-- Datos Generales (titulo) -->
			<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
				<fo:table table-layout="fixed">
					<fo:table-column column-width="0.3cm" />
					<fo:table-column column-width="8cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell padding-before="1mm">
								<fo:external-graphic height="1.2mm" width="1.2mm">
									<xsl:attribute name="src">
										<xsl:value-of select="resumen-balance/cabecera/ruta-imagen"/>01-bullet2-rj.gif
									</xsl:attribute>
								</fo:external-graphic>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block>
										Total Activos Circulantes
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		<!-- Datos Generales (titulo) -->
			
		<fo:block>
				<xsl:call-template name="activo-circulante"/>	
		</fo:block>

		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		
		<!-- Datos Generales (titulo) -->
			<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
				<fo:table table-layout="fixed">
					<fo:table-column column-width="0.3cm" />
					<fo:table-column column-width="8cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell padding-before="1mm">
								<fo:external-graphic height="1.2mm" width="1.2mm">
									<xsl:attribute name="src">
										<xsl:value-of select="resumen-balance/cabecera/ruta-imagen"/>01-bullet2-rj.gif
									</xsl:attribute>
								</fo:external-graphic>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block>
									Total Activo Fijo
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		<!-- Datos Generales (titulo) -->
			
		<fo:block>
				<xsl:call-template name="activo-fijo"/>	
		</fo:block>

		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		
		<!-- Datos Generales (titulo) -->
			<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
				<fo:table table-layout="fixed">
					<fo:table-column column-width="0.3cm" />
					<fo:table-column column-width="8cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell padding-before="1mm">
								<fo:external-graphic height="1.2mm" width="1.2mm">
									<xsl:attribute name="src">
										<xsl:value-of select="resumen-balance/cabecera/ruta-imagen"/>01-bullet2-rj.gif
									</xsl:attribute>
								</fo:external-graphic>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block>
									Total Otros Activos
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		<!-- Datos Generales (titulo) -->
			
		<fo:block>
				<xsl:call-template name="otros-activos"/>	
		</fo:block>

		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		
		<!-- Datos Generales (titulo) -->
			<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
				<fo:table table-layout="fixed">
					<fo:table-column column-width="0.3cm" />
					<fo:table-column column-width="8cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell padding-before="1mm">
								<fo:external-graphic height="1.2mm" width="1.2mm">
									<xsl:attribute name="src">
										<xsl:value-of select="resumen-balance/cabecera/ruta-imagen"/>01-bullet2-rj.gif
									</xsl:attribute>
								</fo:external-graphic>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block>
									Total Activos
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		<!-- Datos Generales (titulo) -->
			
		<fo:block>
				<xsl:call-template name="total-activos"/>	
		</fo:block>
	
	
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		
		<!-- Titulo Modulo -->
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="15cm"/>
			<fo:table-body>
				<fo:table-row >
					<fo:table-cell >
						<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							Pasivos
						</fo:block>
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
		
		<!-- Datos Generales (titulo) -->
			<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
				<fo:table table-layout="fixed">
					<fo:table-column column-width="0.3cm" />
					<fo:table-column column-width="8cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell padding-before="1mm">
								<fo:external-graphic height="1.2mm" width="1.2mm">
									<xsl:attribute name="src">
										<xsl:value-of select="resumen-balance/cabecera/ruta-imagen"/>01-bullet2-rj.gif
									</xsl:attribute>
								</fo:external-graphic>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block>
									Total Pasivos Circulantes
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		<!-- Datos Generales (titulo) -->
			
		<fo:block>
				<xsl:call-template name="pasivo-circulante"/>	
		</fo:block>
	
	
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		
		<!-- Datos Generales (titulo) -->
			<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
				<fo:table table-layout="fixed">
					<fo:table-column column-width="0.3cm" />
					<fo:table-column column-width="8cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell padding-before="1mm">
								<fo:external-graphic height="1.2mm" width="1.2mm">
									<xsl:attribute name="src">
										<xsl:value-of select="resumen-balance/cabecera/ruta-imagen"/>01-bullet2-rj.gif
									</xsl:attribute>
								</fo:external-graphic>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block>
									Total Pasivo Largo Plazo
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		<!-- Datos Generales (titulo) -->
			

		<fo:block>
				<xsl:call-template name="pasivo-largo-plazo"/>	
		</fo:block>
	
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		
		<!-- Datos Generales (titulo) -->
			<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
				<fo:table table-layout="fixed">
					<fo:table-column column-width="0.3cm" />
					<fo:table-column column-width="8cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell padding-before="1mm">
								<fo:external-graphic height="1.2mm" width="1.2mm">
									<xsl:attribute name="src">
										<xsl:value-of select="resumen-balance/cabecera/ruta-imagen"/>01-bullet2-rj.gif
									</xsl:attribute>
								</fo:external-graphic>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block>
									Interés Minoritario
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		<!-- Datos Generales (titulo) -->
			

		<fo:block>
				<xsl:call-template name="interes-minoritario"/>	
		</fo:block>
	
	
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		
		<!-- Datos Generales (titulo) -->
			<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
				<fo:table table-layout="fixed">
					<fo:table-column column-width="0.3cm" />
					<fo:table-column column-width="8cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell padding-before="1mm">
								<fo:external-graphic height="1.2mm" width="1.2mm">
									<xsl:attribute name="src">
										<xsl:value-of select="resumen-balance/cabecera/ruta-imagen"/>01-bullet2-rj.gif
									</xsl:attribute>
								</fo:external-graphic>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block>
									Total Pasivos Exigibles
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		<!-- Datos Generales (titulo) -->
			

		<fo:block>
				<xsl:call-template name="total-pasivo-exigible"/>	
		</fo:block>
	
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		
		<!-- Datos Generales (titulo) -->
			<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
				<fo:table table-layout="fixed">
					<fo:table-column column-width="0.3cm" />
					<fo:table-column column-width="8cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell padding-before="1mm">
								<fo:external-graphic height="1.2mm" width="1.2mm">
									<xsl:attribute name="src">
										<xsl:value-of select="resumen-balance/cabecera/ruta-imagen"/>01-bullet2-rj.gif
									</xsl:attribute>
								</fo:external-graphic>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block>
									Total Pasivos
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		<!-- Datos Generales (titulo) -->
			

		<fo:block>
				<xsl:call-template name="total-pasivos"/>	
		</fo:block>
	
	
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		
		<!-- Titulo Modulo -->
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="15cm"/>
			<fo:table-body>
				<fo:table-row >
					<fo:table-cell >
						<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							Patrimonios
						</fo:block>
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
		
		<!-- Datos Generales (titulo) -->
			<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
				<fo:table table-layout="fixed">
					<fo:table-column column-width="0.3cm" />
					<fo:table-column column-width="8cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell padding-before="1mm">
								<fo:external-graphic height="1.2mm" width="1.2mm">
									<xsl:attribute name="src">
										<xsl:value-of select="resumen-balance/cabecera/ruta-imagen"/>01-bullet2-rj.gif
									</xsl:attribute>
								</fo:external-graphic>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block>
									Detalle Patrimonio
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		<!-- Datos Generales (titulo) -->
			
		<fo:block>
				<xsl:call-template name="detalle-patrimonio"/>	
		</fo:block>

	
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		
		<!-- Titulo Modulo -->
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="15cm"/>
			<fo:table-body>
				<fo:table-row >
					<fo:table-cell >
						<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							Estado de Resultados
						</fo:block>
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
		
		<!-- Datos Generales (titulo) -->
			<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
				<fo:table table-layout="fixed">
					<fo:table-column column-width="0.3cm" />
					<fo:table-column column-width="8cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell padding-before="1mm">
								<fo:external-graphic height="1.2mm" width="1.2mm">
									<xsl:attribute name="src">
										<xsl:value-of select="resumen-balance/cabecera/ruta-imagen"/>01-bullet2-rj.gif
									</xsl:attribute>
								</fo:external-graphic>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block>
									Resultado Operacional
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		<!-- Datos Generales (titulo) -->
			
		<fo:block>
				<xsl:call-template name="resultado-operacional"/>	
		</fo:block>
	
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		
		<!-- Datos Generales (titulo) -->
			<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
				<fo:table table-layout="fixed">
					<fo:table-column column-width="0.3cm" />
					<fo:table-column column-width="8cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell padding-before="1mm">
								<fo:external-graphic height="1.2mm" width="1.2mm">
									<xsl:attribute name="src">
										<xsl:value-of select="resumen-balance/cabecera/ruta-imagen"/>01-bullet2-rj.gif
									</xsl:attribute>
								</fo:external-graphic>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block>
									Resultado No Operacional
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		<!-- Datos Generales (titulo) -->
			
		<fo:block>
				<xsl:call-template name="resultado-no-operacional"/>	
		</fo:block>
	
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		
		<!-- Datos Generales (titulo) -->
			<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
				<fo:table table-layout="fixed">
					<fo:table-column column-width="0.3cm" />
					<fo:table-column column-width="8cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell padding-before="1mm">
								<fo:external-graphic height="1.2mm" width="1.2mm">
									<xsl:attribute name="src">
										<xsl:value-of select="resumen-balance/cabecera/ruta-imagen"/>01-bullet2-rj.gif
									</xsl:attribute>
								</fo:external-graphic>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block>
									Utilidad (Pérdida) Ejercicio
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		<!-- Datos Generales (titulo) -->
			
		<fo:block>
				<xsl:call-template name="utilidad-ejercicio"/>	
		</fo:block>
	
	
	
	
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->

	
	
	
	</xsl:template>
	
	
	
	
	
	<xsl:template name="datos-generales">


												<fo:block font-size="5pt" space-after="1mm" text-align="right">
													<fo:table table-layout="fixed">
														<fo:table-column column-width="4cm"/>
														<fo:table-column column-width="5cm"/>
														<fo:table-column column-width="4cm"/>
														<fo:table-column column-width="5cm"/>
														<fo:table-body>
														
															<!-- FILA1-->
															<fo:table-row>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																		<fo:block color="#000000" padding-before="1mm" padding-after="1mm" text-align="left">
																			<xsl:call-template name="itemTitulo">
																				<xsl:with-param name="titulo"  select="'Nombre Cliente:'"/>
																			</xsl:call-template>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																			<xsl:call-template name="itemContenidoAzul">
																				<xsl:with-param name="titulo"  select="resumen-balance/datos-generales/nombre-cliente"/>
																			</xsl:call-template>
																	</fo:table-cell>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																		<fo:block color="#000000" padding-before="1mm" padding-after="1mm" text-align="left">
																			<xsl:call-template name="itemTitulo">
																				<xsl:with-param name="titulo"  select="'Fecha de Balance:'"/>
																			</xsl:call-template>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																			<xsl:call-template name="itemContenidoAzul">
																				<xsl:with-param name="titulo"  select="resumen-balance/datos-generales/fecha-balance"/>
																			</xsl:call-template>
																	</fo:table-cell>
																</fo:table-row>
																
																<!-- FILA2-->
																<fo:table-row>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																		<fo:block color="#000000" padding-before="1mm" padding-after="1mm" text-align="left">				
																			<xsl:call-template name="itemTitulo">
																				<xsl:with-param name="titulo"  select="'IdC Cliente:'"/>
																			</xsl:call-template>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																			<xsl:call-template name="itemContenidoAzul">
																				<xsl:with-param name="titulo"  select="resumen-balance/cabecera/rut"/>
																			</xsl:call-template>
																	</fo:table-cell>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																		<fo:block color="#000000" padding-before="1mm" padding-after="1mm" text-align="left">				
																			<xsl:call-template name="itemTitulo">
																				<xsl:with-param name="titulo"  select="'Número de Meses:'"/>
																			</xsl:call-template>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																			<xsl:call-template name="itemContenidoAzul">
																				<xsl:with-param name="titulo"  select="resumen-balance/datos-generales/numero-meses"/>
																			</xsl:call-template>
																	</fo:table-cell>
															</fo:table-row>

																<!-- FILA3-->
																<fo:table-row>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																		<fo:block color="#000000" padding-before="1mm" padding-after="1mm" text-align="left">				
																			<xsl:call-template name="itemTitulo">
																				<xsl:with-param name="titulo"  select="'Ejecutivo:'"/>
																			</xsl:call-template>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																			<xsl:call-template name="itemContenidoAzul">
																				<xsl:with-param name="titulo"  select="resumen-balance/datos-generales/ejecutivo"/>
																			</xsl:call-template>
																	</fo:table-cell>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																		<fo:block color="#000000" padding-before="1mm" padding-after="1mm" text-align="left">				
																			<xsl:call-template name="itemTitulo">
																				<xsl:with-param name="titulo"  select="'Número de Balance:'"/>
																			</xsl:call-template>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																			<xsl:call-template name="itemContenidoAzul">
																				<xsl:with-param name="titulo"  select="resumen-balance/datos-generales/numero-balance"/>
																			</xsl:call-template>
																	</fo:table-cell>
															</fo:table-row>
															
																<!-- FILA4-->
																<fo:table-row>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																		<fo:block color="#000000" padding-before="1mm" padding-after="1mm" text-align="left">				
																			<xsl:call-template name="itemTitulo">
																				<xsl:with-param name="titulo"  select="'Ejecutivo del Cliente:'"/>
																			</xsl:call-template>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																			<xsl:call-template name="itemContenidoAzul">
																				<xsl:with-param name="titulo"  select="resumen-balance/datos-generales/ejecutivo-cliente"/>
																			</xsl:call-template>
																	</fo:table-cell>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																		<fo:block color="#000000" padding-before="1mm" padding-after="1mm" text-align="left">				
																			<xsl:call-template name="itemTitulo">
																				<xsl:with-param name="titulo"  select="'Tipo de Balance:'"/>
																			</xsl:call-template>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																			<xsl:call-template name="itemContenidoAzul">
																				<xsl:with-param name="titulo"  select="resumen-balance/datos-generales/tipo-balance"/>
																			</xsl:call-template>
																	</fo:table-cell>
															</fo:table-row>
															
																<!-- FILA5-->
																<fo:table-row>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																		<fo:block color="#000000" padding-before="1mm" padding-after="1mm" text-align="left">				
																			<xsl:call-template name="itemTitulo">
																				<xsl:with-param name="titulo"  select="'Actividad Económica:'"/>
																			</xsl:call-template>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																			<xsl:call-template name="itemContenidoAzul">
																				<xsl:with-param name="titulo"  select="resumen-balance/datos-generales/actividad-economica"/>
																			</xsl:call-template>
																	</fo:table-cell>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																		<fo:block color="#000000" padding-before="1mm" padding-after="1mm" text-align="left">				
																			<xsl:call-template name="itemTitulo">
																				<xsl:with-param name="titulo"  select="'Cobertura:'"/>
																			</xsl:call-template>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																			<xsl:call-template name="itemContenidoAzul">
																				<xsl:with-param name="titulo"  select="resumen-balance/datos-generales/cobertura"/>
																			</xsl:call-template>
																	</fo:table-cell>
															</fo:table-row>
															
																<!-- FILA6-->
																<fo:table-row>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																		<fo:block color="#000000" padding-before="1mm" padding-after="1mm" text-align="left">				
																			<xsl:call-template name="itemTitulo">
																				<xsl:with-param name="titulo"  select="'Estado:'"/>
																			</xsl:call-template>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																			<xsl:call-template name="itemContenidoAzul">
																				<xsl:with-param name="titulo"  select="resumen-balance/datos-generales/estado"/>
																			</xsl:call-template>
																	</fo:table-cell>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																		<fo:block color="#000000" padding-before="1mm" padding-after="1mm" text-align="left">				
																			<xsl:call-template name="itemTitulo">
																				<xsl:with-param name="titulo"  select="'Auditor:'"/>
																			</xsl:call-template>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																			<xsl:call-template name="itemContenidoAzul">
																				<xsl:with-param name="titulo"  select="resumen-balance/datos-generales/auditor"/>
																			</xsl:call-template>
																	</fo:table-cell>
															</fo:table-row>
															
																<!-- FILA7-->
																<fo:table-row>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																		<fo:block color="#000000" padding-before="1mm" padding-after="1mm" text-align="left">				
																			<xsl:call-template name="itemTitulo">
																				<xsl:with-param name="titulo"  select="'Cifras en:'"/>
																			</xsl:call-template>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																			<xsl:call-template name="itemContenidoAzul">
																				<xsl:with-param name="titulo"  select="resumen-balance/datos-generales/cifras-en"/>
																			</xsl:call-template>
																	</fo:table-cell>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																		<fo:block color="#000000" padding-before="1mm" padding-after="1mm" text-align="left">				
																			
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border="0.5pt solid #CCCCCC">
																		<fo:block color="#000000" padding-before="1mm" padding-after="1mm" text-align="left">
																			
																		</fo:block>
																	</fo:table-cell>
															</fo:table-row>
															
														</fo:table-body>
													</fo:table>
												</fo:block>
	</xsl:template>			
	
	
	<xsl:template name="datos-balance">
		<fo:block font-size="5pt" space-after="1mm" text-align="left">

						<fo:table table-layout="fixed">		
								<fo:table-column column-width="6.5cm" />
								<xsl:for-each select="resumen-balance/datos-generales/datos-balance/balance">																														
										<fo:table-column column-width="4cm" />																			
								</xsl:for-each>			
						<fo:table-body>
							
							
						<fo:table-row>				
								
						 <fo:table-cell>
							 <fo:block color="#000000" text-align="right">
									<fo:table table-layout="fixed">
										<fo:table-column column-width="6.5cm"/>
										<fo:table-body>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Fecha Balance - N Balance :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Tipo de Balance - Cobertura :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'N de Meses - Porcentaje :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Auditor :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>

										</fo:table-body>
									</fo:table>
							 </fo:block>
						 </fo:table-cell>
							
										
						 <xsl:for-each select="resumen-balance/datos-generales/datos-balance/balance">
						 
							 <fo:table-cell>
								 <fo:block color="#000000" text-align="right">
								 
									<fo:table table-layout="fixed">
										<fo:table-column column-width="3cm"/>
										<fo:table-column column-width="1cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="fecha-balance"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="numero-balance"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="tipo-balance"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="cobertura"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<fo:block font-size="7pt" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="right">
																					
																<fo:table table-layout="fixed">
																	<fo:table-column />
																	<fo:table-body>
																		<fo:table-row>
																			<fo:table-cell border="0pt">
																				<fo:block>
																					<xsl:value-of select="numero-meses"/>&#0160;Meses - %
																				</fo:block>
																			</fo:table-cell>
																		</fo:table-row>
																	</fo:table-body>
																</fo:table>
														</fo:block>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="auditor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<fo:block>
															&#0160;
														</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								
								</fo:block>
							</fo:table-cell>					
						</xsl:for-each>									
				
					</fo:table-row>
				</fo:table-body>
			</fo:table>

		</fo:block>
	</xsl:template>

	
	
	<xsl:template name="activo-circulante">
		<fo:block font-size="5pt" space-after="1mm" text-align="left">

						<fo:table table-layout="fixed">		
								<fo:table-column column-width="6.5cm" />
								<xsl:for-each select="resumen-balance/activo/activo-circulante/balance">																														
										<fo:table-column column-width="4cm" />																			
								</xsl:for-each>			
						<fo:table-body>
							
							
						<fo:table-row>				
								
						 <fo:table-cell>
							 <fo:block color="#000000" text-align="right">
									<fo:table table-layout="fixed">
										<fo:table-column column-width="6.5cm"/>
										<fo:table-body>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Fecha Balance - N Balance :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Disponible :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Deposito a Plazo :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Valores Negociables :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Deudores por Venta :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Documentos por Cobrar :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Deudores Varios :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Doctos. y Ctas. por Cobrar Empresas Relacionadas :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Existencias :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Impuestos por Recuperar :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Gastos Pagados por Anticipado :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Impuestos Diferidos :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Otros Activos Circulantes :'"/>
																	</xsl:call-template>
															</fo:table-cell>			
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Total Activos Circulantes :'"/>
																	</xsl:call-template>
															</fo:table-cell>			
														</fo:table-row>
										</fo:table-body>
									</fo:table>
							 </fo:block>
						 </fo:table-cell>
							
										
						 <xsl:for-each select="resumen-balance/activo/activo-circulante/balance">
						 
							 <fo:table-cell>
								 <fo:block color="#000000" text-align="right">
								 
									<fo:table table-layout="fixed">
										<fo:table-column column-width="3cm"/>
										<fo:table-column column-width="1cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="fecha-balance"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="numero-balance"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="disponible/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="disponible/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="deposito-plazo/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="deposito-plazo/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="valores-negociables/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="valores-negociables/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="deudores-venta/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="deudores-venta/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="documentos-por-cobrar/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="documentos-por-cobrar/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="deudores-varios/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="deudores-varios/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="doctos-cuentas-por-cobrar-empr-relac/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="doctos-cuentas-por-cobrar-empr-relac/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="existencias/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="existencias/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="impuestos-por-recuperar/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="impuestos-por-recuperar/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="gastos-pagados-por-anticipado/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="gastos-pagados-por-anticipado/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="impuestos-diferidos/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="impuestos-diferidos/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="otros-activos-circulantes/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="otros-activos-circulantes/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="total-activos-circulantes/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="total-activos-circulantes/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								
								</fo:block>
							</fo:table-cell>					
						</xsl:for-each>									
				
					</fo:table-row>
				</fo:table-body>
			</fo:table>

		</fo:block>
	</xsl:template>

	
	<xsl:template name="activo-fijo">
		<fo:block font-size="5pt" space-after="1mm" text-align="left">

						<fo:table table-layout="fixed">		
								<fo:table-column column-width="6.5cm" />
								<xsl:for-each select="resumen-balance/activo/activo-fijo/balance">																														
										<fo:table-column column-width="4cm" />																			
								</xsl:for-each>			
						<fo:table-body>
							
							
						<fo:table-row>				
								
						 <fo:table-cell>
							 <fo:block color="#000000" text-align="right">
									<fo:table table-layout="fixed">
										<fo:table-column column-width="6.5cm"/>
										<fo:table-body>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Fecha Balance - N Balance :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Terrenos :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Construcciones y Obras :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Maquinaria y Equipos :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Bienes Agrícolas y Animales :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Bienes Agrícolas Plantaciones :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Otros Activos Fijos :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Mayor Valor Retasación Técnica Activo Fijo :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Depreciación Acumulada :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Total Activos Fijos :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
										</fo:table-body>
									</fo:table>
							 </fo:block>
						 </fo:table-cell>
							
										
						 <xsl:for-each select="resumen-balance/activo/activo-fijo/balance">
						 
							 <fo:table-cell>
								 <fo:block color="#000000" text-align="right">
								 
									<fo:table table-layout="fixed">
										<fo:table-column column-width="3cm"/>
										<fo:table-column column-width="1cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="fecha-balance"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="numero-balance"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="terrenos/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="terrenos/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="construcciones-obras/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="construcciones-obras/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="maquinaria-equipos/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="maquinaria-equipos/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="bienes-agricolas-animales/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="bienes-agricolas-animales/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="bienes-agricolas-plantaciones/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="bienes-agricolas-plantaciones/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="otros-activos-fijos/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="otros-activos-fijos/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="retasacion-tecnica-activo-fijo/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="retasacion-tecnica-activo-fijo/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="depreciacion-acumulada/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="depreciacion-acumulada/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="total-activos-fijos/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="total-activos-fijos/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								
								</fo:block>
							</fo:table-cell>					
						</xsl:for-each>									
				
					</fo:table-row>
				</fo:table-body>
			</fo:table>

		</fo:block>
	</xsl:template>
	
	
	<xsl:template name="otros-activos">
		<fo:block font-size="5pt" space-after="1mm" text-align="left">

						<fo:table table-layout="fixed">		
								<fo:table-column column-width="6.5cm" />
								<xsl:for-each select="resumen-balance/activo/otros-activos/balance">																														
										<fo:table-column column-width="4cm" />																			
								</xsl:for-each>			
						<fo:table-body>
							
							
						<fo:table-row>				
								
						 <fo:table-cell>
							 <fo:block color="#000000" text-align="right">
									<fo:table table-layout="fixed">
										<fo:table-column column-width="6.5cm"/>
										<fo:table-body>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Fecha Balance - N Balance :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Inversión Empresas Relacionadas :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Inversión en Otras Sociedades :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Menor Valor Inversiones :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Mayor Valor Inversiones :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Deudores a Largo Plazo :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Doctos. y Ctas. por Cobrar Empresas Relacionadas :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Intangibles :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Amortización  :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Otros Activos Largo Plazo :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Activos en Leasing :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Total Otros Activos :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
										</fo:table-body>
									</fo:table>
							 </fo:block>
						 </fo:table-cell>
							
										
						 <xsl:for-each select="resumen-balance/activo/otros-activos/balance">
						 
							 <fo:table-cell>
								 <fo:block color="#000000" text-align="right">
								 
									<fo:table table-layout="fixed">
										<fo:table-column column-width="3cm"/>
										<fo:table-column column-width="1cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="fecha-balance"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="numero-balance"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="inversion-empresas-relacionadas/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="inversion-empresas-relacionadas/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="inversion-en-otras-sociedades/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="inversion-en-otras-sociedades/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="menor-valor-inversiones/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="menor-valor-inversiones/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="mayor-valor-inversiones/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="mayor-valor-inversiones/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="deudores-largo-plazo/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="deudores-largo-plazo/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="doctos-cuentas-por-cobrar-empr-relac/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="doctos-cuentas-por-cobrar-empr-relac/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="intangibles/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="intangibles/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="amortizacion/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="amortizacion/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="otros-activos-largo-plazo/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="otros-activos-largo-plazo/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="activos-leasing/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="activos-leasing/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="total-otros-activos/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="total-otros-activos/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								
								</fo:block>
							</fo:table-cell>					
						</xsl:for-each>									
				
					</fo:table-row>
				</fo:table-body>
			</fo:table>

		</fo:block>
	</xsl:template>

	
	
	<xsl:template name="total-activos">
		<fo:block font-size="5pt" space-after="1mm" text-align="left">

						<fo:table table-layout="fixed">		
								<fo:table-column column-width="6.5cm" />
								<xsl:for-each select="resumen-balance/activo/total-activos/balance">																														
										<fo:table-column column-width="4cm" />																			
								</xsl:for-each>			
						<fo:table-body>
							
							
						<fo:table-row>				
								
						 <fo:table-cell>
							 <fo:block color="#000000" text-align="right">
									<fo:table table-layout="fixed">
										<fo:table-column column-width="6.5cm"/>
										<fo:table-body>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Fecha Balance - N Balance :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Total Activos :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
										</fo:table-body>
									</fo:table>
							 </fo:block>
						 </fo:table-cell>
							
										
						 <xsl:for-each select="resumen-balance/activo/total-activos/balance">
						 
							 <fo:table-cell>
								 <fo:block color="#000000" text-align="right">
								 
									<fo:table table-layout="fixed">
										<fo:table-column column-width="3cm"/>
										<fo:table-column column-width="1cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="fecha-balance"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="numero-balance"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="total-activos/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="total-activos/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								
								</fo:block>
							</fo:table-cell>					
						</xsl:for-each>									
				
					</fo:table-row>
				</fo:table-body>
			</fo:table>

		</fo:block>
	</xsl:template>

<!-- PASIVOS-->

	<xsl:template name="pasivo-circulante">
		<fo:block font-size="5pt" space-after="1mm" text-align="left">

						<fo:table table-layout="fixed">		
								<fo:table-column column-width="6.5cm" />
								<xsl:for-each select="resumen-balance/pasivo/pasivo-circulante/balance">																														
										<fo:table-column column-width="4cm" />																			
								</xsl:for-each>			
						<fo:table-body>
							
							
						<fo:table-row>				
								
						 <fo:table-cell>
							 <fo:block color="#000000" text-align="right">
									<fo:table table-layout="fixed">
										<fo:table-column column-width="6.5cm"/>
										<fo:table-body>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Fecha Balance - N Balance :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Oblig. c/Bcos. e Inst. Fin. Corto Plazo :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Oblig. c/Bcos. e Inst. Fin. Largo Plazo :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Obligaciones c/Público (Efectos de Comercio) :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Obligaciones c/Público (Bonos) :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Obligaciones Largo Plazo c/Vencimiento de un Año :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Dividendos a Pagar :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Cuentas por Pagar :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Documentos por Pagar :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Acreedores Varios :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Doctos. y Cuentas Pagar Empresas Relacionadas :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Provisiones :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Retenciones :'"/>
																	</xsl:call-template>
															</fo:table-cell>			
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Impuesto a la Renta :'"/>
																	</xsl:call-template>
															</fo:table-cell>			
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Ingresos Percibidos por Adelantado :'"/>
																	</xsl:call-template>
															</fo:table-cell>			
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Impuestos Diferidos :'"/>
																	</xsl:call-template>
															</fo:table-cell>			
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Otros Pasivos Circulantes :'"/>
																	</xsl:call-template>
															</fo:table-cell>			
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Obligaciones Leasing Corto Plazo :'"/>
																	</xsl:call-template>
															</fo:table-cell>			
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Total Pasivos Circulantes :'"/>
																	</xsl:call-template>
															</fo:table-cell>			
														</fo:table-row>
										</fo:table-body>
									</fo:table>
							 </fo:block>
						 </fo:table-cell>
							
										
						 <xsl:for-each select="resumen-balance/pasivo/pasivo-circulante/balance">
						 
							 <fo:table-cell>
								 <fo:block color="#000000" text-align="right">
								 
									<fo:table table-layout="fixed">
										<fo:table-column column-width="3cm"/>
										<fo:table-column column-width="1cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="fecha-balance"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="numero-balance"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="oblig-con-bancos-inst-financ-corto-plazo/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="oblig-con-bancos-inst-financ-corto-plazo/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="oblig-con-bancos-inst-financ-largo-plazo/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="oblig-con-bancos-inst-financ-largo-plazo/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="oblig-con-publico-efectos-comercio/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="oblig-con-publico-efectos-comercio/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="oblig-con-publico-bonos/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="oblig-con-publico-bonos/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="oblig-largo-plazo-venc-un-anio/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="oblig-largo-plazo-venc-un-anio/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="dividendos-por-pagar/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="dividendos-por-pagar/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="cuentas-por-pagar/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="cuentas-por-pagar/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="documentos-por-pagar/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="documentos-por-pagar/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="acreedores-varios/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="acreedores-varios/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="doctos-cuentas-por-pagar-empr-relac/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="doctos-cuentas-por-pagar-empr-relac/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="provisiones/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="provisiones/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="retenciones/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="retenciones/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="impuesto-renta/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="impuesto-renta/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="ingresos-percibidos-por-adelantado/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="ingresos-percibidos-por-adelantado/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="impuestos-diferidos/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="impuestos-diferidos/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="otros-pasivos-circulantes/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="otros-pasivos-circulantes/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="obligaciones-leasing-corto-plazo/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="obligaciones-leasing-corto-plazo/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="total-pasivos-circulantes/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="total-pasivos-circulantes/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											
											
											
										</fo:table-body>
									</fo:table>
								
								</fo:block>
							</fo:table-cell>					
						</xsl:for-each>									
				
					</fo:table-row>
				</fo:table-body>
			</fo:table>

		</fo:block>
	</xsl:template>

	
	<xsl:template name="pasivo-largo-plazo">
		<fo:block font-size="5pt" space-after="1mm" text-align="left">

						<fo:table table-layout="fixed">		
								<fo:table-column column-width="6.5cm" />
								<xsl:for-each select="resumen-balance/pasivo/pasivo-largo-plazo/balance">																														
										<fo:table-column column-width="4cm" />																			
								</xsl:for-each>			
						<fo:table-body>
							
							
						<fo:table-row>				
								
						 <fo:table-cell>
							 <fo:block color="#000000" text-align="right">
									<fo:table table-layout="fixed">
										<fo:table-column column-width="6.5cm"/>
										<fo:table-body>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Fecha Balance - N Balance :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Obligaciones con Bcos. e Inst. Fin. :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Obligaciones c/Público (Bonos) :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Documentos por Pagar :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Acreedores Varios :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Doctos. y Cuentas Pagas Empresas Relacionadas :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Provisiones :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Otros Pasivos Largo Plazo :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Obligaciones Leasing Largo Plazo :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Total Pasivo Largo Plazo :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
										</fo:table-body>
									</fo:table>
							 </fo:block>
						 </fo:table-cell>
							
										
						 <xsl:for-each select="resumen-balance/pasivo/pasivo-largo-plazo/balance">
						 
							 <fo:table-cell>
								 <fo:block color="#000000" text-align="right">
								 
									<fo:table table-layout="fixed">
										<fo:table-column column-width="3cm"/>
										<fo:table-column column-width="1cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="fecha-balance"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="numero-balance"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="oblig-con-bancos-inst-financ/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="oblig-con-bancos-inst-financ/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="oblig-con-publico-bonos/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="oblig-con-publico-bonos/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="documentos-por-pagar/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="documentos-por-pagar/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="acreedores-varios/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="acreedores-varios/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="doctos-cuentas-por-pagar-empr-relac/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="doctos-cuentas-por-pagar-empr-relac/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="provisiones/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="provisiones/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="otros-pasivos-largo-plazo/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="otros-pasivos-largo-plazo/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="obligaciones-leasing-largo-plazo/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="obligaciones-leasing-largo-plazo/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="total-pasivo-largo-plazo/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="total-pasivo-largo-plazo/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								
								</fo:block>
							</fo:table-cell>					
						</xsl:for-each>									
				
					</fo:table-row>
				</fo:table-body>
			</fo:table>

		</fo:block>
	</xsl:template>

	
	<xsl:template name="interes-minoritario">
		<fo:block font-size="5pt" space-after="1mm" text-align="left">

						<fo:table table-layout="fixed">		
								<fo:table-column column-width="6.5cm" />
								<xsl:for-each select="resumen-balance/pasivo/interes-minoritario/balance">																														
										<fo:table-column column-width="4cm" />																			
								</xsl:for-each>			
						<fo:table-body>
							
							
						<fo:table-row>				
								
						 <fo:table-cell>
							 <fo:block color="#000000" text-align="right">
									<fo:table table-layout="fixed">
										<fo:table-column column-width="6.5cm"/>
										<fo:table-body>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Fecha Balance - N Balance :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Interés Minoritario :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
										</fo:table-body>
									</fo:table>
							 </fo:block>
						 </fo:table-cell>
							
										
						 <xsl:for-each select="resumen-balance/pasivo/interes-minoritario/balance">
						 
							 <fo:table-cell>
								 <fo:block color="#000000" text-align="right">
								 
									<fo:table table-layout="fixed">
										<fo:table-column column-width="3cm"/>
										<fo:table-column column-width="1cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="fecha-balance"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="numero-balance"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="interes-minoritario/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="interes-minoritario/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								
								</fo:block>
							</fo:table-cell>					
						</xsl:for-each>									
				
					</fo:table-row>
				</fo:table-body>
			</fo:table>

		</fo:block>
	</xsl:template>
	
	
	<xsl:template name="total-pasivo-exigible">
		<fo:block font-size="5pt" space-after="1mm" text-align="left">

						<fo:table table-layout="fixed">		
								<fo:table-column column-width="6.5cm" />
								<xsl:for-each select="resumen-balance/pasivo/total-pasivo-exigible/balance">																														
										<fo:table-column column-width="4cm" />																			
								</xsl:for-each>			
						<fo:table-body>
							
							
						<fo:table-row>				
								
						 <fo:table-cell>
							 <fo:block color="#000000" text-align="right">
									<fo:table table-layout="fixed">
										<fo:table-column column-width="6.5cm"/>
										<fo:table-body>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Fecha Balance - N Balance :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Total Pasivos Exigibles :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
										</fo:table-body>
									</fo:table>
							 </fo:block>
						 </fo:table-cell>
							
										
						 <xsl:for-each select="resumen-balance/pasivo/total-pasivo-exigible/balance">
						 
							 <fo:table-cell>
								 <fo:block color="#000000" text-align="right">
								 
									<fo:table table-layout="fixed">
										<fo:table-column column-width="3cm"/>
										<fo:table-column column-width="1cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="fecha-balance"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="numero-balance"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="total-pasivo-exigible/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="total-pasivo-exigible/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								
								</fo:block>
							</fo:table-cell>					
						</xsl:for-each>									
				
					</fo:table-row>
				</fo:table-body>
			</fo:table>

		</fo:block>
	</xsl:template>
	
	
	<xsl:template name="total-pasivos">
		<fo:block font-size="5pt" space-after="1mm" text-align="left">

						<fo:table table-layout="fixed">		
								<fo:table-column column-width="6.5cm" />
								<xsl:for-each select="resumen-balance/pasivo/total-pasivos/balance">																														
										<fo:table-column column-width="4cm" />																			
								</xsl:for-each>			
						<fo:table-body>
							
							
						<fo:table-row>				
								
						 <fo:table-cell>
							 <fo:block color="#000000" text-align="right">
									<fo:table table-layout="fixed">
										<fo:table-column column-width="6.5cm"/>
										<fo:table-body>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Fecha Balance - N Balance :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Total Pasivos :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
										</fo:table-body>
									</fo:table>
							 </fo:block>
						 </fo:table-cell>
							
										
						 <xsl:for-each select="resumen-balance/pasivo/total-pasivos/balance">
						 
							 <fo:table-cell>
								 <fo:block color="#000000" text-align="right">
								 
									<fo:table table-layout="fixed">
										<fo:table-column column-width="3cm"/>
										<fo:table-column column-width="1cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="fecha-balance"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="numero-balance"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="total-pasivos/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="total-pasivos/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								
								</fo:block>
							</fo:table-cell>					
						</xsl:for-each>									
				
					</fo:table-row>
				</fo:table-body>
			</fo:table>

		</fo:block>
	</xsl:template>
	
	<xsl:template name="detalle-patrimonio">
		<fo:block font-size="5pt" space-after="1mm" text-align="left">

						<fo:table table-layout="fixed">		
								<fo:table-column column-width="6.5cm" />
								<xsl:for-each select="resumen-balance/patrimonio/detalle-patrimonio/balance">																														
										<fo:table-column column-width="4cm" />																			
								</xsl:for-each>			
						<fo:table-body>
							
							
						<fo:table-row>				
								
						 <fo:table-cell>
							 <fo:block color="#000000" text-align="right">
									<fo:table table-layout="fixed">
										<fo:table-column column-width="6.5cm"/>
										<fo:table-body>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Fecha Balance - N Balance :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Capital Pagado :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Reserva Revaloración Capital :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Sobreprecio Vta. Acciones Propias :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Reserva Mayor Valor del Act. Fijo :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Otras Reservas :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Déficit Acum. Período Desarrollo :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Utilidades Retenidas :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Reserva Futuros Dividendos :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Utilidades Acumuladas :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Perdidas Acumuladas :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Utilidad (Pérdida) del Ejercicio :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Dividendos Provisorios :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Total Patrimonio :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
										</fo:table-body>
									</fo:table>
							 </fo:block>
						 </fo:table-cell>
							
										
						 <xsl:for-each select="resumen-balance/patrimonio/detalle-patrimonio/balance">
						 
							 <fo:table-cell>
								 <fo:block color="#000000" text-align="right">
								 
									<fo:table table-layout="fixed">
										<fo:table-column column-width="3cm"/>
										<fo:table-column column-width="1cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="fecha-balance"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="numero-balance"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="capital-pagado/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="capital-pagado/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="reserva-revaloracion-capital/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="reserva-revaloracion-capital/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="sobreprecio-vta-acciones-propias/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="sobreprecio-vta-acciones-propias/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="reserva-mayor-valor-activo-fijo/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="reserva-mayor-valor-activo-fijo/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="otras-reservas/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="otras-reservas/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="deficit-acum-perido-desarrollo/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="deficit-acum-perido-desarrollo/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="utilidades-retenidas/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="utilidades-retenidas/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="reserva-futuros-dividendos/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="reserva-futuros-dividendos/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="utilidades-acumuladas/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="utilidades-acumuladas/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="perdidas-acumuladas/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="perdidas-acumuladas/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="utilidad-ejercicio/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="utilidad-ejercicio/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="dividendos-provisorios/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="dividendos-provisorios/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="total-patrimonio/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="total-patrimonio/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											
										</fo:table-body>
									</fo:table>
								
								</fo:block>
							</fo:table-cell>					
						</xsl:for-each>									
				
					</fo:table-row>
				</fo:table-body>
			</fo:table>

		</fo:block>
	</xsl:template>

	
	<xsl:template name="resultado-operacional">
		<fo:block font-size="5pt" space-after="1mm" text-align="left">

						<fo:table table-layout="fixed">		
								<fo:table-column column-width="6.5cm" />
								<xsl:for-each select="resumen-balance/estado-de-resultado/resultado-operacional/balance">																														
										<fo:table-column column-width="4cm" />																			
								</xsl:for-each>			
						<fo:table-body>
							
							
						<fo:table-row>				
								
						 <fo:table-cell>
							 <fo:block color="#000000" text-align="right">
									<fo:table table-layout="fixed">
										<fo:table-column column-width="6.5cm"/>
										<fo:table-body>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Fecha Balance - N Balance :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Ingreso Explotación :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Costo Explotación :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Depreciación del Ejercicio :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Margen Explotación :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Gastos Administración y Ventas :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Total Resultado Operacional :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
										</fo:table-body>
									</fo:table>
							 </fo:block>
						 </fo:table-cell>
							
										
						 <xsl:for-each select="resumen-balance/estado-de-resultado/resultado-operacional/balance">
						 
							 <fo:table-cell>
								 <fo:block color="#000000" text-align="right">
								 
									<fo:table table-layout="fixed">
										<fo:table-column column-width="3cm"/>
										<fo:table-column column-width="1cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="fecha-balance"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="numero-balance"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="ingreso-explotacion/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="ingreso-explotacion/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="costo-explotacion/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="costo-explotacion/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="depreciacion-ejercicio/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="depreciacion-ejercicio/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="margen-explotacion/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="margen-explotacion/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="gastos-administracion-ventas/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="gastos-administracion-ventas/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="total-resultado-operacional/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="total-resultado-operacional/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
									
								</fo:block>
							</fo:table-cell>					
						</xsl:for-each>									
				
					</fo:table-row>
				</fo:table-body>
			</fo:table>

		</fo:block>
	</xsl:template>
	
	
	<xsl:template name="resultado-no-operacional">
		<fo:block font-size="5pt" space-after="1mm" text-align="left">

						<fo:table table-layout="fixed">		
								<fo:table-column column-width="6.5cm" />
								<xsl:for-each select="resumen-balance/estado-de-resultado/resultado-no-operacional/balance">																														
										<fo:table-column column-width="4cm" />																			
								</xsl:for-each>			
						<fo:table-body>
							
							
						<fo:table-row>				
								
						 <fo:table-cell>
							 <fo:block color="#000000" text-align="right">
									<fo:table table-layout="fixed">
										<fo:table-column column-width="6.5cm"/>
										<fo:table-body>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Fecha Balance - N Balance :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Ingresos Financieros :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Utilidad Inversión Empresas Relacionadas :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Otros Ingresos Fuera Explotación :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Pérdida Inversión Empresas Relacionadas :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Amortización Menor Valor Inversiones :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Gastos Financieros :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Otros Egresos Fuera Explotación :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Corrección Monetaria :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Total Resultado No Operacional :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
										</fo:table-body>
									</fo:table>
							 </fo:block>
						 </fo:table-cell>
							
										
						 <xsl:for-each select="resumen-balance/estado-de-resultado/resultado-no-operacional/balance">
						 
							 <fo:table-cell>
								 <fo:block color="#000000" text-align="right">
								 
									<fo:table table-layout="fixed">
										<fo:table-column column-width="3cm"/>
										<fo:table-column column-width="1cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="fecha-balance"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="numero-balance"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="ingresos-financieros/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="ingresos-financieros/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="utilidad-inversion-empr-relacionadas/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="utilidad-inversion-empr-relacionadas/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="otros-ingresos-fuera-de-explotacion/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="otros-ingresos-fuera-de-explotacion/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="perdida-inversion-empr-relacionadas/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="perdida-inversion-empr-relacionadas/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="amortizacion-menor-valor-inversiones/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="amortizacion-menor-valor-inversiones/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="gastos-financieros/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="gastos-financieros/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="otros-egresos-fuera-explotacion/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="otros-egresos-fuera-explotacion/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="correccion-monetaria/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="correccion-monetaria/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="total-resultado-no-operacional/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="total-resultado-no-operacional/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
									
								</fo:block>
							</fo:table-cell>					
						</xsl:for-each>									
				
					</fo:table-row>
				</fo:table-body>
			</fo:table>

		</fo:block>
	</xsl:template>
	
	
	<xsl:template name="utilidad-ejercicio">
		<fo:block font-size="5pt" space-after="1mm" text-align="left">

						<fo:table table-layout="fixed">		
								<fo:table-column column-width="6.5cm" />
								<xsl:for-each select="resumen-balance/estado-de-resultado/utilidad-ejercicio/balance">																														
										<fo:table-column column-width="4cm" />																			
								</xsl:for-each>			
						<fo:table-body>
							
							
						<fo:table-row>				
								
						 <fo:table-cell>
							 <fo:block color="#000000" text-align="right">
									<fo:table table-layout="fixed">
										<fo:table-column column-width="6.5cm"/>
										<fo:table-body>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Fecha Balance - N Balance :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Resultado Antes Impuesto a la Renta :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Impuesto a la Renta :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Utilidad (Pérdida) Consolidada :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Interés Minoritario :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Utilidad (Pérdida) Líquida :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Amortización Mayor Valor Inversiones :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border="0.5pt solid #CCCCCC">
																	<xsl:call-template name="itemTituloLinea">
																		<xsl:with-param name="titulo"  select="'Total Utilidad (Pérdida) Ejercicio :'"/>
																	</xsl:call-template>
															</fo:table-cell>
														</fo:table-row>
										</fo:table-body>
									</fo:table>
							 </fo:block>
						 </fo:table-cell>
							
										
						 <xsl:for-each select="resumen-balance/estado-de-resultado/utilidad-ejercicio/balance">
						 
							 <fo:table-cell>
								 <fo:block color="#000000" text-align="right">
								 
									<fo:table table-layout="fixed">
										<fo:table-column column-width="3cm"/>
										<fo:table-column column-width="1cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="fecha-balance"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC" vertical-align="center">
														<xsl:call-template name="itemTituloColumna">
															<xsl:with-param name="titulo"  select="numero-balance"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="resultado-antes-impuesto-renta/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="resultado-antes-impuesto-renta/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="impuesto-renta/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="impuesto-renta/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="utilidad-consolidada/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="utilidad-consolidada/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="interes-minoritario/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="interes-minoritario/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="utilidad-liquida/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="utilidad-liquida/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="amortizacion-mayor-valor-inversiones/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="amortizacion-mayor-valor-inversiones/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="total-utilidad-ejercicio/valor"/>
														</xsl:call-template>
												</fo:table-cell>
												<fo:table-cell border="0.5pt solid #CCCCCC">
														<xsl:call-template name="itemContenidoNormal">
															<xsl:with-param name="titulo"  select="total-utilidad-ejercicio/porcentaje"/>
														</xsl:call-template>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
									
								</fo:block>
							</fo:table-cell>					
						</xsl:for-each>									
				
					</fo:table-row>
				</fo:table-body>
			</fo:table>

		</fo:block>
	</xsl:template>
	
	
	
	
	<xsl:template name="subTitulo">
		<xsl:param name="titulo"/> 
		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src">
									<xsl:value-of select="resumen-balance/cabecera/ruta-imagen"/>01-bullet2-rj.gif
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

	<xsl:template name="itemTitulo">
		<xsl:param name="titulo"/> 
		<fo:block font-size="8pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-left="2mm" padding-before="1mm" >
							<fo:external-graphic>
								<xsl:attribute name="src">
									<xsl:value-of select="resumen-balance/cabecera/ruta-imagen"/>01-bullet1-rj.gif
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
	
	<xsl:template name="itemContenidoAzul">
		<xsl:param name="titulo"/> 
					<fo:block font-weight="bold" font-size="7pt" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
						<xsl:value-of select="$titulo"/>
					</fo:block>
	</xsl:template>	
	
	<xsl:template name="itemContenidoNormal">
		<xsl:param name="titulo"/> 
			<fo:block font-size="7pt" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="right">
										
					<fo:table table-layout="fixed">
						<fo:table-column />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell border="0pt">
									<fo:block>
										<xsl:value-of select="$titulo"/>&#0160;
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
			</fo:block>
	</xsl:template>
	
	<xsl:template name="itemTituloLinea">
		<xsl:param name="titulo"/> 
					<fo:block font-weight="bold" font-size="7pt" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
						<xsl:value-of select="$titulo"/>
					</fo:block>
	</xsl:template>
	
	<xsl:template name="itemTituloColumna">
		<xsl:param name="titulo"/> 
					<fo:block font-weight="bold" font-size="7pt" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
						<xsl:value-of select="$titulo"/>&#0160;
					</fo:block>
	</xsl:template>
	
</xsl:stylesheet>