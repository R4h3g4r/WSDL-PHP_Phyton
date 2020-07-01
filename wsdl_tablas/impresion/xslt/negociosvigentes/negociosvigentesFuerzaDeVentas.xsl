<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
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
												<xsl:value-of select="negocios-vigentes/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="negocios-vigentes/fechaImpresion"/>
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
								<xsl:value-of select="negocios-vigentes/nombre"/>
							</fo:block>
							<!-- nombre cliente -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- rut cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
								<fo:inline color="{$txt}">RUT: </fo:inline>
								<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="negocios-vigentes/rut"/></fo:inline>
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
							Negocios Vigentes
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
		
		<!-- ejecutivo -->
		<fo:block font-size="9pt" text-align="left" color="{$txt}">
			<fo:inline font-weight="normal" space-before="30pt">Ejecutivo: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="negocios-vigentes/ejecutivo"/>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;</fo:inline>
			<fo:inline font-weight="normal" space-before="30pt">Oficina: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="negocios-vigentes/oficina"/></fo:inline>
		</fo:block>
		<!-- ejecutivo -->
		
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->

		<!-- Productos Vigentes -->
			<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
				<fo:table table-layout="fixed">
					<fo:table-column column-width="0.3cm" />
					<fo:table-column column-width="8cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell padding-before="1mm">
								<fo:external-graphic height="1.2mm" width="1.2mm">
									<xsl:attribute name="src">
										<xsl:value-of select="negocios-vigentes/rutaImagen"/>01-bullet2-rj.gif
									</xsl:attribute>
								</fo:external-graphic>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block>
									Productos 
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		<!-- Productos Vigentes -->
			
		<!-- Separador -->
			<fo:block space-after="2mm">
				<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
			</fo:block>
		<!-- Separador -->
		<fo:block font-size="5pt" space-after="1mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="13cm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- nombre cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="negocios-vigentes/mensaje"/>
							</fo:block>
							<!-- nombre cliente -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>		

		<xsl:if test="count(negocios-vigentes/cuentasCorrientes) > 0">
			<!-- CUENTA CORRIENTE -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="4cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="9" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
							&#0160;&#0160;&#0160;CUENTA CORRIENTE</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;# Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Tipo Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Moneda
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;Oficina
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Apertura 
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Rel
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;PRT
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;ACL
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="negocios-vigentes/cuentasCorrientes/cuentas-Corrientes">
						<fo:table-row>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="operacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="tipoOperacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}"> 
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="moneda"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="oficina"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="rel"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="apertura"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="prt"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="acl"/>
									</fo:block>
								</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="8" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								Número de Cuentas Corrientes :&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="negocios-vigentes/cantidad-cuentasCorrientes"/>
							</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			
			<!-- Separador -->
			<fo:block space-after="3mm">
				
			</fo:block>
			<!-- Separador -->

			<!-- FIN CUENTA CORRIENTE -->
		</xsl:if>
		
		<xsl:if test="count(negocios-vigentes/lineaCredito) > 0">
			<!-- Líneas Crédito -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="7cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="3cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="8" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
							&#0160;&#0160;&#0160;Líneas Crédito</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;# Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Tipo Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Moneda
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Oficina
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Rel 
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Vencimiento 
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="negocios-vigentes/lineaCredito/linea-Credito">
						<fo:table-row>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="operacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}"> 
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="tipoOperacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="moneda"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="oficina"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="rel"/>
									</fo:block>
								</fo:table-cell>
																<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="vencimiento"/>
									</fo:block>
								</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="6" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								Número de Líneas Crédito :&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="negocios-vigentes/cantidad-lineaCredito"/>
							</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			
			<!-- Separador -->
			<fo:block space-after="3mm">
				
			</fo:block>
			<!-- Separador -->

			<!-- FIN Líneas Crédito -->
		</xsl:if>

		<xsl:if test="count(negocios-vigentes/colocacionMonedaNacional) > 0">
			<!-- Colocación Moneda Nacional incluyendo Multicredito -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="7cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="3cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="8" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
							&#0160;&#0160;&#0160;Colocación Moneda Nacional incluyendo Multicredito</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;# Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Tipo Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Moneda
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Oficina
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Rel 
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Vcto. Max.
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="negocios-vigentes/colocacionMonedaNacional/colocacion-Moneda-Nacional">
						<fo:table-row>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="operacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="tipoOperacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}"> 
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="moneda"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="oficina"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="rel"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="vctoMax"/>
									</fo:block>
								</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="6" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								Número de Colocación Moneda Nacional incluyendo Multicredito :&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="negocios-vigentes/cantidad-colocacionMonedaNacional"/>
							</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			
			<!-- Separador -->
			<fo:block space-after="3mm">
				
			</fo:block>
			<!-- Separador -->

			<!-- FIN Colocación Moneda Nacional incluyendo Multicredito -->
		</xsl:if>

		
			

		<xsl:if test="count(negocios-vigentes/colocacionMonedaExtranjera) > 0">
			<!-- Colocaciones Moneda Extranjera -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="7cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="3cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="8" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
							&#0160;&#0160;&#0160;Colocaciones Moneda Extranjera</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;# Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Tipo Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Moneda
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Oficina
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Rel 
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Vcto. Max.
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="negocios-vigentes/colocacionMonedaExtranjera/colocacion-Moneda-Extranjera">
						<fo:table-row>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="operacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="tipoOperacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}"> 
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="moneda"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="oficina"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="rel"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="vctoMax"/>
									</fo:block>
								</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="6" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								Número de Colocaciones Moneda Extranjera :&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="negocios-vigentes/cantidad-colocacionMonedaExtranjera"/>
							</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			
			<!-- Separador -->
			<fo:block space-after="3mm">
				
			</fo:block>
			<!-- Separador -->

			<!-- FIN Colocaciones Moneda Extranjera -->
		</xsl:if>

				<xsl:if test="count(negocios-vigentes/avancesMultilineas) > 0">
			<!-- Avances Multilíneas -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="7cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="3cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="8" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
							&#0160;&#0160;&#0160;Avances Multilíneas</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;# Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Tipo Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Moneda
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Oficina
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Rel 
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Rto. Vcto.
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="negocios-vigentes/avancesMultilineas/avances-Multilineas">
						<fo:table-row>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="operacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="tipoOperacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}"> 
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="moneda"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="oficina"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="rel"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="rtoVcto"/>
									</fo:block>
								</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="6" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								Número de Avances Multilíneas :&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="negocios-vigentes/cantidad-avancesMultilineas"/>
							</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			
			<!-- Separador -->
			<fo:block space-after="3mm">
				
			</fo:block>
			<!-- Separador -->

			<!-- FIN Avances Multilíneas -->
		</xsl:if>

			<xsl:if test="count(negocios-vigentes/creditoHipotecario) > 0">
			<!-- Crédito Hipotecario -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="7cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="3cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="8" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
							&#0160;&#0160;&#0160;Crédito Hipotecario</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;# Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Tipo Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Moneda
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Oficina
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Rel 
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Rto. Vcto.
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="negocios-vigentes/creditoHipotecario/credito-Hipotecario">
						<fo:table-row>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="operacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="tipoOperacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}"> 
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="moneda"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="oficina"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="rel"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="rtoVcto"/>
									</fo:block>
								</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
						<fo:table-row>
						<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="6" border="0.5pt solid {$lineas}">
						<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
							Número de Créditos Hipotecarios :&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="negocios-vigentes/cantidad-creditoHipotecario"/>
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="3mm">
			</fo:block>	
			</xsl:if>
			
			<xsl:if test="count(negocios-vigentes/garantias) > 0">
			<!-- Garantías -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="4.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="3.5cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="7" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
							&#0160;&#0160;&#0160;Garantías</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;# Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Tipo Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Moneda
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Oficina
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Rel 
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Onstt.
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="negocios-vigentes/garantias/listado-garantias">
						<fo:table-row>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="operacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}"> 
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="tipoOperacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="moneda"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="oficina"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="rel"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="Onstt"/>
									</fo:block>
								</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
						<fo:table-row>
						<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="6" border="0.5pt solid {$lineas}">
						<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
							Número de Garantías :&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="negocios-vigentes/cantidad-garantias"/>
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>

			<!-- Separador -->
			<fo:block space-after="3mm">
				
			</fo:block>
			<!-- Separador -->

			<!-- FIN Garantías -->
		</xsl:if>

		<xsl:if test="count(negocios-vigentes/tarjetaBCI) > 0">
			<!-- Tarjeta BCI -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="4.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="3.5cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="7" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
							&#0160;&#0160;&#0160;Tarjeta BCI</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;# Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Tipo Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Moneda
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Oficina
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Rel 
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Inicio 
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="negocios-vigentes/tarjetaBCI/tarjeta-BCI">
						<fo:table-row>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="operacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}"> 
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="tipoOperacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="moneda"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="oficina"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="rel"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="inicio"/>
									</fo:block>
								</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
						<fo:table-row>
						<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="6" border="0.5pt solid {$lineas}">
						<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
							Número de Tarjetas BCI :&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="negocios-vigentes/cantidad-tarjetaBCI"/>
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>

			<!-- Separador -->
			<fo:block space-after="3mm">
				
			</fo:block>
			<!-- Separador -->

			<!-- FIN Tarjeta BCI -->
		</xsl:if>
		
		<xsl:if test="count(negocios-vigentes/ahorro) > 0">
			<!-- Ahorro -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="4.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="3.5cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="7" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
							&#0160;&#0160;&#0160;Ahorro</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;# Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Tipo Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Moneda
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Oficina
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Rel 
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Pert. 
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="negocios-vigentes/ahorro/listado-ahorro">
						<fo:table-row>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="operacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}"> 
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="tipoOperacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="moneda"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="oficina"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="rel"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="pert"/>
									</fo:block>
								</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
						<fo:table-row>
						<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="6" border="0.5pt solid {$lineas}">
						<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
							Número de Ahorro :&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="negocios-vigentes/cantidad-ahorro"/>
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>

			<!-- Separador -->
			<fo:block space-after="3mm">
				
			</fo:block>
			<!-- Separador -->

			<!-- FIN Ahorro -->
		</xsl:if>

			<xsl:if test="count(negocios-vigentes/pagoAutomaticoCuentas) > 0">
			<!-- PAC -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="4.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="3.5cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="7" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
							&#0160;&#0160;&#0160;PAC</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;# Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Tipo Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Moneda
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Oficina
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Rel 
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Inicio  
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="negocios-vigentes/pagoAutomaticoCuentas/pago-Automatico-Cuentas">
						<fo:table-row>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="operacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}"> 
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="tipoOperacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="moneda"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="oficina"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="rel"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="inicio"/>
									</fo:block>
								</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
						<fo:table-row>
						<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="6" border="0.5pt solid {$lineas}">
						<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
							Número de PAC :&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="negocios-vigentes/cantidad-pagoAutomaticoCuentas"/>
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>

			<!-- Separador -->
			<fo:block space-after="3mm">
				
			</fo:block>
			<!-- Separador -->

			<!-- FIN PAC -->
		</xsl:if>

			<xsl:if test="count(negocios-vigentes/depositosAPlazo) > 0">
			<!-- DAP -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="4.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="3.5cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="7" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
							&#0160;&#0160;&#0160;DAP</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;# Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Tipo Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Moneda
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Oficina
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Rel 
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Vcto.  
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="negocios-vigentes/depositosAPlazo/depositos-APlazo">
						<fo:table-row>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="operacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}"> 
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="tipoOperacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="moneda"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="oficina"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="rel"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="vcto"/>
									</fo:block>
								</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
						<fo:table-row>
						<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="6" border="0.5pt solid {$lineas}">
						<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
							Número de DAP :&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="negocios-vigentes/cantidad-depositosAPlazo"/>
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>

			<!-- Separador -->
			<fo:block space-after="3mm">
				
			</fo:block>
			<!-- Separador -->

			<!-- FIN DAP -->
		</xsl:if>



		<xsl:if test="count(negocios-vigentes/factoring) > 0">
			<!-- Factoring -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="7cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="3cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="8" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
							&#0160;&#0160;&#0160;Factoring</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;# Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Tipo Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Moneda
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Oficina
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Rel 
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Vcto. 
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="negocios-vigentes/factoring/listado-factoring">
						<fo:table-row>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="operacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}"> 
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="tipoOperacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="moneda"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="oficina"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="rel"/>
									</fo:block>
								</fo:table-cell>
																<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="vcto"/>
									</fo:block>
								</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
						<fo:table-row>
						<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="6" border="0.5pt solid {$lineas}">
						<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
							Número de Factoring :&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="negocios-vigentes/cantidad-factoring"/>
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			
			<!-- Separador -->
			<fo:block space-after="3mm">
				
			</fo:block>
			<!-- Separador -->

			<!-- FIN Factoring -->
		</xsl:if>
		
		<xsl:if test="count(negocios-vigentes/cobranza) > 0">
			<!-- Cobranza NAC -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="7cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="3cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="8" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
							&#0160;&#0160;&#0160;Cobranza NAC</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;# Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Tipo Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Moneda
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Oficina
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Rel 
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Inicio 
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="negocios-vigentes/cobranza/listado-cobranza">
						<fo:table-row>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="operacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}"> 
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="tipoOperacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="moneda"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="oficina"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="rel"/>
									</fo:block>
								</fo:table-cell>
																<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="inicio"/>
									</fo:block>
								</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
						<fo:table-row>
						<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="6" border="0.5pt solid {$lineas}">
						<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
							Número de Cobranzas NAC :&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="negocios-vigentes/cantidad-cobranza"/>
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			
			<!-- Separador -->
			<fo:block space-after="3mm">
				
			</fo:block>
			<!-- Separador -->

			<!-- FIN Cobranza NAC -->
		</xsl:if>


		<xsl:if test="count(negocios-vigentes/recaudacion) > 0">
			<!-- Recaudación -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="4.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="3.5cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="7" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
							&#0160;&#0160;&#0160;Recaudación</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;# Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Tipo Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Moneda
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Oficina
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Rel 
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Vcto  
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="negocios-vigentes/recaudacion/listado-recaudacion">
						<fo:table-row>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="operacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}"> 
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="tipoOperacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="moneda"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="oficina"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="rel"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="inicio"/>
									</fo:block>
								</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
						<fo:table-row>
						<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="6" border="0.5pt solid {$lineas}">
						<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
							Número de Recaudaciones :&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="negocios-vigentes/cantidad-recaudacion"/>
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>

			<!-- Separador -->
			<fo:block space-after="3mm">
				
			</fo:block>
			<!-- Separador -->

			<!-- FIN Recaudación -->
		</xsl:if>

		
		<xsl:if test="count(negocios-vigentes/transValores) > 0">
			<!-- Trans Valores -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="4.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="3.5cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="7" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
							&#0160;&#0160;&#0160;Trans Valores</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;# Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Tipo Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Moneda
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Oficina
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Rel 
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Contrato  
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="negocios-vigentes/transValores/trans-Valores">
						<fo:table-row>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="operacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}"> 
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="tipoOperacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="moneda"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="oficina"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="rel"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="contrato"/>
									</fo:block>
								</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
						<fo:table-row>
						<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="6" border="0.5pt solid {$lineas}">
						<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
							Número de Trans Valores :&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="negocios-vigentes/cantidad-transValores"/>
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>

			<!-- Separador -->
			<fo:block space-after="3mm">
				
			</fo:block>
			<!-- Separador -->

			<!-- FIN Trans Valores -->
		</xsl:if>


		<xsl:if test="count(negocios-vigentes/lineaGlobalMaxima) > 0">
			<!-- L. Global Max -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="4.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="3.5cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="7" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
							&#0160;&#0160;&#0160;L. Global Max</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;# Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Tipo Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Moneda
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Oficina
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Rel 
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Término  
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="negocios-vigentes/lineaGlobalMaxima/linea-Global-Maxima">
						<fo:table-row>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="operacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}"> 
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="tipoOperacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="moneda"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="oficina"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="rel"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="termino"/>
									</fo:block>
								</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
						<fo:table-row>
						<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="9" border="0.5pt solid {$lineas}">
						<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
							Número de L. Global Max :&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="negocios-vigentes/cantidad-lineaGlobalMaxima"/>
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>

			<!-- Separador -->
			<fo:block space-after="3mm">
				
			</fo:block>
			<!-- Separador -->

			<!-- FIN L. Global Max -->
		</xsl:if>
		
		<xsl:if test="count(negocios-vigentes/bancredito) > 0">
			<!-- Bancredito -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="4.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="3.5cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="7" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
							&#0160;&#0160;&#0160;Bancredito</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;# Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Tipo Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Moneda
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Oficina
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Rel 
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Inicio   
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="negocios-vigentes/bancredito/listado-bancredito">
						<fo:table-row>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="operacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}"> 
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="tipoOperacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="moneda"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="oficina"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="rel"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="inicio"/>
									</fo:block>
								</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
						<fo:table-row>
						<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="6" border="0.5pt solid {$lineas}">
						<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
							Número de Bancredito :&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="negocios-vigentes/cantidad-bancredito"/>
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>

			<!-- Separador -->
			<fo:block space-after="3mm">
				
			</fo:block>
			<!-- Separador -->

			<!-- FIN Bancredito -->
		</xsl:if>

		
		<xsl:if test="count(negocios-vigentes/informesDeImportacion) > 0">
			<!-- Informes de Importación -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="4.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="3.5cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="7" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
							&#0160;&#0160;&#0160;Informes de Importación</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;# Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Tipo Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Moneda
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Oficina
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Rel 
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Aprobado    
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="negocios-vigentes/informesDeImportacion/informes-De-Importacion">
						<fo:table-row>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="operacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}"> 
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="tipoOperacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="moneda"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="oficina"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="rel"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="aprobado"/>
									</fo:block>
								</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
						<fo:table-row>
						<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="6" border="0.5pt solid {$lineas}">
						<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
							Número de Informes de Importación :&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="negocios-vigentes/cantidad-informesDeImportacion"/>
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>

			<!-- Separador -->
			<fo:block space-after="3mm">
				
			</fo:block>
			<!-- Separador -->

			<!-- FIN Informes de Importación -->
		</xsl:if>		
		
		
		<xsl:if test="count(negocios-vigentes/cobranzaMonedaExtranjera) > 0">
			<!-- Cobranzas Moneda Extranjera -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="4.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="3.5cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="7" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
							&#0160;&#0160;&#0160;Cobranzas Moneda Extranjera</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;# Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Tipo Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Moneda
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Oficina
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Rel 
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Present     
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="negocios-vigentes/cobranzaMonedaExtranjera/cobranza-Moneda-Extranjera">
						<fo:table-row>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="operacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}"> 
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="tipoOperacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="moneda"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="oficina"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="rel"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="presentacion"/>
									</fo:block>
								</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
						<fo:table-row>
						<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="6" border="0.5pt solid {$lineas}">
						<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
							Número de Cobranzas Moneda Extranjera :&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="negocios-vigentes/cantidad-cobranzaMonedaExtranjera"/>
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>

			<!-- Separador -->
			<fo:block space-after="3mm">
				
			</fo:block>
			<!-- Separador -->

			<!-- FIN Cobranzas Moneda Extranjera -->
		</xsl:if>

