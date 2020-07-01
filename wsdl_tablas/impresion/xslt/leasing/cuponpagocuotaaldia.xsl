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
	<xsl:variable name="espacio-texto-celda-right">2mm</xsl:variable>
	<xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
	<xsl:variable name="espacio-celda-top">2mm</xsl:variable>
	<xsl:variable name="size-fuente-margen">7pt</xsl:variable>
	<xsl:decimal-format name="peso" decimal-separator="." grouping-separator=","/>

	<!-- Variables -->
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina"
					page-height="35.56cm"
					page-width="21.59cm"
					margin-top="0.7cm"
					margin-bottom="1cm"
					margin-left="2cm"
					margin-right="2cm">
					<fo:region-body margin-top="1.6cm" margin-bottom="0.5cm" background-color="#ffffff"/> 
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
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- imagen bci -->
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after">
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
				<fo:block>
					<xsl:choose>
						<xsl:when test="count(leasing/cupones-pago/cupon) > 0">
							<xsl:variable name="cant-cupones" select="count(leasing/cupones-pago/cupon)" />
							<xsl:for-each select="leasing/cupones-pago/cupon">
								<xsl:call-template name="cabecera"/>
								<fo:block padding-bottom="8mm" />
								<xsl:call-template name="contenido"/>
								<fo:block padding-bottom="6cm" />
								<xsl:call-template name="firma"/>
								<fo:block padding-bottom="4mm" />
								<xsl:call-template name="resumen"/>

								<xsl:choose>
									<xsl:when test="$cant-cupones > position()">
										<fo:block padding-bottom="6mm" break-after="page"/>
									</xsl:when>
									<xsl:otherwise>
										<fo:block padding-bottom="6mm"/>
									</xsl:otherwise>
								</xsl:choose>
								
							</xsl:for-each>
						</xsl:when>
						<xsl:otherwise>
							<fo:block padding-top="2cm" text-align="center">
								No existen cuotas de pago asociadas a la operación.
							</fo:block>
						</xsl:otherwise>
					</xsl:choose>
				</fo:block>
				</fo:flow>
			</fo:page-sequence> 
		</fo:root>
	</xsl:template>


	<xsl:template name="cabecera">
		<fo:block font-size="5pt" space-after="1mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="100px"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-column column-width="9cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- nombre cliente -->
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
								<fo:external-graphic width="100px" height="42px">
									<xsl:attribute name="src">
										<xsl:value-of select="rutaImagen"/>02-logo-bci.gif
										</xsl:attribute>
									</fo:external-graphic>
							</fo:block>
							<!-- nombre cliente -->
						</fo:table-cell>
						
						<fo:table-cell number-columns-spanned="2">				
							<fo:block font-size="12pt" padding-before="1cm" text-align="left">
								Leasing
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="3">
							<fo:block font-size="10pt" font-weight="bold" text-align="right" color="{$txt}">
								cupón válido hasta el <xsl:value-of select="fecha-hasta"/>.
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block padding-bottom="4mm" />
		<fo:block color="white" background-color="FFFFFF" width="100%" height="200px" font-size="10pt" text-align="center" padding-bottom="0.5mm" padding-top="0.5mm">
			Cupón de Pago Cuota al Día
		</fo:block>
	</xsl:template>


	<xsl:template name="contenido">
		<fo:block text-align="justify" padding-bottom="2mm">

		<fo:block text-align="left">
		Estimado(s) Señor(es):
		<fo:block font-weight="bold"><xsl:value-of select="razonSocial"/></fo:block>
		<fo:block text-decoration="underline" font-weight="bold">Presente</fo:block>
		</fo:block>
		<fo:block padding-bottom="4mm" />

		Dado que usted nos ha solicitado un cupón,para cumplir con el pago de la cuota  
		Nº <fo:inline font-weight="bold"><xsl:value-of select="cuota"/></fo:inline> de Contrato <fo:inline font-weight="bold"><xsl:value-of select="operacion"/></fo:inline>, 
		este incluye <fo:inline font-weight="bold">$ <xsl:value-of select="interes"/></fo:inline> de intereses y
		<fo:inline font-weight="bold"><xsl:value-of select="gastos"/></fo:inline> por Gastos de Cobranza.
		<fo:block padding-bottom="4mm" />

		Dicho cupón le permite cumplir de manera fácil con su obligación de Leasing, dado 
		que puede pagar en cualquier sucursal del BANCO CREDITO E INVERSIONES.
		<fo:block padding-bottom="4mm" />

		Cualquier consulta al respecto, agradeceremos contactar a su Ejecutivo de Cuenta, 
		fono 692 78 00 ó a nuestro Depto. de Cobranzas, fonos <fo:inline font-weight="bold">692-78-31 / 692-78-86 / 692-78-57</fo:inline>.
		<fo:block padding-bottom="4mm" />

		Si   ha  extraviado  su  cuponera,  le  solicitamos  que  nos   avise  formalmente a 
		través de la Unidad  de Atención  a Clientes de  BCI División Leasing.
		<fo:block padding-bottom="4mm" />

		Para asegurar que nuestra correspondencia llegue oportunamente, le sugerimos comunicarnos
		a la brevedad un eventual cambio de dirección a la Unidad de Post-Venta, fono<fo:inline font-weight="bold"> 692 78 93</fo:inline> o 
		bien a la Unidad de Atención a Clientes, fono  <fo:inline font-weight="bold">692-78-19</fo:inline>.
		<fo:block padding-bottom="4mm" />

		Agradecido de antemano por operar con nosotros,  le saludamos atentamente.
		<fo:block padding-bottom="4mm" />

		</fo:block>
	</xsl:template>

	<xsl:template name="firma">
		<fo:block margin-left="5cm">
			<fo:table table-layout="fixed">
			<fo:table-column column-width="11cm" />
			<fo:table-body>
				<!-- FILA 1 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-weight="normal" text-align="center">
						    ---------------------------------------------
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<!-- FILA 2 -->
				<fo:table-row>
					<fo:table-cell padding-left="{$espacio-texto-celda-left}" padding-top="0mm" padding-bottom="1mm">
						<fo:block font-size="10pt" padding-bottom="1.5mm" font-weight="bold" text-align="center">
							<xsl:value-of select="ejecutivo-pago"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>
					<fo:table-cell padding-left="{$espacio-texto-celda-left}" padding-top="0mm" padding-bottom="2.5mm">
						<fo:block font-size="8pt" padding-bottom="1.5mm" text-align="center">
							pp.BCI División Leasing
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

			</fo:table-body>
			</fo:table>			
		</fo:block>
	</xsl:template>

	<xsl:template name="resumen">
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="6cm" />
			<fo:table-column column-width="3cm" />
			<fo:table-column column-width="8cm" />
			<fo:table-body>
				<!-- FILA 1 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="11pt" text-align="left" color="{$txt}">
							<xsl:call-template name="tabla_izquierda"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="12pt">
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-right="{$espacio-texto-celda-right}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="11pt" text-align="left" color="{$txt}">
							<xsl:call-template name="tabla_derecha"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<!-- FILA 1 -->

			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="tabla_izquierda">

		<fo:block font-size="5pt" space-after="1mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="60px"/>
				<fo:table-column column-width="0.1mm"/>
				<fo:table-body>
				<!-- LOGO -->
				<fo:table-row>
					<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
								<fo:external-graphic width="60px" height="25.2px">
									<xsl:attribute name="src">
										<xsl:value-of select="rutaImagen"/>02-logo-bci.gif
										</xsl:attribute>
									</fo:external-graphic>
							</fo:block>
					</fo:table-cell>
					<fo:table-cell>
							<fo:block font-size="8pt" padding-before="0.7cm" text-align="left" font-weight="bold">
								Leasing
							</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>

		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="3cm" />
			<fo:table-column column-width="3cm" />
			<fo:table-body>
				<!-- FILA 1 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm">
						<fo:block font-weight="bold" font-size="6pt" text-align="center" padding-bottom="1.5mm">
							<xsl:value-of select="operacion"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm">
						<fo:block font-weight="bold" font-size="6pt" text-align="center" padding-bottom="1.5mm">
							<xsl:value-of select="rut"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<!-- FILA 1 -->
				<fo:table-row>
					<fo:table-cell border="0.5pt solid #000000" border-top-color="#FFFFFF">
						<fo:block font-size="5pt" text-align="center">
							NUMERO CONTRATO
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" border-top-color="#FFFFFF">
						<fo:block font-size="5pt" text-align="center">
							RUT
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

			</fo:table-body>
			</fo:table>
		</fo:block>

		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="1.5 cm" />
			<fo:table-column column-width="1.5 cm" />
			<fo:table-column column-width="1.5 cm" />
			<fo:table-column column-width="1.5 cm" />
			<fo:table-body>

				<!-- FILA 2 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm">
						<fo:block font-weight="bold" font-size="6pt" text-align="center" padding-bottom="1.5mm">
							<xsl:value-of select="cuota"/><!-- CUOTA -->
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm">
						<fo:block font-weight="bold" font-size="6pt" text-align="center" padding-bottom="1.5mm">
							<xsl:value-of select="fecha"/><!-- VENCIMIENTO -->
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm">
						<fo:block font-weight="bold" font-size="6pt" text-align="center" padding-bottom="1.5mm">						
							<xsl:value-of select="cuotaMorosa"/><!-- CUOTA MOROSA -->
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm">
						<fo:block font-weight="bold" font-size="6pt" text-align="center" padding-bottom="1.5mm">
							<xsl:value-of select="descripcion"/><!-- TIPO CUOTA -->
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<!-- FILA 2 -->
				<fo:table-row >
					<fo:table-cell border="0.5pt solid #000000" border-top-color="#FFFFFF">
						<fo:block font-size="5pt" text-align="center">
							CUOTA
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" border-top-color="#FFFFFF">
						<fo:block font-size="5pt" text-align="center">
							VENCIMIENTO
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" border-top-color="#FFFFFF">
						<fo:block font-size="5pt" text-align="center">
							CUOTA MOROSA
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" border-top-color="#FFFFFF">
						<fo:block font-size="5pt" text-align="center">
							TIPO CUOTA
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

			</fo:table-body>
			</fo:table>
		</fo:block>

		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="3cm" />
			<fo:table-column column-width="3cm" />
			<fo:table-body>
				<!-- FILA 3 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm">
						<fo:block font-weight="bold" font-size="6pt" text-align="center" padding-bottom="1.5mm">
							<xsl:value-of select="valorCuotaNeta"/><!-- VALOR CUOTA -->
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="0.5mm">
						<fo:block font-size="3pt" text-align="center" padding-bottom="1.5mm">
							<xsl:value-of select="ejecutivo-pago"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<!-- FILA 3 -->
				<fo:table-row>
					<fo:table-cell border="0.5pt solid #000000" border-top-color="#FFFFFF">
						<fo:block font-size="5pt" text-align="center">
							VALOR CUOTA
						</fo:block>
					</fo:table-cell>
					<fo:table-cell number-rows-spanned="2">
						<fo:block text-align="center" font-size="7pt">
							TIMBRE&#10;&#10;
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<!-- FILA 4 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm">
						<fo:block font-weight="bold" font-size="6pt" text-align="center" padding-bottom="1.5mm">
							<xsl:value-of select="moneda"/><!-- MONEDA -->
						</fo:block>
					</fo:table-cell>
					<fo:table-cell font-size="7pt">

					</fo:table-cell>
				</fo:table-row>

				<!-- FILA 5 -->
				<fo:table-row>
					<fo:table-cell border="0.5pt solid #000000" border-top-color="#FFFFFF">
						<fo:block font-size="5pt" text-align="center">
							MONEDA
						</fo:block>
					</fo:table-cell>
					<fo:table-cell font-size="7pt" number-rows-spanned="2">
						<fo:block text-align="center">
							FECHA
							CAJERO
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

			</fo:table-body>
			</fo:table>
		</fo:block>

		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="3cm" />
			<fo:table-column column-width="2.5cm" />
			<fo:table-body>

				<!-- FILA 6 -->
				<fo:table-row>
					<fo:table-cell number-columns-spanned="2" padding-top="0.5mm" padding-bottom="0.5mm">
						<fo:block font-size="5pt" margin-left="5px" font-weight="bold">
							<xsl:value-of select="mensaje-iva"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<!-- FILA 7 -->
				<fo:table-row>
					<fo:table-cell padding-top="0.5mm" padding-bottom="0.5mm">
						<fo:block font-weight="bold" font-size="6pt">
							Tipo Cambio
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm" padding-bottom="0.5mm">
						<fo:block font-weight="bold" font-size="6pt" text-align="right">
							$&#0160;<xsl:value-of select="tipoCambio"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<!-- FILA 8 -->
				<fo:table-row>
					<fo:table-cell padding-top="0.5mm" padding-bottom="0.5mm">
						<fo:block font-weight="bold" font-size="6pt">
							Valor Cuota
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm" padding-bottom="0.5mm">
						<fo:block font-weight="bold" font-size="6pt" text-align="right">
							$&#0160;<xsl:value-of select="valorCuota"/><!-- VALOR CUOTA -->
						</fo:block>
					</fo:table-cell>
				</fo:table-row>


				<!-- FILA 9 -->
				<fo:table-row>
					<fo:table-cell padding-top="0.5mm" padding-bottom="0.5mm">
						<fo:block font-weight="bold" font-size="6pt">
							Intereses
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm" padding-bottom="0.5mm">
						<fo:block font-weight="bold" font-size="6pt" text-align="right">
							$&#0160;<xsl:value-of select="interes"/><!-- INTERESES -->
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<!-- FILA 10 -->
				<fo:table-row>
					<fo:table-cell padding-top="0.5mm" padding-bottom="0.5mm">
						<fo:block font-weight="bold" font-size="6pt">
							Gastos de Cobranzas
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm" padding-bottom="0.5mm">
						<fo:block font-weight="bold" font-size="6pt" text-align="right">
							$&#0160;<xsl:value-of select="gastos"/><!-- GASTO COBRANZA -->
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<!-- FILA 11 -->
				<fo:table-row>
					<fo:table-cell padding-top="0.5mm" padding-bottom="0.5mm">
						<fo:block font-weight="bold" font-size="7pt">
							TOTAL
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm" padding-bottom="0.5mm">
						<fo:block font-weight="bold" font-size="6pt" text-align="right">
							$&#0160;<xsl:value-of select="total"/><!-- TOTAL -->
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<!-- FILA 12 -->
				<fo:table-row>
					<fo:table-cell padding-top="2mm" number-columns-spanned="2">
						<fo:block font-weight="bold" font-size="4pt">
							"El timbre de pago de esta cuota no acredita pago de cuotas anteriores"
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<!-- FILA 12 -->
				<fo:table-row>
					<fo:table-cell padding-top="1mm" number-columns-spanned="2">
						<fo:block font-weight="bold" font-size="7pt">
							CUPON CLIENTE
						</fo:block>
					</fo:table-cell>
				</fo:table-row>


			</fo:table-body>
			</fo:table>
		</fo:block>


	</xsl:template>


	<xsl:template name="tabla_derecha">

		<fo:block font-size="5pt" space-after="1mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="60px"/>
				<fo:table-column column-width="0.1mm"/>
				<fo:table-body>
				<!-- LOGO -->
				<fo:table-row>
					<fo:table-cell>
							<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
								<fo:external-graphic width="60px" height="25.2px">
									<xsl:attribute name="src">
										<xsl:value-of select="rutaImagen"/>02-logo-bci.gif
										</xsl:attribute>
									</fo:external-graphic>
							</fo:block>
					</fo:table-cell>
					<fo:table-cell>
							<fo:block font-size="8pt" padding-before="0.7cm" text-align="left" font-weight="bold">
								Leasing
							</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>

		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="3cm" />
			<fo:table-column column-width="3cm" />
			<fo:table-column column-width="2cm" />
			<fo:table-body>
				<!-- FILA 1 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm">
						<fo:block font-weight="bold" font-size="6pt" text-align="center" padding-bottom="1.5mm">
							<xsl:value-of select="convenio"/><!-- CONVENIO -->
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm">
						<fo:block font-weight="bold" font-size="6pt" text-align="center" padding-bottom="1.5mm">
							<xsl:value-of select="operacion"/><!-- CONTRATO -->
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm">
						<fo:block font-weight="bold" font-size="6pt" text-align="center" padding-bottom="1.5mm">
							<xsl:value-of select="cuota"/><!-- CUOTA -->
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<!-- FILA 1 -->
				<fo:table-row>
					<fo:table-cell border="0.5pt solid #000000" border-top-color="#FFFFFF">
						<fo:block font-size="5pt" text-align="center">
							CONVENIO
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" border-top-color="#FFFFFF">
						<fo:block font-size="5pt" text-align="center">
							NUMERO CONTRATO
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" border-top-color="#FFFFFF">
						<fo:block font-size="5pt" text-align="center">
							CUOTA
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

			</fo:table-body>
			</fo:table>
		</fo:block>

		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="8cm" />
			<fo:table-body>

				<!-- FILA 2 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm">
						<fo:block font-weight="bold" font-size="6pt" text-align="center" padding-bottom="1.5mm">
							<xsl:value-of select="razonSocial"/><!-- RAZON SOCIAL -->
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<!-- FILA 2 -->
				<fo:table-row>
					<fo:table-cell border="0.5pt solid #000000" border-top-color="#FFFFFF">
						<fo:block font-size="5pt" text-align="center">
							RAZON SOCIAL O NOMBRE
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

			</fo:table-body>
			</fo:table>
		</fo:block>

		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="2.5cm" />
			<fo:table-column column-width="2cm" />
			<fo:table-column column-width="3.5cm" />
			<fo:table-body>
				<!-- FILA 3 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm">
						<fo:block font-weight="bold" font-size="6pt" text-align="center" padding-bottom="1.5mm">
							<xsl:value-of select="rut"/><!-- RUT -->
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm" number-columns-spanned="2">
						<fo:block font-weight="bold" font-size="6pt" text-align="center" padding-bottom="1.5mm">
							<xsl:value-of select="descripcion"/><!-- TIPO CUOTA -->
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<!-- FILA 3 -->
				<fo:table-row>
					<fo:table-cell border="0.5pt solid #000000" border-top-color="#FFFFFF">
						<fo:block font-size="5pt" text-align="center">
							RUT
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" border-top-color="#FFFFFF" number-columns-spanned="2">
						<fo:block font-size="5pt" text-align="center">
							TIPO DE CUOTA
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<!-- FILA 4 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm">
						<fo:block font-weight="bold" font-size="6pt" text-align="center" padding-bottom="1.5mm">
							<xsl:value-of select="valorCuotaNeta"/><!-- VALOR CUOTA -->
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm">
						<fo:block font-weight="bold" font-size="6pt" text-align="center" padding-bottom="1.5mm">
							<xsl:value-of select="moneda"/><!-- MONEDA -->
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm">
						<fo:block font-weight="bold" font-size="6pt" text-align="center" padding-bottom="1.5mm">
							<xsl:value-of select="fecha"/><!-- VENCIMIENTO CUPON -->
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<!-- FILA 5 -->
				<fo:table-row>
					<fo:table-cell border="0.5pt solid #000000" border-top-color="#FFFFFF">
						<fo:block font-size="5pt" text-align="center">
							VALOR CUOTA
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" border-top-color="#FFFFFF">
						<fo:block font-size="5pt" text-align="center">
							MONEDA
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" border-top-color="#FFFFFF">
						<fo:block font-size="5pt" text-align="center">
							VENCIMIENTO CUPON
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

			</fo:table-body>
			</fo:table>
		</fo:block>

		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="2.5cm" />
			<fo:table-column column-width="2.5cm" />
			<fo:table-column column-width="3cm" />
			<fo:table-body>

				<!-- FILA 6 -->
				<fo:table-row>
					<fo:table-cell padding-top="0.5mm" padding-bottom="0.5mm">
						<fo:block font-size="5pt" margin-left="5px" font-weight="bold">
							<xsl:value-of select="mensaje-iva"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="0.5mm">
						<fo:block font-size="3pt" text-align="center" padding-bottom="1.5mm">
							<xsl:value-of select="ejecutivo-pago"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<!-- FILA 7 -->
				<fo:table-row>
					<fo:table-cell padding-top="0.5mm" padding-bottom="0.5mm">
						<fo:block font-weight="bold" font-size="6pt">
							Tipo Cambio
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm" padding-bottom="0.5mm">
						<fo:block font-weight="bold" font-size="6pt" text-align="right">
							$&#0160;<xsl:value-of select="tipoCambio"/><!-- TIPO CAMBIO -->
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="7pt">
							TIMBRE
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<!-- FILA 8 -->
				<fo:table-row>
					<fo:table-cell padding-top="0.5mm" padding-bottom="0.5mm">
						<fo:block font-weight="bold" font-size="6pt">
							Valor Cuota
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm" padding-bottom="0.5mm">
						<fo:block font-weight="bold" font-size="6pt" text-align="right">
							$&#0160;<xsl:value-of select="valorCuota"/><!-- VALOR CUOTA -->
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="7pt">
							FECHA
						</fo:block>
					</fo:table-cell>
				</fo:table-row>


				<!-- FILA 9 -->
				<fo:table-row>
					<fo:table-cell padding-top="0.5mm" padding-bottom="0.5mm">
						<fo:block font-weight="bold" font-size="6pt">
							Intereses
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm" padding-bottom="0.5mm">
						<fo:block font-weight="bold" font-size="6pt" text-align="right">
							$&#0160;<xsl:value-of select="interes"/><!-- INTERES -->
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<!-- FILA 10 -->
				<fo:table-row>
					<fo:table-cell padding-top="0.5mm" padding-bottom="0.5mm">
						<fo:block font-weight="bold" font-size="6pt">
							Gastos de Cobranzas
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm" padding-bottom="0.5mm">
						<fo:block font-weight="bold" font-size="6pt" text-align="right">
							$&#0160;<xsl:value-of select="gastos"/><!-- GASTOS COBRANZA -->
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="center" font-size="7pt">
							CAJERO
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<!-- FILA 11 -->
				<fo:table-row>
					<fo:table-cell padding-top="0.5mm" padding-bottom="0.5mm">
						<fo:block font-weight="bold" font-size="7pt">
							TOTAL
						</fo:block>
					</fo:table-cell>
					<fo:table-cell border="0.5pt solid #000000" padding-top="0.5mm" padding-bottom="0.5mm">
						<fo:block font-weight="bold" font-size="6pt" text-align="right">
							$&#0160;<xsl:value-of select="total"/><!-- TOTAL -->
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<!-- FILA 12 -->
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-size="4pt">
							
						</fo:block>
					</fo:table-cell>
					<fo:table-cell number-columns-spanned="2">
						<fo:block font-size="4pt" padding-top="2mm">
							PAGUESE EN: "BANCO CREDITO E INVERSIONES"
						</fo:block>
					</fo:table-cell>					
				</fo:table-row>

				<!-- FILA 12 -->
				<fo:table-row>
					<fo:table-cell padding-top="2mm">
						<fo:block font-weight="bold" font-size="7pt">
							CUPON BANCO
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-top="2mm" number-columns-spanned="2">
						<fo:block font-weight="bold" font-size="5pt" >
							El pago fuera de plazo está afecto a intereses de mora.
						</fo:block>
					</fo:table-cell>
				</fo:table-row>


			</fo:table-body>
			</fo:table>
		</fo:block>


	</xsl:template>


</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2007. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="cuponpagocuotaaldia.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="fop" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bSchemaAware" value="true"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bWarnings" value="true"/><advancedProp name="bUseDTD" value="false"/><advancedProp name="iErrorHandling" value="fatal"/></scenario></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/><MapperBlockPosition></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
-->