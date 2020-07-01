<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bgcolor">#BDBDBD</xsl:variable>
	<xsl:variable name="bgcomentario">#F5F6CE</xsl:variable>
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
					<fo:region-before extent="2cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Propiedades pagina -->
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
				<fo:static-content flow-name="xsl-region-before">
					<!-- Separador -->
					<fo:block space-after="1mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="19cm"/>
					</fo:block>
					<!-- Separador -->
					
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
							<xsl:when test="count(vencimientos/resumenDetalleProducto) > 0">
								<xsl:call-template name="encabezado"/>
								<fo:block padding-before="3mm"/>
								<xsl:call-template name="tablaDetalle"/>
								<fo:block padding-before="3mm"/>
								<xsl:call-template name="tablaResumen"/>
								<fo:block padding-before="1mm"/>
							</xsl:when>
							<xsl:otherwise>
								<xsl:call-template name="encabezado"/>
								<fo:block padding-before="3mm"/>
								<fo:block space-before="2cm" padding-top="2mm" text-align="center" background-color="{$bgcomentario}">
								Usted no registra vencimientos para este producto en el rango de fechas ingresado.</fo:block>
							</xsl:otherwise>
						</xsl:choose>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>

	<xsl:template name="encabezado">
		
		<fo:block>
		<fo:table table-layout="fixed">
			<fo:table-column column-width="8cm"/>
			<fo:table-column column-width="11cm"/>
			<fo:table-body>

				<fo:table-row>								
					<fo:table-cell padding-after="3mm">
						<fo:block>
							<fo:inline font-size="14pt" font-weight="bold" text-align="right" color="{$txt}">Ahorre e Invierta</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>					
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>								
					<fo:table-cell padding-after="3mm">
						<fo:block>
							<fo:inline font-size="18pt" font-weight="bold" text-align="right" color="{$txt}">Consulta Vencimientos</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>					
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row background-color="{$bgcolor}">								
					<fo:table-cell padding-before="1mm" padding-left="2mm">
						<fo:block>
							<fo:inline font-size="10pt" font-weight="bold" text-align="center" color="{$txt}">Detalle Simultáneas</fo:inline>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-before="1mm">
					<fo:block>
						<fo:inline font-size="10pt" font-weight="bold" text-align="center" color="{$txt}">Período consultado DESDE <xsl:value-of select="vencimientos/resumenDetalleProducto/fechaDesde"/> HASTA <xsl:value-of select="vencimientos/resumenDetalleProducto/fechaHasta"/></fo:inline>
					</fo:block>
					</fo:table-cell>
				</fo:table-row>

			</fo:table-body>
		</fo:table>
		</fo:block>

	</xsl:template>

	<xsl:template name="tablaDetalle">

		<fo:table table-layout="fixed">
			<fo:table-column column-width="2cm"/>
			<fo:table-column column-width="2cm"/>
			<fo:table-column column-width="1.5cm"/>
			<fo:table-column column-width="2cm"/>
			<fo:table-column column-width="2.5cm"/>
			<fo:table-column column-width="2cm"/>
			<fo:table-column column-width="2cm"/>
			<fo:table-column column-width="2.5cm"/>
			<fo:table-column column-width="2.5cm"/>
			<fo:table-body border="0.2pt solid {$bgcolor}">
				<fo:table-row background-color="{$bgcolor}">
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="center" font-weight="bold">Fecha Vencimiento </fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="center" font-weight="bold">Moneda Operación </fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="center" font-weight="bold">Nro Operación </fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="center" font-weight="bold">Nemotécnico </fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="center" font-weight="bold">Tipo Simultánea </fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="center" font-weight="bold">Fecha Operación </fo:block>
					</fo:table-cell>					
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="center" font-weight="bold">Tasa Pactada </fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="center" font-weight="bold">Monto al Vcto Moneda Origen </fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="center" font-weight="bold">Monto al Vcto en $ </fo:block>
					</fo:table-cell>
				</fo:table-row>

				<xsl:for-each select="vencimientos/resumenDetalleProducto/producto/detalleProducto">

				<fo:table-row>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="center"><xsl:value-of select="fechaVencimiento"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="center"><xsl:value-of select="monedaOperacion"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="right"><xsl:value-of select="numOperacion"/></fo:block>
					</fo:table-cell>
					<fo:table-cell padding-left="1mm">
						<fo:block font-size="8pt" text-align="left"><xsl:value-of select="nemotecnico"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="right"><xsl:value-of select="tipoSimultanea"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="center"><xsl:value-of select="fechaOperacion"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="right"><xsl:value-of select="tasaPactada"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="right"><xsl:value-of select="montoVencimientoOrigen"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="right"><xsl:value-of select="montoVencimientoPesos"/></fo:block>
					</fo:table-cell>
				</fo:table-row>

				</xsl:for-each>

				
			</fo:table-body>
		</fo:table>

	</xsl:template>

	<xsl:template name="tablaResumen">

		<fo:table table-layout="fixed">
			<fo:table-column column-width="4.5cm"/>
			<fo:table-column column-width="4cm"/>
			<fo:table-column column-width="4.5cm"/>
			<fo:table-column column-width="1cm"/>
			<fo:table-column column-width="3cm"/>
			<fo:table-column column-width="2cm"/>
			<fo:table-body border="0.2pt solid {$bgcolor}">
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="right" font-weight="bold">Total Simultáneas en $: </fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="right" font-weight="normal"><xsl:value-of select="vencimientos/resumenDetalleProducto/totProdPesos"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="right" font-weight="bold">Total Operaciones $: </fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="left" font-weight="normal"><xsl:value-of select="vencimientos/resumenDetalleProducto/numTotalOpePesos"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="right" font-weight="bold"></fo:block>
					</fo:table-cell>
					<fo:table-cell padding-right="3mm">
						<fo:block font-size="8pt" text-align="right" font-weight="normal"></fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="right" font-weight="bold">Total Simultáneas en UF: </fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="right" font-weight="normal"><xsl:value-of select="vencimientos/resumenDetalleProducto/totProdUF"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="right" font-weight="bold">Total Operaciones UF: </fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="left" font-weight="normal"><xsl:value-of select="vencimientos/resumenDetalleProducto/numTotalOpeUF"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="right" font-weight="bold">Valor actual UF: </fo:block>
					</fo:table-cell>
					<fo:table-cell padding-right="3mm">
						<fo:block font-size="8pt" text-align="right" font-weight="normal"><xsl:value-of select="vencimientos/resumenDetalleProducto/valorActualUF"/></fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="right" font-weight="bold">Total Simultáneas en USD: </fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="right" font-weight="normal"><xsl:value-of select="vencimientos/resumenDetalleProducto/totProdUSD"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="right" font-weight="bold">Total Operaciones USD: </fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="left" font-weight="normal"><xsl:value-of select="vencimientos/resumenDetalleProducto/numTotalOpeUSD"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="right" font-weight="bold">Valor actual USD: </fo:block>
					</fo:table-cell>
					<fo:table-cell padding-right="3mm">
						<fo:block font-size="8pt" text-align="right" font-weight="normal"><xsl:value-of select="vencimientos/resumenDetalleProducto/valorActualUSD"/></fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="right" font-weight="bold">Total General Simultáneas en $: </fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="right" font-weight="normal"><xsl:value-of select="vencimientos/resumenDetalleProducto/totGralProdPesos"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="right" font-weight="bold">Total General Operaciones: </fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="left" font-weight="normal"><xsl:value-of select="vencimientos/resumenDetalleProducto/numGralOperaciones"/></fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="8pt" text-align="right" font-weight="bold"></fo:block>
					</fo:table-cell>
					<fo:table-cell padding-right="3mm">
						<fo:block font-size="8pt" text-align="right" font-weight="normal"></fo:block>
					</fo:table-cell>
				</fo:table-row>
				
			</fo:table-body>
		</fo:table>

		<fo:block font-size="8pt" text-align="left" font-weight="normal" background-color="{$bgcomentario}" space-before="5mm">
			Los montos desplegados en "Monto al Vcto en Pesos" se encuentra expresados con la paridad monetaria del día</fo:block>
			<fo:block font-size="8pt" text-align="left" font-weight="normal" background-color="{$bgcomentario}">
			en que se realiza la consulta.
		</fo:block>

	</xsl:template>

</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2006. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="detalleVencimientoProductos.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="fop" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bSchemaAware" value="true"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bWarnings" value="true"/><advancedProp name="bUseDTD" value="false"/><advancedProp name="iErrorHandling" value="fatal"/></scenario><scenario default="no" name="Scenario2" userelativepaths="yes" externalpreview="no" url="..\xsl" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bSchemaAware" value="true"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bWarnings" value="true"/><advancedProp name="bUseDTD" value="false"/><advancedProp name="iErrorHandling" value="fatal"/></scenario></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no" ><SourceSchema srcSchemaPath="prueba.xml" srcSchemaRoot="datos" AssociatedInstance="" loaderFunction="document" loaderFunctionUsesURI="no"/></MapperInfo><MapperBlockPosition><template match="datos"><block path="" x="137" y="0"/></template></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
-->