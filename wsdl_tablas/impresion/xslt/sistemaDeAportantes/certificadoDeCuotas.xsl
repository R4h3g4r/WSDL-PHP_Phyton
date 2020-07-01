<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- edited with XMLSpy v2009 sp1 (http://www.altova.com) by joni (colo) -->
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
					<fo:block>
					<fo:table table-layout="fixed">
						<fo:table-column column-width="13cm"/>
						<fo:table-column column-width="6cm"/>
						<fo:table-body>
							<fo:table-row>								
								<fo:table-cell>
								<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
									<fo:external-graphic width="341px" height="51px">
										<xsl:attribute name="src">
											<xsl:value-of select="sistemaDeAportantes/cliente/rutaImagen"/>logoAGF_01.gif</xsl:attribute>
									</fo:external-graphic>
								</fo:block>
								</fo:table-cell>
								<fo:table-cell>
								<fo:block padding-before="5mm">
									<fo:inline font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">Santiago, <xsl:value-of select="sistemaDeAportantes/cliente/fecha"/></fo:inline>
								</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					</fo:block>
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after">
					<!-- Separador -->
					<fo:block space-after="1mm">
						<!-- <fo:leader color="{$lineas}" leader-pattern="rule" leader-length="5cm"/>-->
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
								<xsl:call-template name="parrafo1"/>
								<fo:block padding-before="5mm"/>
								<xsl:call-template name="tablaDosTitulos"/>
								<xsl:call-template name="tablaDosCuerpo"/>
								<fo:block padding-before="5mm"/>
								<xsl:call-template name="parrafo2"/>
								<fo:block padding-before="6cm"/>
								<xsl:call-template name="firma"/>
								<fo:block padding-before="5mm"/>
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
			<fo:table-column column-width="19cm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-size="16pt" font-weight="bold" space-after="1mm" text-align="left">
							<fo:block font-size="16pt" text-align="center">Certificado de Cuotas</fo:block>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>
	<xsl:template name="parrafo1">
		<fo:table table-layout="fixed">
			<fo:table-column column-width="19cm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell padding-before="0.5cm" padding-after="0.5cm">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="19cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell padding-left="5mm">
										<fo:block font-size="10pt" text-align="left">
											 <!-- <xsl:value-of select="sistemaDeAportantes/cliente/nombreFilial"/> -->BCI Administradora General de Fondos S.A. Rut.:<xsl:value-of select="sistemaDeAportantes/cliente/rutFilial"/>,certifica que nuestro aportante 
											 <xsl:value-of select="sistemaDeAportantes/cliente/cliente"/>, Rut.: <xsl:value-of select="sistemaDeAportantes/cliente/rut"/>, al <xsl:value-of select="sistemaDeAportantes/cliente/strFechaActual"/>
											 presentaba las siguientes inversiones en cuotas de fondos de inversión:
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>
	<xsl:template name="parrafo2">
		<fo:table table-layout="fixed">
			<fo:table-column column-width="19cm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell padding-before="0.5cm" padding-after="0.5cm">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="19cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell padding-left="5mm">
										<fo:block font-size="10pt" text-align="left">
											Se otorga el presente certificado para los efectos que estime conveniente, sin ulterior responsabilidad
											para BCI Administradora General de Fondos S.A.<!-- <xsl:value-of select="sistemaDeAportantes/cliente/nombreFilial"/> --> 
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>
	<xsl:template name="firma">
		<fo:table table-layout="fixed">
			<fo:table-column column-width="19cm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell padding-before="0.5cm" padding-after="0.5cm">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="19cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell padding-left="5mm">
										<fo:table table-layout="fixed">
								<fo:table-column column-width="19cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell padding-before="2mm">
											<fo:block text-align="center" >______________________</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block text-align="center" padding-before="2mm"><xsl:value-of select="sistemaDeAportantes/cliente/nombreRpte"/></fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block text-align="center" padding-before="2mm">Gerente General</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block text-align="center" padding-before="2mm">BCI <xsl:value-of select="sistemaDeAportantes/cliente/nombreFilial"/> S.A.</fo:block>
										</fo:table-cell>
								</fo:table-row>
								</fo:table-body>
							</fo:table>
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
		<fo:block>
			<fo:inline font-size="8pt" font-weight="bold" space-after="1mm" text-align="center" color="{$lineas}">Magdalena 140  Piso 11, Las Condes, Santiago, Chile - Fono: (562) 720 4756 - Email: bciagf@bci.cl</fo:inline>
		</fo:block>
		<!--  
		<fo:table table-layout="fixed" padding-before="1cm">
			<fo:table-column column-width="15cm"/>
			<fo:table-column column-width="4cm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block text-align="justify" font-weight="bold" color="{$lineas}">El Golf 125, piso 14, Las Condes, Santiago</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="justify" font-weight="bold" color="{$lineas}">Fono: 720 4745</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		-->
	</xsl:template>
	<xsl:template name="tablaDosTitulos">
		<fo:block>
			<fo:table table-layout="fixed" border="0.4pt solid #000000" background-color="#FEFECC">
				<fo:table-column column-width="10cm"/>
				<fo:table-column column-width="4cm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell border="0.4pt solid #000000">
							<fo:table table-layout="fixed">
								<fo:table-column column-width="10cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell padding-before="2mm">
											<fo:block text-align="center" font-weight="bold">Fondo de Inversion</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:table-cell>
						<fo:table-cell border="0.4pt solid #000000">
							<fo:table table-layout="fixed">
								<fo:table-column column-width="4cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell padding-before="2mm">
											<fo:block text-align="center" font-weight="bold">N° de Cuotas</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:table-cell>
						<fo:table-cell border="0.4pt solid #000000">
							<fo:table table-layout="fixed">
								<fo:table-column column-width="5cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell padding-before="2mm">
											<fo:block text-align="center" font-weight="bold">Monto Equivalente al <xsl:value-of select="sistemaDeAportantes/cliente/fecha"/>
											</fo:block>
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
					<fo:table-column column-width="10cm"/>
					<fo:table-column column-width="4cm"/>
					<fo:table-column column-width="5cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border="0.4pt solid #000000">
								<fo:block font-size="10pt" text-align="center">
									<xsl:value-of select="nombreFondo"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.4pt solid #000000">
								<fo:block font-size="10pt" text-align="right">
									<xsl:value-of select="cantCuotas"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.4pt solid #000000">								
								<fo:block font-size="10pt" text-align="right">
									<xsl:value-of select="monedaFuncional"/>
									<xsl:value-of select="totalMontoInv"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>

<!-- Stylus Studio meta-information - (c) 2004-2006. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="certificadoDeCuotas.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="fop" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bSchemaAware" value="true"/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bUseDTD" value="false"/><advancedProp name="bWarnings" value="true"/><advancedProp name="iErrorHandling" value="fatal"/></scenario><scenario default="no" name="Scenario2" userelativepaths="yes" externalpreview="no" url="xsl" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bSchemaAware" value="true"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bWarnings" value="true"/><advancedProp name="bUseDTD" value="false"/><advancedProp name="iErrorHandling" value="fatal"/></scenario></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no" ><SourceSchema srcSchemaPath="reporteMovimientos.xml" srcSchemaRoot="sistemaDeAportantes" AssociatedInstance="" loaderFunction="document" loaderFunctionUsesURI="no"/></MapperInfo><MapperBlockPosition><template match="datos"><block path="" x="137" y="0"/></template><template match="/"></template><template name="tablaDosTitulos"><block path="fo:block/fo:table/fo:table&#x2D;body/fo:table&#x2D;row/fo:table&#x2D;cell[2]/fo:table/fo:table&#x2D;body/fo:table&#x2D;row/fo:table&#x2D;cell/fo:block/xsl:value&#x2D;of" x="278" y="60"/></template></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
-->