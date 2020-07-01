<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

<xsl:param name="RUTAIMAGEN"/>

<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
<xsl:variable name="lineas">#CCCCCC</xsl:variable>
<xsl:variable name="txt">#000000</xsl:variable>
<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>

<xsl:template match="/">
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">





<!-- propiedades pagina -->
<fo:layout-master-set>
	<fo:simple-page-master master-name="pagina"
	page-height="15cm"
	page-width="20cm"
	margin-top="0cm"
	margin-bottom="0cm"
	margin-left="2cm"
	margin-right="2cm">
		<fo:region-body margin-top="2cm" margin-bottom="2.5cm" background-color="#ffffff"/> 
		<fo:region-before extent="3cm"/>
		<fo:region-after extent="2cm"/>
	</fo:simple-page-master>
</fo:layout-master-set>
<!-- propiedades pagina -->






<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">

<fo:static-content flow-name="xsl-region-before">
</fo:static-content>

<fo:static-content flow-name="xsl-region-after">
</fo:static-content>

<fo:flow flow-name="xsl-region-body">
	<xsl:call-template name="contenido"/>
</fo:flow>

</fo:page-sequence> 
</fo:root>

</xsl:template>




<xsl:template name="contenido">





<!-- division -->
<fo:block>
	<fo:table table-layout="fixed" >
	<fo:table-column column-width="21cm" />
	<fo:table-body>

		<fo:table-row >
			<fo:table-cell >

				<xsl:call-template name="datos"/>
				
			</fo:table-cell>
		</fo:table-row >
		<fo:table-row space-before="60px">
			<fo:table-cell >
			------------------------------------------------------
			        p.p. Banco de Crédito e Inversiones
			</fo:table-cell>
		</fo:table-row >

	</fo:table-body>
	</fo:table>
</fo:block>
<!-- division -->

</xsl:template>



