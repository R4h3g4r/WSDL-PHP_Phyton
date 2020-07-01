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
								<!--<fo:block padding-before="5mm"/>
								<xsl:call-template name="encabezado"/> -->
								<fo:block padding-before="5mm"/>
								<xsl:call-template name="cuerpo"/>		
								<fo:block padding-before="5mm"/>
								<xsl:call-template name="cuerpo2"/>				
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
			SOLICITUD DE INVERSIÓN DE CUOTAS
		</fo:block>
		
		<fo:block font-size="14pt" text-align="center" font-weight="bold" padding-before="3mm" text-decoration="underline">
		<!--<xsl:value-of select="sistemaDeAportantes/documento/fondo"/>-->
		</fo:block>
		
	</xsl:template>


	<xsl:template name="cuerpo">
		
		<fo:block padding-before="1mm" text-align="center" font-size="10pt" >

		<fo:table table-layout="fixed" >
				<fo:table-column column-width="13cm"/>
				<fo:table-column column-width="3mm"/>
				<fo:table-column column-width="5.7cm"/>
				<!--<fo:table-body>
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
				-->
			</fo:table>
		</fo:block>
		
		<fo:block padding-before="1mm" text-align="left" font-size="10pt" border-style="solid">

		<fo:table table-layout="fixed" >
			<fo:table-column column-width="3cm"/>
			<fo:table-column column-width="12cm"/>
			<fo:table-column column-width="4cm"/>
			 <fo:table-body>	
			 	<fo:table-row>	
					<fo:table-cell >
						<fo:block font-size="14pt" text-align="center" text-decoration="underline" font-weight="bold">
							
						</fo:block>
					</fo:table-cell>

					<fo:table-cell >
						<fo:block font-size="10pt" text-align="left" font-weight="bold">
							
		<fo:table table-layout="fixed">
			<fo:table-column column-width="12cm"/>
			 <fo:table-body>	
			 	<fo:table-row>	
					<fo:table-cell>
						<fo:block font-size="14pt" text-align="center" text-decoration="underline" font-weight="bold">
							SOLICITUD DE INVERSIÓN DE CUOTAS
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			 </fo:table-body>
		</fo:table>

		<fo:table table-layout="fixed" >
				<fo:table-column column-width="6cm"/>
				<fo:table-column column-width="13cm"/>

				<fo:table-body>					
					<fo:table-row>	
						<fo:table-cell>
							<fo:block text-align="right" padding-before="3mm" font-weight="bold">
							Fecha Solicitud
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" padding-before="3mm" font-weight="bold">
							: <xsl:value-of select="sistemaDeAportantes/documento/fecha"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>


					<fo:table-row>	
						<fo:table-cell>
							<fo:block text-align="right" padding-before="3mm" font-weight="bold">
							Fondo
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" padding-before="3mm" font-weight="bold">
							: <xsl:value-of select="sistemaDeAportantes/documento/fondo"/>
							</fo:block>
						</fo:table-cell>	
					</fo:table-row>


					<fo:table-row>	
						<fo:table-cell>
							<fo:block text-align="right" padding-before="3mm" font-weight="bold">
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
						<fo:block text-align="right" padding-before="3mm" font-weight="bold">
							Rut Aportante
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
						<fo:block  text-align="right" padding-before="3mm" font-weight="bold">
							N° de cuotas Solicitadas
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
						<xsl:if test="sistemaDeAportantes/documento/opMonedaRef = 'X'">
							<fo:block  text-align="right" padding-before="3mm" font-weight="bold">
								Monto Solicitado ( <xsl:value-of select="sistemaDeAportantes/documento/monedaColoc"/> )
							</fo:block>
						</xsl:if>
						</fo:table-cell>
						<fo:table-cell>
						<xsl:if test="sistemaDeAportantes/documento/opMonedaRef = 'X'">
							<fo:block text-align="left" padding-before="3mm" font-weight="bold">
							: <xsl:value-of select="sistemaDeAportantes/documento/montoInvUF"/>
							</fo:block>
						</xsl:if>
						</fo:table-cell>	
					</fo:table-row>

					<fo:table-row>
						<fo:table-cell>
						<fo:block  text-align="right" padding-before="3mm" font-weight="bold">
							Monto Solicitado ( <xsl:value-of select="sistemaDeAportantes/documento/codMoneda"/> )
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
						<fo:block  text-align="right" padding-before="3mm" font-weight="bold">
							Forma de Pago
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" padding-before="3mm" font-weight="bold">
							: <xsl:value-of select="sistemaDeAportantes/documento/formaPago"/>
							</fo:block>
						</fo:table-cell>	
					</fo:table-row>	

					<fo:table-row>
						<fo:table-cell>
						<fo:block  text-align="right" padding-before="3mm" font-weight="bold">
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
		</fo:table-cell>
		
		        <fo:table-cell>
						<fo:block font-size="10pt" text-align="center"  font-weight="bold">
							
							<fo:table table-layout="fixed">
			<fo:table-column />
			 <fo:table-body>	
			 	<fo:table-row>	
					<fo:table-cell>
						<fo:block text-align="center"  font-weight="bold">
							
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>	
					<fo:table-cell>
						<fo:block text-align="center"  font-weight="bold">
							
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>	
					<fo:table-cell>
						<fo:block text-align="center"   font-weight="bold">
							
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>	
					<fo:table-cell>
						<fo:block text-align="center"  font-weight="bold">
							 
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>	
					<fo:table-cell>
						<fo:block text-align="center"   font-weight="bold">
							 
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>	
					<fo:table-cell>
						<fo:block text-align="center"   font-weight="bold">
							 
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>	
					<fo:table-cell>
						<fo:block text-align="center"   font-weight="bold">
							 
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>	
					<fo:table-cell>
						<fo:block text-align="center"  font-weight="bold">
							 
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>	
					<fo:table-cell>
						<fo:block  padding-before="25mm"  text-align="center"   font-weight="bold">
							<fo:external-graphic width="85px" height="65px">
										<xsl:attribute name="src">
											<xsl:value-of select="sistemaDeAportantes/documento/rutaImagen"/>bci_agua.GIF</xsl:attribute>
									</fo:external-graphic>

						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			 </fo:table-body>
		</fo:table>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			 </fo:table-body>
		</fo:table>


