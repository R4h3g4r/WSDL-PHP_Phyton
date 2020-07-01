<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina" page-height="28cm" page-width="22cm" margin-top="1cm" margin-bottom="1cm" margin-left="2cm" margin-right="2cm">
					<fo:region-body margin-top="1cm" margin-bottom="3.5cm"/>
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="es" country="cl">
				<fo:static-content flow-name="xsl-region-before">
					<fo:block space-after="0mm" border-bottom-style="solid" border-bottom-color="{$gris-oscuro}" border-top-width="thin">
						<fo:external-graphic height="5mm">
							<xsl:attribute name="src">
								<xsl:value-of select="info/rutaImagen"/>02-logo-bci.gif</xsl:attribute>
						</fo:external-graphic>
					</fo:block>
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after">
					<fo:block space-after="1mm">
						<xsl:call-template name="linea"/>
					</fo:block>
					<fo:block font-size="9pt" font-weight="normal" space-after="1mm" text-align="left" color="{$negro}">Para Consultas o Comentarios Comuníquese al 600 6928000</fo:block>
					<fo:block font-size="5pt" font-weight="bold" space-after="1mm" text-align="right" color="{$negro}">Pagina <fo:page-number/></fo:block>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<xsl:call-template name="contenido2"/>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>

	<xsl:template name="contenido">
		<fo:block space-before="{$espacio-bloque}">
			<xsl:call-template name="titulo">
				<xsl:with-param name="texto" select="'Resumen Cliente'"/>
			</xsl:call-template>
		</fo:block>
		<xsl:if test="info/error">
			<fo:block color="{$rojo-oscuro}" space-before="{$espacio-bloque}">
				<xsl:value-of select="info/error"/>
			</fo:block>
		</xsl:if>
		<xsl:if test="not(info/error)">
			<fo:block space-before="{$espacio-bloque}">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="14cm"/>
					<fo:table-column column-width="3mm"/>
					<fo:table-column column-width="3cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<xsl:call-template name="datos-cliente"/>
							</fo:table-cell>
							<fo:table-cell/>
							<fo:table-cell>
								<xsl:call-template name="semaforos"/>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<fo:block space-before="{$espacio-bloque}">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="6cm"/>
					<fo:table-column column-width="6cm"/>
					<fo:table-column column-width="6cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<xsl:call-template name="resumenIversiones"/>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<fo:block space-before="{$espacio-bloque}">
				<xsl:call-template name="margen"/>
			</fo:block>
			<fo:block space-before="{$espacio-bloque}">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="7.5cm"/>
					<fo:table-column column-width="10.5cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<xsl:call-template name="deuda-bci"/>
							</fo:table-cell>
							<fo:table-cell>
								<xsl:call-template name="deuda-super"/>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<fo:block space-before="{$espacio-bloque}">
				<xsl:call-template name="garantias"/>
			</fo:block>
		</xsl:if>
	</xsl:template>

	

	<!-- CONTENIDO DEL DOCUMENTO -->
	<xsl:template name="contenido2">
		<fo:block space-before="{$espacio-bloque}">
			<xsl:call-template name="titulo">
				<xsl:with-param name="texto" select="'Resumen Cliente'"/>
			</xsl:call-template>
		</fo:block>
		<xsl:if test="info/error">
			<fo:block color="{$rojo-oscuro}" space-before="{$espacio-bloque}">
				<xsl:value-of select="info/error"/>
			</fo:block>
		</xsl:if>
		<xsl:if test="not(info/error)">
			<!-- zona datos personales -->
			<fo:block space-before="{$espacio-bloque}">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="14cm"/>
					<fo:table-column column-width="3mm"/>
					<fo:table-column column-width="3cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<xsl:call-template name="datos-cliente"/>
							</fo:table-cell>
							<fo:table-cell/>
							<fo:table-cell>
								<xsl:call-template name="indicadores"/>								
								<fo:block space-after="1mm"/>
								<xsl:call-template name="semaforos"/>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!-- zona superior -->
			<fo:block space-before="{$espacio-bloque}">
					<fo:table cellspacing="1cm">
						<fo:table-column column-width="9cm"/>
						<fo:table-column column-width="10cm"/>
						<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
							<xsl:call-template name="campanas"/>
							<xsl:call-template name="rentabilidad"/>
							</fo:table-cell>
							<fo:table-cell>
							<xsl:call-template name="resumenIversiones"/>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
							<xsl:call-template name="deuda-bci"/>
							</fo:table-cell>
						</fo:table-row>
						</fo:table-body>
					</fo:table>
			</fo:block>
			<!-- zona media -->
			<fo:block space-before="{$espacio-bloque}">
				<fo:table table-layout="fixed">
					<fo:table-column/>
					<fo:table-body>
						<fo:table-row  padding-top="1cm">
							<fo:table-cell>
								<xsl:call-template name="garantias"/>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row  padding-top="1cm">
							<fo:table-cell>
								<xsl:call-template name="margen"/>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!-- zona inferior -->
			<fo:block space-before="{$espacio-bloque}">
				<fo:table>
					<fo:table-column colum-width="12cm"/>
					<fo:table-column colum-width="6cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<xsl:call-template name="deuda-super"/>
							</fo:table-cell>
							<fo:table-cell cell-align="right">
								<xsl:call-template name="detallesbif"/>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</xsl:if>
	</xsl:template>

	<!-- Indicadores -->
	<xsl:template name="indicadores">
		<fo:block font-size="5pt">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="3.7cm"/>
				<fo:table-body>
					<fo:table-row>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="'Indicadores'"/>
							<xsl:with-param name="font-weight" select="'bold'"/>
							<xsl:with-param name="background-color" select="$gris-suave"/>
						</xsl:call-template>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border-top-style="solid" border-top-width="thin" border-top-color="{$gris-oscuro}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$gris-oscuro}" border-left-style="solid"
						               border-left-width="thin" border-left-color="{$gris-oscuro}" border-right-style="solid" border-right-width="thin" border-right-color="{$gris-oscuro}">
							<fo:table table-layout="fixed">
								<fo:table-column column-width="2.9cm"/>
								<fo:table-column column-width="2.9cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell number-columns-spanned="1" number-rows-spanned="1">
											<fo:block  font-size="6pt" text-align="left" space-before="1mm" space-after="1mm" start-indent="1mm">
												Contrato Multicanal
											</fo:block>
										</fo:table-cell>
										<fo:table-cell number-columns-spanned="1" number-rows-spanned="1">
											<xsl:if test="info/cliente/mandato = 'SI'">
											<fo:block font-size="8pt" font-weight="bold" text-align="left" space-before="1mm" space-after="1mm" start-indent="1mm">
												<fo:external-graphic height="3mm">
												<xsl:attribute name="src">
													<xsl:value-of select="info/rutaImagen"/>00-bullet-check-on.gif</xsl:attribute>
												</fo:external-graphic>
											</fo:block>
											</xsl:if>
											<xsl:if test="info/cliente/mandato = 'NO'">
											<fo:block font-size="8pt" font-weight="bold" text-align="left" space-after="1mm">
												<fo:external-graphic height="5mm">
												<xsl:attribute name="src">
													<xsl:value-of select="info/rutaImagen"/>malo.gif</xsl:attribute>
												</fo:external-graphic>
											</fo:block>
											</xsl:if>
										</fo:table-cell>
									</fo:table-row>

								</fo:table-body>
							</fo:table>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border-top-style="solid" border-top-width="thin" border-top-color="{$gris-oscuro}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$gris-oscuro}" border-left-style="solid"
						               border-left-width="thin" border-left-color="{$gris-oscuro}" border-right-style="solid" border-right-width="thin" border-right-color="{$gris-oscuro}">
							<fo:table table-layout="fixed">
								<fo:table-column column-width="2.9cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block font-size="6pt" space-before="1mm" space-after="1mm" start-indent="1mm">
												Lealtad del Cliente
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block text-align="left" space-before="1mm" space-after="1mm" start-indent="1mm">
												<fo:block font-size="6pt" font-weight="bold" text-align="left" space-after="1mm">
													<xsl:value-of select="info/cliente/mensajeCuadranteCliente"/>
												</fo:block>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<!-- Derivacion Valiosa -->
	<xsl:template name="derivacionValiosa">
	<fo:block space-before="2mm">
		<xsl:call-template name="subtitulo">
			<xsl:with-param name="texto" select="'Derivacion Valiosa'"/>
		</xsl:call-template>
		<fo:table>
			<fo:table-column column-width="3cm"/>
			<fo:table-column column-width="3cm"/>
			<fo:table-body>
				<xsl:for-each select="info/Procesos">
					<fo:table-row>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="'Derivacion Valiosa'"/>
							<xsl:with-param name="text-align" select="'left'"/>
						</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="descripcion"/>
							<xsl:with-param name="text-align" select="'rigth'"/>
						</xsl:call-template>
					</fo:table-row>
				</xsl:for-each>
			</fo:table-body>
		</fo:table>
	</fo:block>
	</xsl:template>
	



	<!-- RESUMEN INVERSIONES -->
	<xsl:template name="resumenIversiones">
    <fo:block space-before="0.2cm">
		<xsl:call-template name="subtitulo">
			<xsl:with-param name="texto" select="'Resumen Inversiones'"/>
		</xsl:call-template>
		<fo:table>
			<fo:table-column column-width="3cm"/>
			<fo:table-column column-width="3cm"/>
			<fo:table-body>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Productos'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Total Pesos'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
				</fo:table-row>
				<xsl:for-each select="info/inversiones/productoArr">
					<fo:table-row>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="producto"/>
							<xsl:with-param name="text-align" select="'left'"/>
						</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="valor"/>
							<xsl:with-param name="text-align" select="'rigth'"/>
						</xsl:call-template>
					</fo:table-row>
				</xsl:for-each>
				<fo:table-row>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="'Total'"/>
							<xsl:with-param name="text-align" select="'left'"/>
						</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="info/inversiones/total"/>
							<xsl:with-param name="text-align" select="'left'"/>
						</xsl:call-template>
				</fo:table-row>

			</fo:table-body>
		</fo:table>
	</fo:block>
	</xsl:template>
	



	<!-- DATOS DEL CLIENTE -->
	<xsl:template name="datos-cliente">
		<fo:table table-layout="fixed">
			<fo:table-column column-width="3cm"/>
			<fo:table-column column-width="4cm"/>
			<fo:table-column column-width="3cm"/>
			<fo:table-column column-width="4cm"/>
			<fo:table-body>

			<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Nombre'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="concat(info/cliente/nombres, ' ' , info/cliente/apellidoPaterno, ' ', info/cliente/apellidoMaterno)"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Rut'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="concat(info/cliente/rut, '-' , info/cliente/dv )"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Banca'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="info/cliente/tipoBanca"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Segmento'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="info/cliente/segmento"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Antiguedad'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="info/cliente/Fechaapertura"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Fecha de Nacimiento'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="info/cliente/fechaNacimiento"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Renta Fija '"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="info/cliente/rentaFija"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Fecha de Renta Fija'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="info/cliente/periodoRF"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Renta Variable'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="info/cliente/rentaVariable"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Fecha de Renta Variable'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="info/cliente/periodoRV"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Plan'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="info/cliente/glosaPlan"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Convenio'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="info/cliente/conv"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Sucursal'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="info/cliente/glosaOficina"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Ejecutivo'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="info/cliente/codEjecutivo"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Doble Ejecutivo'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="info/cliente/dobleEjecutivo"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Cuenta Corriente'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="info/cliente/numeroCtaCte"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>

	<!-- SEMAFOROS -->
	<xsl:template name="semaforos">
		<fo:block font-size="6pt">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="3.7cm"/>
				<fo:table-body>
					<fo:table-row>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="'Riesgo'"/>
							<xsl:with-param name="font-weight" select="'bold'"/>
							<xsl:with-param name="background-color" select="$gris-suave"/>
						</xsl:call-template>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border-top-style="solid" border-top-width="thin" border-top-color="{$gris-oscuro}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$gris-oscuro}" border-left-style="solid"
						               border-left-width="thin" border-left-color="{$gris-oscuro}" border-right-style="solid" border-right-width="thin" border-right-color="{$gris-oscuro}">
							<fo:table table-layout="fixed">
								<fo:table-column column-width="2.5cm"/>
								<fo:table-column column-width="4.9cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block space-before="1mm" space-after="1mm" start-indent="1mm">
												<fo:inline>File</fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<xsl:call-template name="semaforo">
												<xsl:with-param name="estado" select="info/cliente/indicadorRiesgoFile"/>
												<xsl:with-param name="text-align" select="'right'"/>
											</xsl:call-template>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border-top-style="solid" border-top-width="thin" border-top-color="{$gris-oscuro}" border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$gris-oscuro}" border-left-style="solid"
						               border-left-width="thin" border-left-color="{$gris-oscuro}" border-right-style="solid" border-right-width="thin" border-right-color="{$gris-oscuro}">
							<fo:table table-layout="fixed">
								<fo:table-column column-width="2.5cm"/>
								<fo:table-column column-width="4.9cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block space-before="1mm" space-after="1mm" start-indent="1mm">
												<xsl:value-of select="concat('Eventos Pendientes (', info/semaforo/eventos/numeroEventos, ')')"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<xsl:call-template name="semaforo">
												<xsl:with-param name="estado" select="info/semaforo/eventos/colorSemaforo"/>
												<xsl:with-param name="text-align" select="'right'"/>
											</xsl:call-template>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<!-- RENTABILIDAD -->
	<xsl:template name="rentabilidad">
    <fo:block space-before="0.2cm">
		<xsl:call-template name="subtitulo">
			<xsl:with-param name="texto" select="'Rentabilidad'"/>
		</xsl:call-template>
	</fo:block>
		<fo:table table-layout="fixed">
			<fo:table-column column-width="2.5cm"/>
			<fo:table-column column-width="2cm"/>
			<fo:table-body>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Rentabilidad Esperada:'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="concat('M$ ', format-number(info/rentabilidad/rentabilidadEsperada, $miles, 'CL'))"/>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Rentabilidad Actual:'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="concat('M$ ' , format-number(info/rentabilidad/rentabilidadActual, $miles, 'CL'))"/>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Derivación Valiosa:'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="info/procesos/descripcion"/>
					</xsl:call-template>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>

	<!-- MARGEN GLOBAL-->
	<xsl:template name="margen">
    <fo:block space-before="0.2cm">
		<xsl:call-template name="subtitulo">
			<xsl:with-param name="texto" select="'Margen Global'"/>
		</xsl:call-template>
	</fo:block>
		<fo:table table-layout="fixed">
			<fo:table-column column-width="3.5cm"/>
			<fo:table-column column-width="2cm"/>
			<fo:table-column column-width="3.5cm"/>
			<fo:table-column column-width="2cm"/>
			<fo:table-column column-width="2cm"/>
			<fo:table-column column-width="2.5cm"/>
			<fo:table-column column-width="2.5cm"/>
			<fo:table-body>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Estado'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
						<xsl:with-param name="number-rows-spanned" select="'2'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Fecha Vcto.'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
						<xsl:with-param name="number-rows-spanned" select="'2'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Sucursal'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
						<xsl:with-param name="number-rows-spanned" select="'2'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Cupo Aprobado'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="number-columns-spanned" select="'2'"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Cupo Disponible'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="number-columns-spanned" select="'2'"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'UF'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'M$'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'UF'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'M$'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="info/margenes/estado"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="info/margenes/fechaVencimiento"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="info/margenes/sucursal"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="format-number(info/margenes/aprobadoUF, $miles, 'CL')"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="format-number(info/margenes/aprobadoPeso, $miles, 'CL')"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="format-number(info/margenes/disponibleUF, $miles, 'CL')"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="format-number(info/margenes/disponiblePeso, $miles, 'CL')"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<!-- detalle -->
		<fo:table table-layout="fixed" space-before="2mm">
			<fo:table-column column-width="3.5cm"/>
			<fo:table-column column-width="1.5cm"/>
			<fo:table-column column-width="1.5cm"/>
			<fo:table-column column-width="1.5cm"/>
			<fo:table-column column-width="1.5cm"/>
			<fo:table-column column-width="1.5cm"/>
			<fo:table-column column-width="1.5cm"/>
			<fo:table-column column-width="2cm"/>
			<fo:table-column column-width="3.5cm"/>
			
			<fo:table-body>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Detalle'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
						<xsl:with-param name="number-rows-spanned" select="'2'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Aprobado'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
						<xsl:with-param name="number-columns-spanned" select="'2'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Contratado'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
						<xsl:with-param name="number-columns-spanned" select="'2'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Aprob/Contr'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
						<xsl:with-param name="number-columns-spanned" select="'2'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Vencimiento'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
						<xsl:with-param name="number-rows-spanned" select="'2'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Garantía'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
						<xsl:with-param name="number-rows-spanned" select="'2'"/>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'UF'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'M$'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'UF'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'M$'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'UF'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'M$'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
				</fo:table-row>
				<xsl:if test="count(info/margenes/detalle) > 0">
				<xsl:for-each select="info/margenes/detalle">
					<fo:table-row>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="descripcion"/>
						</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="format-number(aprobadoUF, $miles, 'CL')"/>
							<xsl:with-param name="text-align" select="'center'"/>
						</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="format-number(aprobadoPeso, $miles, 'CL')"/>
							<xsl:with-param name="text-align" select="'center'"/>
						</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="format-number(contratadoUF, $miles, 'CL')"/>
							<xsl:with-param name="text-align" select="'center'"/>
						</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="format-number(contratadoPeso, $miles, 'CL')"/>
							<xsl:with-param name="text-align" select="'center'"/>
						</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="format-number(aprobadoContratadoUF, $miles, 'CL')"/>
							<xsl:with-param name="text-align" select="'center'"/>
							<xsl:with-param name="background-color" select="$amarillo"/>
						</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="format-number(aprobadoContratadoPeso, $miles, 'CL')"/>
							<xsl:with-param name="text-align" select="'center'"/>
							<xsl:with-param name="background-color" select="$amarillo"/>
						</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="vencimiento"/>
							<xsl:with-param name="text-align" select="'center'"/>
						</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="garantia"/>
							<xsl:with-param name="text-align" select="'center'"/>
						</xsl:call-template>
					</fo:table-row>
				</xsl:for-each>
				</xsl:if>
			</fo:table-body>
		</fo:table>
	</xsl:template>

	<!-- DEUDA BCI -->
	<xsl:template name="deuda-bci">
    <fo:block space-before="0.2cm">
		<xsl:call-template name="subtitulo">
			<xsl:with-param name="texto" select="'Deuda BCI'"/>
		</xsl:call-template>
	</fo:block>
		<xsl:call-template name="subtitulo-2">
			<xsl:with-param name="texto" select="'Detalle Deuda BCI'"/>
		</xsl:call-template>
		<fo:table table-layout="fixed">
			<fo:table-column column-width="5cm"/>
			<fo:table-column column-width="2.2cm"/>
			<fo:table-column column-width="2.2cm"/>
			<fo:table-column column-width="2.2cm"/>
			<fo:table-column column-width="2.2cm"/>
			<fo:table-column column-width="4.2cm"/>
			<fo:table-body>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Producto'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Vigente'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Moroso'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Vencido'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Castigado'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Total'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
					</xsl:call-template>
				</fo:table-row>
				<xsl:for-each select="info/deudas">
					<fo:table-row>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="producto"/>
						</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="moroso"/>
						</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="vigente"/>
						</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="vencido"/>
						</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="castigado"/>
						</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="format-number(total, $miles, 'CL')"/>
						</xsl:call-template>
					</fo:table-row>
				</xsl:for-each>
			</fo:table-body>
		</fo:table>
	</xsl:template>

	
	<!-- DEUDA SUPER -->
	<xsl:template name="deuda-super">
    <fo:block space-before="0.2cm">
		<xsl:call-template name="subtitulo">
			<xsl:with-param name="texto" select="concat('Deuda CMFChile al ', info/deudasSBIF/fecAct)"/>
		</xsl:call-template>
	</fo:block>
	<xsl:choose>
		<xsl:when test="count(info/deudasSBIF) > 0">
	<fo:table table-layout="fixed">
			<fo:table-column column-width="3cm"/>
			<fo:table-column column-width="2cm"/>
			<fo:table-body>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Directa Vigentes'"/>
					</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="format-number(info/deudasSBIF/directaVigente, $miles, 'CL')"/>
							<xsl:with-param name="text-align" select="'left'"/>
						</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Directa Morosa'"/>
					</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="format-number(info/deudasSBIF/directaMorosa, $miles, 'CL')"/>
							<xsl:with-param name="text-align" select="'left'"/>
						</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Directa Vencida'"/>
					</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="format-number(info/deudasSBIF/directaVencida, $miles, 'CL')"/>
							<xsl:with-param name="text-align" select="'left'"/>
						</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Directa Castigada'"/>
					</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="format-number(info/deudasSBIF/directaCastigada, $miles, 'CL')"/>
							<xsl:with-param name="text-align" select="'left'"/>
						</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Indirecta Vigente'"/>
					</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="format-number(info/deudasSBIF/indirectaVigente, $miles, 'CL')"/>
							<xsl:with-param name="text-align" select="'left'"/>
						</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Indirecta Morosa'"/>
					</xsl:call-template>
						<xsl:call-template name="celda">
							 <xsl:with-param name="texto" select="'N/D'"/>
							<xsl:with-param name="text-align" select="'left'"/>
						</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Indirecta Vencida '"/>
					</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="format-number(info/deudasSBIF/indirectaVencida, $miles, 'CL')"/>
							<xsl:with-param name="text-align" select="'left'"/>
						</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Indirecta Castigada '"/>
					</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="format-number(info/deudasSBIF/indirectaCastigada, $miles, 'CL')"/>
							<xsl:with-param name="text-align" select="'left'"/>
						</xsl:call-template>
				</fo:table-row>
								<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Total Deuda Super'"/>
					</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="format-number(info/deudasSBIF/totalDeudaSuper, $miles, 'CL')"/>
							<xsl:with-param name="text-align" select="'left'"/>
						</xsl:call-template>
				</fo:table-row>
								<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Infracciones Laborales'"/>
					</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="info/deudasSBIF/infraccionesLaborales"/>
							<xsl:with-param name="text-align" select="'left'"/>
						</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Protestos CMFChile Vigentes'"/>
					</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="format-number(info/deudasSBIF/protestosBoletin, $miles, 'CL')"/>
							<xsl:with-param name="text-align" select="'left'"/>
						</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Morosos Comercio'"/>
					</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="format-number(info/deudasSBIF/morososComercio, $miles, 'CL')"/>
							<xsl:with-param name="text-align" select="'left'"/>
						</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Protestos Bci Vigentes'"/>
					</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="format-number(info/deudasSBIF/protestosBCIVigentes, $miles, 'CL')"/>
							<xsl:with-param name="text-align" select="'left'"/>
						</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Aclaraciones Bci '"/>
					</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="format-number(info/deudasSBIF/aclaraciones, $miles, 'CL')"/>
							<xsl:with-param name="text-aklign" select="'left'"/>
						</xsl:call-template>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		</xsl:when>
		<xsl:otherwise>
			<fo:block text-align="left" color="{$gris-oscuro}">
				No Disponible
			</fo:block>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<!-- GARANTIAS -->
	<xsl:template name="garantias">
    <fo:block space-before="0.2cm">
		<xsl:call-template name="subtitulo">
			<xsl:with-param name="texto" select="'Garantías'"/>
		</xsl:call-template>
	</fo:block>
		<fo:table table-layout="fixed">
			<fo:table-column column-width="4cm"/>
			<fo:table-column column-width="4.5cm"/>
			<fo:table-column column-width="2.5cm"/>
			<fo:table-column column-width="1cm"/>
			<fo:table-column column-width="2cm"/>
			<fo:table-column column-width="2cm"/>
			<fo:table-column column-width="2cm"/>
			<fo:table-body>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Tipo Garantía'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Nombre/Glosa'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'RUT/Vcto'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'E/G'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Fecha Tasación'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Valor Comercial'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Valor Liquidación'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'center'"/>
					</xsl:call-template>
				</fo:table-row>
				<xsl:for-each select="info/garantia/garantias">
					<fo:table-row>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="tipoGarantia"/>
							<xsl:with-param name="text-align" select="'center'"/>
						</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="nombreGlosa"/>
							<xsl:with-param name="text-align" select="'center'"/>
						</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="rutVcto"/>
							<xsl:with-param name="text-align" select="'center'"/>
						</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="limite"/>
							<xsl:with-param name="text-align" select="'center'"/>
						</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="fechaTasacion"/>
							<xsl:with-param name="text-align" select="'center'"/>
						</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="valorComercial"/>
							<xsl:with-param name="text-align" select="'center'"/>
						</xsl:call-template>
						<xsl:call-template name="celda">
							<xsl:with-param name="texto" select="valorLiquidacion"/>
							<xsl:with-param name="text-align" select="'center'"/>
						</xsl:call-template>
					</fo:table-row>
				</xsl:for-each>
			</fo:table-body>
		</fo:table>
		<fo:table table-layout="fixed">
			<fo:table-column column-width="14cm"/>
			<fo:table-column column-width="2cm"/>
			<fo:table-column column-width="2cm"/>
			<fo:table-body>
			<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Total Garantías Reales'"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'right'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="info/garantia/totalGarRealCom"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'right'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="info/garantia/totalGarRealLiq"/>
						<xsl:with-param name="background-color" select="$gris-suave"/>
						<xsl:with-param name="text-align" select="'right'"/>
					</xsl:call-template>
			</fo:table-row>
			</fo:table-body>
		</fo:table>

	
	</xsl:template>

	<!-- Detalle Deuda SBIF -->
	<xsl:template name="detallesbif">
    <fo:block space-before="2mm">
		<xsl:call-template name="subtitulo">
			<xsl:with-param name="texto" select="'Detalle Deuda CMFChile'"/>
		</xsl:call-template>
	</fo:block>
	<xsl:choose>
	<xsl:when test="count(info/detalleDeudaSBIF) > 0">

		<fo:table table-layout="fixed">
		<fo:table-column column-width="3cm"/>
		<fo:table-column column-width="3cm"/>
		<fo:table-body>
			<fo:table-row>
				<xsl:call-template name="celda">
					<xsl:with-param name="texto" select="'Producto'"/>
					<xsl:with-param name="background-color" select="$gris-suave"/>
				</xsl:call-template>
				<xsl:call-template name="celda">
					<xsl:with-param name="texto" select="'Monto M$'"/>
					<xsl:with-param name="background-color" select="$gris-suave"/>
				</xsl:call-template>
			</fo:table-row>
			<fo:table-row>
				<xsl:call-template name="celda">
					<xsl:with-param name="texto" select="'Directa Comercial'"/>
				</xsl:call-template>
				<xsl:call-template name="celda">
					<xsl:with-param name="texto" select="info/detalleDeudaSBIF/directaComercial"/>
				</xsl:call-template>
			</fo:table-row>
			<fo:table-row>
				<xsl:call-template name="celda">
					<xsl:with-param name="texto" select="'Credito Consumo'"/>
				</xsl:call-template>
				<xsl:call-template name="celda">
					<xsl:with-param name="texto" select="info/detalleDeudaSBIF/creditoConsumo"/>
				</xsl:call-template>
			</fo:table-row>
			<fo:table-row>
				<xsl:call-template name="celda">
					<xsl:with-param name="texto" select="'Deuda Hipotecaria'"/>
				</xsl:call-template>
				<xsl:call-template name="celda">
					<xsl:with-param name="texto" select="info/detalleDeudaSBIF/deudaHipotecaria"/>
				</xsl:call-template>
			</fo:table-row>
			<fo:table-row>
				<xsl:call-template name="celda">
					<xsl:with-param name="texto" select="'Instituciones en que presenta Deuda'"/>
				</xsl:call-template>
				<xsl:call-template name="celda">
					<xsl:with-param name="texto" select="info/detalleDeudaSBIF/intitucionesDeuda"/>
				</xsl:call-template>
			</fo:table-row>
			<fo:table-row>
				<xsl:call-template name="celda">
					<xsl:with-param name="texto" select="'Total Directa'"/>
				</xsl:call-template>
				<xsl:call-template name="celda">
					<xsl:with-param name="texto" select="info/detalleDeudaSBIF/totalDirecta"/>
				</xsl:call-template>
			</fo:table-row>
		</fo:table-body>
		</fo:table>
	</xsl:when>
