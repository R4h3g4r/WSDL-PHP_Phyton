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
												<xsl:value-of select="productos-vigentes/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="productos-vigentes/fechaGestion"/>
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
								<xsl:value-of select="productos-vigentes/cliente"/>
							</fo:block>
							<!-- nombre cliente -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- rut cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
								<fo:inline color="{$txt}">RUT: </fo:inline>
								<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="productos-vigentes/rut"/></fo:inline>
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
							Resumen de Productos
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
			<fo:inline font-weight="bold"><xsl:value-of select="productos-vigentes/ejecutivo"/>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;</fo:inline>
			<fo:inline font-weight="normal" space-before="30pt">Oficina: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="productos-vigentes/oficina"/></fo:inline>
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
										<xsl:value-of select="productos-vigentes/rutaImagen"/>01-bullet2-rj.gif
									</xsl:attribute>
								</fo:external-graphic>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block>
									Productos Vigentes
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

		<xsl:if test="count(productos-vigentes/listado-ctas-corrientes/detalle-cta-corriente) > 0">
			<!-- CUENTA CORRIENTE -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="3cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="3cm" />
					<fo:table-column column-width="3cm" />
					<fo:table-column column-width="3cm" />
					<fo:table-column column-width="4cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="6" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
							&#0160;&#0160;&#0160;CUENTA CORRIENTE</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;N°Cuenta
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Intereses
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Saldo Disponible
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Saldo Contable
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Retenciones
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;4 últimos cheques
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="productos-vigentes/listado-ctas-corrientes/detalle-cta-corriente">
						<fo:table-row>
							<xsl:choose>
							<xsl:when test="contains(numCta, 'No posee inf')">
								<fo:table-cell border="0.5pt solid {$lineas}"  number-columns-spanned="6">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="numCta"/>
									</fo:block>
								</fo:table-cell>
							</xsl:when>
							<xsl:otherwise>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="numCta"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="intereses"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}"> 
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="saldoDisponible"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="saldoContable"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
										&#0160;<xsl:value-of select="retenciones"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="ultimosCheques"/>
									</fo:block>
								</fo:table-cell>
							</xsl:otherwise>
							</xsl:choose>
						</fo:table-row>
						</xsl:for-each>
					</fo:table-body>
				</fo:table>
			</fo:block>
			
			<!-- Separador -->
			<fo:block space-after="2mm">
				
			</fo:block>
			<!-- Separador -->

			<!-- FIN CUENTA CORRIENTE -->
		</xsl:if>

		<xsl:if test="count(productos-vigentes/listado-ctas-primas/detalle-cta-prima) > 0">
			<!-- CUENTA PRIMA -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="3cm" />
					<fo:table-column column-width="4cm" />
					<fo:table-column column-width="4cm" />
					<fo:table-column column-width="7cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="4" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
							&#0160;&#0160;&#0160;CUENTA PRIMA</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;N°Cuenta
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Saldo Disponible
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Saldo Contable
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Retenciones
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="productos-vigentes/listado-ctas-primas/detalle-cta-prima">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="numCta"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
									&#0160;<xsl:value-of select="saldoDisponible"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
									&#0160;<xsl:value-of select="saldoContable"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
									&#0160;<xsl:value-of select="retenciones"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
					</fo:table-body>
				</fo:table>
			</fo:block>
			
			<!-- Separador -->
			<fo:block space-after="2mm">

			</fo:block>
			<!-- Separador -->
			<!-- FIN CUENTA PRIMA -->
		</xsl:if>

		<xsl:if test="count(productos-vigentes/listado-tarjetas-bci/detalle-tarjeta-bci) > 0">
			<!-- TARJETA BCI -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="4cm" />
					<fo:table-column column-width="4cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="4cm" />
					<fo:table-column column-width="4cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="5" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
							&#0160;&#0160;&#0160;TARJETA BCI</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;N°Tarjeta
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;RUT Usuario
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Estado
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Transantiago
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Clase
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="productos-vigentes/listado-tarjetas-bci/detalle-tarjeta-bci">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="numTarjeta"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="rutUsuario"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="estado"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="transantiago"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="clase"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
					</fo:table-body>
				</fo:table>
			</fo:block>
			
			<!-- Separador -->
			<fo:block space-after="2mm">

			</fo:block>
			<!-- Separador -->

			<!-- FIN TARJETA BCI -->
		</xsl:if>

		<xsl:if test="count(productos-vigentes/listado-lineas-sobregiro/detalle-linea-sobregiro) > 0">
			<!-- LINEA SOBREGIRO -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="3cm" />
					<fo:table-column column-width="3cm" />
					<fo:table-column column-width="3cm" />
					<fo:table-column column-width="3cm" />
					<fo:table-column column-width="3cm" />
					<fo:table-column column-width="3cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="6" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
							&#0160;&#0160;&#0160;LINEA DE SOBREGIRO</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;N°Cuenta
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Cuenta Corriente
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Valor Autorizado
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Monto Utilizado
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Intereses Diarios
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Fecha de Vencimiento
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="productos-vigentes/listado-lineas-sobregiro/detalle-linea-sobregiro">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="numCta"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="ctaCorriente"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
									&#0160;<xsl:value-of select="valorAutorizado"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
									&#0160;<xsl:value-of select="montoUtilizado"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
									&#0160;<xsl:value-of select="interesesDiarios"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="fechaNacimiento"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
					</fo:table-body>
				</fo:table>
			</fo:block>
			
			<!-- Separador -->
			<fo:block space-after="2mm">

			</fo:block>
			<!-- Separador -->
			<!-- FIN LINEA SOBREGIRO -->
		</xsl:if>

		<xsl:if test="count(productos-vigentes/listado-tarjetas-credito/detalle-tarjeta-credito) > 0">
			<!-- TARJETA DE CREDITO -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="3cm" />
					<fo:table-column column-width="4cm" />
					<fo:table-column column-width="3cm" />
					<fo:table-column column-width="3cm" />
					<fo:table-column column-width="3cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="6" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
							&#0160;&#0160;&#0160;TARJETA DE CREDITO</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Tipo
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;N° Tarjeta
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Tipo de Cliente
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Estado Cuenta
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Bloqueo Cuenta
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Fecha de Activación
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="productos-vigentes/listado-tarjetas-credito/detalle-tarjeta-credito">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="descripcionLogo"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="numeroTarjeta"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="tipoCliente"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="estado"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="glosaBloqueo"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="fechaActivacion"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
					</fo:table-body>
				</fo:table>
			</fo:block>
			
			<!-- Separador -->
			<fo:block space-after="2mm">

			</fo:block>
			<!-- Separador -->

			<!-- FIN TARJETA DE CREDITO -->
		</xsl:if>



		<xsl:if test="count(productos-vigentes/listado-cred-vigentes/detalle-cred-vigente) > 0">
			<!-- CREDITOS VIGENTES -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="5cm" />
					<fo:table-column column-width="1.5cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="1.5cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="8" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
							&#0160;&#0160;&#0160;CREDITOS VIGENTES</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row keep-with-next="always">
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;N° Crédito 
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Descripción
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Moneda
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Monto del Crédito
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Saldo a la Fecha
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Monto de la Cuota
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Fecha de Vcto
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Cuotas Pagadas / Total
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="productos-vigentes/listado-cred-vigentes/detalle-cred-vigente">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="numCredito"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="descripcion"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="moneda"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
									&#0160;<xsl:value-of select="montoCredito"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
									&#0160;<xsl:value-of select="saldoAFecha"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
									&#0160;<xsl:value-of select="montoCuota"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="fechaVcto"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="cuotasPagadasTotal"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
					</fo:table-body>
				</fo:table>
			</fo:block>
			
			<!-- Separador -->
			<fo:block space-after="2mm">

			</fo:block>
			<!-- Separador -->

			<!-- FIN CREDITOS VIGENTES -->
		</xsl:if>

		<xsl:if test="count(productos-vigentes/listado-cred-hipotecarios/detalle-credito-hipotecario) > 0">
			<!-- CREDITOS HIPOTECARIOS -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="6cm" />
					<fo:table-column column-width="6cm" />
					<fo:table-column column-width="6cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="3" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
							&#0160;&#0160;&#0160;CREDITOS HIPOTECARIOS</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;N° de Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Producto
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Estado
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="productos-vigentes/listado-cred-hipotecarios/detalle-credito-hipotecario">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="numOperacion"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="producto"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="estado"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
					</fo:table-body>
				</fo:table>
			</fo:block>
			
			<!-- Separador -->
			<fo:block space-after="2mm">

			</fo:block>
			<!-- Separador -->

			<!-- FIN CREDITOS HIPOTECARIOS -->
		</xsl:if>

		<xsl:if test="count(productos-vigentes/listado-pac/detalle-pac) > 0">
			<!-- PAC -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="1cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="5cm" />
					<fo:table-column column-width="3.5cm" />
					<fo:table-column column-width="3.5cm" />
					<fo:table-column column-width="3cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="6" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
							&#0160;&#0160;&#0160;PAC - PAGO AUTOMATICO DE CUENTAS</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Est.
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;N° Convenio
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Compañía
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Cuenta Corriente de Cargo
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Monto Máximo en UF
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Fecha de Ingreso
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="productos-vigentes/listado-pac/detalle-pac">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									<xsl:if test="est!=''">
									<fo:external-graphic>
										<xsl:attribute name="src">
											<xsl:value-of select="/productos-vigentes/rutaImagen"/><xsl:value-of select="est"/>
										</xsl:attribute>
									</fo:external-graphic>
									</xsl:if>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="numConvenio"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="compania"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="ctaCorrienteCargo"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
									&#0160;<xsl:value-of select="montoMaxUF"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="fechaIngreso"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
					</fo:table-body>
				</fo:table>
			</fo:block>
			
			<!-- Separador -->
			<fo:block space-after="2mm">

			</fo:block>
			<!-- Separador -->

			<!-- FIN PAC -->
		</xsl:if>

		<xsl:if test="count(productos-vigentes/listado-bci-seguro/detalle-bci-seguro) > 0">
			<!-- BCI SEGURO -->
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="4cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="3cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-column column-width="1cm" />
					<fo:table-column column-width="2cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="8" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
							&#0160;&#0160;&#0160;BCI SEGUROS</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Código Producto
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Tipo de Seguro
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Glosa del Producto
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;N° de Póliza
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Fecha de Operación
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Fecha de Póliza
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Prima
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Estado
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="productos-vigentes/listado-bci-seguro/detalle-bci-seguro">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="codigoProducto"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="tipoSeguro"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="glosaProducto"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="numPoliza"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="fechaOperacion"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="fechaPoliza"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" margin-right="1mm" text-align="center">
									&#0160;<xsl:value-of select="prima"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="estado"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
					</fo:table-body>
				</fo:table>
			</fo:block>
			
			<!-- Separador -->
			<fo:block space-after="2mm">

			</fo:block>
			<!-- Separador -->

			<!-- FIN BCI SEGURO -->
		</xsl:if>
		<!-- CARTOLA DE INVERSIONES-->
		<xsl:if test="count(productos-vigentes/listado-productos-inversiones/productoCartola) > 0">
			<fo:block font-size="7pt" space-after="1mm" text-align="right">
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="6cm" />
					<fo:table-column column-width="6cm" />
					<fo:table-column column-width="6cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell background-color="{$txt-celeste}" number-columns-spanned="8" border="0.5pt solid {$lineas}">
								<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;&#0160;&#0160;INVERSIONES
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Productos
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Moneda
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;Total Pesos
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="productos-vigentes/listado-productos-inversiones/productoCartola">
							<fo:table-row>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
										&#0160;&#0160;&#0160;<xsl:value-of select="nombre"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid {$lineas}">
									<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="right">
										&#0160;<xsl:value-of select="montoPesos"/>&#0160;&#0160;&#0160;
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</xsl:for-each>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</xsl:if>
		<!--FIN CARTOLA DE INVERSIONES-->

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
									<xsl:value-of select="productos-vigentes/rutaImagen"/>01-bullet2-rj.gif
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
									<xsl:value-of select="productos-vigentes/rutaImagen"/>01-bullet1-rj.gif
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