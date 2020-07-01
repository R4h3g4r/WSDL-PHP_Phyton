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
							<xsl:when test="count(sistemaDeAportantes/detalleSolicitud) > 0">
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
			<fo:table-column column-width="5cm"/>
			<fo:table-column column-width="14cm"/>
			<fo:table-body>
				<fo:table-row>					
					<fo:table-cell>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="14pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Datos Solicitud de Inversión</fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>


				
				<fo:table-row>
					<fo:table-cell>
						<fo:block padding-before="5mm">
							<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Nombre Aportante</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block padding-before="5mm">
							<fo:inline font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">: <xsl:value-of select="sistemaDeAportantes/detalleSolicitud/nombreAportante"/></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Rut</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">: <xsl:value-of select="sistemaDeAportantes/detalleSolicitud/rutAportante"/></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
								
				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Fondo</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">: <xsl:value-of select="sistemaDeAportantes/detalleSolicitud/fondo"/></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Cuotas Colocadas</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">: <xsl:value-of select="sistemaDeAportantes/detalleSolicitud/colocadas"/></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Cuotas Disponibles</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">: <xsl:value-of select="sistemaDeAportantes/detalleSolicitud/disponibles"/></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Valor Cuota</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">: <xsl:value-of select="sistemaDeAportantes/detalleSolicitud/valorCuota"/></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Moneda</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">: <xsl:value-of select="sistemaDeAportantes/detalleSolicitud/moneda"/></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Fecha Expiración</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">: <xsl:value-of select="sistemaDeAportantes/detalleSolicitud/fExpiracion"/></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Cuotas a Invertir</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">: <xsl:value-of select="sistemaDeAportantes/detalleSolicitud/cuotasAInvertir"/></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">N° Depósito/N° Transacción</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">: <xsl:value-of select="sistemaDeAportantes/detalleSolicitud/numDeposito"/></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Monto Inversión</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">: <xsl:value-of select="sistemaDeAportantes/detalleSolicitud/monto"/></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Forma Pago</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">: <xsl:value-of select="sistemaDeAportantes/detalleSolicitud/formaPago"/></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Número de Cheque</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">: <xsl:value-of select="sistemaDeAportantes/detalleSolicitud/numCheque"/></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Banco</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">: <xsl:value-of select="sistemaDeAportantes/detalleSolicitud/banco"/></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Custodia Título</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">: <xsl:value-of select="sistemaDeAportantes/detalleSolicitud/custodia"/></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Se acoge a Art. 57 Bis.</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">: <xsl:value-of select="sistemaDeAportantes/detalleSolicitud/art57"/></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Ejecutivo de Inversión</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">: <xsl:value-of select="sistemaDeAportantes/detalleSolicitud/ejecutivo"/></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Observaciones</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block>
							<fo:inline font-size="10pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">: <xsl:value-of select="sistemaDeAportantes/detalleSolicitud/observaciones"/></fo:inline>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
			</fo:table-body>
		</fo:table>
		</fo:block>
		
	</xsl:template>

	
	
</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2006. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="ingresoSolicitud.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="fop" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bSchemaAware" value="true"/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bUseDTD" value="false"/><advancedProp name="bWarnings" value="true"/><advancedProp name="iErrorHandling" value="fatal"/></scenario><scenario default="no" name="Scenario2" userelativepaths="yes" externalpreview="no" url="..\xsl" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bSchemaAware" value="true"/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bUseDTD" value="false"/><advancedProp name="bWarnings" value="true"/><advancedProp name="iErrorHandling" value="fatal"/></scenario></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no" ><SourceSchema srcSchemaPath="prueba.xml" srcSchemaRoot="datos" AssociatedInstance="" loaderFunction="document" loaderFunctionUsesURI="no"/></MapperInfo><MapperBlockPosition><template match="datos"><block path="" x="137" y="0"/></template></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
-->