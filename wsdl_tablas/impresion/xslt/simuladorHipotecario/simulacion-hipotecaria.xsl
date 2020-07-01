<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- edited with XMLSpy v2006 U (http://www.altova.com) by Tinet (EMBRACE) -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="gris-claro">#F7F7F7</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<xsl:variable name="txt-celeste">#D9E4EF</xsl:variable>

	<!-- Variables -->
	<!--    template que define el formato de las páginas
    Incluye el logo de encabezado  y el pie de pagina
   -->
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
											<xsl:attribute name="src"><xsl:value-of select="simulacion/cabecera/ruta-imagen"/><xsl:value-of select="simulacion/cabecera/logo"/>
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="simulacion/cabecera/fecha-impresion"/>
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

	<!--template que contiene el contenido de la pagina-->
	<xsl:template name="contenido">
		<xsl:for-each select="simulacion/simulacion-hipotecaria-bci">
		<xsl:variable name="index" select="position()"/>

			<!-- Titulo Modulo -->
			<xsl:if test="$index = 0">
			<fo:block font-size="12pt" font-weight="bold" text-align="center" >SIMULACIÓN HIPOTECARIA BCI</fo:block>
		    </xsl:if>
			<xsl:if test="$index > 0">
			<fo:block font-size="12pt" font-weight="bold" text-align="center" break-before="page">SIMULACIÓN HIPOTECARIA BCI</fo:block>
		    </xsl:if>
			<!-- Titulo Modulo -->
			<!-- division -->
			<!-- division -->
			<fo:block space-after="2mm">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="8.8cm"/>
					<fo:table-column column-width="2mm"/>
					<fo:table-column column-width="0.1mm"/>
					<fo:table-column column-width="2mm"/>
					<fo:table-column column-width="8.8cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<xsl:call-template name="datos-cliente"/>
							</fo:table-cell>
							<fo:table-cell>	</fo:table-cell>
							<fo:table-cell background-color="{$lineas}" border="0pt solid"/>
							<fo:table-cell>	</fo:table-cell>
							<fo:table-cell number-rows-spanned="3">
								<xsl:call-template name="gastos-operacionales"/>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block font-size="12pt" font-weight="bold" text-align="center">&#0160;</fo:block>
							</fo:table-cell>
							<fo:table-cell>	</fo:table-cell>
							<fo:table-cell background-color="{$lineas}" border="0pt solid"/>
							<fo:table-cell>	</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<xsl:call-template name="datos-ejecutivo"/>
							</fo:table-cell>
							<fo:table-cell>	</fo:table-cell>
							<fo:table-cell background-color="{$lineas}" border="0pt solid"/>
							<fo:table-cell>	</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
                                <xsl:call-template name="datos-credito-hipotecario"/>
							</fo:table-cell>
							<fo:table-cell>	</fo:table-cell>
							<fo:table-cell background-color="{$lineas}" border="0pt solid"/>
							<fo:table-cell>	</fo:table-cell>
							<fo:table-cell>
								<xsl:call-template name="otros-datos"/>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!--fin  division -->

            <!-- INICIA EL CALCULO DE LA SIMULACION -->
            <xsl:if test="calculo-credito-hipotecario/calculo/es-complementario = 'TRUE'">
                <xsl:call-template name="calculo-credito-hipotecario-complementario"/>
            </xsl:if>

            <xsl:if test="calculo-credito-hipotecario/calculo/es-mixto = 'TRUE'">
                <xsl:call-template name="calculo-credito-hipotecario-mixto"/>
            </xsl:if>

            <xsl:if test="calculo-credito-hipotecario/calculo/es-complementario = 'FALSE' and calculo-credito-hipotecario/calculo/es-mixto = 'FALSE'">
                <xsl:call-template name="calculo-credito-hipotecario"/>
            </xsl:if>
            <!-- TERMINO DEL CALCULO DE LA SIMULACION -->

            <!-- INICIA EL CALCULO DE LAS SIMULACIONES DE OTROS PLAZOS -->
			<xsl:if test="otras-opciones-de-plazo">
				<xsl:call-template name="otros-plazos"/>
			</xsl:if>
            <!-- TERMINO DEL CALCULO DE LAS SIMULACIONES DE OTROS PLAZOS -->

            <!-- INICIA OBSERVACIONES -->
			<xsl:call-template name="seguros-adoicionales"/>
            <!-- TERMINO OBSERVACIONES -->

            <!-- INICIA SEGUROS ADICIONALES -->
			<xsl:call-template name="observaciones"/>
            <!-- INICIA SEGUROS ADICIONALES -->

		</xsl:for-each>
	</xsl:template>

	<!-- Plantilla  con datos del cliente -->
	<xsl:template name="datos-cliente">

		<!-- Comienza tabla Datos cliente-->
		<fo:block font-size="11pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.8cm"/>
				<fo:table-column column-width="4cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" number-columns-spanned="2">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
								Datos Cliente
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$gris-claro}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<fo:external-graphic>
									<xsl:attribute name="src"><xsl:value-of select="simulacion/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
								</fo:external-graphic>
										&#0160;Nombre
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="datos-cliente/nombre"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$gris-claro}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
										&#0160;<fo:external-graphic>
									<xsl:attribute name="src"><xsl:value-of select="cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
								</fo:external-graphic>
								&#0160;Rut
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="datos-cliente/rut"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Finaliza tabla  Datos cliente-->
	</xsl:template>
    <!-- Termina Plantilla  con datos del cliente -->

	<!-- Plantilla con  gastos operacionales-->
	<xsl:template name="gastos-operacionales">
		<!-- Comienza tabla Gastos operacionales-->
		<fo:block font-size="11pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.8cm"/>
				<fo:table-column column-width="4cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" number-columns-spanned="2">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
								Gastos Operacionales
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$gris-claro}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<fo:external-graphic>
									<xsl:attribute name="src"><xsl:value-of select="simulacion/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
								</fo:external-graphic>
										&#0160;Tasación
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;UF&#0160;<xsl:value-of select="gastos-operacionales/tasacion"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$gris-claro}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
										&#0160;<fo:external-graphic>
									<xsl:attribute name="src"><xsl:value-of select="simulacion/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
								</fo:external-graphic>
								&#0160;Estudio de Título
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;UF&#0160;<xsl:value-of select="gastos-operacionales/estudio-de-titulo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$gris-claro}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<fo:external-graphic>
									<xsl:attribute name="src"><xsl:value-of select="simulacion/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
								</fo:external-graphic>
										&#0160;Borrador de Escritura
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;UF&#0160;<xsl:value-of select="gastos-operacionales/borrador-de-escritura"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$gris-claro}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<fo:external-graphic>
									<xsl:attribute name="src"><xsl:value-of select="simulacion/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
								</fo:external-graphic>
										&#0160;Impuesto al Crédito
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;UF&#0160;<xsl:value-of select="gastos-operacionales/impuesto-al-mutuo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$gris-claro}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<fo:external-graphic>
									<xsl:attribute name="src"><xsl:value-of select="/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
								</fo:external-graphic>
										&#0160;Derechos Notariales
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;UF&#0160;<xsl:value-of select="gastos-operacionales/gastos-notariales"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$gris-claro}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<fo:external-graphic>
									<xsl:attribute name="src"><xsl:value-of select="simulacion/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
								</fo:external-graphic>
										&#0160;Inscripción Conservador &#0160;
										&#0160;&#0160;&#0160;Bienes Raices
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;UF&#0160;<xsl:value-of select="gastos-operacionales/inscripcion-conservador-bienes-raices"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$gris-claro}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<fo:external-graphic>
									<xsl:attribute name="src"><xsl:value-of select="simulacion/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
								</fo:external-graphic>
										&#0160;Total
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;UF&#0160;<xsl:value-of select="gastos-operacionales/total"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<!-- Finaliza tabla  GASTOS OPERACIONALES-->

	<!-- template datos ejecutvo -->
	<xsl:template name="datos-ejecutivo">
		<!-- Comienza tabla Datos ejecutivo-->
		<fo:block font-size="11pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.8cm"/>
				<fo:table-column column-width="4cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" number-columns-spanned="2">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
								Datos Ejecutivo
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$gris-claro}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<fo:external-graphic>
									<xsl:attribute name="src"><xsl:value-of select="simulacion/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
								</fo:external-graphic>
										&#0160;Nombre
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="datos-ejecutivo/nombre"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$gris-claro}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
										&#0160;<fo:external-graphic>
									<xsl:attribute name="src"><xsl:value-of select="simulacion/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
								</fo:external-graphic>
								&#0160;Telefono
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="datos-ejecutivo/telefono"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$gris-claro}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
										&#0160;<fo:external-graphic>
									<xsl:attribute name="src"><xsl:value-of select="simulacion/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
								</fo:external-graphic>
								&#0160;Mail
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="datos-ejecutivo/mail"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
    <!-- Finaliza template Datos ejecutivo-->

	<!-- template datos credito hipotecario -->
	<xsl:template name="datos-credito-hipotecario">
		<!-- Comienza tabla Datos ejecutivo-->
		<fo:block font-size="11pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.8cm"/>
				<fo:table-column column-width="4cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" number-columns-spanned="2">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
								Datos Crédito Hipotecario
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$gris-claro}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<fo:external-graphic>
									<xsl:attribute name="src"><xsl:value-of select="simulacion/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
								</fo:external-graphic>
										&#0160;Valor Propiedad
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="datos-credito-hipotecario/valor-propiedad"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$gris-claro}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
										&#0160;<fo:external-graphic>
									<xsl:attribute name="src"><xsl:value-of select="simulacion/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
								</fo:external-graphic>
								&#0160;monto Solicitado
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="datos-credito-hipotecario/monto-solicitado"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$gris-claro}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
										&#0160;<fo:external-graphic>
									<xsl:attribute name="src"><xsl:value-of select="simulacion/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
								</fo:external-graphic>
								&#0160;% Financiamiento
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="datos-credito-hipotecario/porcentaje-financiamiento"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$gris-claro}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
										&#0160;<fo:external-graphic>
									<xsl:attribute name="src"><xsl:value-of select="simulacion/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
								</fo:external-graphic>
								&#0160;Producto
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="datos-credito-hipotecario/producto"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$gris-claro}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
										&#0160;<fo:external-graphic>
									<xsl:attribute name="src"><xsl:value-of select="simulacion/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
								</fo:external-graphic>
								&#0160;Objetivo del Crédito
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="datos-credito-hipotecario/objetivo-del-credito"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$gris-claro}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
										&#0160;<fo:external-graphic>
									<xsl:attribute name="src"><xsl:value-of select="simulacion/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
								</fo:external-graphic>
								&#0160;Destino
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="datos-credito-hipotecario/destino"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$gris-claro}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
										&#0160;<fo:external-graphic>
									<xsl:attribute name="src"><xsl:value-of select="simulacion/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
								</fo:external-graphic>
								&#0160;Antguedad
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="datos-credito-hipotecario/antiguedad"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$gris-claro}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
										&#0160;<fo:external-graphic>
									<xsl:attribute name="src"><xsl:value-of select="simulacion/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
								</fo:external-graphic>
								&#0160;Meses de Gracia
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="datos-credito-hipotecario/meses-de-gracia"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<!-- Finaliza template datos credito hipotecario-->

	<!-- template Otros datos -->
	<xsl:template name="otros-datos">
		<!-- Comienza tabla Datos ejecutivo-->
		<fo:block font-size="11pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.8cm"/>
				<fo:table-column column-width="4cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$gris-claro}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<fo:external-graphic>
									<xsl:attribute name="src"><xsl:value-of select="simulacion/cabecera/ruta-imagen"/>01-bullet1-rj.gif</xsl:attribute>
								</fo:external-graphic>
										&#0160;Valor UF al día
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;$&#0160;<xsl:value-of select="otros-datos/valor-uf"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<!-- Fin template Otros datos -->

	<!-- template calculo  credito hipotecario -->
	<xsl:template name="calculo-credito-hipotecario">
		<!-- sub indice -->
		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm"/>
				<fo:table-column column-width="8cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src"><xsl:value-of select="cabecera/ruta-imagen"/>01-bullet2-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								Cálculo Crédito Hipotecario
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- sub indice -->
		<fo:block font-size="7pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="2.3cm"/> <!-- Columna Producto -->
				<fo:table-column column-width="2.3cm"/> <!-- Columna Plazo -->
				<fo:table-column column-width="2.3cm"/> <!-- Columna Tasa Anual -->
				<fo:table-column column-width="2.3cm"/> <!-- Columna Valor Dividendo Sin seguro-->
				<fo:table-column column-width="2.3cm"/> <!-- Columna Prima Mensual Seguro Desgravamen -->
				<fo:table-column column-width="2.3cm"/> <!-- Columna Prima mensual seguro Incendio y Sismo -->
				<fo:table-column column-width="2.3cm"/> <!-- Columna Valor Total Dividendo en UF -->
				<fo:table-column column-width="2.3cm"/> <!-- Columna Total Dividendo en Pesos -->
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
								&#0160;Producto
							</fo:block>
						</fo:table-cell>

						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" text-align="center">
								&#0160;Plazo
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" padding-after="1mm" text-align="center">
								&#0160;(Años)
							</fo:block>
						</fo:table-cell>

						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" text-align="center">
								&#0160;Tasa Anual
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" padding-after="1mm" text-align="center">
								&#0160;(%)
							</fo:block>
						</fo:table-cell>

						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" text-align="center">
								&#0160;Valor Dividendo
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" text-align="center">
								&#0160;sin Seguro
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" padding-after="1mm" text-align="center">
								&#0160;(UF)
							</fo:block>
						</fo:table-cell>

						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" text-align="center">
								&#0160;Prima Mensual
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" text-align="center">
								&#0160;Seguro
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" text-align="center">
								&#0160;Desgravamen
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" padding-after="1mm" text-align="center">
								&#0160;(UF)
							</fo:block>
						</fo:table-cell>

						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" text-align="center">
								&#0160;Prima Mensual
							</fo:block>

							<fo:block font-weight="normal" color="{$txt}" text-align="center">
								&#0160;Seguro
							</fo:block>

							<fo:block font-weight="normal" color="{$txt}" text-align="center">
								<xsl:value-of select="datos-credito-hipotecario/seguro-incendio"/>
							</fo:block>

							<fo:block font-weight="normal" color="{$txt}" padding-after="1mm" text-align="center">
								&#0160;(UF)
							</fo:block>

						</fo:table-cell>

						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" text-align="center">
								&#0160;Valor Tolal
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" text-align="center">
								&#0160;Dividendo
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" padding-after="1mm" text-align="center">
								&#0160;(UF)
							</fo:block>
						</fo:table-cell>

						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" text-align="center">
								&#0160;Valor Tolal
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" text-align="center">
								&#0160;Dividendo
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" padding-after="1mm" text-align="center">
								&#0160;($)
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<xsl:for-each select="calculo-credito-hipotecario/calculo">
						<fo:table-row>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="producto"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<xsl:if test="es-proyeccion = 'TRUE'">
									<xsl:if test="((position() * 2) -1) = plazo">
										<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
											&#0160;<xsl:value-of select="plazo"/>
										</fo:block>
									</xsl:if>
									<xsl:if test="((position() * 2) -1) != plazo">
										<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
											<xsl:value-of select="(position() * 2) -1"/>&#0160;a&#0160;<xsl:value-of select="plazo"/>
										</fo:block>
									</xsl:if>
								</xsl:if>

								<xsl:if test="es-proyeccion = 'FALSE'">
									<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
										&#0160;<xsl:value-of select="plazo"/>
									</fo:block>
								</xsl:if>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="tasa-anual"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="valor-dividendo-sin-seguro"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="prima-seguro-desgravamen"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="prima-seguro-incendio-sismo"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="valor-total-dividendo-uf"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="valor-total-dividendo-pesos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- FIN LISTADO DE LINEAS-->
	</xsl:template>
	<!-- Fin template calculo  credito hipotecario -->


	<!-- template calculo  credito hipotecario complementario -->
	<xsl:template name="calculo-credito-hipotecario-complementario">
		<!-- sub indice -->
		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm"/>
				<fo:table-column column-width="8cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src"><xsl:value-of select="cabecera/ruta-imagen"/>01-bullet2-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								Cálculo Crédito Hipotecario
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- sub indice -->
		<fo:block font-size="7pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="2.3cm"/> <!-- Columna Producto -->
				<fo:table-column column-width="2.3cm"/> <!-- Columna Plazo -->
				<fo:table-column column-width="2.3cm"/> <!-- Columna Tasa Anual -->
				<fo:table-column column-width="2.3cm"/> <!-- Columna Valor Dividendo Sin seguro-->
				<fo:table-column column-width="2.3cm"/> <!-- Columna Prima Mensual Seguro Desgravamen -->
				<fo:table-column column-width="2.3cm"/> <!-- Columna Prima mensual seguro Incendio y Sismo -->
				<fo:table-column column-width="2.3cm"/> <!-- Columna Valor Total Dividendo en UF -->
				<fo:table-column column-width="2.3cm"/> <!-- Columna Total Dividendo en Pesos -->
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
								&#0160;Producto
							</fo:block>
						</fo:table-cell>

						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" text-align="center">
								&#0160;Plazo
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" padding-after="1mm" text-align="center">
								&#0160;(Años)
							</fo:block>
						</fo:table-cell>

						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" text-align="center">
								&#0160;Tasa Anual
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" padding-after="1mm" text-align="center">
								&#0160;(%)
							</fo:block>
						</fo:table-cell>

						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" text-align="center">
								&#0160;Valor Dividendo
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" text-align="center">
								&#0160;sin Seguro
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" padding-after="1mm" text-align="center">
								&#0160;(UF)
							</fo:block>
						</fo:table-cell>

						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" text-align="center">
								&#0160;Prima Mensual
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" text-align="center">
								&#0160;Seguro
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" text-align="center">
								&#0160;Desgravamen
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" padding-after="1mm" text-align="center">
								&#0160;(UF)
							</fo:block>
						</fo:table-cell>

						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" text-align="center">
								&#0160;Prima Mensual
							</fo:block>

							<fo:block font-weight="normal" color="{$txt}" text-align="center">
								&#0160;Seguro
							</fo:block>

							<fo:block font-weight="normal" color="{$txt}" text-align="center">
								<xsl:value-of select="datos-credito-hipotecario/seguro-incendio"/>
							</fo:block>

							<fo:block font-weight="normal" color="{$txt}" padding-after="1mm" text-align="center">
								&#0160;(UF)
							</fo:block>

						</fo:table-cell>

						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" text-align="center">
								&#0160;Valor Tolal
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" text-align="center">
								&#0160;Dividendo
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" padding-after="1mm" text-align="center">
								&#0160;(UF)
							</fo:block>
						</fo:table-cell>

						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" text-align="center">
								&#0160;Valor Tolal
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" text-align="center">
								&#0160;Dividendo
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" padding-after="1mm" text-align="center">
								&#0160;($)
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<xsl:for-each select="calculo-credito-hipotecario/calculo">
						<fo:table-row>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="producto"/>
								</fo:block>
								<fo:block font-weight="normal" color="{$txt}" padding-before="2.5mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="calculo-complementario/producto"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="plazo"/>
								</fo:block>
								<fo:block font-weight="normal" color="{$txt}" padding-before="2.5mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="calculo-complementario/plazo"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								    &#0160;<xsl:value-of select="tasa-anual"/>
								</fo:block>
								<fo:block font-weight="normal" color="{$txt}" padding-before="2.5mm" padding-after="1mm" text-align="left">
								    &#0160;<xsl:value-of select="calculo-complementario/tasa-anual"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								    &#0160;<xsl:value-of select="valor-dividendo-sin-seguro"/>
								</fo:block>
								<fo:block font-weight="normal" color="{$txt}" padding-before="2.5mm" padding-after="1mm" text-align="left">
								    &#0160;<xsl:value-of select="calculo-complementario/valor-dividendo-sin-seguro"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}" display-align="center">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								  &#0160;<xsl:value-of select="prima-seguro-desgravamen"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}" display-align="center">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="prima-seguro-incendio-sismo"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}" display-align="center">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="valor-total-dividendo-uf"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}" display-align="center">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="valor-total-dividendo-pesos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<!-- Fin template calculo  credito hipotecario ccomplementario -->


	<!-- template calculo  credito hipotecario Mixto -->
	<xsl:template name="calculo-credito-hipotecario-mixto">
		<!-- sub indice -->
		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm"/>
				<fo:table-column column-width="8cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src"><xsl:value-of select="cabecera/ruta-imagen"/>01-bullet2-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								Cálculo Crédito Hipotecario
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- sub indice -->
		<fo:block font-size="7pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="2.3cm"/> <!-- Columna Producto -->
				<fo:table-column column-width="2.3cm"/> <!-- Columna Plazo -->
				<fo:table-column column-width="2.3cm"/> <!-- Columna Tasa Anual -->
				<fo:table-column column-width="2.3cm"/> <!-- Columna Valor Dividendo Sin seguro-->
				<fo:table-column column-width="2.3cm"/> <!-- Columna Prima Mensual Seguro Desgravamen -->
				<fo:table-column column-width="2.3cm"/> <!-- Columna Prima mensual seguro Incendio y Sismo -->
				<fo:table-column column-width="2.3cm"/> <!-- Columna Valor Total Dividendo en UF -->
				<fo:table-column column-width="2.3cm"/> <!-- Columna Total Dividendo en Pesos -->
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
								&#0160;Producto
							</fo:block>
						</fo:table-cell>

						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" text-align="center">
								&#0160;Plazo
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" padding-after="1mm" text-align="center">
								&#0160;(Años)
							</fo:block>
						</fo:table-cell>

						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" text-align="center">
								&#0160;Tasa Anual
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" padding-after="1mm" text-align="center">
								&#0160;(%)
							</fo:block>
						</fo:table-cell>

						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" text-align="center">
								&#0160;Valor Dividendo
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" text-align="center">
								&#0160;sin Seguro
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" padding-after="1mm" text-align="center">
								&#0160;(UF)
							</fo:block>
						</fo:table-cell>

						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" text-align="center">
								&#0160;Prima Mensual
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" text-align="center">
								&#0160;Seguro
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" text-align="center">
								&#0160;Desgravamen
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" padding-after="1mm" text-align="center">
								&#0160;(UF)
							</fo:block>
						</fo:table-cell>

						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" text-align="center">
								&#0160;Prima Mensual
							</fo:block>

							<fo:block font-weight="normal" color="{$txt}" text-align="center">
								&#0160;Seguro
							</fo:block>

							<fo:block font-weight="normal" color="{$txt}" text-align="center">
								<xsl:value-of select="datos-credito-hipotecario/seguro-incendio"/>
							</fo:block>

							<fo:block font-weight="normal" color="{$txt}" padding-after="1mm" text-align="center">
								&#0160;(UF)
							</fo:block>

						</fo:table-cell>

						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" text-align="center">
								&#0160;Valor Tolal
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" text-align="center">
								&#0160;Dividendo
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" padding-after="1mm" text-align="center">
								&#0160;(UF)
							</fo:block>
						</fo:table-cell>

						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" text-align="center">
								&#0160;Valor Tolal
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" text-align="center">
								&#0160;Dividendo
							</fo:block>
							<fo:block font-weight="normal" color="{$txt}" padding-after="1mm" text-align="center">
								&#0160;($)
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<xsl:for-each select="calculo-credito-hipotecario/calculo">
						<fo:table-row>

							<fo:table-cell border="0.5pt solid {$lineas}" display-align="center">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								    &#0160;<xsl:value-of select="producto"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="plazo"/>
								</fo:block>
								<fo:block font-weight="normal" color="{$txt}" padding-before="2.5mm" padding-after="1mm" text-align="center">
									&#0160;<xsl:value-of select="calculo-complementario/plazo"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								    &#0160;<xsl:value-of select="tasa-anual"/>
								</fo:block>
								<fo:block font-weight="normal" color="{$txt}" padding-before="2.5mm" padding-after="1mm" text-align="left">
								    &#0160;<xsl:value-of select="calculo-complementario/tasa-anual"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								    &#0160;<xsl:value-of select="valor-dividendo-sin-seguro"/>
								</fo:block>
								<fo:block font-weight="normal" color="{$txt}" padding-before="2.5mm" padding-after="1mm" text-align="left">
								    &#0160;<xsl:value-of select="calculo-complementario/valor-dividendo-sin-seguro"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}" display-align="center">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="prima-seguro-desgravamen"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}" display-align="center">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="prima-seguro-incendio-sismo"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="valor-total-dividendo-uf"/>
								</fo:block>

								<fo:block font-weight="normal" color="{$txt}" padding-before="2.5mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="calculo-complementario/valor-total-dividendo-uf"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="valor-total-dividendo-pesos"/>
								</fo:block>

								<fo:block font-weight="normal" color="{$txt}" padding-before="2.5mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="calculo-complementario/valor-total-dividendo-pesos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<!-- Fin template calculo  credito hipotecario ccomplementario -->


	<!-- template datos otros-plazos -->
	<xsl:template name="otros-plazos">
		<!-- sub indice -->
		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm"/>
				<fo:table-column column-width="8cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src"><xsl:value-of select="simulacion/cabecera/ruta-imagen"/>01-bullet2-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								Otras Opciones de Plazo
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- sub indice -->
		<!-- Comienza tabla Otros plazos-->
		<fo:block font-size="7pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="2.3cm"/>
				<fo:table-column column-width="2.3cm"/>
				<fo:table-column column-width="2.3cm"/>
				<fo:table-column column-width="2.3cm"/>
				<fo:table-column column-width="2.3cm"/>
				<fo:table-column column-width="2.3cm"/>
				<fo:table-column column-width="2.3cm"/>
				<fo:table-column column-width="2.3cm"/>
				<fo:table-body>
					<xsl:for-each select="otras-opciones-de-plazo/calculo">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="producto"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="plazo"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="tasa-anual"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="valor-dividendo-sin-seguro"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="prima-seguro-desgravamen"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="prima-seguro-incendio-sismo"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="valor-total-dividendo-uf"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="valor-total-dividendo-pesos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- FIN LISTADO DE LINEAS-->
	</xsl:template>
	<!-- Fin template datos otros-plazos -->



	<!-- template datos otros-plazos complementario -->
	<xsl:template name="otros-plazos-complementario">
		<!-- sub indice -->
		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm"/>
				<fo:table-column column-width="8cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src"><xsl:value-of select="simulacion/cabecera/ruta-imagen"/>01-bullet2-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								Otras Opciones de Plazo
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- sub indice -->
		<!-- Comienza tabla Otros plazos-->
		<fo:block font-size="7pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="2.3cm"/>
				<fo:table-column column-width="2.3cm"/>
				<fo:table-column column-width="2.3cm"/>
				<fo:table-column column-width="2.3cm"/>
				<fo:table-column column-width="2.3cm"/>
				<fo:table-column column-width="2.3cm"/>
				<fo:table-column column-width="2.3cm"/>
				<fo:table-column column-width="2.3cm"/>
				<fo:table-body>
					<xsl:for-each select="otras-opciones-de-plazo/calculo">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="producto"/>
								</fo:block>

								<fo:block font-weight="normal" color="{$txt}" padding-before="2.5mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="calculo-complementario/producto"/>
								</fo:block>

							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="plazo"/>
								</fo:block>

								<fo:block font-weight="normal" color="{$txt}" padding-before="2.5mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="calculo-complementario/plazo"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="tasa-anual"/>
								</fo:block>

								<fo:block font-weight="normal" color="{$txt}" padding-before="2.5mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="calculo-complementario/tasa-anual"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="valor-dividendo-sin-seguro"/>
								</fo:block>

								<fo:block font-weight="normal" color="{$txt}" padding-before="2.5mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="calculo-complementario/valor-dividendo-sin-seguro"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}" display-align="center">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="prima-seguro-desgravamen"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}" display-align="center">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="prima-seguro-incendio-sismo"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}" display-align="center">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="valor-total-dividendo-uf"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}" display-align="center">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="valor-total-dividendo-pesos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- FIN LISTADO DE LINEAS-->
	</xsl:template>
	<!-- Fin template datos otros-plazos complementario -->


	<!-- template datos otros-plazos Mixto -->
	<xsl:template name="otros-plazos-mixto">
		<!-- sub indice -->
		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm"/>
				<fo:table-column column-width="8cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src"><xsl:value-of select="simulacion/cabecera/ruta-imagen"/>01-bullet2-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								Otras Opciones de Plazo
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- sub indice -->
		<!-- Comienza tabla Otros plazos-->
		<fo:block font-size="7pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="2.3cm"/>
				<fo:table-column column-width="2.3cm"/>
				<fo:table-column column-width="2.3cm"/>
				<fo:table-column column-width="2.3cm"/>
				<fo:table-column column-width="2.3cm"/>
				<fo:table-column column-width="2.3cm"/>
				<fo:table-column column-width="2.3cm"/>
				<fo:table-column column-width="2.3cm"/>
				<fo:table-body>
					<xsl:for-each select="otras-opciones-de-plazo/calculo">
						<fo:table-row>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="producto"/>
								</fo:block>

								<fo:block font-weight="normal" color="{$txt}" padding-before="2.5mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="calculo-complementario/producto"/>
								</fo:block>

							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="plazo"/>
								</fo:block>

								<fo:block font-weight="normal" color="{$txt}" padding-before="2.5mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="calculo-complementario/plazo"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="tasa-anual"/>
								</fo:block>

								<fo:block font-weight="normal" color="{$txt}" padding-before="2.5mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="calculo-complementario/tasa-anual"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="valor-dividendo-sin-seguro"/>
								</fo:block>

								<fo:block font-weight="normal" color="{$txt}" padding-before="2.5mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="calculo-complementario/valor-dividendo-sin-seguro"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}" display-align="center">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="prima-seguro-desgravamen"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}" display-align="center">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="prima-seguro-incendio-sismo"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="valor-total-dividendo-uf"/>
								</fo:block>

								<fo:block font-weight="normal" color="{$txt}" padding-before="2.5mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="calculo-complementario/valor-total-dividendo-uf"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="valor-total-dividendo-pesos"/>
								</fo:block>

								<fo:block font-weight="normal" color="{$txt}" padding-before="2.5mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="calculo-complementario/valor-total-dividendo-pesos"/>
								</fo:block>
							</fo:table-cell>

						</fo:table-row>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- FIN LISTADO DE LINEAS-->
	</xsl:template>
	<!-- Fin template datos otros-plazos Mixto -->


	<!-- seguros adicionales -->
	<xsl:template name="seguros-adoicionales">
		<!-- sub indice -->
		<fo:block font-size="7pt" font-weight="bold" text-align="left" color="black" keep-with-next.within-page="always" padding-before="1mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm"/>
				<fo:table-column column-width="28cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src"><xsl:value-of select="simulacion/cabecera/ruta-imagen"/>01-bullet2-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								Seguros Adicionales No Incluidos en Valor de Dividendo Mostrado
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- sub indice -->
		<fo:block font-size="7pt" space-after="1cm" text-align="right">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4cm"/>
				<fo:table-column column-width="4cm"/>
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="2cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" number-rows-spanned="2">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
								Seguro Adicional
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" number-rows-spanned="2">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
								Escogido
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" number-columns-spanned="2">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
								Prima Mensual
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
								UF
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
								$
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<xsl:for-each select="seguros-adicionales/seguro">
						<fo:table-row>

							<fo:table-cell border="0.5pt solid {$lineas}">
							    <fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									<xsl:if test="es-hogarContenido = 'TRUE'">

									    &#0160;<xsl:value-of select="descripcion"/>

										<xsl:if test="codigo-contenido = 1">
										    &#0160;&#60;<xsl:value-of select="descripcion-contenido"/>&#62;
										    &#47;Monto asegurado UF&#60;<xsl:value-of select="monto-Contenido"/>&#62;
										</xsl:if>

										<xsl:if test="codigo-contenido = 2">
										    &#60;<xsl:value-of select="descripcion-contenido"/>&#62;
										    &#47;Monto asegurado UF&#60;<xsl:value-of select="monto-Contenido"/>&#62;
										    &#47;Monto Robo UF&#60;<xsl:value-of select="monto-robo"/>&#62;
										</xsl:if>

										<xsl:if test="codigo-contenido = 3">
										    &#0160;&#60;<xsl:value-of select="descripcion-contenido"/>&#62;
										    &#47;Monto asegurado UF&#60;<xsl:value-of select="monto-Contenido"/>&#62;
										</xsl:if>
										
										<xsl:if test="codigo-contenido = 4">
										    &#0160;&#60;<xsl:value-of select="descripcion-contenido"/>&#62;
											&#47;Monto asegurado UF&#60;<xsl:value-of select="monto-Contenido"/>&#62;
										    &#47;Monto Robo UF&#60;<xsl:value-of select="monto-robo"/>&#62;
										</xsl:if>

										<xsl:if test="codigo-contenido != 1 and codigo-contenido != 2 and codigo-contenido != 3 and codigo-contenido != 4">
										    &#0160;&#60;Incendio&#62;
											&#47;Monto asegurado UF&#60;300&#62;
										    &#47;Monto Robo UF&#60;120&#62;
										</xsl:if>

									</xsl:if>
									<xsl:if test="es-hogarContenido = 'FALSE'">
										&#0160;<xsl:value-of select="descripcion"/>
									</xsl:if>
                                </fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
								&#0160;<xsl:value-of select="elegido"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="prima-mensual-uf"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="prima-mensual-pesos"/>
								</fo:block>
							</fo:table-cell>

						</fo:table-row>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Finaliza tabla  Datos cliente-->

	</xsl:template>
	<xsl:template name="observaciones">
		<!-- sub indice -->
		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm"/>
				<fo:table-column column-width="28cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src"><xsl:value-of select="simulacion/cabecera/ruta-imagen"/>01-bullet2-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								Observaciones
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- sub indice -->
		<fo:block font-size="11pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="18cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;  1. Esta simulación es referencial, no constituye aprobación del credito y no compromete al banco, puesto que las condiciones comerciales pueden ser modificadas por la legislación bancaria y/o la normativa interna del banco y están sujetas a las variaciones dependiendo del mes en que se firme la escritura y de las condiciones del mercado propias de esta operación. La tasa definitiva se fija al momento de la escrituración del crédito.
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;  2. El valor mensual de los seguros incluidos en esta simulación es solo referencial , podrá variar dependiendo del valor de la tasación de la propiedad, del monto total del credito y de la evaluación del asegurado. Seguros intermediados por BCI Corredores de Seguros S.A. cubre el riesgo Bci Seguros Vida S.S. y/o Bci Seguros S.S. según corresponda.

							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160; 3. Si el crédito es de vivienda y se está renegociando, queda exento del impuesto al Crédito, previa presentación del certificado de exención de impuesto para la reprogramación (DL 3475), según Ley 20.130 del 07/11/2006.
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;  4. Los Gastos Notariales y de Inscripción en el Conservador de Bienes Raíces pueden variar, según el arancel de cada institución.
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160; 5. El impuesto al Crédito Vivienda es de 1,2% sobre el monto del préstamo, que se rebaja a 0,6% para compraventa de vivienda nueva acogida al DFL 2, dentro de 2 años desde su recepción final. Para Fines Generales el impuesto es de 1,2%. Este impuesto debe ser cancelado directamente en Notaría por el cliente.
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160; 6. Si el cliente ingresa al seguro de desgravamen con una edad menor o igual a 65 años, su edad mas el plazo del credito no puede exceder los 80 años , si ingresa al seguro con una edad mayor a 65 años , su edad mas el plazo del credito no puede exceder los 75 años .La cobertura de ITP (Invalidez Total o Parcial)  2/3 tiene un limite de edad de 65 años.
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160; 7. El primer dividendo considera el seguro de desgravamen y los seguros escogidos desde el mes de firma de la escritura.
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;  8. En caso de propiedad nueva acogida a beneficios DFL2 (propiedad nueva, 1ra transferencia) el impuesto al Crédito es rebajado a la mitad.
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:if test="calculo-credito-hipotecario/calculo/es-conveniencia = 'TRUE'">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;  9. En el caso de Mutuo Conveniencia es importante considerar que a partir del primer dividendo no asegurado la tasa corresponderá a la TAB vigente más Spread fijado en escritura sin techo asegurado.
        						</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:if>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<!-- Fin seguros adicionales -->

