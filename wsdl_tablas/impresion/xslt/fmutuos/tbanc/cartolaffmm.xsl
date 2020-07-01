<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format"
	version="1.0">
	<!--Variables-->
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="destacado">#FFFF99</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<xsl:variable name="txt-celeste">#D9E4EF</xsl:variable><!-- Variables -->
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format"><!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina" page-height="28cm" page-width="22cm" margin-top="1cm"
					margin-bottom="1cm" margin-left="2cm" margin-right="2cm">
					<fo:region-body margin-top="2.5cm" margin-bottom="2.5cm" background-color="#ffffff" />
					<fo:region-before extent="3cm" />
					<fo:region-after extent="2cm" />
				</fo:simple-page-master>
			</fo:layout-master-set><!-- Propiedades pagina -->
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
				<fo:static-content flow-name="xsl-region-before"><!-- imagen bci -->
					<fo:block space-after="3mm">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="13cm" />
							<fo:table-column column-width="5cm" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src"><xsl:value-of
													select="cartola-ffmm/cabecera/ruta-imagen" />logo_tbanc.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm"
											text-align="right" color="{$txt}">
											<xsl:value-of select="cartola-ffmm/cabecera/fecha-impresion" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block><!-- imagen bci --><!-- Separador -->
					<fo:block space-after="1mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm" />
					</fo:block><!-- Separador -->
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after"><!-- Separador -->
					<fo:block space-after="1mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm" />
					</fo:block><!-- Separador -->
					<fo:block font-size="9pt" font-weight="normal" space-after="1mm" text-align="left"
						color="{$txt}">
						Para Consultas o Comentarios Comuníquese al 600 6928000
					</fo:block>
					<fo:block font-size="5pt" font-weight="bold" space-after="1mm" text-align="right"
						color="{$txt}">
						Pagina
						<fo:page-number />
					</fo:block>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<xsl:call-template name="contenido" />
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
	<xsl:template name="contenido"><!-- cabecera cliente -->
		<fo:block font-size="5pt" space-after="1mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="13cm" />
				<fo:table-column column-width="5cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell><!-- nombre cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left">
								<xsl:value-of select="cartola-ffmm/cabecera/nombre" />
							</fo:block><!-- nombre cliente -->
						</fo:table-cell>
						<fo:table-cell><!-- rut cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right"
								color="{$txt}">
								<fo:inline color="{$txt}">RUT:</fo:inline>
								<fo:inline>
									<xsl:value-of select="cartola-ffmm/cabecera/rut" />
								</fo:inline>
							</fo:block><!-- rut cliente -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block><!-- cabecera cliente --><!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm" />
		</fo:block><!-- Separador --><!-- Titulo Modulo -->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="15cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="13pt" font-weight="bold" text-align="left">
								Opciones de ahorro e inversión
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="15pt" font-weight="bold" text-align="left">
								Cartola Fondos Mutuos
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block><!-- Titulo Modulo --><!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm" />
		</fo:block><!-- Separador -->
		<fo:block font-size="7pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.5cm" />
				<fo:table-column column-width="4.5cm" />
				<fo:table-column column-width="4.5cm" />
				<fo:table-column column-width="4.5cm" />
				<fo:table-header>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt}" padding-before="1mm" padding-after="1mm"
								text-align="left">
								&#0160;
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt}" padding-before="1mm" padding-after="1mm"
								text-align="left">
								 Valor cuota
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt}" padding-before="1mm" padding-after="1mm"
								text-align="left">
								 Saldos en cuotas
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt}" padding-before="1mm" padding-after="1mm"
								text-align="left">
								 Saldo en moneda
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-header>
				<fo:table-body>
					<xsl:for-each select="cartola-ffmm/fondos-mutuos/fondo-mutuo">
						<fo:table-row>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm"
									padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="nombre" />
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm"
									padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="valor-cuota" />
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm"
									padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="saldo-cuotas" />
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm"
									padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="saldo-moneda" />
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block font-size="8pt" font-weight="bold" text-align="left" space-after="2mm"> </fo:block>
		<fo:block font-size="7pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.5cm" />
				<fo:table-column column-width="4.5cm" />
				<fo:table-column column-width="4.5cm" />
				<fo:table-column column-width="4.5cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt}" padding-before="1mm" padding-after="1mm"
								text-align="left">
								 &#0160;Saldo Inversiones en $:
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm"
								text-align="left">
								&#0160;$<xsl:value-of select="cartola-ffmm/saldos-fondos/saldo-pesos" />
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" border-right-style="none">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm"
								text-align="left">
								&#0160;
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" border-left-style="none">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm"
								text-align="left">
								&#0160;
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt}" padding-before="1mm" padding-after="1mm"
								text-align="left">
								&#0160;Saldo Inversiones US $:
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm"
								text-align="left">
								&#0160;US $<xsl:value-of select="cartola-ffmm/saldos-fondos/saldo-dolar" />
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm"
								text-align="left">
								&#0160;Valor actual US$(Observado):
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm"
								text-align="left">
								&#0160;<xsl:value-of select="cartola-ffmm/saldos-fondos/dolar-observado" />
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt}" padding-before="1mm" padding-after="1mm"
								text-align="left">
								&#0160;Saldo Total $:
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm"
								text-align="left">
								&#0160;$<xsl:value-of select="cartola-ffmm/saldos-fondos/saldo-total" />
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" border-right-style="none">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm"
								text-align="left">
								&#0160;
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}" border-left-style="none">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm"
								text-align="left">
								&#0160;
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block font-size="7pt" font-weight="bold" space-before="2mm" space-after="2mm" text-align="left">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="19cm"/>
			<xsl:value-of select="cartola-ffmm/texto-pie" />
		</fo:block>
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="19cm" />
		</fo:block><!-- Separador -->
	</xsl:template>
</xsl:stylesheet>
