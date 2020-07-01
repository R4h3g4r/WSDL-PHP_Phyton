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

					<fo:block>
					<fo:table table-layout="fixed">
						<fo:table-column column-width="3cm"/>
						<fo:table-column column-width="16cm"/>
						<fo:table-body>
							<fo:table-row>								
								<fo:table-cell>
								<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
									<fo:external-graphic width="55px" height="30px">
										<xsl:attribute name="src">
											<xsl:value-of select="sistemaDeAportantes/documento/rutaImagen"/>02-logo-bci.gif</xsl:attribute>
									</fo:external-graphic>
								</fo:block>
								</fo:table-cell>
								<fo:table-cell>
								<fo:block padding-before="5mm">
									<fo:inline font-size="14pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">Administradora General de Fondos S.A.</fo:inline>
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
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="19cm"/>
					</fo:block>
					<!-- Separador -->
					
					<fo:block>
						<fo:inline font-size="8pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">Magdalena 140  Piso 11, Las Condes, Santiago, Chile - Fono: (562) 720 4756 - Email: bciagf@bci.cl</fo:inline>
					</fo:block>
					<!--  
					<fo:block>
					<fo:table table-layout="fixed">
						<fo:table-column column-width="15cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-body>
							<fo:table-row>								
								<fo:table-cell>
								<fo:block>
									<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}"><xsl:value-of select="sistemaDeAportantes/contrato/direccionFilial"/></fo:inline>									
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
								<fo:block>
									<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Fono: <xsl:value-of select="sistemaDeAportantes/contrato/fonoFilial"/></fo:inline>
								</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					</fo:block>	
					-->
									
				</fo:static-content>


				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<xsl:choose>
							<xsl:when test="count(sistemaDeAportantes/documento/fondo) > 0">
								<fo:block padding-before="5mm"/>
								<xsl:call-template name="encabezado"/>
								<fo:block padding-before="5mm"/>
								<xsl:call-template name="cuerpo"/>					
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
		<fo:block font-size="14pt" text-align="center" text-decoration="underline" font-weight="bold">
			COMPROBANTE DE INVERSION DE CUOTAS
		</fo:block>
		
		<fo:block font-size="14pt" text-align="center" font-weight="bold" padding-before="3mm" text-decoration="underline">
		FONDO DE INVERSIÓN <xsl:value-of select="sistemaDeAportantes/documento/fondo"/>
		</fo:block>
		
	</xsl:template>


	<xsl:template name="cuerpo">
		
		<fo:block padding-before="5mm" text-align="center" font-size="10pt">

		<fo:table table-layout="fixed">
				<fo:table-column column-width="13cm"/>
				<fo:table-column column-width="3mm"/>
				<fo:table-column column-width="5.7cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
						Fecha
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
						: <xsl:value-of select="sistemaDeAportantes/documento/fecha"/>
							</fo:block>
						</fo:table-cell>
						
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		
		<fo:block padding-before="5mm" text-align="left" font-size="10pt">
		<fo:table table-layout="fixed">
				<fo:table-column column-width="6cm"/>
				<fo:table-column column-width="13cm"/>
				<fo:table-body>					
					<fo:table-row>								
						<fo:table-cell>
							<fo:block text-align="left" padding-before="3mm" font-weight="bold">
							Nombre Aportante
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" padding-before="3mm" font-weight="bold">
							: <xsl:value-of select="sistemaDeAportantes/documento/nombreAportante"/>
							</fo:block>
						</fo:table-cell>						
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
						<fo:block text-align="left" padding-before="3mm" font-weight="bold">
							Rut
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" padding-before="3mm" font-weight="bold">
							: <xsl:value-of select="sistemaDeAportantes/documento/rutAportante"/>
							</fo:block>
						</fo:table-cell>											
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
						<fo:block padding-before="3mm" font-weight="bold">
							N° cuotas adquiridas
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" padding-before="3mm" font-weight="bold">
							: <xsl:value-of select="sistemaDeAportantes/documento/numCuotasAdquiridas"/>
							</fo:block>
						</fo:table-cell>											
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
						<fo:block padding-before="3mm" font-weight="bold">
							Monto de inversión (UF)
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" padding-before="3mm" font-weight="bold">
							: <xsl:value-of select="sistemaDeAportantes/documento/montoInvUF"/>
							</fo:block>
						</fo:table-cell>											
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
						<fo:block padding-before="3mm" font-weight="bold">
							Monto de Inversión ( $ )
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" padding-before="3mm" font-weight="bold">
							: <xsl:value-of select="sistemaDeAportantes/documento/montoInvP"/>
							</fo:block>
						</fo:table-cell>											
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
						<fo:block padding-before="3mm" font-weight="bold">
							N° colilla depósito
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" padding-before="3mm" font-weight="bold">
							: <xsl:value-of select="sistemaDeAportantes/documento/numColilla"/>
							</fo:block>
						</fo:table-cell>						
					</fo:table-row>	
					<fo:table-row>
						<fo:table-cell>
						<fo:block padding-before="3mm" font-weight="bold">
							Nombre Ejecutivo
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" padding-before="3mm" font-weight="bold">
							: <xsl:value-of select="sistemaDeAportantes/documento/nombreEjecutivo"/>
							</fo:block>
						</fo:table-cell>						
					</fo:table-row>				
				</fo:table-body>
			</fo:table>