<xsl:otherwise>
			<fo:block text-align="left" color="{$gris-oscuro}">
				No Disponible
			</fo:block>
	
</xsl:otherwise>
</xsl:choose>
	</xsl:template>	

	<!-- plantillas -->
	<xsl:template name="celda">
		<xsl:param name="background-color" select="'white'"/>
		<xsl:param name="font-weight" select="'normal'"/>
		<xsl:param name="font-size" select="'6pt'"/>
		<xsl:param name="number-columns-spanned" select="'1'"/>
		<xsl:param name="number-rows-spanned" select="'1'"/>
		<xsl:param name="text-align" select="'left'"/>
		<xsl:param name="texto"/>
		<xsl:variable name="espacio" select="'0.4mm'"/>
		<fo:table-cell background-color="{$background-color}" number-columns-spanned="{$number-columns-spanned}" number-rows-spanned="{$number-rows-spanned}" border-top-style="solid" border-top-width="thin" border-top-color="{$gris-oscuro}"
		               border-bottom-style="solid" border-bottom-width="thin" border-bottom-color="{$gris-oscuro}" border-left-style="solid" border-left-width="thin" border-left-color="{$gris-oscuro}" border-right-style="solid" border-right-width="thin"
		               border-right-color="{$gris-oscuro}">
			<fo:block text-align="{$text-align}" font-weight="{$font-weight}" font-size="{$font-size}" space-before="{$espacio}" space-after="{$espacio}" start-indent="{$espacio}" end-indent="{$espacio}">
				<xsl:value-of select="$texto"/>
			</fo:block>
		</fo:table-cell>
	</xsl:template>
	<xsl:template name="semaforo">
		<xsl:param name="text-align" select="'left'"/>
		<xsl:param name="estado" select="'V'"/>
		<xsl:variable name="espacio" select="'1mm'"/>
		<fo:block text-align="{$text-align}" space-before="1mm" space-after="1mm" start-indent="1mm">
					<xsl:if test="$estado = 'V'  or  $estado = 'T'">
						<fo:block font-size="6pt" font-weight="bold" text-align="left">
							Verde
						</fo:block>
					</xsl:if>
					<xsl:if test="$estado = 'A'">
						<fo:block font-size="6pt" font-weight="bold" text-align="left">
							Amarillo
						</fo:block>
					</xsl:if>
					<xsl:if test="$estado = 'R'">
						<fo:block font-size="6pt" font-weight="bold" text-align="left">
							Rojo
						</fo:block>
					</xsl:if>
		</fo:block>
		</xsl:template>
	<xsl:template name="linea">
		<fo:leader color="{$gris-oscuro}" leader-pattern="rule" leader-length="18cm"/>
	</xsl:template>
	<xsl:template name="titulo">
		<xsl:param name="texto" select="'Titulo'"/>
		<fo:block font-size="11pt" color="{$azul-oscuro}" font-weight="bold" text-align="left" space-after="1mm">
			<xsl:value-of select="$texto"/>
		</fo:block>
	</xsl:template>
	<xsl:template name="subtitulo">
		<xsl:param name="texto" select="'Titulo'"/>
		<fo:block font-size="10pt" color="{$azul-oscuro}" font-weight="bold" text-align="left" space-after="1mm">
			<xsl:value-of select="$texto"/>
		</fo:block>
	</xsl:template>
	<xsl:template name="subtitulo-2">
		<xsl:param name="texto" select="'Titulo'"/>
		<fo:block font-size="8pt" font-weight="bold" text-align="left" space-after="1mm">
			<xsl:value-of select="$texto"/>
		</fo:block>
	</xsl:template>


	<xsl:template name="campanas">
		<xsl:call-template name="subtitulo">
			<xsl:with-param name="texto" select="'Campañas'"/>
		</xsl:call-template>

		<!-- TABLA CAMPANAS-->
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="4cm"/>
			<fo:table-body>

				<xsl:choose>
				<xsl:when test="count(info/campanas) > 0">
					<!-- ITERACION -->
					<xsl:for-each select="info/campanas">
					<fo:table-row font-size="{$size-fuente-margen}">
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<!-- ITEM CAMPANA -->
							<fo:block text-align="left" color="{$txt}">
								<xsl:value-of select="nombreOferta"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<!-- FIN ITERACION -->
					</xsl:for-each>
				</xsl:when>
				<xsl:otherwise>
					<fo:table-row font-size="{$size-fuente-margen}">
						<fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<!-- ITEM CAMPANA -->
							<fo:block text-align="left" color="{$txt}">
								Sin Campañas
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:otherwise>
				</xsl:choose>

			</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- TABLA -->
     </xsl:template>

	<!-- colores -->
	<xsl:variable name="negro">#000000</xsl:variable>
	<xsl:variable name="azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="azul-oscuro">#0361A2</xsl:variable>
	<xsl:variable name="gris-oscuro">#CCCCCC</xsl:variable>
	<xsl:variable name="gris-suave">#F2F2F2</xsl:variable>
	<xsl:variable name="amarillo">#FFFF99</xsl:variable>
	<xsl:variable name="rojo-oscuro">#9E1233</xsl:variable>
	<xsl:variable name="espacio-bloque">0.5mm</xsl:variable>
	<xsl:variable name="miles">#.###</xsl:variable>
	<xsl:variable name="size-fuente-margen">7pt</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="espacio-texto-celda-left">2mm</xsl:variable>
	<xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<!-- formateador -->
	<xsl:decimal-format name="CL" decimal-separator="," grouping-separator="."/>
</xsl:stylesheet>
