<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
<xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
<xsl:decimal-format name="rut" grouping-separator='.' />
<xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
<xsl:template match="PerfilClientePersonaNatural">
	<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
		<fo:layout-master-set>
			<fo:simple-page-master master-name="cpc" page-width="215.9mm" page-height="279.4mm" margin-top="3mm" margin-bottom="5mm" margin-left="20mm" margin-right="20mm">
				<fo:region-body margin-top="10mm" margin-bottom="20mm"/>
				<fo:region-before region-name="xsl-region-before" display-align="after" extent="90mm" padding-top="6.000pt" padding-left="0.700in" padding-right="2.700in" padding-bottom="6.000pt" border-style="none" border-width="0.000px"  background-repeat="no-repeat" background-position-horizontal="0.000px" background-position-vertical="0.000px" reference-orientation="0"/>
                <fo:region-after region-name="xsl-region-after" display-align="before" extent="15mm" padding-top="6.000pt" padding-left="0.700in" padding-right="2.700in" padding-bottom="1.000pt" border-style="none" border-width="0.000px"  background-repeat="no-repeat" background-position-horizontal="0.000px" background-position-vertical="0.000px" reference-orientation="0"/>
			</fo:simple-page-master>
		</fo:layout-master-set>
		<fo:page-sequence initial-page-number="3" master-reference="cpc">
			<fo:static-content flow-name="xsl-region-after">
				<fo:block text-align="right" border-top="1pt solid black" padding-top="1mm">
					Página
					<fo:page-number/>
					de
					<fo:page-number-citation ref-id="finPerfil"/>
				</fo:block>
			</fo:static-content>			
			<fo:flow flow-name="xsl-region-body">
				<fo:block space-before="3mm" font-size="12pt"></fo:block>
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(40)"/>
							<fo:table-column column-width="proportional-column-width(60)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5F9EA0" border-bottom="0.25pt solid #5F9EA0" border-left="0.25pt solid #5F9EA0" border-right="0.25pt solid #5F9EA0" background-color="#5F9EA0">
										<fo:block font-weight="bold" color="#FFFFFF" font-size="10pt" border-radius="10pt 10pt">VII. INGRESOS LIQUIDOS</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" color="#5F9EA0" font-size="10pt">------------------------------------------------------------------------------------------</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>			

					<fo:block space-before="3mm" font-size="12pt"></fo:block>						
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(49)"/>
							<fo:table-column column-width="proportional-column-width(2)"/>
							<fo:table-column column-width="proportional-column-width(49)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Ingresos M$</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Egresos M$</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>	
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(24.5)"/>
							<fo:table-column column-width="proportional-column-width(24.5)"/>
							<fo:table-column column-width="proportional-column-width(2)"/>
							<fo:table-column column-width="proportional-column-width(24.5)"/>
							<fo:table-column column-width="proportional-column-width(24.5)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Renta Fija</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												<xsl:when test="ingresoRentaFija != 0">
														<xsl:value-of select='format-number(ingresoRentaFija, "#","decimal")' />
														<fo:leader leader-pattern="space" leader-length="1mm"/>
												</xsl:when>			
												<xsl:otherwise>							
													<fo:leader leader-pattern="space" leader-length="1mm"/>	
												</xsl:otherwise>
											</xsl:choose>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Dividendo y/o Arriendo</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												  <xsl:when test="egresoDividendoArriendo != 0">
														<xsl:value-of select='format-number(egresoDividendoArriendo, "#","decimal")' />
														<fo:leader leader-pattern="space" leader-length="1mm"/>
												  </xsl:when>			
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											 </xsl:choose>										
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Renta Variable</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												  <xsl:when test="ingresoRentaVariable != 0">
														<xsl:value-of select='format-number(ingresoRentaVariable, "#","decimal")' />
														<fo:leader leader-pattern="space" leader-length="1mm"/>
												  </xsl:when>			
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											  </xsl:choose>										
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Casas Comerciales</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												  <xsl:when test="patrimonio/Patrimonio/deudasCasasComerciales != 0">
														<xsl:value-of select='format-number(patrimonio/Patrimonio/deudasCasasComerciales, "#","decimal")' />
														<fo:leader leader-pattern="space" leader-length="1mm"/>
												  </xsl:when>			
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											  </xsl:choose>										
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Renta Cónyuge</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
											  <xsl:when test="ingresoRentaConyuge != 0">
													<xsl:value-of select='format-number(ingresoRentaConyuge, "#","decimal")' />
													<fo:leader leader-pattern="space" leader-length="1mm"/>
											  </xsl:when>			
											  <xsl:otherwise>							
													<fo:leader leader-pattern="space" leader-length="1mm"/>	
											  </xsl:otherwise>
											</xsl:choose>										
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Educación</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												  <xsl:when test="egresoEducacion != 0">
														<xsl:value-of select='format-number(egresoEducacion, "#","decimal")' />
														<fo:leader leader-pattern="space" leader-length="1mm"/>
												  </xsl:when>			
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											 </xsl:choose>										
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Otros Ingresos</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												  <xsl:when test="ingresoOtrosIngresos != 0">
														<xsl:value-of select='format-number(ingresoOtrosIngresos, "#","decimal")' />
														<fo:leader leader-pattern="space" leader-length="1mm"/>
												  </xsl:when>			
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											  </xsl:choose>										
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Otras Deudas</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												  <xsl:when test="egresoOtrosEgresos != 0">
														<xsl:value-of select='format-number(egresoOtrosEgresos, "#","decimal")' />
														<fo:leader leader-pattern="space" leader-length="1mm"/>
												  </xsl:when>			
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											  </xsl:choose>										
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">TOTAL INGRESOS</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												  <xsl:when test="totalIngresos != 0">
														<xsl:value-of select='format-number(totalIngresos, "#","decimal")' />
														<fo:leader leader-pattern="space" leader-length="1mm"/>
												  </xsl:when>			
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											  </xsl:choose>										
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">TOTAL EGRESOS</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												  <xsl:when test="totalEgresos != 0">
														<xsl:value-of select='format-number(totalEgresos, "#","decimal")' />
														<fo:leader leader-pattern="space" leader-length="1mm"/>
												  </xsl:when>			
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											  </xsl:choose>										
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">INGRESOS LIQUIDOS</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												  <xsl:when test="ingresosLiquidos != 0">
														<xsl:value-of select='format-number(ingresosLiquidos, "#","decimal")' />
														<fo:leader leader-pattern="space" leader-length="1mm"/>
												  </xsl:when>			
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											  </xsl:choose>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>	
					<fo:block space-before="3mm" font-size="12pt"></fo:block>	
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(30)"/>
							<fo:table-column column-width="proportional-column-width(30)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5F9EA0" border-bottom="0.25pt solid #5F9EA0" border-left="0.25pt solid #5F9EA0" border-right="0.25pt solid #5F9EA0" background-color="#5F9EA0">
										<fo:block font-weight="bold" color="#FFFFFF" font-size="10pt" border-radius="10pt 10pt">VIII. PATRIMONIO</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" color="#5F9EA0" font-size="10pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">TOTAL PATRIMONIO</fo:block>
									</fo:table-cell>
									
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												<xsl:when test="patrimonio/Patrimonio/totalPatrimonio > 0">
													<xsl:value-of select='format-number(patrimonio/Patrimonio/totalPatrimonio, "#","decimal")' />
												</xsl:when>								  				 																	  
												<xsl:otherwise>							
													<fo:leader leader-pattern="space" leader-length="1mm"/>	
												</xsl:otherwise>
											</xsl:choose> 
										</fo:block>
									</fo:table-cell>						
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
					</fo:block>			
					<fo:block space-before="3mm" font-size="12pt"></fo:block>	
										
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(49)"/>
							<fo:table-column column-width="proportional-column-width(2)"/>
							<fo:table-column column-width="proportional-column-width(49)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Activos (M$)</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Pasivos (M$)</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>	
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(24.5)"/>
							<fo:table-column column-width="proportional-column-width(24.5)"/>
							<fo:table-column column-width="proportional-column-width(2)"/>
							<fo:table-column column-width="proportional-column-width(24.5)"/>
							<fo:table-column column-width="proportional-column-width(24.5)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Depósitos a Plazo</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
											  <xsl:when test="patrimonio/Patrimonio/depositoPlazo != 0">
													<xsl:value-of select='format-number(patrimonio/Patrimonio/depositoPlazo, "#","decimal")' />
											  </xsl:when>								  				 																	  
											  <xsl:otherwise>							
													<fo:leader leader-pattern="space" leader-length="1mm"/>	
											  </xsl:otherwise>
											</xsl:choose>	
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Deudas Casas Comerciales</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
											  <xsl:when test="patrimonio/Patrimonio/deudasCasasComerciales > 0">
													 <xsl:value-of select='format-number(patrimonio/Patrimonio/deudasCasasComerciales, "#","decimal")' />
											  </xsl:when>								  				 																	  
											  <xsl:otherwise>							
													<fo:leader leader-pattern="space" leader-length="1mm"/>	
											  </xsl:otherwise>
											</xsl:choose>										
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Fondos Mutuos</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												  <xsl:when test="patrimonio/Patrimonio/fondosMutuos > 0">
														 <xsl:value-of select='format-number(patrimonio/Patrimonio/fondosMutuos, "#","decimal")' />
												  </xsl:when>								  				 																	  
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											</xsl:choose>									
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Deudas con Bancos</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												  <xsl:when test="patrimonio/Patrimonio/deudasconBancos > 0">
														 <xsl:value-of select='format-number(patrimonio/Patrimonio/deudasconBancos, "#","decimal")' />
												  </xsl:when>								  				 																	  
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											</xsl:choose>										
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Acciones y Bonos</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												  <xsl:when test="patrimonio/Patrimonio/accionesBonos > 0">
														 <xsl:value-of select='format-number(patrimonio/Patrimonio/accionesBonos, "#","decimal")' />
												  </xsl:when>								  				 																	  
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											</xsl:choose>										
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Deudas Hipotecarias</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												  <xsl:when test="patrimonio/Patrimonio/deudasHipotecarias > 0">
														 <xsl:value-of select='format-number(patrimonio/Patrimonio/deudasHipotecarias, "#","decimal")' />
												  </xsl:when>								  				 																	  
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											</xsl:choose>									
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Activos en Leasing</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												  <xsl:when test="patrimonio/Patrimonio/leasing > 0">
														 <xsl:value-of select='format-number(patrimonio/Patrimonio/leasing, "#","decimal")' />
												  </xsl:when>								  				 																	  
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											</xsl:choose> 									
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Deudas Leasing</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												<xsl:when test="patrimonio/Patrimonio/deudasLeasing > 0">
														 <xsl:value-of select='format-number(patrimonio/Patrimonio/deudasLeasing, "#","decimal")' />
												  </xsl:when>								  				 																	  
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											  </xsl:choose>										
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Bienes Raíces</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												  <xsl:when test="patrimonio/Patrimonio/activosBienesRaices > 0">
														  <xsl:value-of select='format-number(patrimonio/Patrimonio/activosBienesRaices, "#","decimal")' />
												  </xsl:when>								  				 																	  
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											</xsl:choose> 									
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Otras Deudas (especificar)</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											 <xsl:choose>
												  <xsl:when test="patrimonio/Patrimonio/otrasDeudas > 0">
														   <xsl:value-of select='format-number(patrimonio/Patrimonio/otrasDeudas, "#","decimal")' />
												  </xsl:when>								  				 																	  
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											</xsl:choose> 									
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Vehículos</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												  <xsl:when test="patrimonio/Patrimonio/activosVehiculos > 0">
														   <xsl:value-of select='format-number(patrimonio/Patrimonio/activosVehiculos, "#","decimal")' />
												  </xsl:when>								  				 																	  
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											</xsl:choose> 
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Participación en Sociedades</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												  <xsl:when test="patrimonio/Patrimonio/participacionSociedades > 0">
														   <xsl:value-of select='format-number(patrimonio/Patrimonio/participacionSociedades, "#","decimal")' />
												  </xsl:when>								  				 																	  
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											</xsl:choose>  
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>								
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Otros Activos</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												  <xsl:when test="patrimonio/Patrimonio/otrosActivos > 0">
														   <xsl:value-of select='format-number(patrimonio/Patrimonio/otrosActivos, "#","decimal")' />
												  </xsl:when>								  				 																	  
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											</xsl:choose>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Inversiones en el Extranjero</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												  <xsl:when test="patrimonio/Patrimonio/inversionesExtranjero > 0">
														   <xsl:value-of select='format-number(patrimonio/Patrimonio/inversionesExtranjero, "#","decimal")' />
												  </xsl:when>								  				 																	  
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											</xsl:choose>  
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">TOTAL ACTIVOS</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												  <xsl:when test="patrimonio/Patrimonio/totalActivos > 0">
														   <xsl:value-of select='format-number(patrimonio/Patrimonio/totalActivos, "#","decimal")' />
												  </xsl:when>								  				 																	  
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											</xsl:choose> 									
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">TOTAL PASIVOS</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												  <xsl:when test="patrimonio/Patrimonio/totalPasivos > 0">
														  <xsl:value-of select='format-number(patrimonio/Patrimonio/totalPasivos, "#","decimal")' />
												  </xsl:when>								  				 																	  
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											</xsl:choose> 									
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>	
					
					<fo:block space-before="3mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(30)"/>
							<fo:table-column column-width="proportional-column-width(70)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5F9EA0" border-bottom="0.25pt solid #5F9EA0" border-left="0.25pt solid #5F9EA0" border-right="0.25pt solid #5F9EA0" background-color="#5F9EA0">
										<fo:block font-weight="bold" color="#FFFFFF" font-size="10pt" border-radius="10pt 10pt">DETALLE PATRIMONIO</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" color="#5F9EA0" font-size="10pt">---------------------------------------------------------------------------------------------------------</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="3mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(80)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="9pt">1. BIENES RAICES</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" color="#5F9EA0" font-size="10pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="3mm" font-size="12pt"></fo:block>
					<xsl:if test="patrimonio/Patrimonio/bienesRaices != ''">
					<xsl:for-each select='patrimonio/Patrimonio/bienesRaices/BienRaiz'>
					<xsl:variable name="cur" select='position()' />
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(15)"/>
							<fo:table-column column-width="proportional-column-width(85)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Bien raiz 1:<xsl:value-of select="$cur" /></fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" color="#5F9EA0" font-size="10pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="3mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(60)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Ubicación (Calle, N°, Depto.)</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Comuna</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Ciudad</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt"><xsl:value-of select="direccion/Direccion/direccion"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt"><xsl:value-of select="direccion/Direccion/comuna"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt"><xsl:value-of select="direccion/Direccion/ciudad"/></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="3mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(60)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Rol N°</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Avaluo Fiscal</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt"><xsl:value-of select="rol"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt">
											<xsl:choose>
													  <xsl:when test="avaluoFiscal > 0">
															  <xsl:value-of select='format-number(avaluoFiscal, "#","decimal")' />
													  </xsl:when>								  				 																	  
													  <xsl:otherwise>							
															<fo:leader leader-pattern="space" leader-length="1mm"/>	
													  </xsl:otherwise>
											</xsl:choose>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
					</xsl:for-each>
					</xsl:if>
					
					<fo:block space-before="4mm" font-size="12pt"></fo:block>
					
					<xsl:if test="patrimonio/Patrimonio/bienesRaices = ''">
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(15)"/>
							<fo:table-column column-width="proportional-column-width(85)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Bien raiz :</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" color="#5F9EA0" font-size="10pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="3mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(60)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Ubicación (Calle, N°, Depto.)</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Comuna</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Ciudad</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="3mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(60)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Rol N°</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Avaluo Fiscal</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>	
					</xsl:if>
					<fo:block space-before="3mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(80)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="9pt">2. VEHICULOS</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" color="#5F9EA0" font-size="10pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="3mm" font-size="12pt"></fo:block>
					
					<xsl:if test="patrimonio/Patrimonio/vehiculos != ''">
					<xsl:for-each select='patrimonio/Patrimonio/vehiculos/Vehiculo'>
					<xsl:variable name="cur" select='position()' />
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(15)"/>
							<fo:table-column column-width="proportional-column-width(85)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Vehículo 1:<xsl:value-of select="$cur" /></fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" color="#5F9EA0" font-size="10pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="3mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(25)"/>
							<fo:table-column column-width="proportional-column-width(15)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(30)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Marca y modelo</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Tipo de Vehículo</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Año</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Patente</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt"><xsl:value-of select="marcaModelo"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt"><xsl:value-of select="tipoVehiculo"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt"><xsl:value-of select="anyo"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt"><xsl:value-of select="patente"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
					</xsl:for-each>
					</xsl:if>	
					<fo:block space-before="3mm" font-size="12pt"></fo:block>
					
					<xsl:if test="patrimonio/Patrimonio/vehiculos = ''">
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(15)"/>
							<fo:table-column column-width="proportional-column-width(85)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Vehículo:</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" color="#5F9EA0" font-size="10pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="3mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(25)"/>
							<fo:table-column column-width="proportional-column-width(15)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(30)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Marca y modelo</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Tipo de Vehículo</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Año</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Patente</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt"><xsl:value-of select="marcaModelo"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt"><xsl:value-of select="tipoVehiculo"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt"><xsl:value-of select="anyo"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt"><xsl:value-of select="patente"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
					</xsl:if>	
					<fo:block space-before="4mm" font-size="12pt"></fo:block>									
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">3. PARTICIPACION EN SOCIEDADES - DECLARACION PARA MARGENES DE CREDITO</fo:block>
									</fo:table-cell>
								</fo:table-row>
								
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="7pt">(Art. 85 Ley General de Banco)</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="1mm" font-size="12pt"></fo:block>									
						
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="justify" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Con el propósito que el Banco de Crédito e Inversiones, según lo dispuesto en el Art. 85 de la Ley General de Bancos, determine el monto de las obligaciones complementarias 
										que afectan los márgenes de endeudamiento mencionados en el Art. 84 de la mencionada ley, el Cliente declara ser a esta fecha socio, accionista o participe en más de un 2% de su capital en las siguientes sociedades, comunidades o sucesiones.</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell text-align="justify" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Las presentes declaraciones se entenderán como negativas cuando los espacios pertinentes se hayan dejado en blanco, tengan indicaciones en este sentido o esten tachados.</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell text-align="justify" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">El cliente se compromete a informar de inmediato al Banco de Crédito e Inversiones cualquier modificación o nueva participación que afecte a los antecedentes antes mencionados, 
										despues de esta fecha.Para este efecto, los antecedentes del caso se entregarán por escrito al Banco con la documentacion de respaldo que corresponda.</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell text-align="justify" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">
										Si como consecuencia de la presente declaración o del no cumplimiento de lo señalado precedentemente, el Banco de Crédito e Inversiones determina las obligaciones crediticias del Cliente en forma que no se ajustan a las normas legales vigentes y por este motivo quedase afecto a multas de cualquier naturaleza, el Cliente se obliga a indemnizar al Banco con todos los pagos que deba efectuar por tal razon, más intereses calculados según la tasa máxima convencional autorizada por la ley. Para este fin, el Banco queda autorizado para cursar los cargos necesarios en la cuenta corriente o para descontar las sumas correspondientes de cualquier acreencia a su favor.
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell text-align="justify" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">
										Nota: Si el espacio disponible es insuficiente, deberán adjuntarse nóminas en forma separada debidamente suscritas por el cliente.
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								
								
							</fo:table-body>
						</fo:table>							
					</fo:block>	
					<fo:block space-before="3mm" font-size="12pt"></fo:block>	
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(40)"/>
							<fo:table-column column-width="proportional-column-width(60)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="9pt">Sociedades con fines de lucro</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" color="#5F9EA0" font-size="10pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
					</fo:block>						
						
					<fo:block space-before="1mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(40)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Nombre o Razón Social</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">RUT</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Tipo de Relación</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">% Participación</fo:block>
									</fo:table-cell>
								</fo:table-row>
								
								<xsl:for-each select='patrimonio/Patrimonio/sociedades/Sociedad'>
								<xsl:variable name="soc" select='position()' />
									<xsl:if test="finesLucro = 'true'">
										<fo:table-row>
												<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<xsl:value-of select="$soc" />.- <xsl:value-of select="nombre"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<xsl:value-of select='format-number(rut, "#","rut")' />-<xsl:value-of select="dv"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<xsl:value-of select="tipoRelacion"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<xsl:value-of select="porcentajeParticipacion"/>%
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
									</xsl:if>
								</xsl:for-each>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="3mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(60)"/>
							<fo:table-column column-width="proportional-column-width(40)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="9pt">Sociedades sin fines de lucro (Corporaciones, Fundaciones, etc.)</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" color="#5F9EA0" font-size="10pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="1mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(40)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Nombre o Razón Social</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">RUT</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Tipo de Relación</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">% Participación</fo:block>
									</fo:table-cell>
								</fo:table-row>
								
								<xsl:for-each select='patrimonio/Patrimonio/sociedades/Sociedad'>
								<xsl:variable name="soc" select='position()' />
									<xsl:if test="finesLucro = 'false'">
									<fo:table-row>
										<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
											<fo:block color="#000000" font-size="8pt">
												<xsl:value-of select="$soc" />.-<xsl:value-of select="nombre"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
											<fo:block color="#000000" font-size="8pt">
												<xsl:value-of select='format-number(rut, "#","rut")' />-<xsl:value-of select="dv"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
											<fo:block color="#000000" font-size="8pt">
												<xsl:value-of select="tipoRelacion"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
											<fo:block color="#000000" font-size="8pt">
												<xsl:value-of select="porcentajeParticipacion"/>%
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									</xsl:if>
								</xsl:for-each>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="1mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(60)"/>
							<fo:table-column column-width="proportional-column-width(40)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="9pt">4. OTROS BIENES (Acciones, Bonos, dépositos a Plazo, etc.)</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" color="#5F9EA0" font-size="10pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="1mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(60)"/>
							<fo:table-column column-width="proportional-column-width(40)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Detalle otros bienes </fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Monto M$</fo:block>
									</fo:table-cell>
								</fo:table-row>
																
								<xsl:for-each select='patrimonio/Patrimonio/otrosBienes/OtroBien'>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt">
											<xsl:value-of select="descripcion"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt">
											<xsl:choose>
												<xsl:when test="monto > 0">
													<xsl:value-of select='format-number(monto, "#","decimal")' />
												</xsl:when>								  				 																	  
												<xsl:otherwise>							
													<fo:leader leader-pattern="space" leader-length="1mm"/>	
												</xsl:otherwise>
											</xsl:choose>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								</xsl:for-each>
							</fo:table-body>
						</fo:table>  
					</fo:block>						
						
					<fo:block space-before="1mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="justify" padding-top="1mm" padding-left="1mm" padding-right="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt">
											IMPORTANTE
										</fo:block>
									
										<fo:block color="#000000" font-size="8pt">
											Declaro bajo juramento que mientras mantenga deudas u obligaciones pendientes a favor del Banco de Crédito e Inversiones, me comprometo a conservar incólume el patrimonio declarado en el presente documento y me obligo a comunicarles por 
											escrito y con la debida anticipación, todo hecho, acto o contrato que pueda disminuir o extinguir mis cauciones o el valor declarado de mis bienes o patrimonio. La infraccion a lo contemplado en la predecente estipulación que tiene 
											carácter de esencial y determinante para mi relación con el Banco de Crédito e Inversiones dará derecho al Banco de Crédito e Inversiones para poner término a la relación contractual y hacer exigible de inmediato el monto total de 
											mis obligaciones pendientes, considerandolas como de plazo vencido, en cualquier forma en que se encuentren documentadas, sea en letras, pagarés, escrituras u otros instrumentos.
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="1mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="justify" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">
										Declaro asumir integral responsabilidad por la veracidad de la información entregada en este documento.
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								
							</fo:table-body>
						</fo:table>  
						
					</fo:block>		
					
					<fo:block space-before="12mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">
										------------------------------------------
										</fo:block>
										<fo:block color="#000000" font-size="8pt">
										FIRMA CLIENTE
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								
							</fo:table-body>
						</fo:table>  
						
					</fo:block>		
					<fo:block space-before="12mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(30)"/>
							<fo:table-column column-width="proportional-column-width(5)"/>
							<fo:table-column column-width="proportional-column-width(30)"/>
							<fo:table-column column-width="proportional-column-width(5)"/>
							<fo:table-column column-width="proportional-column-width(30)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">
										------------------------------------------
										</fo:block>
										<fo:block color="#000000" font-size="8pt">
										Nombre Ejecutivo Comercial
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">
										</fo:block>
										<fo:block color="#000000" font-size="8pt">
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">
										------------------------------------------
										</fo:block>
										<fo:block color="#000000" font-size="8pt">
										Firma y Timbre
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">
										</fo:block>
										<fo:block color="#000000" font-size="8pt">
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">
										------------------------------------------
										</fo:block>
										<fo:block color="#000000" font-size="8pt">
										Fecha
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								
							</fo:table-body>
						</fo:table>  
						
					</fo:block>	
				<fo:block id="finPerfil"/>
			</fo:flow>	  
		</fo:page-sequence>		
	</fo:root>
</xsl:template>
</xsl:stylesheet>		