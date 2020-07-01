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
				<fo:simple-page-master master-name="pagina"
					page-height="28cm"
					page-width="22cm"
					margin-top="1cm"
					margin-bottom="1cm"
					margin-left="1.5cm"
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
												<xsl:value-of select="info/datos-basicos/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="info/datos-basicos/fechaImpresion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- imagen bci -->
					<!-- Separador -->
						<fo:block space-after="2mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="19cm"/>
						</fo:block>
					<!-- Separador -->
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after">
					<!-- Separador -->
					<fo:block space-after="1mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="19cm"/>
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
							<!-- Usuario actual -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt}">Usuario: </fo:inline>
								<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="info/colaborador-actual/usuario"/></fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<!-- Oficina  actual -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
								<fo:inline color="{$txt}">Oficina: </fo:inline>
								<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="info/colaborador-actual/codOficina"/>&#0160;<xsl:value-of select="info/colaborador-actual/desOficina"/></fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- cabecera cliente -->
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="19cm"/>
		</fo:block>
		<!-- Separador -->
		<!-- Titulo Modulo -->
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="18cm"/>
			<fo:table-body>
				<fo:table-row >
				<fo:table-cell >
					<!-- titulo -->
						<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							Deudores en Sobregiro No Pactado
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
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="19cm"/>
		</fo:block>
		<!-- Separador -->
		
		<!-- ejecutivo consultado -->
		<fo:block font-size="5pt" space-after="1mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="2.5cm"/>
				<fo:table-column column-width="15.5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- Fecha de generacion. -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<xsl:call-template name="subTitulo">
									<xsl:with-param name="titulo" select="'Fecha:'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<!-- Fecha de generacion. -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="info/datos-basicos/fechaImpresion"/></fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<!-- Hora de generación. -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<xsl:call-template name="subTitulo">
									<xsl:with-param name="titulo" select="'Hora:'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<!-- Hora de generación. -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="info/datos-basicos/horaImpresion"/></fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<!-- Oficina actual -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<xsl:call-template name="subTitulo">
									<xsl:with-param name="titulo" select="'Oficina:'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<!-- Oficina actual -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="info/colaborador-consulta/codOficina"/>&#0160;<xsl:value-of select="info/colaborador-consulta/desOficina"/></fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<!-- Usuario actual -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<xsl:call-template name="subTitulo">
									<xsl:with-param name="titulo" select="'Ejecutivo:'"/>
								</xsl:call-template>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<!-- Usuario actual -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
								<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="info/colaborador-consulta/usuario"/>,</fo:inline>&#0160;<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="info/colaborador-consulta/nombreCompleto"/></fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- ejecutivo -->
		
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="19cm"/>
		</fo:block>
		<!-- Separador -->

		<!-- LISTADO DE CLIENTES -->
		<fo:block font-size="7pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="4cm" />
				<fo:table-column column-width="2.0cm" />
				<fo:table-column column-width="1.8cm" />
				<fo:table-column column-width="1.8cm" />
				<fo:table-column column-width="1.8cm" />
				<fo:table-column column-width="1.5cm" />
				<fo:table-column column-width="1.5cm" />
				<fo:table-column column-width="1.6cm" />
				<fo:table-column column-width="1.6cm" />
				<fo:table-column column-width="1cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="none" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
								Nombre
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="none" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
								<fo:block>Cuenta</fo:block>
								<fo:block>Corriente</fo:block>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="none" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
								<fo:block>Valor Utilizado</fo:block>
								<fo:block>del Día</fo:block>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="none" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
								<fo:block>Saldo</fo:block>
								<fo:block>Contable</fo:block>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="none" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
								<fo:block>Saldo</fo:block>
								<fo:block>Disponible</fo:block>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="none" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
								<fo:block>Días hábiles</fo:block>
								<fo:block>Sobregirado</fo:block>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="none" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
								Inicio Sobregiro
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="none" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
								<fo:block>Teléfono</fo:block>
								<fo:block>Particular</fo:block>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="none" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
								<fo:block>Teléfono</fo:block>
								<fo:block>Celular</fo:block>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="none" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
								<fo:block>Castigo por SNP</fo:block>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<xsl:choose>
					<xsl:when test="count(info/clientes-sobregirados/cliente-sobregirado) > 0">
						<xsl:for-each select="info/clientes-sobregirados/cliente-sobregirado">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="nombres"/>&#0160;<xsl:value-of select="apellidoPaterno"/>&#0160;<xsl:value-of select="apellidoMaterno"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="cuentaCorriente"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<xsl:variable name="valorUtilizadoDia" select="valorUtilizadoDia"/>
								<fo:block color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="right">
								        <xsl:if test="substring-before($valorUtilizadoDia,',00')=''">
									<xsl:value-of select="$valorUtilizadoDia"/>
									</xsl:if>
								        <xsl:if test="substring-before($valorUtilizadoDia,',00')!=''">
										<xsl:value-of select="substring-before($valorUtilizadoDia,',00')"/>
										<xsl:value-of select="substring-after($valorUtilizadoDia,',00')"/>
									</xsl:if>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<xsl:variable name="saldoContable" select="saldoContable"/>
								<fo:block color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="right">
								        <xsl:if test="substring-before($saldoContable,',00')=''">
									<xsl:value-of select="$saldoContable"/>
									</xsl:if>
								        <xsl:if test="substring-before($saldoContable,',00')!=''">
										<xsl:value-of select="substring-before($saldoContable,',00')"/>
										<xsl:value-of select="substring-after($saldoContable,',00')"/>
									</xsl:if>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<xsl:variable name="saldoDisponible" select="saldoDisponible"/>
								<fo:block color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="right">
								        <xsl:if test="substring-before($saldoDisponible,',00')=''">
									<xsl:value-of select="$saldoDisponible"/>
									</xsl:if>
								        <xsl:if test="substring-before($saldoDisponible,',00')!=''">
										<xsl:value-of select="substring-before($saldoDisponible,',00')"/>
										<xsl:value-of select="substring-after($saldoDisponible,',00')"/>
									</xsl:if>

								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="numeroDeDiasSobregiro"/>&#0160;
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="fechaInicioSobregiro"/>&#0160;
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}" padding-right="1mm">
								<fo:block color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="fonoParticular"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}" padding-right="1mm">
								<fo:block color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="fonoCelular"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}" padding-right="1mm">
								<fo:block color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="right">
									<xsl:value-of select="castigo"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
					</xsl:when>
					<xsl:otherwise>
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}" number-columns-spanned="9">
								<fo:block color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;El ejecutivo seleccionado no tiene clientes sobregirados.
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:otherwise>
					</xsl:choose>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="subTitulo">
		<xsl:param name="titulo"/>
		<xsl:param name="fecha"/>

		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src">
									<xsl:value-of select="info/datos-basicos/rutaImagen"/>01-bullet2-rj.gif
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
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-left="2mm" padding-before="1mm" >
							<fo:external-graphic height="1mm" width="1mm">
								<xsl:attribute name="src">
									<xsl:value-of select="info/datos-basicos/rutaImagen"/>01-bullet1-rj.gif
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