<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:template name="temp_endoso_datos">
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
							<fo:block><xsl:call-template name="temp_enc_datos_ejecutivo_1"/></fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block></fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block></fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="right">
							<fo:block></fo:block>
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
								SOLICITUD DE ENDOSO A POLIZA DE SEGURO - Nro. <xsl:value-of select="universo/identificacion/documento/numeroseguro"/>
							</fo:block>
							<fo:block text-align="center" font-size="12pt" font-weight="bold" color="#ffffff">
								<xsl:if test="( universo/endoso/tipoCorte = 'true' )">
									CORTE DE POLIZA
								</xsl:if>
								<xsl:if test="( universo/endoso/tipoCorte = 'false' )">
									<xsl:value-of select="universo/identificacion/documento/nombreproducto"/>
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
						<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaColumnaLabelColor}" padding-left="5pt" padding-right="5pt">
							<fo:block>
								Yo (contratante) 
									<fo:inline font-weight="bold" text-decoration="underline">
										<xsl:value-of select="universo/endoso/solicitanteNombre"/> 
										<xsl:if test="universo/endoso/solicitanteNombre = ''">______</xsl:if>
									</fo:inline> 
								R.U.T. 
									<fo:inline font-weight="bold" text-decoration="underline">
										<xsl:value-of select="universo/endoso/solictanteRut"/>
										<xsl:if test="universo/endoso/solictanteRut = ''">______</xsl:if>
									</fo:inline>
								solicito realizar a mi póliza número 
									<fo:inline font-weight="bold" text-decoration="underline">
										<xsl:value-of select="universo/endoso/numeroPoliza"/>
										<xsl:if test="universo/endoso/numeroPoliza = ''">______</xsl:if>
									</fo:inline>, 
									<fo:inline font-weight="bold" text-decoration="underline">
										<xsl:value-of select="universo/endoso/tipoSeguroGlosa"/>
										<xsl:if test="universo/endoso/tipoSeguroGlosa = ''">______</xsl:if>
									</fo:inline>
									<!-- , Producto
									<fo:inline font-weight="bold" text-decoration="underline">
										<xsl:value-of select="universo/identificacion/documento/nombreproducto"/>
										<xsl:if test="universo/identificacion/documento/nombreproducto = ''">______</xsl:if>
									</fo:inline>  -->
									, Compañía de Seguro 
									<fo:inline font-weight="bold" text-decoration="underline">
										<xsl:value-of select="universo/endoso/companiaNombre"/>
										<xsl:if test="universo/endoso/companiaNombre = ''">______</xsl:if>
									</fo:inline>
									, para el Producto 
									<fo:inline font-weight="bold" text-decoration="underline">
										<xsl:value-of select="universo/endoso/productoNombreEndoso"/>
										<xsl:if test="universo/endoso/productoNombreEndoso = ''">______</xsl:if>
									</fo:inline>
								, la(s) siguiente(s) modificacione(s).
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		
		<xsl:if test="universo/endoso/motivo != '' or universo/endoso/razonDeCorte != ''">
			<fo:block padding-before="{$varEspacioExtreSecciones}">
				<fo:table table-layout="fixed" width="{$varTablaAncho}">
					<fo:table-column/>
					<fo:table-header>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaTituloColor}" padding-left="5pt">
								<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
									<xsl:if test="( universo/endoso/tipoCorte = 'true' )">
										TERMINO ANTICIPADO DE LA POLIZA
									</xsl:if>
									<xsl:if test="( universo/endoso/tipoCorte = 'false' )">
										MOTIVO
									</xsl:if>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-header>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="{$varTablaColumnaLabelColor}" padding-left="5pt" padding-right="5pt">
								<fo:block>					
									<xsl:if test="( universo/endoso/tipoCorte = 'true' )">
										<fo:block>
											Solicito cancelar anticipadamente la poliza de seguro anteriormente descrita por el siguiente motivo:
											<fo:block padding-before="10pt"/>
										</fo:block>
									</xsl:if>
									<xsl:value-of disable-output-escaping="no" select="universo/endoso/motivo"/>
								
									<xsl:if test="universo/endoso/razonDeCorte != ''">
										<fo:block>
											Razón: <xsl:value-of disable-output-escaping="no" select="universo/endoso/razonDeCorte"/>
										</fo:block>
									</xsl:if>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</xsl:if>
	</xsl:template>
	<!--
	<xsl:template name="temp_enc_datos_ejecutivo">
		<fo:block span="none">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="1.8cm"/>
				<fo:table-column column-width="5.5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell display-align="center">
							<fo:block>Canal</fo:block>
						</fo:table-cell>
						<fo:table-cell display-align="before">
							<fo:block>
								<xsl:value-of disable-output-escaping="no" select="universo/identificacion/operacion/canal"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
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
		</fo:block>
	</xsl:template>
	-->
</xsl:stylesheet>