</fo:block>
		
		<fo:block padding-before="2cm" text-align="left" font-size="10pt">
		Estimado Aportante :
		</fo:block>

		<fo:block padding-before="5mm" text-align="justify" font-size="10pt">
		Con esta fecha hemos recibido la suma de <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/documento/montoPalabras"/></fo:inline>
		 pesos, para ser invertidas en <xsl:value-of select="sistemaDeAportantes/documento/cantCuotas"/> cuotas del Fondo de Inversión <xsl:value-of select="sistemaDeAportantes/documento/fondo"/>.
		</fo:block>

		<fo:block padding-before="5mm" text-align="justify" font-size="10pt">
		En un plazo de 15 días hábiles haremos llegar a su Ejecutivo de Inversiones, el Contrato de Suscripción de
Cuotas, y los Títulos adquiridos ó el Certificado correspondiente a los Títulos adquiridos, en caso de que
usted prefiera optar por la custodia de estos por parte de la Sociedad Administradora.
		</fo:block>

		<fo:block padding-before="5mm" text-align="justify" font-size="10pt">
		Para estos efectos, agradecemos indicar su preferencia seleccionando una de las siguientes alternativas:
		</fo:block>

		<fo:block padding-before="7mm" text-align="justify" font-size="10pt">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="15cm"/>
				<fo:table-body>					
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="right">
							1.						
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="center">
							<xsl:value-of select="sistemaDeAportantes/documento/cusCliente"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" font-size="10pt">
							Deseo recibir Títulos de cuotas adquiridas.
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="right">						
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="center" padding-before="-3mm">
							_______
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" font-size="10pt">
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>

		
		<fo:block padding-before="3mm" text-align="justify" font-size="10pt">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="15cm"/>
				<fo:table-body>					
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="right">
							2.						
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="center">
							<xsl:value-of select="sistemaDeAportantes/documento/cusTitulos"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" font-size="10pt">
							Deseo que BCI Administradora General de Fondos efectúe la Custodia de los Títulos
adquiridos.
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="right">						
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="center" padding-before="-7mm">
							_______
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" font-size="10pt">
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>

		

		<fo:block padding-before="2cm" text-align="justify" font-size="10pt">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="9.5cm"/>
				<fo:table-column column-width="9.5cm"/>
				<fo:table-body>					
					<fo:table-row>								
						<fo:table-cell>
							<fo:block text-align="center">
							_____________________
							</fo:block>
							<fo:block text-align="center" font-weight="bold">
							EJECUTIVO
							</fo:block>
						</fo:table-cell>	
						<fo:table-cell>
							<fo:block text-align="center">
							_____________________
							</fo:block>
							<fo:block text-align="center" font-weight="bold">
							APORTANTE
							</fo:block>
						</fo:table-cell>					
					</fo:table-row>				
				</fo:table-body>
			</fo:table>
		</fo:block>
		


	</xsl:template>


		
</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2006. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="comprobanteInversion.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="fop" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bSchemaAware" value="true"/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bUseDTD" value="false"/><advancedProp name="bWarnings" value="true"/><advancedProp name="iErrorHandling" value="fatal"/></scenario><scenario default="no" name="Scenario2" userelativepaths="yes" externalpreview="no" url="..\xsl" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bSchemaAware" value="true"/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bUseDTD" value="false"/><advancedProp name="bWarnings" value="true"/><advancedProp name="iErrorHandling" value="fatal"/></scenario></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no" ><SourceSchema srcSchemaPath="prueba.xml" srcSchemaRoot="datos" AssociatedInstance="" loaderFunction="document" loaderFunctionUsesURI="no"/></MapperInfo><MapperBlockPosition><template match="datos"><block path="" x="137" y="0"/></template></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
-->