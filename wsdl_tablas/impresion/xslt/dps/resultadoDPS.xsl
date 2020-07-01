<?xml version="1.0" encoding="ISO-8859-1"?>
 <xsl:stylesheet version="1.0" 
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
 xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:variable name="fo:layout-master-set">	
		<fo:layout-master-set>
			<fo:simple-page-master master-name="default-page" page-height="35.56cm" page-width="21.59cm" margin-left="30mm" margin-right="3mm">
				<fo:region-body />
			</fo:simple-page-master>
		</fo:layout-master-set>		
	</xsl:variable>
	<xsl:output version="1.0" encoding="ISO-8859-1" indent="no" omit-xml-declaration="no" media-type="text/html" />
	<xsl:template match="/">
		<fo:root>
			<xsl:copy-of select="$fo:layout-master-set"/>
					
		<fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
			<fo:flow flow-name="xsl-region-body">
				<fo:block font-size="12pt"  text-align="center" >		
					<fo:table border-collapse="collapse" text-align="center">
						<fo:table-column column-width="150mm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell >
									<fo:block text-align="center" >	
										&#0160;
									</fo:block>	
								</fo:table-cell>	
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell >
									<fo:block text-align="center" >	
										RESULTADO EVALUACION
									</fo:block>	
								</fo:table-cell>	
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>	
				<fo:block font-size="12pt">					
					<fo:table border-collapse="collapse"  text-align="center">
						<fo:table-column column-width="150mm" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border="0.5pt solid ">									
										<fo:block font-size="12pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											&#0160;Resultado Evaluación					
										</fo:block>										
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left = "0.5pt solid" border-right = "0.5pt solid">									
										<fo:block font-size="12pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											&#0160;RUT TITULAR: 
											&#0160;
											<xsl:value-of select="/dps/rutCliente"/>
											<xsl:value-of select="/datos-impresiones-dPSTO/rut-cliente"/>
											<fo:inline>-</fo:inline>
											<xsl:value-of select="/dps/dvCliente"/>
											<xsl:value-of select="/datos-impresiones-dPSTO/dv-cliente"/>
										</fo:block>										
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left = "0.5pt solid" border-right = "0.5pt solid">									
										<fo:block font-size="12pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											&#0160;NOMBRE TITULAR:
											&#0160;										
											<xsl:value-of select="/dps/nombreContacto"/>
											<xsl:value-of select="/datos-impresiones-dPSTO/nombre-contacto"/>
										</fo:block>										
									</fo:table-cell>
								</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>	
				<fo:block font-size="12pt">		
					<fo:table border-collapse="collapse" text-align="center">
						<fo:table-column column-width="150mm" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left = "0.5pt solid" border-right = "0.5pt solid" border-top = "0.5pt solid" >									
										<fo:block font-size="12pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											&#0160;&#0160;&#0160;&#0160;El resultado de su evaluación es: 
											&#0160;
											<xsl:if test="dps/estado = 'A'">		
												<fo:inline font-weight="bold">  ACEPTADO </fo:inline>
											</xsl:if>
											<xsl:if test="datos-impresiones-dPSTO/estado = 'A'">		
												<fo:inline font-weight="bold">  ACEPTADO </fo:inline>
											</xsl:if>
											<xsl:if test="dps/estado = 'R'">		
												<fo:inline font-weight="bold">  RECHAZADO </fo:inline>
											</xsl:if>
											<xsl:if test="datos-impresiones-dPSTO/estado = 'R'">		
												<fo:inline font-weight="bold">  RECHAZADO </fo:inline>
											</xsl:if>
										</fo:block>										
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left = "0.5pt solid" border-right = "0.5pt solid" >
										<fo:block space-after="0.5cm"/>
										<fo:block font-family="Helvetica" font-size="12pt" text-align="center" vertical-align="middle" font-weight="bold">
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left = "0.5pt solid" border-right = "0.5pt solid" >
										<fo:block space-after="0.5cm"/>
										<fo:block font-family="Helvetica" font-size="12pt" text-align="center" vertical-align="middle" font-weight="bold">
											Nº DPS 
											&#0160;
											<fo:inline font-weight="bold">  <xsl:value-of select="/dps/numeroDPS"/><xsl:value-of select="/datos-impresiones-dPSTO/numero-dPS"/> </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left = "0.5pt solid" border-right = "0.5pt solid" >
										<fo:block space-after="0.5cm"/>
										<fo:block font-family="Helvetica" font-size="12pt" text-align="center" vertical-align="middle" font-weight="bold">
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left = "0.5pt solid" border-right = "0.5pt solid" border-bottom = "0.5pt solid">									
										<fo:block text-align="center" font-size="12pt"   padding-top="2pt" padding-left="1pt">
											&#0160;&#0160;&#0160;&#0160;Fecha Ingreso:
											&#0160;
											<fo:inline font-weight="bold">  <xsl:value-of select="/dps/fechaEnvio"/><xsl:value-of select="/datos-impresiones-dPSTO/fecha-envio"/> </fo:inline>
										</fo:block>										
									</fo:table-cell>
								</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				
				<fo:block font-size="12pt">		
					<fo:table border-collapse="collapse" text-align="center">
						<fo:table-column column-width="70mm" />
						<fo:table-column column-width="40mm" />
						<fo:table-column column-width="40mm" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell >									
										<fo:block font-size="12pt"  text-align="left" padding-top="2pt" padding-left="1pt" >
											&#0160;&#0160;&#0160;&#0160;	
										</fo:block>										
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell  border-top="solid" border-left="solid">									
										<fo:block font-size="12pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											&#0160;&#0160;&#0160;<fo:inline font-weight="bold">  Coberturas</fo:inline>										
										</fo:block>										
									</fo:table-cell>
									<fo:table-cell border-top="solid" >									
										<fo:block font-size="12pt"  text-align="left" padding-top="2pt" padding-left="1pt">
										</fo:block>										
									</fo:table-cell>
									<fo:table-cell border-top="solid" border-right="solid">									
										<fo:block font-size="12pt"  text-align="left" padding-top="2pt" padding-left="1pt">
										</fo:block>										
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border = "solid" >									
										<fo:block font-size="12pt"  text-align="left"  >
											&#0160;&#0160;&#0160;&#0160;Cobertura		
										</fo:block>										
									</fo:table-cell>
									<fo:table-cell border = "solid" >									
										<fo:block font-size="12pt"  text-align="left"  >
											&#0160;&#0160;&#0160;&#0160;Recargo (por mil) 			
										</fo:block>										
									</fo:table-cell>																	
									<fo:table-cell border = "solid" >									
										<fo:block font-size="12pt"  text-align="left" >
											&#0160;&#0160;&#0160;&#0160;Motivo			
										</fo:block>										
									</fo:table-cell>
								</fo:table-row>
								
								<fo:table-row>
									<fo:table-cell border = "solid" >									
										<fo:block font-size="12pt"  text-align="left" >
											&#0160;&#0160;&#0160;&#0160;Muerte			
										</fo:block>										
									</fo:table-cell>
									<fo:table-cell border = "solid" >									
										<fo:block font-size="12pt"  text-align="left"  >
											&#0160;&#0160;&#0160;&#0160;NO APLICA		
										</fo:block>										
									</fo:table-cell>																	
									<fo:table-cell border = "solid" >									
										<fo:block font-size="12pt"  text-align="left" >
											&#0160;&#0160;&#0160;&#0160;ACEPTADA		
										</fo:block>										
									</fo:table-cell>
								</fo:table-row>
								
								<fo:table-row>
									<fo:table-cell border = "solid" >									
										<fo:block font-size="12pt"  text-align="left"  >
											&#0160;&#0160;&#0160;&#0160;INVALIDEZ			
										</fo:block>										
									</fo:table-cell>
									<fo:table-cell border = "solid" >									
										<fo:block font-size="12pt"  text-align="left"  >
											&#0160;&#0160;&#0160;&#0160;NO APLICA			
										</fo:block>										
									</fo:table-cell>																	
									<fo:table-cell border = "solid" >									
										<fo:block font-size="12pt"  text-align="left" >
											&#0160;&#0160;&#0160;&#0160;NO APLICA			
										</fo:block>										
									</fo:table-cell>
								</fo:table-row>
								
								<fo:table-row>
									<fo:table-cell border = "solid" >									
										<fo:block font-size="12pt"  text-align="left"  >
											&#0160;&#0160;&#0160;&#0160;MONTO CREDITO			
										</fo:block>										
									</fo:table-cell>
									<fo:table-cell border-bottom = "solid"  border-right = "solid">									
										<fo:block font-size="12pt"  text-align="left"  >
											&#0160;&#0160;&#0160;&#0160; <xsl:value-of select="/dps/montoSeguro"/><xsl:value-of select="/datos-impresiones-dPSTO/monto-seguro"/>		
										</fo:block>										
									</fo:table-cell>	
									<fo:table-cell border-bottom = "solid"  border-right = "solid">									
										<fo:block font-size="12pt"  text-align="left"  >
											&#0160;&#0160;&#0160;&#0160;		
										</fo:block>										
									</fo:table-cell>										
								</fo:table-row>
								
								<fo:table-row>
									<fo:table-cell border = "solid" >									
										<fo:block font-size="12pt"  text-align="left"  >
											&#0160;&#0160;&#0160;&#0160;PLAZO 
											OPERACIONAL ANUAL			
										</fo:block>										
									</fo:table-cell>
									<fo:table-cell border-bottom = "solid"  border-right = "solid">									
										<fo:block font-size="12pt"  text-align="left"  >
											&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="/dps/plazoOperacion"/><xsl:value-of select="/datos-impresiones-dPSTO/plazo-operacion"/>			
										</fo:block>										
									</fo:table-cell>
									<fo:table-cell border-bottom = "solid"  border-right = "solid">									
										<fo:block font-size="12pt"  text-align="left"  >
											&#0160;&#0160;&#0160;&#0160;		
										</fo:block>										
									</fo:table-cell>									
								</fo:table-row>
								
								<fo:table-row>
									<fo:table-cell border = "solid" >									
										<fo:block font-size="12pt"  text-align="left"  >
											&#0160;&#0160;&#0160;&#0160;FECHA APROBACION		
										</fo:block>										
									</fo:table-cell>
									<fo:table-cell border-bottom = "solid"  border-right = "solid">									
										<fo:block font-size="12pt"  text-align="left"  >
											&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="/dps/fechaResolucion"/><xsl:value-of select="/datos-impresiones-dPSTO/fecha-resolucion"/>			
										</fo:block>										
									</fo:table-cell>
									<fo:table-cell border-bottom = "solid"  border-right = "solid">									
										<fo:block font-size="12pt"  text-align="left"  >
											&#0160;&#0160;&#0160;&#0160;		
										</fo:block>										
									</fo:table-cell>									
								</fo:table-row>
								
								<fo:table-row>
									<fo:table-cell border = "solid" >									
										<fo:block font-size="12pt"  text-align="left"  >
											&#0160;&#0160;&#0160;&#0160;EDAD			
										</fo:block>										
									</fo:table-cell>
									<fo:table-cell border-bottom = "solid"  border-right = "solid">									
										<fo:block font-size="12pt"  text-align="left"  >
											&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="/dps/edad"/>	<xsl:value-of select="/datos-impresiones-dPSTO/edad"/>			
										</fo:block>										
									</fo:table-cell>	
									<fo:table-cell border-bottom = "solid"  border-right = "solid">									
										<fo:block font-size="12pt"  text-align="left"  >
											&#0160;&#0160;&#0160;&#0160;		
										</fo:block>										
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
					</fo:table>
				</fo:block>
			</fo:flow>
		</fo:page-sequence>	 

	</fo:root>
 </xsl:template>
</xsl:stylesheet>