</xsl:stylesheet>
<!-- Stylus Studio meta-information - (c) 2004-2006. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="Simulacion" userelativepaths="yes" externalpreview="no" url="siulacion&#x2D;hipotecaria.xml" htmlbaseurl="" outputurl="" processortype="internal" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator=""/></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no" ><SourceSchema srcSchemaPath="siulacion&#x2D;hipotecaria.xml" srcSchemaRoot="simulaciones" AssociatedInstance="" loaderFunction="document" loaderFunctionUsesURI="no"/></MapperInfo><MapperBlockPosition><template match="/"><block path="fo:root/fo:page&#x2D;sequence/fo:static&#x2D;content/fo:block/fo:table/fo:table&#x2D;body/fo:table&#x2D;row/fo:table&#x2D;cell/fo:external&#x2D;graphic/xsl:attribute/xsl:value&#x2D;of" x="501" y="130"/><block path="fo:root/fo:page&#x2D;sequence/fo:static&#x2D;content/fo:block/fo:table/fo:table&#x2D;body/fo:table&#x2D;row/fo:table&#x2D;cell/fo:external&#x2D;graphic/xsl:attribute/xsl:value&#x2D;of[1]" x="461" y="130"/><block path="fo:root/fo:page&#x2D;sequence/fo:static&#x2D;content/fo:block/fo:table/fo:table&#x2D;body/fo:table&#x2D;row/fo:table&#x2D;cell[1]/fo:block/xsl:value&#x2D;of" x="581" y="130"/><block path="fo:root/fo:page&#x2D;sequence/fo:flow/xsl:call&#x2D;template" x="541" y="130"/></template></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
-->