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
	<xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
	<xsl:variable name="espacio-celda-top">2mm</xsl:variable>
	<xsl:variable name="size-fuente-margen">13pt</xsl:variable>
	<xsl:decimal-format name="peso" decimal-separator="." grouping-separator="."/>

	<!-- Variables -->
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina"
					page-height="28cm"
					page-width="22cm"
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
												<xsl:value-of select="info/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
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
					<xsl:call-template name="contenido"/>
				</fo:flow>
			</fo:page-sequence> 
		</fo:root>
	</xsl:template>
	
	<xsl:template name="contenido">
		<!-- Titulo Modulo -->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="20cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left">
								Señor(es): &#0160;&#0160;<xsl:value-of select="PagoDeLaConsulta/nombre"/>
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left">
								<xsl:value-of select="PagoDeLaConsulta/direccion"/>
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left">
								<xsl:value-of select="PagoDeLaConsulta/comuna"/>
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Titulo Modulo -->
		
		<!-- Separador -->
		<fo:block space-after="1.5cm">
		</fo:block>
		<!-- Separador -->

		<fo:block space-after="1.5mm">
		</fo:block>

		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		Le(s) informamos que por razones de orden interno hemos resuelto poner
		</fo:block>

		<fo:block space-after="1.5mm">
		</fo:block>

		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		término a la Cuenta Corriente Nº <xsl:value-of select="PagoDeLaConsulta/ctacte"/> que usted(es) mantiene(n) con
		</fo:block>

		<fo:block space-after="1.5mm">
		</fo:block>

		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		nosotros. El cierre se hará efectivo dentro de 10 días a contar de esta
		</fo:block>
		
		<fo:block space-after="1.5mm">
		</fo:block>

		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		fecha, es decir, el <xsl:value-of select="PagoDeLaConsulta/fechaCierre"/>.
		</fo:block>
	

		<!-- Separador -->
		<fo:block space-after="1cm">
		</fo:block>
		<!-- Separador -->


	
		<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			Agradecemos a usted(es) concurrir a nuestras Oficinas a la brevedad
		</fo:block>
		<fo:block space-after="1.5mm">
		</fo:block>
		<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >			
			posible, para retirar su saldo remanente y devolvernos el(los) talonario(s)
		</fo:block>
		<fo:block space-after="1.5mm">
		</fo:block>
		<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >			
			de cheques que obra(n) en su poder.
		</fo:block>
		<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >			
		<xsl:value-of select="PagoDeLaConsulta/sbif/fePublicacion"/>.

		</fo:block>
	
		<!-- Separador -->
		<fo:block space-after="2cm">
		</fo:block>
		<!-- Separador -->
		<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >			
			Atentamente,
		</fo:block>	

		<!-- Separador -->
		<fo:block space-after="3cm">
		</fo:block>
		<!-- Separador -->

		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="15cm"/>
				<fo:table-column column-width="15cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left">
								Ejecutivo de Cuenta
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left">
								Jefe de Oficina
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left">
								<xsl:value-of select="PagoDeLaConsulta/nombreEjecutivo"/>.
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left">
								&#0160;
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>

		<!-- Separador -->
		<fo:block space-after="2cm">
		</fo:block>
		<!-- Separador -->

		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="20"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="center">
								BANCO CRÉDITO INVERSIONES
							</fo:block>
							<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="center">
								Sucursal : &#0160;<xsl:value-of select="PagoDeLaConsulta/sucursal"/>.
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Separador -->
		<fo:block space-after="2cm">
		</fo:block>
		<!-- Separador -->
		<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="left">
					Santiago, <xsl:value-of select="PagoDeLaConsulta/fecha"/>.
		</fo:block>

</xsl:template>

	
	<xsl:template name="subTitulo">
		<xsl:param name="titulo"/>
		<xsl:param name="numero"/>

		<fo:block font-size="8pt" font-weight="bold" text-align="left" color="black" >
			<fo:table table-layout="fixed">
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block>
								<xsl:value-of select="$numero"/> <xsl:value-of select="$titulo"/>
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
									<xsl:value-of select="info/rutaImagen"/>01-bullet1-rj.gif
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

</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2006. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="cartaDeCierre.xml" htmlbaseurl="" outputurl="" processortype="internal" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="fop" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator=""/></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/><MapperBlockPosition></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
-->