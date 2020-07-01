<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!-- Parametros -->
	<xsl:param name="fechaVenc"/>
	<!-- Parametros -->
	<!--Variables-->
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="rojo">#FF0000</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
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
												<xsl:value-of select="tarjeta-credito/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="tarjeta-credito/fechaImpresion"/>
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
								<xsl:value-of select="tarjeta-credito/nombre"/>
							</fo:block>
							<!-- nombre cliente -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- rut cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
								<fo:inline color="{$txt}">RUT: </fo:inline>
								<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="tarjeta-credito/rut"/></fo:inline>
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
		<!-- Titulo Cartola Línea Sobregiro-->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="13cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								Tarjeta De Crédito
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Titulo-->

		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->

		<!-- ejecutivo -->
		<fo:block font-size="9pt" text-align="left" color="{$txt}">
			<fo:inline font-weight="normal" space-before="30pt">Ejecutivo: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="tarjeta-credito/ejecutivo"/>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;</fo:inline>
			<fo:inline font-weight="normal" space-before="30pt">Oficina: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="tarjeta-credito/oficina"/></fo:inline>
		</fo:block>
		<!-- ejecutivo -->

		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->

		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src">
									<xsl:value-of select="tarjeta-credito/rutaImagen"/>01-bullet2-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								Información de la Cuenta de Crédito <xsl:value-of select="tarjeta-credito/numeroTarjetaCredito"/>
							</fo:block>
							<fo:block>
								Nombre Titular Cuenta: <xsl:value-of select="tarjeta-credito/titular"/>
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

		<!-- division 1 -->
		<fo:block>
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="8.8cm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="0.1mm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="8.8cm" />
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >

			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Logo:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/logo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Descripción Logo:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/descripcionLogo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Modelo:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/modelo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
				</fo:table-body>
			</fo:table>
			</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell background-color="{$lineas}" border="0pt solid">
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell>
			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'PCT Dólar:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/pctDolar"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'PCT Pesos:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/pctPesos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Número de Relación:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/numeroRelacion"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
				</fo:table-body>
			</fo:table>
			</fo:block>
						</fo:table-cell >
					</fo:table-row >
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- division 1 -->

		<!-- division 2 -->
		<fo:block padding-before="4pt">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="8.8cm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="0.1mm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="8.8cm" />
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >

			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Fecha de Apertura:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/fechaApertura"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Fecha de Activación por Renovación:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/fechaRenovacion"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell background-color="{$lineas}" border="0pt solid">
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell>
			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Cuenta Traspaso de Saldos:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/cuentaTraspasoSaldo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Cantidad de Adicionales:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/cantidadAdicional"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			</fo:block>
						</fo:table-cell >
					</fo:table-row >
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- division 2 -->

		<!-- division 3 -->
		<fo:block padding-before="4pt">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="8.8cm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="0.1mm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="8.8cm" />
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >

			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Fecha Última Facturación Pesos:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/fechaUltimaFactPesos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Fecha de Vencimiento Pago:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/fechaVencimientoPago"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Fecha Último Pago Pesos:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/fechaUltimoPagoPesos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Monto Último Pago Pesos:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/montoUltimoPagoPeso"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell background-color="{$lineas}" border="0pt solid">
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell>
			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Fecha Última Facturación Dólar:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/fechaUltimaFactDolar"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Fecha Vencimiento Pago Dólar:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/fechaVencimientoPagoDolar"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Fecha Último Pago Dólar:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/fechaUltimoPagoDolar"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Monto Último Pago Dólar:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:choose>
							<xsl:when test='"-"=substring(tarjeta-credito/montoUltimoPagoDolar,1,1)'>
							<fo:block font-weight="bold" color="{$rojo}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;US$ <xsl:value-of select="tarjeta-credito/montoUltimoPagoDolar"/>
							</fo:block>
							</xsl:when>
							<xsl:otherwise>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;US$ <xsl:value-of select="tarjeta-credito/montoUltimoPagoDolar"/>
							</fo:block>
							</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			</fo:block>
						</fo:table-cell >
					</fo:table-row >
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- division 3 -->

		<!-- division 4 -->
		<fo:block padding-before="4pt">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="8.8cm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="0.1mm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="8.8cm" />
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >

			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Fecha de Bloqueo 1:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/fechaBloqueo1"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Glosa Bloqueo 1:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/glosaBloqueo1"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Fecha de Bloqueo 2:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/fechaBloqueo2"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Glosa Bloqueo 2:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/glosaBloqueo2"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Indicador Cobro Administración:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/indicadorCobroComision"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Rebaja Cobro Administración:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/rebajaAdministracion"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Monto Cobro de Administración:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:choose>
							<xsl:when test='"-"=substring(tarjeta-credito/cobroAdministracion,1,1)'>
							<fo:block font-weight="bold" color="{$rojo}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/cobroAdministracion"/>
							</fo:block>
							</xsl:when>
							<xsl:otherwise>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/cobroAdministracion"/>
							</fo:block>
							</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell background-color="{$lineas}" border="0pt solid">
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell>
			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Número de Cuenta Corriente:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/numeroCuentaCorriente"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Forma de Pago:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/formaDePago"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Pago Mínimo:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/pagoMinimo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Porcentaje de Pago Mínimo:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/porcentajePagoMinimo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Ciclo de Facturación:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/cicloFacturacion"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Código FV:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/codigoFV"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			</fo:block>
						</fo:table-cell >
					</fo:table-row >
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- division 4 -->

		<!-- division 5 -->
		<fo:block padding-before="4pt">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="8.8cm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="0.1mm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="8.8cm" />
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >

			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Consumo Pesos:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:choose>
							<xsl:when test='"-"=substring(tarjeta-credito/consumoPesos,1,1)'>
							<fo:block font-weight="bold" color="{$rojo}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/consumoPesos"/>
							</fo:block>
							</xsl:when>
							<xsl:otherwise>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/consumoPesos"/>
							</fo:block>
							</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Cupo Nacional:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:choose>
							<xsl:when test='"-"=substring(tarjeta-credito/cupoNacional,1,1)'>
							<fo:block font-weight="bold" color="{$rojo}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/cupoNacional"/>
							</fo:block>
							</xsl:when>
							<xsl:otherwise>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/cupoNacional"/>
							</fo:block>
							</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Deuda Nacional:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:choose>
							<xsl:when test='"-"=substring(tarjeta-credito/deudaNacional,1,1)'>
							<fo:block font-weight="bold" color="{$rojo}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/deudaNacional"/>
							</fo:block>
							</xsl:when>
							<xsl:otherwise>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/deudaNacional"/>
							</fo:block>
							</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Deuda Nacional Facturada:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:choose>
							<xsl:when test='"-"=substring(tarjeta-credito/deudaNacionalFactura,1,1)'>
							<fo:block font-weight="bold" color="{$rojo}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/deudaNacionalFactura"/>
							</fo:block>
							</xsl:when>
							<xsl:otherwise>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/deudaNacionalFactura"/>
							</fo:block>
							</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Disponible Nacional:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:choose>
							<xsl:when test='"-"=substring(tarjeta-credito/disponibleNacional,1,1)'>
							<fo:block font-weight="bold" color="{$rojo}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/disponibleNacional"/>
							</fo:block>
							</xsl:when>
							<xsl:otherwise>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/disponibleNacional"/>
							</fo:block>
							</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Disponible Avances:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:choose>
							<xsl:when test='"-"=substring(tarjeta-credito/disponibleAvance,1,1)'>
							<fo:block font-weight="bold" color="{$rojo}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/disponibleAvance"/>
							</fo:block>
							</xsl:when>
							<xsl:otherwise>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/disponibleAvance"/>
							</fo:block>
							</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
					</fo:table-row>  
				</fo:table-body>
			</fo:table>
			</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell background-color="{$lineas}" border="0pt solid">
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell>
			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Consumo Dólar:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:choose>
							<xsl:when test='"-"=substring(tarjeta-credito/consumoDolar,1,1)'>
							<fo:block font-weight="bold" color="{$rojo}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;US$ <xsl:value-of select="tarjeta-credito/consumoDolar"/>
							</fo:block>
							</xsl:when>
							<xsl:otherwise>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;US$ <xsl:value-of select="tarjeta-credito/consumoDolar"/>
							</fo:block>
							</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Cupo Internacional:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:choose>
							<xsl:when test='"-"=substring(tarjeta-credito/cupoInternacional,1,1)'>
							<fo:block font-weight="bold" color="{$rojo}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;US$ <xsl:value-of select="tarjeta-credito/cupoInternacional"/>
							</fo:block>
							</xsl:when>
							<xsl:otherwise>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;US$ <xsl:value-of select="tarjeta-credito/cupoInternacional"/>
							</fo:block>
							</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Deuda Internacional:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:choose>
							<xsl:when test='"-"=substring(tarjeta-credito/deudaInternacional,1,1)'>
							<fo:block font-weight="bold" color="{$rojo}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;US$ <xsl:value-of select="tarjeta-credito/deudaInternacional"/>
							</fo:block>
							</xsl:when>
							<xsl:otherwise>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;US$ <xsl:value-of select="tarjeta-credito/deudaInternacional"/>
							</fo:block>
							</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Deuda Internacional Facturada:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:choose>
							<xsl:when test='"-"=substring(tarjeta-credito/deudaInternacionalFactura,1,1)'>
							<fo:block font-weight="bold" color="{$rojo}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;US$ <xsl:value-of select="tarjeta-credito/deudaInternacionalFactura"/>
							</fo:block>
							</xsl:when>
							<xsl:otherwise>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;US$ <xsl:value-of select="tarjeta-credito/deudaInternacionalFactura"/>
							</fo:block>
							</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Disponible Internacional:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:choose>
							<xsl:when test='"-"=substring(tarjeta-credito/disponibleInternacional,1,1)'>
							<fo:block font-weight="bold" color="{$rojo}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;US$ <xsl:value-of select="tarjeta-credito/disponibleInternacional"/>
							</fo:block>
							</xsl:when>
							<xsl:otherwise>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;US$ <xsl:value-of select="tarjeta-credito/disponibleInternacional"/>
							</fo:block>
							</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Disponible Avances Dólar:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:choose>
							<xsl:when test='"-"=substring(tarjeta-credito/disponibleAvanceDolar,1,1)'>
							<fo:block font-weight="bold" color="{$rojo}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;US$ <xsl:value-of select="tarjeta-credito/disponibleAvanceDolar"/>
							</fo:block>
							</xsl:when>
							<xsl:otherwise>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;US$ <xsl:value-of select="tarjeta-credito/disponibleAvanceDolar"/>
							</fo:block>
							</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			</fo:block>
						</fo:table-cell >
					</fo:table-row >
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- division 5 -->

		<!-- division 6 -->
		<fo:block padding-before="4pt">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="8.8cm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="0.1mm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="8.8cm" />
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >

			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Monto Compra Mes:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/montoCompraMes"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Monto Avance Mes:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/montoAvanceMes"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			</fo:block>

			<fo:block padding-before="4pt" font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Tasa de Interés Avance Corta:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/tasaAvanceCorta"/>%
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Tasa de Interés Avance Larga:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/tasaAvanceLarga"/>%
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Tasa de Interés de 2 a 4 Cuotas:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/interes2a4Cuota"/>%
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Tasa de Interés de 5 a 24 Cuotas:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/interes5a24Cuota"/>%
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Tasa de Interés Rotativo:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/interesRotativo"/>%
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			</fo:block>

						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell background-color="{$lineas}" border="0pt solid">
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell>
			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Mora 1 a 30 días:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/mora1a30dias"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Mora 31 a 60 días:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/mora31a60dias"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Mora 61 a 90 días:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/mora61a90dias"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Mora 91 a 120 días:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/mora91a120dias"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Mora 121 a 150 días:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/mora121a150"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Mora 151 a 180 días:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/mora151a180"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Mora 181 a 210 días:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/mora181a210"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Mora 210 a 999 días:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/mora210a999"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			</fo:block>
						</fo:table-cell >
					</fo:table-row >
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- division 6 -->

		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->

		<!-- sub titulo -->
		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Dirección de Envio de Estado de Cuenta (EECC)'"/>
		</xsl:call-template>
		<!-- sub titulo -->

		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->

		<!-- division 7 -->
		<fo:block padding-before="4pt">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="8.8cm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="0.1mm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="8.8cm" />
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >

			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Dirección:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/direccionEnvio"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Comuna:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/comunaEnvio"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell background-color="{$lineas}" border="0pt solid">
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell>
			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Ciudad:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/ciudadEnvio"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Región:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/regionEnvio"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			</fo:block>
						</fo:table-cell >
					</fo:table-row >
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- division 7 -->

		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->

		<!-- sub titulo -->
		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Información de la Tarjeta'"/>
		</xsl:call-template>
		<!-- sub titulo -->

		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->

		<!-- division 8 -->
		<fo:block padding-before="4pt">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="8.8cm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="0.1mm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="8.8cm" />
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >

			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Nombre Cliente Embozado:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/clienteEmbozado"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Nombre Empresa Embozado:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/empresaEmbozado"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
				</fo:table-body>
			</fo:table>
			</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell background-color="{$lineas}" border="0pt solid">
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell>
			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Número de Tarjeta:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/numeroTarjeta"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Código de Afinidad:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/codigoAfinidad"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Descripción Afinidad:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/descripcionAfinidad"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
				</fo:table-body>
			</fo:table>
			</fo:block>
						</fo:table-cell >
					</fo:table-row >
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- division 8 -->

		<!-- division 9 -->
		<fo:block padding-before="4pt">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="8.8cm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="0.1mm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="8.8cm" />
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >

			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Fecha de Activación:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/fechaDeActivacion"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Fecha de Apertura:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/fechaDeApertura"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Estado de Tarjeta:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;
								<xsl:choose>
								<xsl:when test="tarjeta-credito/estado='1'">
								Activa
								</xsl:when>
								<xsl:otherwise>
								Inactiva
								</xsl:otherwise>
								</xsl:choose>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
  
				</fo:table-body>
			</fo:table>
			</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell background-color="{$lineas}" border="0pt solid">
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell>
			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Código de Bloqueo:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/codigoBloqueo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Fecha de Bloqueo:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/fechaDeBloqueo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Fecha de Vencimiento:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/fechaDeVencimiento"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
				</fo:table-body>
			</fo:table>
			</fo:block>
						</fo:table-cell >
					</fo:table-row >
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- division 9 -->

		<!-- division 10 -->
		<fo:block padding-before="4pt" break-after="page">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="8.8cm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="0.1mm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="8.8cm" />
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >

			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Cupo Compras Nacional:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/cupoCompraNacional"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Disponible Compras Nacional:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:choose>
							<xsl:when test='"-"=substring(tarjeta-credito/disponibleCompraNacional,1,1)'>
							<fo:block font-weight="bold" color="{$rojo}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/disponibleCompraNacional"/>
							</fo:block>
							</xsl:when>
							<xsl:otherwise>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/disponibleCompraNacional"/>
							</fo:block>
							</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Deuda Compras Nacional:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:choose>
							<xsl:when test='"-"=substring(tarjeta-credito/deudaCompraNacional,1,1)'>
							<fo:block font-weight="bold" color="{$rojo}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/deudaCompraNacional"/>
							</fo:block>
							</xsl:when>
							<xsl:otherwise>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/deudaCompraNacional"/>
							</fo:block>
							</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
					</fo:table-row>
  
				</fo:table-body>
			</fo:table>
			</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell background-color="{$lineas}" border="0pt solid">
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell>
			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Cupo Avances Nacional:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/cupoAvanceNacional"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Disponible Avances Nacional:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:choose>
							<xsl:when test='"-"=substring(tarjeta-credito/disponibleAvanceNacional,1,1)'>
							<fo:block font-weight="bold" color="{$rojo}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/disponibleAvanceNacional"/>
							</fo:block>
							</xsl:when>
							<xsl:otherwise>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/disponibleAvanceNacional"/>
							</fo:block>
							</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Deuda Avances Nacional:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:choose>
							<xsl:when test='"-"=substring(tarjeta-credito/deudaAvanceNacional,1,1)'>
							<fo:block font-weight="bold" color="{$rojo}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/deudaAvanceNacional"/>
							</fo:block>
							</xsl:when>
							<xsl:otherwise>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/deudaAvanceNacional"/>
							</fo:block>
							</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
					</fo:table-row>  
				</fo:table-body>
			</fo:table>
			</fo:block>
						</fo:table-cell >
					</fo:table-row >
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- division 10 -->

		<!-- division 11 -->
		<fo:block padding-before="4pt">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="8.8cm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="0.1mm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="8.8cm" />
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >

			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Cupo Compras Internacional:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;US$ <xsl:value-of select="tarjeta-credito/cupoComprasInternacional"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Disponible Compras Internacional:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:choose>
							<xsl:when test='"-"=substring(tarjeta-credito/disponibleComprasInternacional,1,1)'>
							<fo:block font-weight="bold" color="{$rojo}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;US$ <xsl:value-of select="tarjeta-credito/disponibleComprasInternacional"/>
							</fo:block>
							</xsl:when>
							<xsl:otherwise>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;US$ <xsl:value-of select="tarjeta-credito/disponibleComprasInternacional"/>
							</fo:block>
							</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Deuda Compras Internacional:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:choose>
							<xsl:when test='"-"=substring(tarjeta-credito/deudaCompraInternacional,1,1)'>
							<fo:block font-weight="bold" color="{$rojo}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;US$ <xsl:value-of select="tarjeta-credito/deudaCompraInternacional"/>
							</fo:block>
							</xsl:when>
							<xsl:otherwise>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;US$ <xsl:value-of select="tarjeta-credito/deudaCompraInternacional"/>
							</fo:block>
							</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
					</fo:table-row>
  
				</fo:table-body>
			</fo:table>
			</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell background-color="{$lineas}" border="0pt solid">
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell>
			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Cupo Avances Internacional:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;US$ <xsl:value-of select="tarjeta-credito/cupoAvanceInternacional"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Disponible Avances Internacional:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:choose>
							<xsl:when test='"-"=substring(tarjeta-credito/disponibleAvanceInternacional,1,1)'>
							<fo:block font-weight="bold" color="{$rojo}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;US$ <xsl:value-of select="tarjeta-credito/disponibleAvanceInternacional"/>
							</fo:block>
							</xsl:when>
							<xsl:otherwise>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;US$ <xsl:value-of select="tarjeta-credito/disponibleAvanceInternacional"/>
							</fo:block>
							</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Deuda Avances Internacional:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:choose>
							<xsl:when test='"-"=substring(tarjeta-credito/deudaAvanceInternacional,1,1)'>
							<fo:block font-weight="bold" color="{$rojo}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;US$ <xsl:value-of select="tarjeta-credito/deudaAvanceInternacional"/>
							</fo:block>
							</xsl:when>
							<xsl:otherwise>
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;US$ <xsl:value-of select="tarjeta-credito/deudaAvanceInternacional"/>
							</fo:block>
							</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
					</fo:table-row>  
				</fo:table-body>
			</fo:table>
			</fo:block>
						</fo:table-cell >
					</fo:table-row >
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- division 11 -->

		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->

		<!-- sub titulo -->
		<xsl:call-template name="subTitulo">
			<xsl:with-param name="titulo" select="'Datos de Relación'"/>
		</xsl:call-template>
		<!-- sub titulo -->

		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->

		<!-- division 12 -->
		<fo:block padding-before="4pt">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="8.8cm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="0.1mm" />
				<fo:table-column column-width="2mm" />
				<fo:table-column column-width="8.8cm" />
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >

			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Nº Cuentas:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/cantidadCuenta"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Ciclo de Facturación:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/cicloFacturacionRelacion"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Cuenta Primaria:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/cuentaPrimaria"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
  
				</fo:table-body>
			</fo:table>
			</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell background-color="{$lineas}" border="0pt solid">
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell>
			<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Cupo Internacional:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;US$ <xsl:value-of select="tarjeta-credito/cupoInternacionalRelacion"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Cupo Nacional:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;$ <xsl:value-of select="tarjeta-credito/cupoNacionalRelacion"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Dirección:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
								&#0160;<xsl:value-of select="tarjeta-credito/direccionRelacion"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
				</fo:table-body>
			</fo:table>
			</fo:block>
						</fo:table-cell >
					</fo:table-row >
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- division 12 -->






	</xsl:template>

	<xsl:template name="itemTitulo">
		<xsl:param name="titulo"/> 
		<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-left="2mm" padding-before="1mm" >
							<fo:external-graphic height="1mm" width="1mm">
								<xsl:attribute name="src">
									<xsl:value-of select="tarjeta-credito/rutaImagen"/>01-bullet1-rj.gif
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

	<xsl:template name="subTitulo">
	<xsl:param name="titulo"/> 

	<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
	<fo:table table-layout="fixed">
	<fo:table-column column-width="0.3cm" />
	<fo:table-column column-width="8cm" />
	<fo:table-body>

	<fo:table-row>
	<fo:table-cell padding-before="1mm">
		<fo:external-graphic>
				<xsl:attribute name="src">
					<xsl:value-of select="tarjeta-credito/rutaImagen"/>01-bullet2-rj.gif
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