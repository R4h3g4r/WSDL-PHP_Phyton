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
					<fo:region-body margin-top="3cm" margin-bottom="2.5cm" background-color="#ffffff"/>
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Propiedades pagina -->
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
				<fo:static-content flow-name="xsl-region-before">
					<!-- fecha -->
					<fo:block space-after="1mm">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="13cm"/>
							<fo:table-column column-width="6cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic width="70px" height="42px">
											<xsl:attribute name="src">
												<xsl:value-of select="/cliente/rutaImagen"/>logo-bci-somos-diferentes.gif</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<xsl:choose>
										<xsl:when test="count(cliente/datos/detalle) > 0">
											<fo:table-cell padding-before="2cm">
												<fo:block font-size="9pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">Santiago,<xsl:value-of select="/cliente/fechaImpresion"/></fo:block>
											</fo:table-cell>
										</xsl:when>
							     	</xsl:choose>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- fecha -->
				</fo:static-content>

				<fo:static-content flow-name="xsl-region-after">
					<!-- Separador -->
					<fo:block space-after="1mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="19cm"/>
					</fo:block>
					<!-- Separador -->
					<fo:block font-size="5pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Pagina <fo:page-number/></fo:block>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<xsl:choose>
							<xsl:when test="count(cliente/datos/detalle) > 0">
								<fo:block padding-before="1cm"/>
								<xsl:call-template name="saludo"/>
								<fo:block padding-before="1cm"/>
								<xsl:call-template name="textoInicio"/>
								<fo:block padding-before="5mm"/>
								<xsl:call-template name="tabla"/>
								<fo:block padding-before="5mm"/>
								<xsl:call-template name="textoFinal"/>
								<fo:block padding-before="2cm"/>
								<xsl:call-template name="firma"/>
								<fo:block padding-before="1cm"/>
								<xsl:call-template name="pie"/>
							</xsl:when>
							<xsl:otherwise>
								<fo:block padding-top="2cm" text-align="center">El Certificado consultado no existe, los datos estan Corruptos.</fo:block>
							</xsl:otherwise>
						</xsl:choose>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>

	<xsl:template name="saludo">
		<xsl:choose>
			<xsl:when test="count(cliente/datos/detalle) > 0">
				<fo:block font-size="10pt">Señores</fo:block>
				<fo:block font-size="14pt">
					<xsl:value-of select="/cliente/razon"/>
				</fo:block>
				<fo:block font-size="10pt">
					<fo:inline text-decoration="underline" font-weight="bold">Presente:</fo:inline>
				</fo:block>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="textoInicio">
		<xsl:choose>
			<xsl:when test="count(cliente/datos/detalle) > 0">
					<fo:block text-align="justify">De mi consideración:</fo:block>
			
					<fo:block text-align="justify" padding-before="0.5cm">Por medio de la presente me permito informar 
					a usted que de acuerdo a las instrucciones impartidas con fecha <xsl:value-of select="/cliente/fechaConvenio"/>, 
					la Empresa <xsl:value-of select="/cliente/razon"/>, Rut <xsl:value-of select="/cliente/rut"/>, y al amparo del convenio de pago vigente con el Banco Crédito Inversiones por 
					 los Servicios de Pago de Remuneraciones, se ha procedido a efectuar los siguientes pagos o abonos a 
					 las entidades, en las cuentas, en los montos, y en las fechas que a continuación se indican:</fo:block>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
		
	<xsl:template name="textoFinal">
		<xsl:choose>
			<xsl:when test="count(cliente/datos/detalle) > 0">
					<fo:block text-align="justify" padding-before="0.5cm">Se extiende el presente certificado a expresa 
					petición de <xsl:value-of select="/cliente/razon"/> y para los fines que estime convenientes y sin ulterior responsabilidad 
					para el Banco.</fo:block>
					<fo:block text-align="justify" padding-before="0.5cm">Atentamente,</fo:block>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="firma">
		<xsl:choose>
			<xsl:when test="count(cliente/datos/detalle) > 0">
				<fo:table>
					<fo:table-column column-width="7cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block text-align="center" font-weight="bold">
									<xsl:value-of select="/cliente/ejecutivo"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block font-size="12" text-align="center" font-weight="normal">
									<xsl:value-of select="/cliente/cargo"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block margin-left="1.8cm" >
									<fo:external-graphic width="100px" height="100px">
										<xsl:attribute name="src">
											<xsl:value-of select="/cliente/rutaImagen"/>sello_bci.gif
										</xsl:attribute>
									</fo:external-graphic>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block font-size="10pt" text-align="center">Banco Crédito e Inversiones</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="pie">
		<fo:block text-align="justify">cc. Archivo</fo:block>
	</xsl:template>

	<xsl:template name="tabla">
		<xsl:choose>
			<xsl:when test="count(cliente/datos/detalle) > 0">

				<fo:block>
					<fo:table table-layout="fixed">
						<fo:table-column column-width="3cm"/>
						<fo:table-column column-width="3cm"/>
						<fo:table-column column-width="2.5cm"/>
						<fo:table-column column-width="4.9cm"/>
						<fo:table-column column-width="2.3cm"/>
						<fo:table-column column-width="2.3cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell border="0.4pt solid #000000" background-color="{$bgcolor}">
									<fo:block font-size="8pt" text-align="center" font-weight="bold">Institución</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.4pt solid #000000" background-color="{$bgcolor}">
									<fo:block font-size="8pt" text-align="center" font-weight="bold">Beneficiario</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.4pt solid #000000" background-color="{$bgcolor}">
									<fo:block font-size="8pt" text-align="center" font-weight="bold">Rut Beneficiario</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.4pt solid #000000" background-color="{$bgcolor}">
									<fo:block font-size="8pt" text-align="center" font-weight="bold">Forma de Pago</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.4pt solid #000000" background-color="{$bgcolor}">
									<fo:block font-size="8pt" text-align="center" font-weight="bold">Monto</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.4pt solid #000000" background-color="{$bgcolor}">
									<fo:block font-size="8pt" text-align="center" font-weight="bold">Fecha</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<xsl:for-each select="cliente/datos/detalle">
								<fo:table-row height="4mm">
									<fo:table-cell border="0.4pt solid #000000">
										<fo:block font-size="8pt" text-align="center">
											<xsl:value-of select="/cliente/razon"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border="0.4pt solid #000000">
										<fo:block font-size="8pt" text-align="center" font-weight="normal">
											<xsl:value-of select="beneficiario"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border="0.4pt solid #000000">
										<fo:block font-size="8pt" text-align="center">
											<xsl:value-of select="rutBeneficiario"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border="0.4pt solid #000000">
										<fo:block font-size="8pt" text-align="center">
											<xsl:value-of select="tipoPago"/> N° <xsl:value-of select="ctacte"/>								
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border="0.4pt solid #000000">
										<fo:block font-size="8pt" text-align="center">
											<xsl:value-of select="monto"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border="0.4pt solid #000000">
										<fo:block font-size="8pt" text-align="center">
											<xsl:value-of select="fecha"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</xsl:for-each>
						</fo:table-body>
					</fo:table>
				</fo:block>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2006. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="certificado.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="fop" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bSchemaAware" value="true"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bWarnings" value="true"/><advancedProp name="bUseDTD" value="false"/><advancedProp name="iErrorHandling" value="fatal"/></scenario></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no" ><SourceSchema srcSchemaPath="prueba.xml" srcSchemaRoot="datos" AssociatedInstance="" loaderFunction="document" loaderFunctionUsesURI="no"/></MapperInfo><MapperBlockPosition><template match="datos"><block path="" x="137" y="0"/></template></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
-->