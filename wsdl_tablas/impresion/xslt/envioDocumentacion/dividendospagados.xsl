<?xml version="1.0" encoding="UTF-8"?>
<xslt:stylesheet xmlns:date="http://exslt.org/dates-and-times"
	xmlns:str="http://exslt.org/strings"
	xmlns:xslt="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format"
	xmlns:svg="http://www.w3.org/2000/svg"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
	extension-element-prefixes="date str">
	<xslt:output indent="yes" encoding="utf-8" />
	<xsl:param name="imagen"/>
	<xsl:param name="img_firma"/>
	<xsl:template match="mensajesEnviados">
		<fo:root>
			<fo:layout-master-set>
				<fo:simple-page-master master-name="Letter Page"
					page-width="11.000in" page-height="8.500in">
					<fo:region-body region-name="xsl-region-body"
						margin-top="30.000px" margin-bottom="0.7in" margin-left="0.7in"
						margin-right="0.7in" />
					<fo:region-before region-name="xsl-region-before"
						display-align="after" extent="0.7in" />
					<fo:region-after region-name="xsl-region-after"
						display-align="before" extent="0.7in" />
					<fo:region-start region-name="xsl-region-start"
						extent="0.7in" />
					<fo:region-end region-name="xsl-region-end"
						extent="0.7in" />
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="Letter Page">
			<xsl:for-each select="mensajes">
				<fo:static-content flow-name="xsl-region-before"
					font-size="12pt" font-family="sans-serif">
					<fo:block> </fo:block>
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after"
					font-size="12pt" font-family="sans-serif">
					<fo:block color="rgb(0,0,255)" font-size="10pt"
						font-family="sans-serif">
						BANCO CREDITO E INVERSIONES 
					</fo:block>
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-start"
					font-size="12pt" font-family="sans-serif">
					<fo:block font-style="normal"> </fo:block>
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-end"
					font-size="12pt" font-family="sans-serif">
					<fo:block font-style="normal"> </fo:block>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body" font-family="sans-serif"
					font-size="12pt">
					<fo:block text-align="center">
						<fo:external-graphic>
							<xsl:attribute name="src">
								<xsl:value-of select="rutaImagen"/>02-logo-bci.gif
							</xsl:attribute>
						</fo:external-graphic>		
					</fo:block>
					<fo:block text-align="center" font-family="sans-serif"
						font-weight="bold" font-style="normal">
						DETALLE DE DIVIDENDOS PAGADOS
					</fo:block>
					<fo:block text-align="center"
						font-family="sans-serif" font-weight="bold">
						<fo:table border-collapse="collapse"
							width="auto" table-layout="fixed" >
							<fo:table-column column-width="5cm"
								column-number="1" />
							<fo:table-column column-width="1cm"
								column-number="2" />
							<fo:table-column column-width="10cm"
								column-number="3" />
							<fo:table-column column-width="5cm"
								column-number="4" />
							<fo:table-column column-width="1cm"
								column-number="5" />
							<fo:table-column column-width="4cm"
								column-number="6" />
							<fo:table-body>
								<fo:table-row display-align="center">
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block>
											<fo:inline font-size="8pt"
												font-weight="normal" font-style="normal">
												Cliente (<xsl:value-of select="rut_cliente" />)
											</fo:inline>
											
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											:
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											<xsl:value-of select="cliente" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											Nº Operación Hipotecaria
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											:
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											<xsl:value-of select="num_operacion" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row display-align="center">
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											Tipo Crédito
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											:
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											<xsl:value-of select="tipo_credito" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											Nº Colocación
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											:
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											<xsl:value-of select="num_colocacion" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row display-align="center">
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											Estado Operación
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											:
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											<xsl:value-of select="estado_oper" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											Fecha Impresión
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											:
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											<xsl:value-of select="fecha_impresion" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row display-align="center">
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											Nº Div. Totales
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											:
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											<xsl:value-of select="div_totales" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											Nº Div. Cancelados
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											:
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt"
										text-align="left" display-align="center">
										<fo:block>
											<fo:inline font-size="8pt"
												font-weight="normal" font-style="normal">
												<xsl:value-of select="num_div_cancelados" />
											</fo:inline>
											<fo:inline
												font-style="normal" font-size="8pt">
												 
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block text-align="left" font-family="sans-serif"
						font-weight="bold">
						<fo:table table-layout="fixed" border-collapse="collapse">
							<fo:table-column column-width="1cm"
								column-number="1" />
							<fo:table-column column-width="2cm"
								column-number="2" />
							<fo:table-column column-width="2cm"
								column-number="3" />
							<fo:table-column column-width="1.5cm"
								column-number="4" />
							<fo:table-column column-width="1.5cm"
								column-number="5" />
							<fo:table-column column-width="1.5cm"
								column-number="6" />
							<fo:table-column column-width="2cm"
								column-number="7" />
							<fo:table-column column-width="2cm"
								column-number="8" />
							<fo:table-column column-width="2cm"
								column-number="9" />
							<fo:table-column column-width="1cm"
								column-number="10" />
							<fo:table-column column-width="2cm"
								column-number="11" />
							<fo:table-column column-width="2cm"
								column-number="12" />
							<fo:table-column column-width="1.5cm"
								column-number="13" />
							<fo:table-column column-width="1.5cm"
								column-number="14" />
							<fo:table-column column-width="2cm"
								column-number="15" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="center">
										<fo:block font-size="9pt"
											font-weight="normal" font-style="normal">
											<fo:inline
												font-size="8pt">
												#
											</fo:inline>
											<fo:inline
												font-style="normal" font-size="8pt">
												Div
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="center">
										<fo:block font-size="9pt"
											font-weight="normal" font-style="normal">
											<fo:inline
												font-style="normal" font-size="8pt">
												Fecha Vcto.
											</fo:inline>
											<fo:inline
												font-size="8pt">
												 
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											Fecha Pago
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											Amort.
										</fo:block>
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											 
										</fo:block>
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											(<xsl:value-of select="codigo_moneda" />)
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											Interés
										</fo:block>
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											 
										</fo:block>
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											(<xsl:value-of select="codigo_moneda" />)
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											Comisión
										</fo:block>
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											 
										</fo:block>
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											(<xsl:value-of select="codigo_moneda" />)
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											Seg.
										</fo:block>
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											Incendio
										</fo:block>
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											(<xsl:value-of select="codigo_moneda" />)
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											Seg.
										</fo:block>
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											Desgra.
										</fo:block>
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											(<xsl:value-of select="codigo_moneda" />)
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											Seg.
										</fo:block>
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											Cesantía
										</fo:block>
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											(<xsl:value-of select="codigo_moneda" />)
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											Suc.
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											Monto
										</fo:block>
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											Dividendo
										</fo:block>
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											(<xsl:value-of select="codigo_moneda" />)
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="center">
										<fo:block font-size="9pt"
											font-weight="normal" font-style="normal">
											<fo:block font-size="8pt"
												font-weight="normal" font-style="normal">
												Monto
											</fo:block>
											<fo:block font-size="8pt"
												font-weight="normal" font-style="normal">
												Dividendo
											</fo:block>
											<fo:inline
												font-size="8pt">
												($)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											Int.
										</fo:block>
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											Penales
										</fo:block>
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											($)
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											Gasto
										</fo:block>
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											Cbrz.
										</fo:block>
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											($)
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											Total
										</fo:block>
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											Cancelado
										</fo:block>
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											($)
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<xsl:for-each select="mensaje">
								<fo:table-row>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="right">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											<xsl:value-of select="div" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											<xsl:value-of select="fec_vcto" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											<xsl:value-of select="fec_pago" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="right">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											<xsl:value-of select="amort" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="right">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											<xsl:value-of select="interes" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="right">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											<xsl:value-of select="comision" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="right">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											<xsl:value-of select="seg_incendio" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="right">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											<xsl:value-of select="seg_desgra" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="right">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											<xsl:value-of select="seg_cesantia" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="center">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											<xsl:value-of select="sucursal" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="right">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											<xsl:value-of select="monto_div" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="right">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											<xsl:value-of select="monto_div_pesos" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="right">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											<xsl:value-of select="int_penales" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="right">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											<xsl:value-of select="gasto_cobranza" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="right">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											<xsl:value-of select="total_cancelado" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								</xsl:for-each>

								<fo:table-row>
									<fo:table-cell
										border="1pt solid black" padding="2pt">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											 
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											 
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											 
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											 
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											 
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											 
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											 
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											 
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											 
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											 
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="right">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											<xsl:value-of select="total_div" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="right">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											<xsl:value-of select="total_div_pesos" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="right">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											<xsl:value-of select="total_interes" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="right">
										<fo:block font-size="8pt"
											font-weight="normal" font-style="normal">
											<xsl:value-of select="total_gastos_cobranza" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell
										border="1pt solid black" padding="2pt" display-align="before"
										text-align="right">
										<fo:block font-weight="normal"
											font-size="8pt">
											<xsl:value-of select="total_cancelado" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block text-align="left"
						font-family="sans-serif" font-weight="bold">
						 
					</fo:block>
					<fo:block text-align="left"
						font-family="sans-serif" font-weight="bold">
						 
					</fo:block>
					<fo:block text-align="left"
						font-family="sans-serif" font-weight="bold">
						 
					</fo:block>
					<fo:block text-align="left"
						font-family="sans-serif" font-weight="bold">
						 
					</fo:block>
					<fo:block text-align="left"
						font-family="sans-serif" font-weight="bold">
						 
					</fo:block>
					<fo:block text-align="left"
						font-family="sans-serif" font-weight="bold">
						 
					</fo:block>
					<fo:block text-align="left"
						font-family="sans-serif" font-weight="bold">
						 
					</fo:block>
					<fo:block text-align="left"
						font-family="sans-serif" font-weight="bold">
						 
					</fo:block>
					<fo:block text-align="left"
						font-family="sans-serif" font-weight="bold">
						 
					</fo:block>
					<fo:block text-align="left"
						font-family="sans-serif" font-weight="bold">
						 
					</fo:block>
					<fo:block text-align="left" font-family="sans-serif"
						font-weight="bold" start-indent="140.800px">
						<fo:external-graphic>
							<xsl:attribute name="src">
								<xsl:value-of select="rutaImagen"/>firma.jpg
							</xsl:attribute>
						</fo:external-graphic>	
					</fo:block>
					<fo:block text-align="left"
						font-family="sans-serif" font-weight="bold"
						start-indent="140.800px">
						 
					</fo:block>
					<fo:block text-align="left" font-family="sans-serif"
						font-weight="bold" start-indent="1.800px">
						 
					</fo:block>
					<fo:block text-align="left"
						font-family="sans-serif" font-weight="bold"
						start-indent="1.800px">
						 
					</fo:block>
					<fo:block text-align="left" font-family="sans-serif"
						font-weight="bold" start-indent="1.800px" font-size="10pt"
						color="rgb(0,0,255)">
						 
					</fo:block>
				</fo:flow>
			</xsl:for-each>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
	
</xslt:stylesheet>
