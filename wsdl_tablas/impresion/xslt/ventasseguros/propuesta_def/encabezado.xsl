<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:template name="temp_encabezado">
		<fo:block>
			<fo:table table-layout="fixed" width="{$varTablaAncho}">
				<fo:table-column column-width="proportional-column-width(19)"/>
				<fo:table-column column-width="proportional-column-width(62)"/>
				<fo:table-column column-width="proportional-column-width(19)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left">
								<fo:external-graphic scaling="uniform" height="69pt" width="174pt">
									<xsl:attribute name="src">url('<xsl:value-of select="$varRutaLogos"/>/<xsl:value-of select="universo/identificacion/compania/logo" />')</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell display-align="center">
							<fo:block color="#CC0000" font-size="20pt" text-align="center" font-weight="bold">
								<xsl:value-of select="universo/identificacion/documento/advertenciatexto"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="right">
								<fo:external-graphic  scaling="uniform" height="69pt" width="174px">
									<xsl:attribute name="src">url('<xsl:value-of select="$varRutaLogos"/>/<xsl:value-of select="universo/identificacion/corredor/logo" />')</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	
		<fo:block padding-before="{$varEspacioExtreSecciones}">
			<fo:table table-layout="fixed" width="{$varTablaAncho}">
				<fo:table-column column-width="proportional-column-width(57)"/>
				<fo:table-column column-width="proportional-column-width(5)"/>
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-column column-width="proportional-column-width(18)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block >
								<xsl:call-template name="temp_enc_datos_ejecutivo_1"/></fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block></fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block></fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="right">
							<fo:block>
								<xsl:if test="( universo/identificacion/documento/tipo = 'POLIZA' )">
									<xsl:call-template name="temp_enc_datos_numero_propuesta"/>
								</xsl:if>
								<xsl:if test="( universo/identificacion/documento/tipo != 'POLIZA' )">
									<xsl:call-template name="temp_enc_datos_numero_poliza"/>
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		
		<fo:block padding-before="{$varEspacioExtreSecciones}">
			<fo:table table-layout="fixed" width="{$varTablaAncho}">
				<fo:table-column/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding="2.0pt" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#336699">
							<fo:block text-align="center" font-size="12pt" font-weight="bold" color="#ffffff">
								<xsl:value-of select="universo/identificacion/documento/tipo"/> DE SEGURO Nro 
								<xsl:if test="( universo/identificacion/documento/tipo != 'POLIZA' )">
									<xsl:value-of select="universo/identificacion/documento/numeroseguro"/>
								</xsl:if>
								<xsl:if test="( universo/identificacion/documento/tipo = 'POLIZA' )">
									<xsl:value-of select="universo/identificacion/documento/numeropoliza"/>
								</xsl:if>
								 - PRODUCTO <xsl:value-of select="universo/identificacion/documento/nombreproducto"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_enc_datos_ejecutivo_1">
		<fo:block span="none">
			<!-- GENERATE TABLE START-->
			<xsl:if test="( universo/identificacion/documento/tipo != 'POLIZA' )">
				<fo:table table-layout="fixed">
					<fo:table-column column-width="proportional-column-width(14)"/>
					<fo:table-column column-width="proportional-column-width(76)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell display-align="center">
								<fo:block>Sucursal</fo:block>
							</fo:table-cell>
							<fo:table-cell display-align="before">
								<fo:block >
									<xsl:value-of disable-output-escaping="no" select="universo/identificacion/operacion/sucursal"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell display-align="center">
								<fo:block>Ejecutivo	</fo:block>
							</fo:table-cell>
							<fo:table-cell display-align="before">
								<fo:block>
									<xsl:value-of disable-output-escaping="no" select="universo/identificacion/operacion/ejecutivo"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell/>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</xsl:if>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_enc_datos_numero_poliza">
		<xsl:if test="( universo/identificacion/documento/numeropoliza != '')">
			<fo:block>
				<fo:table table-layout="fixed" width="40%">
					<fo:table-column/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell text-align="center" background-color="{$varTablaTituloColor}" padding="3pt">
								<fo:block color="{$varTablaTituloTextColor}">
									<xsl:text>Nro POLIZA</xsl:text>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell text-align="center" background-color="{$varTablaColumnaLabelColor}" padding="3pt">
								<fo:block><xsl:value-of select="universo/identificacion/documento/numeropoliza"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</xsl:if>
	</xsl:template>
	
	<xsl:template name="temp_enc_datos_numero_propuesta">
		<xsl:if test="( universo/identificacion/documento/numeroseguro != '')">
			<fo:block>
				<fo:table table-layout="fixed" width="40%">
					<fo:table-column/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell text-align="center" background-color="{$varTablaTituloColor}" padding="3pt">
								<fo:block color="{$varTablaTituloTextColor}">
									<xsl:text>Nro PROPUESTA</xsl:text>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell text-align="center" background-color="{$varTablaColumnaLabelColor}" padding="3pt">
								<fo:block><xsl:value-of select="universo/identificacion/documento/numeroseguro"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
