<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:template name="temp_detalle_de_pago">
		<xsl:if test=" universo/identificacion/documento/tipo = 'COTIZACION' ">
			<fo:block padding-before="{$varEspacioExtreSecciones}" >
				<fo:table table-layout="fixed" width="{$varTablaAncho}">
					<fo:table-column />
					<fo:table-body>
						<fo:table-row keep-with-next="always">
							<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
								<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
									<xsl:text>DETALLE DE PAGO</xsl:text>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center">
								<fo:table table-layout="fixed" width="{$varTablaAncho}">
									<fo:table-column column-width="{$varTablaColumnaLabelAncho}" background-color="{$varTablaColumnaLabelColor}"/>
									<fo:table-column column-width="{$varTablaColumnaValorAncho}" background-color="{$varTablaColumnaValorColor}"/>
									<fo:table-column column-width="{$varTablaColumnaLabelAncho}" background-color="{$varTablaColumnaLabelColor}"/>
									<fo:table-column column-width="{$varTablaColumnaValorAncho}" background-color="{$varTablaColumnaValorColor}"/>
									<fo:table-body>
										<fo:table-row keep-with-next="always">
											<fo:table-cell padding-left="5pt">
												<fo:block>
													<xsl:text>Prima total:</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding-left="5pt">
												<fo:block>
													<xsl:value-of disable-output-escaping="no" select="universo/detalledepago/primatotal"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding-left="5pt">
												<fo:block>
													<xsl:text>Depósito inicial:</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding-left="5pt">
												<fo:block>
													<xsl:value-of disable-output-escaping="no" select="universo/detalledepago/depositoinicial"/>
													<xsl:text> </xsl:text>
													 <xsl:value-of disable-output-escaping="no" select="universo/detalledepago/primamoneda"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row keep-with-next="always">
							<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
								<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
									<xsl:text>Planes de pago disponibles</xsl:text>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center">
								<xsl:call-template name="temp_detalle_de_pago_planes_disp"/>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</xsl:if>
	</xsl:template>
	
	<xsl:template name="temp_detalle_de_pago_planes_disp">
		<fo:table table-layout="fixed" width="{$varTablaAncho}">
			<!--
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(35)"/>
			<fo:table-column column-width="proportional-column-width(40)"/>
			-->
			<fo:table-column column-width="proportional-column-width(3)"/>
			<fo:table-column column-width="proportional-column-width(2)"/>
			<fo:table-column column-width="proportional-column-width(1)"/>
			<fo:table-column column-width="proportional-column-width(1)"/>
			<fo:table-column column-width="proportional-column-width(2)"/>
			<fo:table-column column-width="proportional-column-width(1)"/>
			<fo:table-column column-width="proportional-column-width(1)"/>
			<fo:table-column column-width="proportional-column-width(1)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell number-rows-spanned="2"  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
						<fo:block><xsl:text>Nombre</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell number-columns-spanned="3" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
						<fo:block><xsl:text>Primer pago</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell number-columns-spanned="4" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
						<fo:block><xsl:text>Futuros pagos</xsl:text></fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center" background-color="{$varTablaTituloColor}">
						<fo:block><xsl:text>Modo de Pago</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center" background-color="{$varTablaTituloColor}">
						<fo:block><xsl:text>Desto.</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center" background-color="{$varTablaTituloColor}">
						<fo:block><xsl:text>Valor primer pago</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center" background-color="{$varTablaTituloColor}">
						<fo:block><xsl:text>Modo de pago</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center" background-color="{$varTablaTituloColor}">
						<fo:block><xsl:text>Desto.</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center" background-color="{$varTablaTituloColor}">
						<fo:block><xsl:text>Cuota máx.</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center" background-color="{$varTablaTituloColor}">
						<fo:block><xsl:text>Valor cuota</xsl:text></fo:block>
					</fo:table-cell>
				</fo:table-row>
				<xsl:for-each select="universo/detalledepago/planespagodisponibles/planpagodisp">
					<fo:table-row>
						<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaColumnaValorColor}" padding-left="5pt">
							<fo:block><xsl:value-of select="nombre"/></fo:block>
						</fo:table-cell>
						<fo:table-cell number-columns-spanned="3" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaColumnaValorColor}">
							<fo:block>
								<xsl:apply-templates select="modosprimerpago"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell number-columns-spanned="4" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaColumnaValorColor}">
							<fo:block>
								<xsl:apply-templates select="modosfuturospagos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:for-each>
			</fo:table-body>
		</fo:table>
	</xsl:template>
	
	<xsl:template match="modosprimerpago">
		<fo:table table-layout="fixed" width="{$varTablaAncho}">
			<fo:table-column column-width="proportional-column-width(2)"/>
			<fo:table-column column-width="proportional-column-width(1)"/>
			<fo:table-column column-width="proportional-column-width(1)"/>
			<fo:table-body>
				<xsl:for-each select="modopago">
					<fo:table-row>
						<fo:table-cell border-right-style="solid" border-right-width="1.0pt" border-right-color="#000000" display-align="center"  background-color="{$varTablaColumnaValorColor}" padding-left="5pt">
							<fo:block><xsl:value-of select="nombre"/></fo:block>
						</fo:table-cell>
						<fo:table-cell border-left-style="solid" border-right-style="solid" border-left-width="1.0pt" border-right-width="1.0pt" border-left-color="#000000" border-right-color="#000000" display-align="center" text-align="center" background-color="{$varTablaColumnaValorColor}">
							<fo:block><xsl:value-of select="descuento"/></fo:block>
						</fo:table-cell>
						<fo:table-cell border-left-style="solid" border-left-width="1.0pt" border-left-color="#000000" display-align="center" text-align="center" background-color="{$varTablaColumnaValorColor}">
							<fo:block><xsl:value-of select="valorcuota"/></fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:for-each>
			</fo:table-body>
		</fo:table>
	</xsl:template>
	
	<xsl:template match="modosfuturospagos">
		<fo:table table-layout="fixed" width="{$varTablaAncho}">
			<fo:table-column column-width="proportional-column-width(2)"/>
			<fo:table-column column-width="proportional-column-width(1)"/>
			<fo:table-column column-width="proportional-column-width(1)"/>
			<fo:table-column column-width="proportional-column-width(1)"/>
			<fo:table-body>
				<xsl:for-each select="modopago">
					<fo:table-row>
						<fo:table-cell  border-right-style="solid"  border-right-width="1.0pt" border-right-color="#000000" display-align="before"  background-color="{$varTablaColumnaValorColor}" padding-left="5pt">
							<fo:block><xsl:value-of select="nombre"/></fo:block>
						</fo:table-cell>
						<fo:table-cell border-left-style="solid" border-right-style="solid" border-left-width="1.0pt" border-right-width="1.0pt" border-left-color="#000000" border-right-color="#000000" display-align="center" text-align="center" background-color="{$varTablaColumnaValorColor}">
							<fo:block><xsl:value-of select="descuento"/></fo:block>
						</fo:table-cell>
						<fo:table-cell border-left-style="solid" border-right-style="solid" border-left-width="1.0pt" border-right-width="1.0pt" border-left-color="#000000" border-right-color="#000000" display-align="center" text-align="center" background-color="{$varTablaColumnaValorColor}">
							<fo:block><xsl:value-of select="../../maximacantidadcuotas"/></fo:block>
						</fo:table-cell>
						<fo:table-cell border-left-style="solid" border-left-width="1.0pt" border-left-color="#000000" display-align="center" text-align="center" background-color="{$varTablaColumnaValorColor}">
							<fo:block><xsl:value-of select="valorcuota"/></fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:for-each>
			</fo:table-body>
		</fo:table>
	</xsl:template>
	
</xsl:stylesheet>