<xsl:if test="count(negocios-vigentes/bancaTelefonica) > 0">
			<!-- Banca Telefónica -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="4.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="3.5cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="7" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
							&#0160;&#0160;&#0160;Banca Telefónica</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;# Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Tipo Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Moneda
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Oficina
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Rel 
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Inicio      
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="negocios-vigentes/bancaTelefonica/banca-Telefonica">
						<fo:table-row>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="operacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}"> 
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="tipoOperacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="moneda"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="oficina"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="rel"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="inicio"/>
									</fo:block>
								</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
						<fo:table-row>
						<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="6" border="0.5pt solid {$lineas}">
						<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
							Número de Banca Telefónica :&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="negocios-vigentes/cantidad-bancaTelefonica"/>
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>

			<!-- Separador -->
			<fo:block space-after="3mm">
				
			</fo:block>
			<!-- Separador -->

			<!-- FIN Banca Telefónica -->
		</xsl:if>

<xsl:if test="count(negocios-vigentes/cajaDeSeguridad) > 0">
			<!-- Caja de Seguridad -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="4.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="3.5cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="7" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
							&#0160;&#0160;&#0160;Caja de Seguridad</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;# Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Tipo Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Moneda
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Oficina
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Rel 
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Contrato       
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="negocios-vigentes/cajaDeSeguridad/caja-De-Seguridad">
						<fo:table-row>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="operacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}"> 
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="tipoOperacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="moneda"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="oficina"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="rel"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="contrato"/>
									</fo:block>
								</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
						<fo:table-row>
						<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="6" border="0.5pt solid {$lineas}">
						<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
							Número de Cajas de Seguridad :&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="negocios-vigentes/cantidad-cajaDeSeguridad"/>
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>

			<!-- Separador -->
			<fo:block space-after="3mm">
				
			</fo:block>
			<!-- Separador -->

			<!-- FIN Caja de Seguridad -->
		</xsl:if>

		<xsl:if test="count(negocios-vigentes/banleasing) > 0">
			<!-- Banleasing -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="4.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="2.5cm" />
					<fo:table-column column-width="3.5cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="7" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
							&#0160;&#0160;&#0160;Banleasing</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;# Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Tipo Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Moneda
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Oficina
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Rel 
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Inicio        
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="negocios-vigentes/banleasing/listado-banleasing">
						<fo:table-row>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="operacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}"> 
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="tipoOperacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="moneda"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="oficina"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="rel"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="inicio"/>
									</fo:block>
								</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
						<fo:table-row>
						<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="6" border="0.5pt solid {$lineas}">
						<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
							Número de Banleasing :&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="negocios-vigentes/cantidad-banleasing"/>
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>

			<!-- Separador -->
			<fo:block space-after="3mm">
				
			</fo:block>
			<!-- Separador -->

			<!-- FIN Banleasing -->
		</xsl:if>

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
									<xsl:value-of select="negocios-vigentes/rutaImagen"/>01-bullet2-rj.gif
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
		<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-left="2mm" padding-before="1mm" >
							<fo:external-graphic height="1mm" width="1mm">
								<xsl:attribute name="src">
									<xsl:value-of select="negocios-vigentes/rutaImagen"/>01-bullet1-rj.gif
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