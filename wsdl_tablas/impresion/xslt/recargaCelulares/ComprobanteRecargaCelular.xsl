<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bordeCabecera">#6B6B6B</xsl:variable>
	<xsl:variable name="fondoPlomo">#6B6B6B</xsl:variable>
	<xsl:variable name="colorTitulos">#333333</xsl:variable>
	<xsl:variable name="bgcolor">#737277</xsl:variable>
	<xsl:variable name="bgcolortexto">#FFFFFF</xsl:variable>
	<xsl:variable name="bgcolortotal">#000000</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="txt">#FFFFF</xsl:variable>
	<xsl:variable name="txtCabecera">#FFFFFF</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#000000</xsl:variable>
	<xsl:variable name="alto-filas">5mm</xsl:variable>
	<xsl:variable name="espacio-subtitulos">2mm</xsl:variable>
	<xsl:variable name="borde-tabla">#CCCCCC</xsl:variable>
	<xsl:variable name="espacio-texto-celda-left">2mm</xsl:variable>
	<xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
	<xsl:variable name="size-fuente-margen">7pt</xsl:variable>
	<!-- Variables -->
	<xsl:template match="comprobanterecarga">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina" page-height="28cm" page-width="25.5cm" margin-top="1cm" margin-bottom="1cm" margin-left="2cm" margin-right="2cm">
					<fo:region-body margin-top="2.5cm" margin-bottom="2.5cm" background-color="#ffffff"/>
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Propiedades pagina -->
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">

				<fo:static-content flow-name="xsl-region-after">
					<!-- Separador Linea -->
					<fo:block space-after="2mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="35cm"/>
					</fo:block>
					<!-- Separador Linea-->

					<fo:block font-size="6pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">Atención a Clientes Bci Directo: 600-692-8000</fo:block>
					<fo:block font-size="6pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">Dirección: Av. El Golf 125, Las Condes, Santiago/Dirección para notificaciones Legales: Agustinas 1161, 7° piso, Santiago Centro, Santiago.</fo:block>
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
			<fo:table table-layout="fixed" border="0pt solid color #CCCCCC" width="19cm">
				<fo:table-column column-width="13cm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- texto Vencimientos -->
							<fo:block font-size="20pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">Comprobante de recarga</fo:block>
							<!-- texto Vencimientos -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>

		<fo:block space-after="1mm" border="0pt solid color #CCCCCC" space-before="1mm" padding-left="2mm" padding-top="3mm" margin-right="3mm" padding-bottom="3mm">
			<fo:block font-size="20pt" font-weight="bold" space-after="1mm" text-align="left" color="{$colorTitulos}">
			
	C&#xD3;DIGO DE AUTORIZACI&#xD3;N : <fo:inline><xsl:value-of select="xslCodigoAutorizacion"/></fo:inline>
			<fo:block>
			
			<!-- Separador Linea -->
			<fo:block space-after="0mm">
				<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="20cm" margin-right="1pt"/>
			</fo:block>
			<!-- Separador Linea-->
			
					<!--DATOS DE BUSQUEDA-->
					<fo:block space-before="1mm" font-weight="bold" font-size="11pt">
					<fo:table table-layout="fixed" border="0pt solid color #CCCCCC" width="19cm">
						<fo:table-column column-width="5cm"/>
						<fo:table-column column-width="1cm"/>
						<fo:table-column column-width="8cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block text-align="left" margin-left="1mm">
										<fo:block>Monto Abono Recarga</fo:block>	
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="left" margin-left="1mm">
										<fo:block>:</fo:block>	
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="left" margin-left="1mm">
										<fo:inline><xsl:value-of select="xslMontoAbonoRecarga"/></fo:inline>
									</fo:block>
								</fo:table-cell>						
							</fo:table-row>
						
							<fo:table-row>
								<fo:table-cell>
									<fo:block text-align="left" margin-left="1mm">
										<fo:block>Monto Abono Adicional</fo:block>	
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="left" margin-left="1mm">
										<fo:block>:</fo:block>	
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="left" margin-left="1mm">
										<fo:inline><xsl:value-of select="xslMontoAbonoAdicional"/></fo:inline>
									</fo:block>
								</fo:table-cell>						
							</fo:table-row>

							<!-- 
							<fo:table-row>
								<fo:table-cell>
									<fo:block text-align="left" margin-left="1mm">
										<fo:block>Adicional</fo:block>	
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="left" margin-left="1mm">
										<fo:block>:</fo:block>	
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="left" margin-left="1mm">
										<fo:inline><xsl:value-of select="xslAdicionales"/></fo:inline>
									</fo:block>
								</fo:table-cell>						
							</fo:table-row>
							</xsl:comment>
							-->

							<fo:table-row>
								<fo:table-cell>
									<fo:block text-align="left" margin-left="1mm">
										<fo:block>Cuenta de cargo</fo:block>	
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="left" margin-left="1mm">
										<fo:block>:</fo:block>	
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="left" margin-left="1mm">
										<fo:inline><xsl:value-of select="xslCuentaCargo"/></fo:inline>
									</fo:block>
								</fo:table-cell>						
							</fo:table-row>
							
							<fo:table-row>
								<fo:table-cell>
									<fo:block text-align="left" margin-left="1mm">
										<fo:block>Compa&#xF1;&#xED;a</fo:block>	
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="left" margin-left="1mm">
										<fo:block>:</fo:block>	
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="left" margin-left="1mm">
										<fo:inline><xsl:value-of select="xslCompania"/></fo:inline>
									</fo:block>
								</fo:table-cell>						
							</fo:table-row>	

							<fo:table-row>
								<fo:table-cell>
									<fo:block text-align="left" margin-left="1mm">
										<fo:block><xsl:value-of select="xslTipoRecarga"/></fo:block>	
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="left" margin-left="1mm">
										<fo:block>:</fo:block>	
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="left" margin-left="1mm">
										<fo:inline><xsl:value-of select="xslNumeroCelular"/></fo:inline>
									</fo:block>
								</fo:table-cell>						
							</fo:table-row>
							
							<!-- 
							<fo:table-row>
								<fo:table-cell>
									<fo:block text-align="left" margin-left="1mm">
										<fo:block>Vigencia de Recarga</fo:block>	
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="left" margin-left="1mm">
										<fo:block>:</fo:block>	
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="left" margin-left="1mm">
										<fo:inline><fo:inline><xsl:value-of select="xslVigenciaRecarga"/></fo:inline>
									</fo:block>
								</fo:table-cell>						
							</fo:table-row>
							-->
							
						</fo:table-body>
					</fo:table>						
					</fo:block>
					<!--FIN DATOS DE BUSQUEDA-->
				
					<fo:table border="0pt solid color #CCCCCC" >
						<fo:table-column column-width="18cm" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell >
									<fo:block padding-top="-60pt" text-align="right">
										<fo:external-graphic   height="3cm" width="3cm">
											<xsl:attribute name="src"><xsl:value-of select="xslRutaImagen"/>sello_bci.gif</xsl:attribute>
										</fo:external-graphic>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							</fo:table-body>
					</fo:table>	
					
			</fo:block>
			</fo:block>
			<fo:block space-after="3mm"/>

			<fo:block font-size="8pt" font-weight="normal" space-after="2mm" text-align="left" color="{$txt}">
				<xsl:value-of select="/detalle-venc/valoresMonetarios"/>
			</fo:block>
		</fo:block>

	</xsl:template>
</xsl:stylesheet>