<xsl:template name="datos">

	<xsl:choose>
	<xsl:when test="count(info/listado-colillas/resumen) > 0">
	<xsl:for-each select="info/listado-colillas/resumen">

		<fo:block>
			<fo:table table-layout="fixed" >
			<fo:table-column column-width="7cm"/>
			<fo:table-column column-width="6cm"/>
			<fo:table-column column-width="6cm"/>
			<fo:table-body>
				<fo:table-row >
				<fo:table-cell>

					<!-- titulo -->
						<fo:block font-size="10pt" font-weight="bold" font-family="Verdana" text-align="left" color="{$txt-azul-claro}">
							A C T A&#0160;&#0160;&#0160;D E&#0160;&#0160;&#0160;P R O T E S T O -
						</fo:block>
					<!-- titulo -->
				
				</fo:table-cell>
				<fo:table-cell>
					&#0160;
				</fo:table-cell>
				<fo:table-cell>
			
					<!-- nro cuenta -->
						<fo:block font-size="9pt" text-align="left" color="{$txt}">
						<fo:inline font-weight="normal" font-family="Verdana">Folio Prot: </fo:inline>
						<fo:inline font-weight="bold" font-family="Verdana"><xsl:value-of select="cicProtesto"/></fo:inline>
						</fo:block>
					<!-- nro cuenta -->

				</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>


		<fo:block font-size="9pt" text-align="left" color="{$txt}">
		<fo:inline font-weight="normal" font-family="Verdana" space-before="30pt">EL BANCO DE CREDITO E INVERSIONES no paga el documento serie&#0160;</fo:inline>
		<fo:inline font-weight="bold" font-family="Verdana"><xsl:value-of select="serial"/>&#0160;</fo:inline>
		<fo:inline font-weight="normal" font-family="Verdana" space-before="30pt">de la cuenta&#0160;</fo:inline>
		<fo:inline font-weight="bold" font-family="Verdana"><xsl:value-of select="cuentaCorriente"/>&#0160;</fo:inline>
		</fo:block>

		<fo:block>
		<fo:table table-layout="fixed">
		<fo:table-column column-width="10cm" />
		<fo:table-column column-width="1cm" />
		<fo:table-column column-width="8cm" />
		<fo:table-body>

			<fo:table-row>
				<fo:table-cell>
					<!-- titulo -->
						<fo:block font-size="9pt" font-family="Verdana" text-align="left" color="{$txt}">
							Por Motivo:
							<fo:inline font-weight="bold" font-family="Verdana"><xsl:value-of select="descMotivo"/></fo:inline>
						</fo:block>
					<!-- titulo -->
				</fo:table-cell>
				<fo:table-cell>
				&#0160;
				</fo:table-cell>
				<fo:table-cell>
					<!-- titulo -->
						<fo:block font-size="9pt" font-family="Verdana" text-align="left" color="{$txt}">
							Monto: 
							<fo:inline font-weight="bold" font-family="Verdana">$&#0160;<xsl:value-of select="monto"/>.-</fo:inline>
						</fo:block>
					<!-- titulo -->
				</fo:table-cell>
			</fo:table-row>
		</fo:table-body>
		</fo:table>
		</fo:block>


		<fo:block>
		<fo:table table-layout="fixed">
		<fo:table-column column-width="10cm" />
		<fo:table-column column-width="1cm" />
		<fo:table-column column-width="8cm" />
		<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
								<fo:block font-size="9pt" font-family="Verdana" text-align="left" color="{$txt}">
									Nombre o Razón Social: 
								</fo:block>
							<!-- titulo -->
						</fo:table-cell>
						<fo:table-cell>
						&#0160;
						</fo:table-cell>
						<fo:table-cell>
							<!-- titulo -->
								<fo:block font-size="9pt" font-family="Verdana" text-align="left" color="{$txt}">
									Rut: 
								</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row> 
					
					<xsl:choose>
					<xsl:when test="count(titulares/titular) > 0">
						<xsl:for-each select="titulares/titular">
							<fo:table-row>
								<fo:table-cell>
									<!-- titulo -->
										<fo:block font-size="9pt" text-align="left" color="{$txt}">
											<fo:inline font-weight="bold" font-family="Verdana"><xsl:value-of select="nombre"/></fo:inline>
										</fo:block>
									<!-- titulo -->
								</fo:table-cell>
								<fo:table-cell>
								&#0160;
								</fo:table-cell>
								<fo:table-cell>
									<!-- titulo -->
										<fo:block font-size="9pt" text-align="left" color="{$txt}">
											<fo:inline font-weight="bold" font-family="Verdana"><xsl:value-of select="rut"/>-
											<xsl:value-of select="digitoVerificador"/></fo:inline>
										</fo:block>
									<!-- titulo -->
								</fo:table-cell>
							</fo:table-row> 
						</xsl:for-each>
						&#0160;YYY&#0160;
					</xsl:when>				
					</xsl:choose>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
								<fo:block font-size="9pt" font-family="Verdana" text-align="left" color="{$txt}">
									Domicilio: <fo:inline font-weight="bold" font-family="Verdana"><xsl:value-of select="direccionTitular"/></fo:inline>
								</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
								<fo:block font-size="9pt" font-family="Verdana" text-align="left" color="{$txt}">
									Comuna: <fo:inline font-weight="bold" font-family="Verdana"><xsl:value-of select="descComunaTitular"/></fo:inline>
								</fo:block>
							<!-- titulo -->
						</fo:table-cell>
						<fo:table-cell>
							&#0160;
						</fo:table-cell>
						<fo:table-cell>
							<!-- titulo -->
								<fo:block font-size="9pt" font-family="Verdana" text-align="left" color="{$txt}">
									Ciudad: <fo:inline font-weight="bold" font-family="Verdana"><xsl:value-of select="descCiudadTitular"/></fo:inline>
								</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
								<fo:block font-size="9pt" font-family="Verdana" text-align="left" color="{$txt}">
									Girado Por: 
								</fo:block>
							<!-- titulo -->
						</fo:table-cell>
						<fo:table-cell>
						&#0160;
						</fo:table-cell>
						<fo:table-cell>
							<!-- titulo -->
								<fo:block font-size="9pt" font-family="Verdana" text-align="left" color="{$txt}">
									Rut: 
								</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row> 

					<xsl:choose>
					<xsl:when test="count(giradores/girador) > 0">
						<xsl:for-each select="giradores/girador">
							<fo:table-row>
								<fo:table-cell>
									<!-- titulo -->
										<fo:block font-size="9pt" text-align="left" color="{$txt}">
											<fo:inline font-weight="bold" font-family="Verdana"><xsl:value-of select="nombre"/></fo:inline>
										</fo:block>
									<!-- titulo -->
								</fo:table-cell>
								<fo:table-cell>
								&#0160;
								</fo:table-cell>
								<fo:table-cell>
									<!-- titulo -->
										<fo:block font-size="9pt" text-align="left" color="{$txt}">
											<fo:inline font-weight="bold" font-family="Verdana"><xsl:value-of select="rut"/>-
											<xsl:value-of select="digitoVerificador"/></fo:inline>
										</fo:block>
									<!-- titulo -->
								</fo:table-cell>
							</fo:table-row> 
						</xsl:for-each>
						&#0160;YYY&#0160;
					</xsl:when>					
					</xsl:choose>

			</fo:table-body>
		</fo:table>
		</fo:block>

		<fo:block>
		<fo:table table-layout="fixed">
		<fo:table-column column-width="7cm" />
		<fo:table-column column-width="6cm" />
		<fo:table-column column-width="6cm" />
		<fo:table-body>

					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
								<fo:block font-size="9pt" font-family="Verdana" text-align="left" color="{$txt}">
									Impuesto D.L. 3475: <fo:inline font-weight="bold" font-family="Verdana">$&#0160;<xsl:value-of select="impuesto"/></fo:inline>
								</fo:block>
							<!-- titulo -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- titulo -->
								<fo:block font-size="9pt" font-family="Verdana" text-align="left" color="{$txt}">
									Fecha: <fo:inline font-weight="bold" font-family="Verdana"><xsl:value-of select="fecha"/></fo:inline>
								</fo:block>
							<!-- titulo --> 
						</fo:table-cell>
						<fo:table-cell>
							<!-- titulo -->
								<fo:block font-size="9pt" font-family="Verdana" text-align="left" color="{$txt}">
									Hora: <fo:inline font-weight="bold" font-family="Verdana"><xsl:value-of select="hora"/></fo:inline>
								</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row>

					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
								<fo:block font-size="9pt" font-family="Verdana" text-align="left" color="{$txt}">
									Of. de Protesto: <fo:inline font-weight="bold" font-family="Verdana"><xsl:value-of select="descOficina"/></fo:inline>
								</fo:block>
							<!-- titulo -->
						</fo:table-cell>
						<fo:table-cell>
						&#0160;
						</fo:table-cell>
						<fo:table-cell>
							<!-- titulo -->
								<fo:block font-size="9pt" font-family="Verdana" text-align="left" color="{$txt}">
									Plaza: <fo:inline font-weight="bold" font-family="Verdana"><xsl:value-of select="plaza"/></fo:inline>
								</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row>
			</fo:table-body>
		</fo:table>
		</fo:block>
	
		<fo:block>
		<fo:table table-layout="fixed">
		<fo:table-column column-width="20cm" />
		<fo:table-body>

					<fo:table-row>
						<fo:table-cell>
							<!-- Separador -->
							<fo:block space-after="2mm">
							<fo:leader color="#FFFFFF" leader-pattern="rule" leader-length="18cm"/>
							</fo:block>
							<!-- Separador -->
							<!-- Separador -->
							<fo:block space-after="2mm">
							<fo:leader color="#FFFFFF" leader-pattern="rule" leader-length="18cm"/>
							</fo:block>
							<!-- Separador -->

							<fo:block font-size="9pt" font-family="Verdana" text-align="left" color="{$txt}">
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							
							---------------------------------------------------------------------
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;							
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							&#0160;&#0160;&#0160;&#0160;&#0160;
									p.p. Banco de Crédito e Inversiones
							</fo:block>
						</fo:table-cell>
					</fo:table-row >
			</fo:table-body>
		</fo:table>
		</fo:block>

	</xsl:for-each>
	</xsl:when>
	</xsl:choose>


</xsl:template>

</xsl:stylesheet>







