<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
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
					page-width="23cm"
					margin-top="1cm"
					margin-bottom="1cm"
					margin-left="2cm"
					margin-right="2cm">
					<fo:region-body margin-top="2cm" margin-bottom="2.5cm" background-color="#ffffff"/> 
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
												<xsl:value-of select="boletin-cheques-protestados/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="boletin-cheques-protestados/fechaImpresion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- imagen bci -->
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

		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="19cm"/>
		</fo:block>
		<!-- Separador -->

		<!-- ejecutivo -->

		<fo:block font-size="5pt" space-after="1mm">
			<fo:table table-layout="fixed">
			<fo:table-column column-width="13cm"/>
			<fo:table-column column-width="5cm"/>
			<fo:table-body>
				<fo:table-row>
				<fo:table-cell>

					<!-- nombre cliente -->
						<fo:block font-size="9pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">
							<fo:inline color="{$txt}">Usuario: </fo:inline>
							<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="boletin-cheques-protestados/usuario"/></fo:inline>
						</fo:block>
					<!-- nombre cliente -->
				
				</fo:table-cell>
				<fo:table-cell>
			
					<!-- rut cliente -->
						<fo:block font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">
							<fo:inline color="{$txt}">Oficina: </fo:inline>
							<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="boletin-cheques-protestados/oficina"/></fo:inline>
						</fo:block>
					<!-- rut cliente -->

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
		
		<!-- Titulo Modulo -->
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="16cm"/>
			<fo:table-body>
				<fo:table-row >
				<fo:table-cell >

					<!-- titulo -->
						<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
							Boletín de Informaciones Comerciales
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
		
		<!-- division -->
		<fo:block space-after="2mm">
			<fo:table table-layout="fixed" >
			<fo:table-column column-width="8.8cm" />
			<fo:table-column column-width="2mm" />
			<fo:table-column column-width="0.1mm" />
			<fo:table-column column-width="2mm" />
			<fo:table-column column-width="9cm" />

			<fo:table-body>

				<fo:table-row >
				<fo:table-cell >

					<xsl:call-template name="ladoizquierdo"/>

				</fo:table-cell>

				<fo:table-cell>
				
				</fo:table-cell>
				
				<fo:table-cell background-color="{$lineas}" border="0pt solid">
				
				</fo:table-cell>

				<fo:table-cell>
				
				</fo:table-cell>

				<fo:table-cell>

					<xsl:call-template name="ladoderecho"/>

				</fo:table-cell >
				</fo:table-row >

			</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- division -->

		<!-- sub indice -->
		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src">
									<xsl:value-of select="boletin-cheques-protestados/rutaImagen"/>01-bullet2-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								Cheques Protestados por Ejecutivo
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- sub indice -->
		

		

		<!-- Detalle -->
		<fo:block font-size="7pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="2.5cm" />
				<fo:table-column column-width="2.5cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="1cm" />
				<fo:table-column column-width="2.5cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Cuenta
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Serial
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Oficina Protesto
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Monto
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Fecha Protesto.
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Motivo
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Enviado
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:for-each select="boletin-cheques-protestados/cheques-Protestados/documentos">
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="cuenta"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="serial"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="ofiProtesto"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;$<xsl:value-of select="monto"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="fechaProtesto"/>
							</fo:block>
						</fo:table-cell>						
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="motivo"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="enviado"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>


		</fo:block>
		<!-- Detalle -->

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
									<xsl:value-of select="boletin-cheques-protestados/rutaImagen"/>01-bullet2-rj.gif
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
									<xsl:value-of select="boletin-cheques-protestados/rutaImagen"/>01-bullet1-rj.gif
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




<xsl:template name="ladoizquierdo">
<!-- tabla A -->
	<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
	<fo:table table-layout="fixed">
	<fo:table-column column-width="4.4cm" />
	<fo:table-column column-width="4.4cm" />
	<fo:table-body>

	<fo:table-row>
	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<fo:external-graphic><xsl:attribute name="src">
	<xsl:value-of select="boletin-cheques-protestados/rutaImagen"/>01-bullet1-rj.gif</xsl:attribute>
	</fo:external-graphic>&#0160;Oficina :
	</fo:block>
	</fo:table-cell>

	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="boletin-cheques-protestados/oficina"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  
	<fo:table-row>

	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<fo:external-graphic><xsl:attribute name="src">
	<xsl:value-of select="boletin-cheques-protestados/rutaImagen"/>01-bullet1-rj.gif</xsl:attribute>
	</fo:external-graphic>&#0160;Fecha :
	</fo:block>
	</fo:table-cell>

	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="boletin-cheques-protestados/fechaActualConsulta"/></fo:block>
	</fo:table-cell>

	</fo:table-row>
	</fo:table-body>
	</fo:table>
	</fo:block>
	<!-- tabla A -->
</xsl:template>


<xsl:template name="ladoderecho">
	<!-- tabla B -->
<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
	<fo:table table-layout="fixed">
	<fo:table-column column-width="4.8cm" />
	<fo:table-column column-width="5cm" />
	<fo:table-body>

	<fo:table-row>
	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<fo:external-graphic><xsl:attribute name="src">
	<xsl:value-of select="boletin-cheques-protestados/rutaImagen"/>01-bullet1-rj.gif</xsl:attribute>
	</fo:external-graphic>&#0160;Consulta al : 
	</fo:block>
	</fo:table-cell>

	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="boletin-cheques-protestados/fechaActualConsulta"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  

	<fo:table-row>

	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<fo:external-graphic><xsl:attribute name="src">
	<xsl:value-of select="boletin-cheques-protestados/rutaImagen"/>01-bullet1-rj.gif</xsl:attribute>
	</fo:external-graphic>&#0160;Cheques Protestados por :</fo:block>
	</fo:table-cell>

	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;Ejecutivo
	</fo:block>
	<fo:block font-size="8pt" font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="boletin-cheques-protestados/codigoEjecutivoConsulta"/>
	</fo:block>
	</fo:table-cell>

	</fo:table-row>

	</fo:table-body>
	</fo:table>
	</fo:block>
	<!-- tabla B -->

</xsl:template>

</xsl:stylesheet>