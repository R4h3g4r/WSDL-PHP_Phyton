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
					</fo:block>
					<!-- Separador -->
					<fo:block font-size="5pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}"></fo:block>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<xsl:choose>
							<xsl:when test="count(sistemaDeAportantes/certificado) > 0">
								<fo:block padding-before="1cm"/>
								<xsl:call-template name="encabezado"/>
								<fo:block padding-before="1cm"/>
								<xsl:call-template name="textoInicio"/>
								<fo:block padding-before="5mm"/>
								<xsl:call-template name="tabla"/>
								<fo:block padding-before="1mm"/>
								<xsl:call-template name="textoFinal"/>
								<fo:block padding-before="3cm"/>
								<xsl:call-template name="firma"/>
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
		<fo:block font-size="10pt">RUT N°: <xsl:value-of select="sistemaDeAportantes/certificado/rut"/></fo:block>
		<fo:block font-size="10pt">Dirección: <xsl:value-of select="sistemaDeAportantes/certificado/direccion"/></fo:block>
		<fo:block font-size="10pt">Giro o Actividad: <xsl:value-of select="sistemaDeAportantes/certificado/giro"/></fo:block>
		<fo:block font-size="10pt" text-align="center" font-weight="bold">ADMINISTRADORA GENERAL DE FONDOS</fo:block>

		<fo:block font-size="10pt" text-align="center" padding-before="0.5cm" font-weight="bold">CERTIFICADO SOBRE 
			RESUMEN ANUAL DE MOVIMIENTO DE CUENTAS DE INVERSION</fo:block>
		<fo:block font-size="10pt" text-align="center" font-weight="bold">ACOGIDAS AL MECANISMO DE AHORRO
			DE LA LETRA A) DEL ART.57 BIS DE LA LEY DE LA RENTA</fo:block>

		<fo:table table-layout="fixed">
			<fo:table-column column-width="13cm"/>
			<fo:table-column column-width="6cm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
					</fo:table-cell>
					<fo:table-cell padding-before="0.5cm">
						<fo:block font-size="10pt" text-align="center">CERTIFICADO N° <xsl:value-of select="sistemaDeAportantes/certificado/nCertificado"/></fo:block>
						<fo:block font-size="10pt" text-align="center"><xsl:value-of select="sistemaDeAportantes/certificado/fecha"/></fo:block>										
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>

	<xsl:template name="textoInicio">
		<fo:block text-align="justify">La institución receptora,
			<fo:inline font-weight="bold">BCI ADMINISTRADORA GENERAL DE FONDOS</fo:inline>, certifica que al contribuyente que se indica, 
			por el movimiento de todas las cuentas de inversión que mantiene en esta institución, 
			acogidas al mecanismo de incentivo al ahorro al artículo 57 Bis de la Ley de Renta, 
			al término del año <xsl:value-of select="sistemaDeAportantes/certificado/anio"/>, se le han determinado los siguientes saldos:</fo:block>

		<fo:table table-layout="fixed">
			<fo:table-column column-width="13cm"/>
			<fo:table-column column-width="6cm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-size="10pt" text-align="left" padding-before="0.5cm"><xsl:value-of select="sistemaDeAportantes/certificado/paterno"/>, <xsl:value-of select="sistemaDeAportantes/certificado/materno"/>, 
							<xsl:value-of select="sistemaDeAportantes/certificado/pNombre"/></fo:block>
						<fo:block font-size="10pt" text-align="left"><xsl:value-of select="sistemaDeAportantes/certificado/direccion"/></fo:block>
						<fo:block font-size="10pt" text-align="left"><xsl:value-of select="sistemaDeAportantes/certificado/ciudad"/></fo:block>
					</fo:table-cell>
					<fo:table-cell padding-before="0.5cm">
						<fo:block font-size="10pt" text-align="center">Rut: <xsl:value-of select="sistemaDeAportantes/certificado/rut"/></fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>

	</xsl:template>

	<xsl:template name="textoFinal">

		<fo:block text-align="justify">Se envía el presente resumen en cumplimiento de lo dispuesto 
		en el inciso quinto del N°2 de la actual Letra A) del artículo 57 bis de la Ley de Renta.</fo:block>

	</xsl:template>

	<xsl:template name="firma">
		<fo:table>
			<fo:table-column column-width="12cm"/>
			<fo:table-column column-width="7cm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
					</fo:table-cell>
					<fo:table-cell  border-top="0.4pt solid #000000">
						<fo:block font-size="10pt" text-align="center"><xsl:value-of select="sistemaDeAportantes/certificado/representante"/></fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="10pt" text-align="center">Representante Legal</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="10pt" text-align="center">BCI Administradora General de Fondos S.A.</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>

	<xsl:template name="tabla">

		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="19cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell border="0.4pt solid #000000">
							<fo:block font-size="10pt" text-align="center" font-weight="bold">
								SALDO DE AHORRO NEGATIVO DEL EJERCICIO POR INVERSIONES</fo:block>
							<fo:block font-size="10pt" text-align="center" font-weight="bold">
								EFECTUADAS CON ANTERIORIDAD AL <xsl:value-of select="sistemaDeAportantes/certificado/fechaEjercicio"/></fo:block>
						</fo:table-cell>						
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.4pt solid #000000">
							<fo:block font-size="10pt" text-align="center" font-weight="bold">
								NEGATIVO</fo:block>
						</fo:table-cell>						
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.4pt solid #000000">
							<fo:block font-size="10pt" text-align="center" font-weight="bold">
								$ <xsl:value-of select="sistemaDeAportantes/certificado/saldoNegativo"/></fo:block>
						</fo:table-cell>						
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.4pt solid #000000">
							<fo:block font-size="10pt" text-align="center" font-weight="bold">
								SALDO DE AHORRO NETO DEL EJERCICIO POR INVERSIONES</fo:block>
							<fo:block font-size="10pt" text-align="center" font-weight="bold">
								EFECTUADAS CON ANTERIORIDAD AL <xsl:value-of select="sistemaDeAportantes/certificado/fechaEjercicio"/></fo:block>
						</fo:table-cell>						
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
						<fo:table>
							<fo:table-column column-width="9.5cm"/>
							<fo:table-column column-width="9.5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border="0.4pt solid #000000">
										<fo:block font-size="10pt" text-align="center" font-weight="bold">POSITIVO</fo:block>
									</fo:table-cell>
									<fo:table-cell border="0.4pt solid #000000">
										<fo:block font-size="10pt" text-align="center" font-weight="bold">NEGATIVO</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border="0.4pt solid #000000">
										<fo:block font-size="10pt" text-align="center" font-weight="bold">$ <xsl:value-of select="sistemaDeAportantes/certificado/netoPositivo"/></fo:block>
									</fo:table-cell>
									<fo:table-cell border="0.4pt solid #000000">
										<fo:block font-size="10pt" text-align="center" font-weight="bold">$ <xsl:value-of select="sistemaDeAportantes/certificado/netoNegativo"/></fo:block>
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
</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2006. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="certificadoTributario.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="fop" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bSchemaAware" value="true"/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bUseDTD" value="false"/><advancedProp name="bWarnings" value="true"/><advancedProp name="iErrorHandling" value="fatal"/></scenario><scenario default="no" name="Scenario2" userelativepaths="yes" externalpreview="no" url="..\xsl" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bSchemaAware" value="true"/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bUseDTD" value="false"/><advancedProp name="bWarnings" value="true"/><advancedProp name="iErrorHandling" value="fatal"/></scenario></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no" ><SourceSchema srcSchemaPath="prueba.xml" srcSchemaRoot="datos" AssociatedInstance="" loaderFunction="document" loaderFunctionUsesURI="no"/></MapperInfo><MapperBlockPosition><template match="datos"><block path="" x="137" y="0"/></template></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
-->