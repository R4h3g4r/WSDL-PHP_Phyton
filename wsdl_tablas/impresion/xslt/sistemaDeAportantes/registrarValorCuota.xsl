<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<xsl:variable name="txt-titulo">10pt</xsl:variable>
	<xsl:variable name="txt-cuerpo">8pt</xsl:variable>
	<!-- Variables -->
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina" page-height="28cm" page-width="23cm" margin-top="1cm" margin-bottom="1cm" margin-left="2cm" margin-right="2cm">
					<fo:region-body margin-top="1cm" margin-bottom="1.5cm" background-color="#ffffff"/>
					<fo:region-before extent="1cm"/>
					<fo:region-after extent="1cm"/>
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
				</fo:static-content>

				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<xsl:choose>
							<xsl:when test="count(sistemaDeAportantes/valorCuota) > 0">
								<fo:block padding-before="1cm"/>
								<xsl:call-template name="encabezado"/>
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
		
		<fo:block space-after="1cm">
		<fo:table table-layout="fixed">
			<fo:table-column column-width="6.5cm"/>
			<fo:table-column column-width="12.5cm"/>
			<fo:table-body>
				<fo:table-row>					
					<fo:table-cell>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="14pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Registrar Valor Cuota</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell>
						<fo:block padding-before="5mm">
							<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Fondo de Inversión</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block padding-before="5mm">
							<fo:inline font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">: <xsl:value-of select="sistemaDeAportantes/valorCuota/fondo"/></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Total Patrimonio ($)</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">: <xsl:value-of select="sistemaDeAportantes/valorCuota/totalPatrimonio"/></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Nro. Cuotas Pagadas en Circulación</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">: <xsl:value-of select="sistemaDeAportantes/valorCuota/cuotasPagadas"/></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Fecha</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">: <xsl:value-of select="sistemaDeAportantes/valorCuota/fecha"/></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Valor UF Cierre Mes</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">: <xsl:value-of select="sistemaDeAportantes/valorCuota/valorUF"/></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Valor Cuota en UF</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">: <xsl:value-of select="sistemaDeAportantes/valorCuota/valorCuotaUF"/></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Valor Cuota Pesos</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">: <xsl:value-of select="sistemaDeAportantes/valorCuota/valorCuotaPesos"/></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
			</fo:table-body>
		</fo:table>
		</fo:block>
		
	</xsl:template>

	
	
</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2006. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="registrarValorCuota.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="fop" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bSchemaAware" value="true"/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bUseDTD" value="false"/><advancedProp name="bWarnings" value="true"/><advancedProp name="iErrorHandling" value="fatal"/></scenario><scenario default="no" name="Scenario2" userelativepaths="yes" externalpreview="no" url="..\xsl" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bSchemaAware" value="true"/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bUseDTD" value="false"/><advancedProp name="bWarnings" value="true"/><advancedProp name="iErrorHandling" value="fatal"/></scenario></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no" ><SourceSchema srcSchemaPath="prueba.xml" srcSchemaRoot="datos" AssociatedInstance="" loaderFunction="document" loaderFunctionUsesURI="no"/></MapperInfo><MapperBlockPosition><template match="datos"><block path="" x="137" y="0"/></template></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
-->