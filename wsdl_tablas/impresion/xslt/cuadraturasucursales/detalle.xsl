<?xml version="1.0" encoding="ISO-8859-1"?>

<!-- <== version: 2014/01/28 12:00 ==> -->

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="pathImagenes"><xsl:value-of select="datosDetalles/imagen/path"/></xsl:variable>
	<xsl:variable name="colorAmarillo">#FFFFCC</xsl:variable>
	<xsl:variable name="fuenteCabeceraDetalle">9px</xsl:variable>
	<xsl:variable name="paddingCabeceraDetalle">2px 0px</xsl:variable>
	<xsl:variable name="fuenteContenidoDetalle">9px</xsl:variable>
	<xsl:variable name="fuenteFiltro">9px</xsl:variable>
	<xsl:variable name="paddingCampoFiltro">1px 0px</xsl:variable>
	
	<!-- formato de números -->
	<xsl:decimal-format name="pesos" decimal-separator=","
		grouping-separator="." />

	<!-- Fin formato números -->
	<xsl:template match="/datosDetalles">

		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format"
			xmlns:fox="http://xml.apache.org/fop/extensions">
			<!-- Definición de la página -->
			<fo:layout-master-set>
				<fo:simple-page-master margin-right="1.0cm"
					margin-left="1.0cm" margin-bottom="1.0cm" margin-top="1.0cm"
					page-width="29.7cm" page-height="21cm" master-name="first">
					<fo:region-before extent="0cm" />
					<fo:region-body margin-bottom="0cm" margin-top="0cm" />
					<fo:region-after extent="0cm" />
				</fo:simple-page-master>
			</fo:layout-master-set>

			<!-- Cuerpo -->
			<fo:page-sequence master-reference="first" language="en"
				hyphenate="true">
				<fo:flow flow-name="xsl-region-body">

					<!-- cabecera con oficina y fecha -->
					<fo:table text-align="left" table-layout="fixed"
						margin-bottom="3pt" border-collapse="separate" border-spacing="2px"
						border-color="gray">
						<fo:table-column column-width="15cm" />
						<fo:table-column column-width="13cm" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<!-- Oficina -->
									<fo:block text-align="left" color="#70A0C1" padding="2px 0px 6px 4px"
										font-size="8pt">
										Oficina:
										<xsl:value-of select="filtro/oficina" />
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<!-- Fecha -->
									<fo:block text-align="right" color="#70A0C1" padding="2px 0px 6px 4px"
										font-size="8pt">
										Fecha:
										<xsl:value-of select="filtro/fecha" />
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>

					<!-- titulo de la página -->
					<fo:block line-height="12pt" font-size="20pt"
						space-before="5pt" space-after="5pt" keep-together="always" color="#70A0C1"
						font-weight="bold" margin-bottom="4px" border-bottom="1px solid #CCCCCC"
						padding="2px 0px 6px 4px" text-align="left">
						<fo:inline>Detalle de Cuadratura</fo:inline>
					</fo:block>
					
					<!--  Filtros -->
					<!-- subtitulo -->
					<fo:block line-height="12pt" font-size="10px"
						space-before="5pt" space-after="5pt" keep-together="always" color="#FFFFFF"
						font-weight="bold" margin-bottom="4px" border-bottom="1px solid #CCCCCC"
						padding="2px 0px 6px 4px" text-align="left">
						<fo:external-graphic>
							<xsl:attribute name="src">
								<xsl:value-of select="$pathImagenes" />01-bullet2-rj.gif
							</xsl:attribute>
						</fo:external-graphic>
						<!-- letra de color de fondo para que simule un espacio y que la imagen 
							no se vea pegada a la glosa -->
						<fo:inline color="white">X</fo:inline>
						<fo:inline color="black">Filtros</fo:inline>
					</fo:block>
				
						<!-- campos del filtro -->
					<fo:table text-align="left" table-layout="fixed"
						margin-bottom="3pt" border-collapse="separate" border-spacing="2px"
						border-color="gray">

						<fo:table-column column-width="6.825cm" />
						<fo:table-column column-width="0.1cm" />
						<fo:table-column column-width="6.825cm" />
						<fo:table-column column-width="0.1cm" />
						<fo:table-column column-width="6.825cm" />
						<fo:table-column column-width="0.1cm" />
						<fo:table-column column-width="3.4125cm" />
						<fo:table-column column-width="0.1cm" />
						<fo:table-column column-width="3.4125cm" />

						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block text-align="left" color="#0361A2" line-height="12px" font-size= "{$fuenteFiltro}" 
										background-color="#F0F0F0" padding="2px 2px 2px 2px" margin-right="2px"
										margin-botton="2px #F0F0F0" height="20px;" vertical-align="middle">
											<fo:external-graphic>
												<xsl:attribute name="src">
													<xsl:value-of select="$pathImagenes"/>01-bullet1-rj.gif
												</xsl:attribute>
											</fo:external-graphic>
										Usuario
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<!--  letra de color de fondo para que lo pinte vacío-->
									<fo:inline color="#F0F0F0">X</fo:inline>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="left" height="14px" font-size= "{$fuenteFiltro}" border="1px solid #000000"
										margin-right= "2px" background-color="{$colorAmarillo}" vertical-align= "middle" padding="{$paddingCampoFiltro}">
										<!--  letra de color de fondo para que simule un espacio  -->
										<fo:inline color="{$colorAmarillo}">X</fo:inline>
										<xsl:value-of select="filtro/usuario" />
									</fo:block>	
								</fo:table-cell>
								<fo:table-cell>
									<!--  letra de color de fondo para que lo pinte vacío-->
									<fo:inline color="#F0F0F0">X</fo:inline>
								</fo:table-cell>
								<fo:table-cell>
									<!-- Monto -->
									<fo:block text-align="left" color="#0361A2" line-height="12px"  font-size= "{$fuenteFiltro}"
										background-color="#F0F0F0" padding="2px 2px 2px 2px" margin-right="2px"
										height="20px;" vertical-align="middle">
											<fo:external-graphic>
												<xsl:attribute name="src">
													<xsl:value-of select="$pathImagenes"/>01-bullet1-rj.gif
												</xsl:attribute>
											</fo:external-graphic>
										Monto ($)
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<!--  letra de color de fondo para que lo pinte vacío-->
									<fo:inline color="#F0F0F0">X</fo:inline>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="left" height="14px" font-size= "{$fuenteFiltro}" border="1px solid #000000"
										margin-right= "2px" background-color= "{$colorAmarillo}" vertical-align= "middle" padding="{$paddingCampoFiltro}">
										<!--  letra de color de fondo para que simule un espacio  -->
										<fo:inline color="{$colorAmarillo}">X</fo:inline>
										<xsl:value-of select="filtro/montoDesde" />
									</fo:block>	
								</fo:table-cell>
								<fo:table-cell>
									<!--  letra de color de fondo para que lo pinte vacío-->
									<fo:inline color="#F0F0F0">X</fo:inline>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="left" height="14px" font-size= "{$fuenteFiltro}" border="1px solid #000000"
										margin-right= "2px" background-color= "{$colorAmarillo}" vertical-align= "middle" padding="{$paddingCampoFiltro}">
										<fo:inline color="{$colorAmarillo}">X</fo:inline>
										<xsl:value-of select="filtro/montoHasta" />
									</fo:block>	
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<!-- Numero de transaccion -->
									<fo:block text-align="left" color="#0361A2" line-height="12px" font-size= "{$fuenteFiltro}"
										background-color="#F0F0F0" padding="2px 2px 2px 2px" margin-right="2px"
										height="20px;" vertical-align="middle">
											<fo:external-graphic>
												<xsl:attribute name="src">
													<xsl:value-of select="$pathImagenes"/>01-bullet1-rj.gif
												</xsl:attribute>
											</fo:external-graphic>
										Número de Transacción
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<!--  letra de color de fondo para que lo pinte vacío-->
									<fo:inline color="#F0F0F0">X</fo:inline>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="left" height="14px" font-size= "{$fuenteFiltro}" border="1px solid #000000"
										margin-right="2px" background-color="{$colorAmarillo}" vertical-align= "middle" padding="{$paddingCampoFiltro}">
										<fo:inline color="{$colorAmarillo}">X</fo:inline>
										<xsl:value-of select="filtro/numTransaccion" />
									</fo:block>	
								</fo:table-cell>
								<fo:table-cell>
									<!--  letra de color de fondo para que lo pinte vacío-->
									<fo:inline color="#F0F0F0">X</fo:inline>
								</fo:table-cell>
								<fo:table-cell>
									<!-- Transaccion -->
									<fo:block text-align="left" color="#0361A2" line-height="12px" font-size= "{$fuenteFiltro}"
										background-color="#F0F0F0" padding="2px 2px 2px 2px" margin-right="2px"
										height="20px;" vertical-align="middle">
											<fo:external-graphic>
												<xsl:attribute name="src">
													<xsl:value-of select="$pathImagenes"/>01-bullet1-rj.gif
												</xsl:attribute>
											</fo:external-graphic>
										Transacción
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<!--  letra de color de fondo para que lo pinte vacío-->
									<fo:inline color="#F0F0F0">X</fo:inline>
								</fo:table-cell>
								<fo:table-cell number-columns-spanned="3">
									<fo:block text-align="left" height="14px" font-size= "{$fuenteFiltro}" border="1px solid #000000"
										margin-right= "2px" background-color="{$colorAmarillo}" vertical-align= "middle" padding="{$paddingCampoFiltro}">
										<fo:inline color="{$colorAmarillo}">X</fo:inline>
										<xsl:value-of select="filtro/transaccion" />
									</fo:block>	
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					
					<!-- Bloque vacio para dejar un hueco -->
					<fo:block line-height="12pt" font-size="11pt" color="white">VACIO
					</fo:block>
					<!-- Listado -->
					<!-- subtitulo -->
					<fo:block line-height="12pt" font-size="10px"
						space-before="5pt" space-after="5pt" keep-together="always" color="#FFFFFF"
						font-weight="bold" margin-bottom="4px" border-bottom="1px solid #CCCCCC"
						padding="2px 0px 6px 4px" text-align="left">
						<fo:external-graphic>
							<xsl:attribute name="src">
								<xsl:value-of select="$pathImagenes" />01-bullet2-rj.gif
							</xsl:attribute>
						</fo:external-graphic>
						<!-- letra de color de fondo para que simule un espacio y que la imagen 
							no se vea pegada a la glosa -->
						<fo:inline color="white">X</fo:inline>
						<fo:inline color="black">Listado</fo:inline>
					</fo:block>

					<!-- tabla con listado de detalles -->
					<fo:table text-align="left" table-layout="fixed"
						margin-bottom="1pt" border-collapse="separate" border-spacing="1px"
						border-color="gray" border-bottom="1px solid #C9CFD6" border-left="1px solid #C9CFD6">

						
						<fo:table-column column-width="1.665cm" /> <!-- Fecha-->
						<fo:table-column column-width="1.11cm" /> <!-- Oficina Origen-->
						<fo:table-column column-width="1.11cm" /> <!-- Oficina Destino-->
						<fo:table-column column-width="1.665cm" /> <!-- CtaCtbl-->
						<fo:table-column column-width="1.3875cm" /> <!-- Vigente-->
						<fo:table-column column-width="1.9425cm" /> <!-- CtaCte-->
						<fo:table-column column-width="2.22cm" /> <!-- Monto-->
						<fo:table-column column-width="1.9425cm" /> <!-- NTrx-->
						<fo:table-column column-width="0.8325cm" /> <!-- Trx-->
						<fo:table-column column-width="0.8325cm" /> <!-- Correlativo-->
						<fo:table-column column-width="2.22cm" /> <!-- Beneficiario-->
						<fo:table-column column-width="2.22cm" /> <!-- Rut-->
						<fo:table-column column-width="2.22cm" /> <!-- Glosa-->
						<fo:table-column column-width="1.3875cm" /> <!-- Mnemonico-->
						<fo:table-column column-width="1.24875cm" /> <!-- Moneda-->
						<fo:table-column column-width="1.24875cm" /> <!-- User-->
						<fo:table-column column-width="1.24875cm" /> <!-- Activador-->
						<fo:table-column column-width="1.24875cm" /> <!-- Hora-->

						<!-- titulos de las cabeceras -->
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell background-color="#F0F0F0" padding="{$paddingCabeceraDetalle}"
									font-size="{$fuenteCabeceraDetalle}" color="#4D6175" text-align="center"
									border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6">
									<fo:block>
										Fecha
									</fo:block>
								</fo:table-cell>
								<fo:table-cell background-color="#F0F0F0" padding="{$paddingCabeceraDetalle}"
									font-size="{$fuenteCabeceraDetalle}" color="#4D6175" text-align="center"
									border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6">
									<fo:block>
										Oficina Origen
									</fo:block>
								</fo:table-cell>
								<fo:table-cell background-color="#F0F0F0" padding="{$paddingCabeceraDetalle}"
									font-size="{$fuenteCabeceraDetalle}" color="#4D6175" text-align="center"
									border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6">
									<fo:block>
										Oficina Destino
									</fo:block>
								</fo:table-cell>
								<fo:table-cell background-color="#F0F0F0" padding="{$paddingCabeceraDetalle}"
									font-size="{$fuenteCabeceraDetalle}" color="#4D6175" text-align="center"
									border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6">
									<fo:block>
										Cta. Ctbl.
									</fo:block>
								</fo:table-cell>
								<fo:table-cell background-color="#F0F0F0" padding="{$paddingCabeceraDetalle}"
									font-size="{$fuenteCabeceraDetalle}" color="#4D6175" text-align="center"
									border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6">
									<fo:block>
										Vigente
									</fo:block>
								</fo:table-cell>
								<fo:table-cell background-color="#F0F0F0" padding="{$paddingCabeceraDetalle}"
									font-size="{$fuenteCabeceraDetalle}" color="#4D6175" text-align="center"
									border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6">
									<fo:block>
										Cta. Cte.
									</fo:block>
								</fo:table-cell>
								<fo:table-cell background-color="#F0F0F0" padding="{$paddingCabeceraDetalle}"
									font-size="{$fuenteCabeceraDetalle}" color="#4D6175" text-align="center" 
									border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6">
									<fo:block>
										Monto
									</fo:block>
								</fo:table-cell>
								<fo:table-cell background-color="#F0F0F0" padding="{$paddingCabeceraDetalle}"
									font-size="{$fuenteCabeceraDetalle}" color="#4D6175" text-align="center"
									border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6">
									<fo:block>
										N° Trx
									</fo:block>
								</fo:table-cell>
								<fo:table-cell background-color="#F0F0F0" padding="{$paddingCabeceraDetalle}"
									font-size="{$fuenteCabeceraDetalle}" color="#4D6175" text-align="center"
									border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6">
									<fo:block>
										Trx
									</fo:block>
								</fo:table-cell>
								<fo:table-cell background-color="#F0F0F0" padding="{$paddingCabeceraDetalle}"
									font-size="{$fuenteCabeceraDetalle}" color="#4D6175" text-align="center"
									border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6">
									<fo:block>
										Correl
									</fo:block>
								</fo:table-cell>
								<fo:table-cell background-color="#F0F0F0" padding="{$paddingCabeceraDetalle}"
									font-size="{$fuenteCabeceraDetalle}" color="#4D6175" text-align="center"
									border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6">
									<fo:block>
										Benef
									</fo:block>
								</fo:table-cell>
								<fo:table-cell background-color="#F0F0F0" padding="{$paddingCabeceraDetalle}"
									font-size="{$fuenteCabeceraDetalle}" color="#4D6175" text-align="center"
									border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6">
									<fo:block>
										Rut
									</fo:block>
								</fo:table-cell>
								<fo:table-cell background-color="#F0F0F0" padding="{$paddingCabeceraDetalle}"
									font-size="{$fuenteCabeceraDetalle}" color="#4D6175" text-align="center"
									border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6">
									<fo:block>
										Glosa
									</fo:block>
								</fo:table-cell>
								<fo:table-cell background-color="#F0F0F0" padding="{$paddingCabeceraDetalle}"
									font-size="{$fuenteCabeceraDetalle}" color="#4D6175" text-align="center" 
									border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6">
									<fo:block>
										Mnemónico
									</fo:block>
								</fo:table-cell>
								<fo:table-cell background-color="#F0F0F0" padding="{$paddingCabeceraDetalle}"
									font-size="{$fuenteCabeceraDetalle}" color="#4D6175" text-align="center"
									border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6">
									<fo:block>
										Moneda
									</fo:block>
								</fo:table-cell>
								<fo:table-cell background-color="#F0F0F0" padding="{$paddingCabeceraDetalle}"
									font-size="{$fuenteCabeceraDetalle}" color="#4D6175" text-align="center"
									border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6">
									<fo:block>
										User
									</fo:block>
								</fo:table-cell>
								<fo:table-cell background-color="#F0F0F0" padding="{$paddingCabeceraDetalle}"
									font-size="{$fuenteCabeceraDetalle}" color="#4D6175" text-align="center" 
									border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6">
									<fo:block>
										Activador
									</fo:block>
								</fo:table-cell>
								<fo:table-cell background-color="#F0F0F0" padding="{$paddingCabeceraDetalle}"
									font-size="{$fuenteCabeceraDetalle}" color="#4D6175" text-align="center" 
									border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6">
									<fo:block>
										Hora
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<!-- Se pinta cada fila -->
							<xsl:for-each select="detalles/detalle">
								<fo:table-row>
									<fo:table-cell color="#0361A2" font-size="{$fuenteContenidoDetalle}"
										 border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6"
										text-align="center" padding="{$paddingCabeceraDetalle}">
										<fo:block>
											<xsl:value-of select="fechaProceso" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell color="#0361A2" font-size="{$fuenteContenidoDetalle}"
										 border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6"
										text-align="center" padding="{$paddingCabeceraDetalle}">
										<fo:block>
											<xsl:value-of select="oficinaOrigen" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell color="#0361A2" font-size="{$fuenteContenidoDetalle}"
										border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6"
										text-align="center" padding="{$paddingCabeceraDetalle}">
										<fo:block>
											<xsl:value-of select="oficinaDestino" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell color="#0361A2" font-size="{$fuenteContenidoDetalle}"
										 border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6"
										text-align="center" padding="{$paddingCabeceraDetalle}">
										<fo:block>
											<xsl:value-of select="cuentaContable" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell color="#0361A2" font-size="{$fuenteContenidoDetalle}"
										 border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6"
										text-align="center" padding="{$paddingCabeceraDetalle}">
										<fo:block>
											<xsl:value-of select="vigente" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell color="#0361A2" font-size="{$fuenteContenidoDetalle}"
										 border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6"
										text-align="center" padding="{$paddingCabeceraDetalle}">
										<fo:block>
											<xsl:value-of select="cuentaCorriente" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell color="#0361A2" font-size="{$fuenteContenidoDetalle}"
										border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6"
										text-align="center" padding="{$paddingCabeceraDetalle}">
										<fo:block>
											<xsl:value-of select="format-number(monto, '#.##0,#', 'pesos')"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell color="#0361A2" font-size="{$fuenteContenidoDetalle}"
										 border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6"
										text-align="center" padding="{$paddingCabeceraDetalle}">
										<fo:block>
											<xsl:value-of select="numTransaccion" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell color="#0361A2" font-size="{$fuenteContenidoDetalle}"
										 border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6"
										text-align="center" padding="{$paddingCabeceraDetalle}">
										<fo:block>
											<xsl:value-of select="transaccion" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell color="#0361A2" font-size="{$fuenteContenidoDetalle}"
										 border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6"
										text-align="center" padding="{$paddingCabeceraDetalle}">
										<fo:block>
											<xsl:value-of select="correlativo" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell color="#0361A2" font-size="{$fuenteContenidoDetalle}"
										 border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6"
										text-align="center" padding="{$paddingCabeceraDetalle}">
										<fo:block>
											<xsl:value-of select="nombreBeneficiario" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell color="#0361A2" font-size="{$fuenteContenidoDetalle}"
										 border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6"
										text-align="center" padding="{$paddingCabeceraDetalle}">
										<fo:block>
											<xsl:value-of select="rut" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell color="#0361A2" font-size="{$fuenteContenidoDetalle}"
										 border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6"
										text-align="center" padding="{$paddingCabeceraDetalle}">
										<fo:block>
											<xsl:value-of select="glosa" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell color="#0361A2" font-size="{$fuenteContenidoDetalle}"
										 border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6"
										text-align="center" padding="{$paddingCabeceraDetalle}">
										<fo:block>
											<xsl:value-of select="nemonico" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell color="#0361A2" font-size="{$fuenteContenidoDetalle}"
										 border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6"
										text-align="center" padding="{$paddingCabeceraDetalle}">
										<fo:block>
											<xsl:value-of select="moneda" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell color="#0361A2" font-size="{$fuenteContenidoDetalle}"
										 border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6"
										text-align="center" padding="{$paddingCabeceraDetalle}">
										<fo:block>
											<xsl:value-of select="usuario" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell color="#0361A2" font-size="{$fuenteContenidoDetalle}"
										 border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6"
										text-align="center" padding="{$paddingCabeceraDetalle}">
										<fo:block>
											<xsl:value-of select="activador" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell color="#0361A2" font-size="{$fuenteContenidoDetalle}"
										 border-right="1px solid #C9CFD6" border-top="1px solid #C9CFD6"
										text-align="center" padding="{$paddingCabeceraDetalle}">
										<fo:block>
											<xsl:value-of select="horaTransaccion" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</xsl:for-each>
						</fo:table-body>
					</fo:table>

				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>

</xsl:stylesheet>