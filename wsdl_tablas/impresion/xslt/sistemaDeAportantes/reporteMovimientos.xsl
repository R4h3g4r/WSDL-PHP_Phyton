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
				<fo:simple-page-master master-name="pagina" page-height="28cm" page-width="23cm" margin-top="1cm" margin-bottom="1cm" margin-left="2cm" margin-right="2cm">
					<fo:region-body margin-top="2cm" margin-bottom="2.5cm" background-color="#ffffff"/>
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Propiedades pagina -->
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
				<fo:static-content flow-name="xsl-region-before">
				</fo:static-content>

				<fo:static-content flow-name="xsl-region-after">
					<!-- Separador -->
					<fo:block space-after="1mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="19cm"/>
						<fo:block>
							<fo:inline font-size="8pt" font-weight="bold" space-after="1mm" text-align="center" color="{$lineas}">Magdalena 140  Piso 11, Las Condes, Santiago, Chile - Fono: (562) 720 4756 - Email: bciagf@bci.cl</fo:inline>
						</fo:block>
					</fo:block>
					<!-- Separador -->
					<!-- 
					<fo:block font-size="5pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Pagina <fo:page-number/></fo:block>
					-->
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<xsl:choose>
							<xsl:when test="count(sistemaDeAportantes/cliente/datos/detalles) > 0">
								<fo:block padding-before="1cm"/>
								<xsl:call-template name="encabezado"/>
								<fo:block padding-before="5mm"/>
								<xsl:call-template name="tablaUno"/>
								<fo:block padding-before="5mm"/>
								<xsl:call-template name="tablaDosTitulos"/>
								<xsl:call-template name="tablaDosCuerpo"/>
								<fo:block padding-before="5mm"/>
								<xsl:call-template name="tablaTresTitulos"/>
								<xsl:call-template name="tablaTresCuerpo"/>
								<fo:block padding-before="1mm"/>
								<xsl:call-template name="textoFinal"/>
							</xsl:when>
							<xsl:otherwise>
								<fo:block padding-top="2cm" text-align="center">No existen Datos a imprimir.</fo:block>
							</xsl:otherwise>
						</xsl:choose>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>


	<xsl:template name="encabezado">

		<fo:table table-layout="fixed">
			<fo:table-column column-width="4cm"/>
			<fo:table-column column-width="15cm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
							<fo:external-graphic width="100px" height="42px">
								<xsl:attribute name="src">
									<xsl:value-of select="sistemaDeAportantes/cliente/rutaImagen"/>02-logo-bci.gif</xsl:attribute>
							</fo:external-graphic>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-before="6mm">
						<fo:block font-size="16pt" text-align="left">Administradora General de Fondos S.A.</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>

		<fo:block font-size="10pt" text-align="center" padding-before="1cm" font-weight="bold">DETALLE DE MOVIMIENTOS DE INVERSIÓN</fo:block>
	</xsl:template>


	<xsl:template name="tablaUno">

		<fo:table table-layout="fixed" border="0.4pt solid #000000">
			<fo:table-column column-width="15cm"/>
			<fo:table-column column-width="4cm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:table table-layout="fixed">
							<fo:table-column column-width="23mm"/>
							<fo:table-column column-width="127mm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell padding-left="5mm">
										<fo:block font-size="10pt" text-align="left" padding-before="0.5cm" font-weight="bold">Nombre :</fo:block>
									</fo:table-cell>
									<fo:table-cell padding-left="5mm">
										<fo:block font-size="10pt" text-align="left" padding-before="0.5cm" font-weight="bold">
											<xsl:value-of select="sistemaDeAportantes/cliente/nombre"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-left="5mm">
										<fo:block font-size="10pt" text-align="left" font-weight="bold">Rut :</fo:block>
									</fo:table-cell>
									<fo:table-cell padding-left="5mm">
										<fo:block font-size="10pt" text-align="left">
											<xsl:value-of select="sistemaDeAportantes/cliente/rut"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:table-cell>

					<fo:table-cell padding-before="0.5cm">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="15mm"/>
							<fo:table-column column-width="25mm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="10pt" text-align="right" font-weight="bold">Fecha : </fo:block>
										<fo:block font-size="10pt" text-align="right" font-weight="bold">Hora : </fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="10pt" text-align="left">
											<xsl:value-of select="sistemaDeAportantes/cliente/fechaImpresion"/>
										</fo:block>
										<fo:block font-size="10pt" text-align="left">
											<xsl:value-of select="sistemaDeAportantes/cliente/horaImpresion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>
					<fo:table-cell padding-before="0.5cm" padding-after="0.5cm">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="4cm"/>
							<fo:table-column column-width="11cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell padding-left="5mm">
										<fo:block font-size="10pt" text-align="left" font-weight="bold">Fondo de Inversión :</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="10pt" text-align="left" font-weight="bold">
											<xsl:value-of select="sistemaDeAportantes/cliente/fondo"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding-left="5mm">
										<fo:block font-size="10pt" text-align="left" font-weight="bold">Valor Cuota Actual:</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="10pt" text-align="left">
										<!-- <xsl:value-of select="sistemaDeAportantes/cliente/monedaColocacion"/>  -->
										$<xsl:value-of select="sistemaDeAportantes/cliente/valorCuotaActualMonRef"/></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>


	<xsl:template name="textoFinal">
		<fo:table table-layout="fixed" padding-before="1cm">
			<fo:table-column column-width="15cm"/>
			<fo:table-column column-width="4cm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block text-align="justify" font-weight="bold"></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="justify" font-weight="bold"></fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>


	<xsl:template name="tablaDosTitulos">

		<fo:block>
			<fo:table table-layout="fixed" border="0.4pt solid #000000" background-color="#FEFECC">
					<fo:table-column column-width="25mm"/>
					<fo:table-column column-width="25mm"/>
					<fo:table-column column-width="50mm"/>
					<fo:table-column column-width="45mm"/>
					<fo:table-column column-width="25mm"/>
					<fo:table-column column-width="20mm"/>
				<fo:table-body>
					<fo:table-row>

						<fo:table-cell border="0.4pt solid #000000">
							<fo:table table-layout="fixed">
								<fo:table-column column-width="25mm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell padding-before="2mm">
											<fo:block text-align="center" font-weight="bold">&#xA0;</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block text-align="center" font-size="10pt" font-weight="bold">Fecha</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:table-cell>

						<fo:table-cell border="0.4pt solid #000000">
							<fo:table table-layout="fixed">
								<fo:table-column column-width="25mm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell padding-before="2mm">
											<fo:block text-align="center" font-size="10pt" font-weight="bold">&#xA0;</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block text-align="center" font-size="10pt" font-weight="bold">N° Folio</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:table-cell>

						<fo:table-cell border="0.4pt solid #000000">
							<fo:table table-layout="fixed">
								<fo:table-column column-width="50mm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell padding-before="2mm">
											<fo:block text-align="center" font-size="10pt" font-weight="bold">Descripción</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
								            <fo:block text-align="center" font-size="10pt" font-weight="bold">Movimiento</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:table-cell>

						<fo:table-cell border="0.4pt solid #000000">
							<fo:table table-layout="fixed">
								<fo:table-column column-width="45mm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell padding-before="2mm">
											<fo:block text-align="center" font-size="10pt" font-weight="bold">Monto en </fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block text-align="center" font-size="10pt" font-weight="bold">Moneda del Fondo 
											(<xsl:value-of select="sistemaDeAportantes/cliente/monedaFuncional"/>)											
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:table-cell>

						<fo:table-cell border="0.4pt solid #000000">
							<fo:table table-layout="fixed">
								<fo:table-column column-width="25mm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell padding-before="2mm">
											<fo:block text-align="center" font-size="10pt" font-weight="bold">Valor Cuota</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block text-align="center" font-size="10pt" font-weight="bold">Colocación
											(<xsl:value-of select="sistemaDeAportantes/cliente/monedaColocacion"/>)
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:table-cell>
						
						<fo:table-cell border="0.4pt solid #000000">
							<fo:table table-layout="fixed">
								<fo:table-column column-width="20mm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell padding-before="2mm">
											<fo:block text-align="center" font-size="10pt" font-weight="bold">Cantidad</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
								            <fo:block text-align="center" font-size="10pt" font-weight="bold">de Cuotas</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:table-cell>
						
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>


	<xsl:template name="tablaDosCuerpo">

		<xsl:for-each select="sistemaDeAportantes/cliente/datos/detalles">

			<fo:block>
				<fo:table table-layout="fixed" border="0.4pt solid #000000">
					<fo:table-column column-width="25mm"/>
					<fo:table-column column-width="25mm"/>
					<fo:table-column column-width="50mm"/>
					<fo:table-column column-width="45mm"/>
					<fo:table-column column-width="25mm"/>
					<fo:table-column column-width="20mm"/>
					<fo:table-body>
						<fo:table-row>

							<fo:table-cell border="0.4pt solid #000000">
								<fo:block font-size="10pt" text-align="center">
									<xsl:value-of select="fecha"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.4pt solid #000000">
								<fo:block font-size="10pt" text-align="center">
									<xsl:value-of select="nFolio"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.4pt solid #000000">
								<fo:block font-size="10pt" text-align="center">
									<xsl:value-of select="desMovimiento"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.4pt solid #000000">
								<fo:block font-size="10pt" text-align="right">
									<xsl:value-of select="montoMonedaFondo"/>
								</fo:block>
							</fo:table-cell>

							<fo:table-cell border="0.4pt solid #000000">
								<fo:block font-size="10pt" text-align="right">
									<xsl:value-of select="valorCuotaColocacion"/>
								</fo:block>
							</fo:table-cell>
							
							<fo:table-cell border="0.4pt solid #000000">
								<fo:block font-size="10pt" text-align="right">
									<xsl:value-of select="cantCuotas"/>
								</fo:block>
							</fo:table-cell>
							
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</xsl:for-each>
	</xsl:template>


	<xsl:template name="tablaTresTitulos">

		<fo:block>
			<fo:table table-layout="fixed" border="0.4pt solid #000000" background-color="#FEFECC">
				<fo:table-column column-width="6cm"/>
				<fo:table-column column-width="6cm"/>
				<fo:table-column column-width="7cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell border="0.4pt solid #000000">
							<fo:block font-size="10pt" padding-top="2mm" text-align="center" font-weight="bold">Total Inversión del Período
							(<xsl:value-of select="sistemaDeAportantes/cliente/monedaFuncional"/>)
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.4pt solid #000000">
							<fo:block font-size="10pt" padding-top="2mm" text-align="center" font-weight="bold">Saldo Cuota Actual</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.0pt solid #000000">
							<fo:block font-size="10pt" padding-top="2mm" text-align="center" font-weight="bold">Monto Actual
							(<xsl:value-of select="sistemaDeAportantes/cliente/monedaFuncional"/>)
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>


	<xsl:template name="tablaTresCuerpo">

		<fo:block>
			<fo:table table-layout="fixed" border="0.4pt solid #000000">
				<fo:table-column column-width="6cm"/>
				<fo:table-column column-width="6cm"/>
				<fo:table-column column-width="7cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell border="0.4pt solid #000000">
							<fo:block font-size="10pt" text-align="center" font-weight="bold">
								<xsl:value-of select="sistemaDeAportantes/cliente/saldoMontoCuotas"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.4pt solid #000000">
							<fo:block font-size="10pt" text-align="center" font-weight="bold">
								<xsl:value-of select="sistemaDeAportantes/cliente/saldoCuotas"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.4pt solid #000000">
							<fo:block font-size="10pt" text-align="center" font-weight="bold">
								<xsl:value-of select="sistemaDeAportantes/cliente/saldoPesos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2006. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="reporteMovimientos.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="fop" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bSchemaAware" value="true"/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bUseDTD" value="false"/><advancedProp name="bWarnings" value="true"/><advancedProp name="iErrorHandling" value="fatal"/></scenario><scenario default="no" name="Scenario2" userelativepaths="yes" externalpreview="no" url="..\xsl" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bSchemaAware" value="true"/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bUseDTD" value="false"/><advancedProp name="bWarnings" value="true"/><advancedProp name="iErrorHandling" value="fatal"/></scenario></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no" ><SourceSchema srcSchemaPath="prueba.xml" srcSchemaRoot="datos" AssociatedInstance="" loaderFunction="document" loaderFunctionUsesURI="no"/></MapperInfo><MapperBlockPosition><template match="datos"><block path="" x="137" y="0"/></template></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
-->