</fo:block>
	
	

	</xsl:template>



<xsl:template name="cuerpo2">
		
		<fo:block padding-before="1mm" text-align="center" font-size="10pt" >

		<fo:table table-layout="fixed">
				<fo:table-column column-width="13cm"/>
				<fo:table-column column-width="3mm"/>
				<fo:table-column column-width="5.7cm"/>
				<!--<fo:table-body>
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
				-->
			</fo:table>
		</fo:block>
		

	<fo:table table-layout="fixed" border-style="solid">
		<fo:table-column column-width="19cm"/>
		<fo:table-body>					
			<fo:table-row>	
				<fo:table-cell>

<fo:block padding-before="2mm" text-align="left" font-size="10pt" border-style="solid">

		<fo:block padding-before="2mm" text-align="left" font-size="10pt">
		Estimado Aportante :
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify" font-size="10pt">
		Con esta fecha hemos recibido la suma de 
		<fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/documento/montoPalabras"/> </fo:inline> 
         ( <xsl:value-of select="sistemaDeAportantes/documento/codMonedaLetra"/> ), para
ser invertidas en <xsl:value-of select="sistemaDeAportantes/documento/cantCuotas"/> cuotas del Fondo de Inversión <xsl:value-of select="sistemaDeAportantes/documento/fondo"/>.
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify" font-size="10pt">
		En un plazo de 15 días hábiles haremos llegar a su ejecutivo de inversiones, el contrato de suscripción de
cuotas, y los títulos adquiridos o el certificado correspondiente a los títulos adquiridos, en caso de que
usted prefiera optar por la custodia de estos por parte de la Sociedad Administradora.
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify" font-size="10pt">
		De acuerdo a su preferencia le informamos que:
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify" font-size="10pt">
				BCI Administradora General de Fondos 
			<xsl:if test="sistemaDeAportantes/documento/cusCliente = 'X'"> 
					recibirá los títulos de cuotas adquiridas para su custodia.
			</xsl:if>
			<xsl:if test="sistemaDeAportantes/documento/cusTitulos = 'X'"> 
					efectuará la custodia de los títulos adquiridos.
			</xsl:if>
			
		</fo:block>
		
		

</fo:block>


				</fo:table-cell>						
			</fo:table-row>		
		</fo:table-body>
	</fo:table> 
	
	

	</xsl:template>

		
</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2006. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="ASF.XML.txt" htmlbaseurl="" outputurl="" processortype="internal" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="fop" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator=""/></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/><MapperBlockPosition></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
-->