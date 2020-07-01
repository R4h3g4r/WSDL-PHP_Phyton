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
		<fo:page-sequence master-reference="cpc">
			<fo:static-content flow-name="xsl-region-after">
				<fo:block text-align="right" border-top="1pt solid black" padding-top="1mm">
					Página
					<fo:page-number/>
					de
					4
				</fo:block>
			</fo:static-content>			
			
			
			<fo:flow flow-name="xsl-region-body">

					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(50)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(15)"/>
							<fo:table-column column-width="proportional-column-width(25)"/>
							<fo:table-body>
								<fo:table-row>
			            <fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm" background-color="#F0F8FF">
									    <fo:block font-weight="bold" color="#000000" font-size="10pt">Perfil del Cliente (Personas Naturales)</fo:block>
			             </fo:table-cell>
								   <fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm">
									    <fo:block font-weight="bold" color="#000000" font-size="10pt"></fo:block>
			             </fo:table-cell>
								</fo:table-row>
							</fo:table-body> 
						</fo:table>	
						
						</fo:block>					
						
						<fo:block space-before="3mm" font-size="12pt"></fo:block>
						
						<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(50)"/>
							<fo:table-column column-width="proportional-column-width(50)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5F9EA0" border-bottom="0.25pt solid #5F9EA0" border-left="0.25pt solid #5F9EA0" border-right="0.25pt solid #5F9EA0" background-color="#5F9EA0">
										<fo:block font-weight="bold" color="#FFFFFF" font-size="10pt" border-radius="10pt 10pt">I. ANTECEDENTES DEL CLIENTE</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" color="#5F9EA0" font-size="10pt">---------------------------------------------------------------------------</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
						</fo:block>						
						
						<fo:block space-before="3mm" font-size="12pt"></fo:block>
						
						<fo:block>
						
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(2)"/>
							<fo:table-column column-width="proportional-column-width(30)"/>
							<fo:table-column column-width="proportional-column-width(30)"/>
							<fo:table-column column-width="proportional-column-width(38)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block color="#000000"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="10pt">NOMBRE DEL CLIENTE</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" color="#000000" font-size="10pt"> </fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" background-color="#FFFFFF">RUT</fo:block>
										<fo:block font-weight="bold" color="#000000" font-size="8pt"><xsl:value-of select="rut"/>-<xsl:value-of select="dv"/></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  

						</fo:block>						
						
						<fo:block space-before="3mm" font-size="12pt"></fo:block>
						
						<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(33)"/>
							<fo:table-column column-width="proportional-column-width(0.5)"/>
							<fo:table-column column-width="proportional-column-width(33)"/>
							<fo:table-column column-width="proportional-column-width(0.5)"/>
							<fo:table-column column-width="proportional-column-width(33)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Apellido Paterno</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF">
											<fo:block  font-size="8pt"></fo:block>
										</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Apellido Materno</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF">
										<fo:block  font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Nombres</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:value-of select="apellidoPaterno"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF">
										<fo:block  font-size="8pt"></fo:block>
									</fo:table-cell>									
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:value-of select="apellidoMaterno"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF">
										<fo:block  font-size="8pt"></fo:block>
									</fo:table-cell>									
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:value-of select="nombre"/></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>						

					</fo:block>
					
					<fo:block space-before="3mm" font-size="12pt"></fo:block>
						
					<fo:block>						
						
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(32)"/>
							<fo:table-column column-width="proportional-column-width(1)"/>
							<fo:table-column column-width="proportional-column-width(36)"/>
							<fo:table-column column-width="proportional-column-width(1)"/>
							<fo:table-column column-width="proportional-column-width(32)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Sexo</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF">
										<fo:block  font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Fecha de Nacimiento</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF">
										<fo:block  font-size="8pt"></fo:block>
									</fo:table-cell>										
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Nacionalidad</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:value-of select="sexo"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF">
										<fo:block  font-size="8pt"></fo:block>
									</fo:table-cell>										
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:value-of select="fechaNacimiento"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF">
										<fo:block  font-size="8pt"></fo:block>
									</fo:table-cell>										
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:value-of select="nacionalidad"/></fo:block>
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
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Domicilio Cliente</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:value-of select="direccion/Direccion/direccion"/></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					
					</fo:block>
				
					<fo:block space-before="3mm" font-size="12pt"></fo:block>
						
					<fo:block>	
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(40)"/>
							<fo:table-column column-width="proportional-column-width(0.5)"/>
							<fo:table-column column-width="proportional-column-width(39.5)"/>
							<fo:table-column column-width="proportional-column-width(5)"/>
							<fo:table-column column-width="proportional-column-width(15)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Comuna</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF">
										<fo:block  font-size="8pt"></fo:block>
									</fo:table-cell>									
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Tiempo Domicilio Actual</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:value-of select="direccion/Direccion/mesesDomActual"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Meses</fo:block>
									</fo:table-cell>
								</fo:table-row>									
								<fo:table-row>
									
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:value-of select="direccion/Direccion/comuna"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF">
										<fo:block  font-size="8pt"></fo:block>
									</fo:table-cell>	
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF">
										<fo:block  font-size="8pt"></fo:block>
									</fo:table-cell>	
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF">
										<fo:block  font-size="8pt"></fo:block>
									</fo:table-cell>	
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF">
										<fo:block  font-size="8pt"></fo:block>
									</fo:table-cell>	
									
									
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					
					</fo:block>				

					<fo:block space-before="3mm" font-size="12pt"></fo:block>
					
					<fo:block>				

					<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(15)"/>
							<fo:table-column column-width="proportional-column-width(45)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Propia</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block  font-size="8pt">
										<xsl:if test="direccion/Direccion/tipoPropiedad = 'PRPIA'">X</xsl:if>
										<xsl:if test="direccion/Direccion/tipoPropiedad = 'DIVID'">X</xsl:if>
										</fo:block>
									</fo:table-cell>									
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Arrendada</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block  font-size="8pt">
										<xsl:if test="direccion/Direccion/tipoPropiedad = 'ARR1A'">X</xsl:if>
										<xsl:if test="direccion/Direccion/tipoPropiedad = 'ARR2A'">X</xsl:if>
										<xsl:if test="direccion/Direccion/tipoPropiedad = 'ARR3A'">X</xsl:if>
										</fo:block>
									</fo:table-cell>									
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Otra(especificar)</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt">
										<xsl:if test="direccion/Direccion/tipoPropiedad = 'FAMIL'">FAMILIAR</xsl:if>
										<xsl:if test="direccion/Direccion/tipoPropiedad = 'FIEMP'">FISCAL O EMP</xsl:if>
										<xsl:if test="direccion/Direccion/tipoPropiedad = 'NO'">SIN CASA</xsl:if>
										
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
						
							</fo:table-body>
						</fo:table>
					
					
					
					
					</fo:block>									
					
					
					<fo:block space-before="3mm" font-size="12pt"></fo:block>
						
						<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(33)"/>
							<fo:table-column column-width="proportional-column-width(0.5)"/>
							<fo:table-column column-width="proportional-column-width(33)"/>
							<fo:table-column column-width="proportional-column-width(0.5)"/>
							<fo:table-column column-width="proportional-column-width(33)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Teléfono Particular</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF">
											<fo:block  font-size="8pt"></fo:block>
										</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Número Teléfono Celular</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF">
										<fo:block  font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">E-mail</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:value-of select="direccion/Direccion/telefono"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF">
										<fo:block  font-size="8pt"></fo:block>
									</fo:table-cell>									
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:value-of select="direccion/Direccion/telefonoCelular"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF">
										<fo:block  font-size="8pt"></fo:block>
									</fo:table-cell>									
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:value-of select="direccion/Direccion/email"/></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>						

					</fo:block>					
				
					<fo:block space-before="3mm" font-size="12pt"></fo:block>
					
					<fo:block>				

					<fo:table table-layout="fixed" width="80%">
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(30)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Estado Civil</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="rigth" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Casado</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block  font-size="8pt"><xsl:if test="estadoCivil = 'CAS'">X</xsl:if></fo:block>
									</fo:table-cell>									
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Soltero / Viudo / Divorciado</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:if test="estadoCivil != 'CAS'">X</xsl:if></fo:block>
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

					<fo:table table-layout="fixed" width="80%">
							<fo:table-column column-width="proportional-column-width(18)"/>
							<fo:table-column column-width="proportional-column-width(17)"/>
							<fo:table-column column-width="proportional-column-width(5)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(5)"/>
							<fo:table-column column-width="proportional-column-width(30)"/>
							<fo:table-column column-width="proportional-column-width(5)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="0mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Regimen Conyugal</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="0mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Sociedad Conyugal</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block  font-size="8pt"><xsl:if test="regimenConyugal = '1'">X</xsl:if></fo:block>
									</fo:table-cell>									
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Separación de Bienes</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:if test="regimenConyugal = '2'">X</xsl:if></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Participación en los Ganaciales</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:if test="regimenConyugal = '3'">X</xsl:if></fo:block>
									</fo:table-cell>
								</fo:table-row>	
						
							</fo:table-body>
						</fo:table>

					</fo:block>									

					<fo:block space-before="3mm" font-size="12pt"></fo:block>
					
					<fo:block>				

					<fo:table table-layout="fixed" width="80%">
							<fo:table-column column-width="proportional-column-width(30)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(30)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">N° Cargas Familiares</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block  font-size="8pt"><xsl:value-of select="cargasFamiliares"/></fo:block>
									</fo:table-cell>									
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">N° Hijos Dependientes</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:value-of select="hijosDependientes"/></fo:block>
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
					<xsl:if test="personaAltaExposicionPublica != ''">					
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(60)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Trabaja o ha trabajado en funciones oficiales en algun Poder del Estado o en las FF AA y de Orden(*)</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="0mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">SI</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt">X</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">NO</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>	
						
							</fo:table-body>
						</fo:table>
					</xsl:if>
					</fo:block>	
					
					<fo:block space-before="1mm" font-size="12pt"></fo:block>
						
					<fo:block>	
					<xsl:if test="personaAltaExposicionPublica != ''">					
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Si su respuesta es afirmativa, indicar organismo, cargo y fecha de Servicio</fo:block>
									</fo:table-cell>
								</fo:table-row>									
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt">
											<xsl:choose>
												<xsl:when test="personaAltaExposicionPublica/PersonaAltaExposicionPublica/organismo != ''">
													<xsl:value-of select="personaAltaExposicionPublica/PersonaAltaExposicionPublica/organismo"/>
												</xsl:when>																			  
												<xsl:otherwise>	
													<fo:leader leader-pattern="space" leader-length="1mm"/>							   
												</xsl:otherwise>
											</xsl:choose>	
											 - 
											<xsl:choose>
												<xsl:when test="personaAltaExposicionPublica/PersonaAltaExposicionPublica/cargo != ''">
													<xsl:value-of select="personaAltaExposicionPublica/PersonaAltaExposicionPublica/cargo"/>
												</xsl:when>																			  
												<xsl:otherwise>								
													<fo:leader leader-pattern="space" leader-length="1mm"/>   
												</xsl:otherwise>
											</xsl:choose>								
										 - 
											<xsl:choose>
												<xsl:when test="personaAltaExposicionPublica/PersonaAltaExposicionPublica/fechaServicio != ''">
													<xsl:value-of select="personaAltaExposicionPublica/PersonaAltaExposicionPublica/fechaServicio"/><fo:leader leader-pattern="space" leader-length="1mm"/>
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
					</xsl:if>	
					
					</fo:block>		

					<fo:block space-before="1mm" font-size="12pt"></fo:block>
					
					<fo:block>
					<xsl:if test="personaAltaExposicionPublica = ''">
					<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(60)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Trabaja o ha trabajado en funciones oficiales en algun Poder del Estado o en las FF AA y de Orden(*)</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="0mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">SI</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">NO</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt">X</fo:block>
									</fo:table-cell>
								</fo:table-row>	
						
							</fo:table-body>
						</fo:table>
					</xsl:if>					
					</fo:block>		

					<fo:block>				
					<xsl:if test="familiaresPaep != ''">					
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(60)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Es familiar de personas que ocupan o han ocupado cargos en algún Poder del Estado o en las FFAA y de Orden(*)</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="0mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">SI</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt">X</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">NO</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>	
						
							</fo:table-body>
						</fo:table>
					</xsl:if>
					</fo:block>	
					
					<fo:block space-before="1mm" font-size="12pt"></fo:block>
						
					<fo:block>	
					<xsl:if test="familiaresPaep != ''">					
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Si su respuesta es afirmativa, indicar nombre, parentezco, cargo ocupado y organismo</fo:block>
									</fo:table-cell>
								</fo:table-row>									
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt">
																			
											<xsl:choose>
												<xsl:when test="familiaresPaep/PersonaAltaExposicionPublica/nombre != ''">
													<xsl:value-of select="familiaresPaep/PersonaAltaExposicionPublica/nombre"/>
												</xsl:when>																			  
												<xsl:otherwise>	
													<fo:leader leader-pattern="space" leader-length="1mm"/>							   
												</xsl:otherwise>
											</xsl:choose>	
											-										
											<xsl:choose>
												<xsl:when test="familiaresPaep/PersonaAltaExposicionPublica/relacion != ''">
													<xsl:value-of select="familiaresPaep/PersonaAltaExposicionPublica/relacion"/><fo:leader leader-pattern="space" leader-length="1mm"/>
												</xsl:when>																			  
												<xsl:otherwise>	
													<fo:leader leader-pattern="space" leader-length="1mm"/>							   
												</xsl:otherwise>
											</xsl:choose>		
											- 
											<xsl:choose>
												<xsl:when test="familiaresPaep/PersonaAltaExposicionPublica/cargo != ''">
													<xsl:value-of select="familiaresPaep/PersonaAltaExposicionPublica/cargo"/>
												</xsl:when>																			  
												<xsl:otherwise>								
													<fo:leader leader-pattern="space" leader-length="1mm"/>   
												</xsl:otherwise>
											</xsl:choose>								
										 - 																	 										
										 <xsl:choose>
											<xsl:when test="familiaresPaep/PersonaAltaExposicionPublica/organismo != ''">
												<xsl:value-of select="familiaresPaep/PersonaAltaExposicionPublica/organismo"/>
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
					</xsl:if>	
					
					</fo:block>		

					<fo:block space-before="1mm" font-size="12pt"></fo:block>
					
					<fo:block>
					<xsl:if test="familiaresPaep = ''">
					<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(60)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Trabaja o ha trabajado en funciones oficiales en algun Poder del Estado o en las FF AA y de Orden(*)</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="0mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">SI</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">NO</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt">X</fo:block>
									</fo:table-cell>
								</fo:table-row>	
						
							</fo:table-body>
						</fo:table>
					</xsl:if>					
					</fo:block>							
					
					<fo:block space-before="1mm" font-size="12pt"></fo:block>					
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(2)"/>
							<fo:table-column column-width="proportional-column-width(60)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">(*)</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="justify" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Poder Ejecutivo: Presidente y ex-Presidentes, Candidatos Presidenciales, Ministros, ex-Ministros, Subsecretarios, Intendentes, Gobernadores, Alcaldes y Concejales.</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell text-align="justify" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="justify" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Poder Legislativo: Senadores y Diputados</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell text-align="justify" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="justify" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Poder Judicial: Ministros de la corte Suprema y Fiscal Nacional.</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell text-align="justify" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="justify" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Fuerzas Armas y de Orden: Generales, Almirantes, Coroneles, Director de Investigaciones y ex altos mandos de las Fuerzas Armadas, Carabineros e Investigaciones.</fo:block>
									</fo:table-cell>
								</fo:table-row>		
								<fo:table-row>
									<fo:table-cell text-align="justify" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="justify" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Presidente y ex Presidente del concejo de Defensa del Estado (CODEFE), Director y ex-Director de la Unidad de Analisis Financiero (UAF), Dirigentes Políticos y ex-Dirigentes Políticos.</fo:block>
									</fo:table-cell>
								</fo:table-row>									
								<fo:table-row>
									<fo:table-cell text-align="justify" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="justify" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Altos Ejecutivos de empresas públicas, como Directores y Gerentes (Ej. Corfo, Enap, Codelco, etc.).</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="justify" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Sociedades o entidades que hayan sido creadas por personas que ostentan la calidad de PAEPs y que tengan una participacion mínima de un 10% de la propiedad</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="justify" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Familiares inmediatos de las personas definidas anteriormente (padres, hermanos, cónyuges, hijos) hasta 2° grado de afinidad y consanguinidad (cuñados, primos, tios, sobrinos, suegros).</fo:block>
									</fo:table-cell>
								</fo:table-row>		
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="justify" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Nota: En el caso de PAEPs, se debera considerar el ejercicio de la función por un período de a lo menos 12 años a la fecha de solicitud del producto. Con todo, para personajes nacionales o internacionales de alta figuración pública, cuestionados negativamente, no regirá la limitación de 12 años. </fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>							
					</fo:block>							
					
					<fo:block space-before="1mm" font-size="12pt"></fo:block>
					
					<fo:block>
						
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(2)"/>
							<fo:table-column column-width="proportional-column-width(30)"/>
							<fo:table-column column-width="proportional-column-width(68)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block color="#000000"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="10pt">NOMBRE CONYUGE</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" color="#000000" font-size="10pt"></fo:block>
									</fo:table-cell>
							
								</fo:table-row>
							</fo:table-body>
						</fo:table>  

						</fo:block>						
						
						<fo:block space-before="3mm" font-size="12pt"></fo:block>
						
						<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(25)"/>
							<fo:table-column column-width="proportional-column-width(0.5)"/>
							<fo:table-column column-width="proportional-column-width(25)"/>
							<fo:table-column column-width="proportional-column-width(0.5)"/>
							<fo:table-column column-width="proportional-column-width(25)"/>
							<fo:table-column column-width="proportional-column-width(0.5)"/>
							<fo:table-column column-width="proportional-column-width(25)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-size="8pt">RUT</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Apellido Paterno</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF">
											<fo:block  font-size="8pt"></fo:block>
										</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Apellido Materno</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF">
										<fo:block  font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Nombres</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:value-of select="conyuge/PerfilClientePersonaNatural/rut"/>-<xsl:value-of select="conyuge/PerfilClientePersonaNatural/dv"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:value-of select="conyuge/PerfilClientePersonaNatural/apellidoPaterno"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF">
										<fo:block  font-size="8pt"></fo:block>
									</fo:table-cell>									
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:value-of select="conyuge/PerfilClientePersonaNatural/apellidoMaterno"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF">
										<fo:block  font-size="8pt"></fo:block>
									</fo:table-cell>									
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:value-of select="conyuge/PerfilClientePersonaNatural/nombre"/></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>		
					
					</fo:block>
					
					<fo:block space-before="3mm" font-size="12pt"></fo:block>
						
					
					<fo:block space-before="5mm" font-size="12pt"></fo:block>					
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(50)"/>
							<fo:table-column column-width="proportional-column-width(50)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5F9EA0" border-bottom="0.25pt solid #5F9EA0" border-left="0.25pt solid #5F9EA0" border-right="0.25pt solid #5F9EA0" background-color="#5F9EA0">
										<fo:block font-weight="bold" color="#FFFFFF" font-size="10pt" border-radius="10pt 10pt">II. ANTECEDENTES EDUCACIONALES</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" color="#5F9EA0" font-size="10pt">---------------------------------------------------------------------------</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="3mm" font-size="12pt"></fo:block>

					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(15)"/>
							<fo:table-column column-width="proportional-column-width(1)"/>
							<fo:table-column column-width="proportional-column-width(8)"/>
							<fo:table-column column-width="proportional-column-width(8)"/>
							<fo:table-column column-width="proportional-column-width(8)"/>
							<fo:table-column column-width="proportional-column-width(23)"/>
							<fo:table-column column-width="proportional-column-width(23)"/>
							<fo:table-column column-width="proportional-column-width(14)"/>							
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Nivel Educacional</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#5F9EA0" font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Básico</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Medio</fo:block>
									</fo:table-cell>			
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Técnico</fo:block>
									</fo:table-cell>									
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Universitario Incompleto</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Universitario Completo</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Otro</fo:block>
									</fo:table-cell>										
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="1mm" font-size="12pt"></fo:block>					
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(13)"/>
							<fo:table-column column-width="proportional-column-width(3)"/>
							<fo:table-column column-width="proportional-column-width(8)"/>
							<fo:table-column column-width="proportional-column-width(8)"/>
							<fo:table-column column-width="proportional-column-width(8)"/>
							<fo:table-column column-width="proportional-column-width(23)"/>
							<fo:table-column column-width="proportional-column-width(23)"/>
							<fo:table-column column-width="proportional-column-width(14)"/>	
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="9pt">CLIENTE</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#5F9EA0" font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:if test="nivelEducacional = 'BAS'">X</xsl:if></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block  font-size="8pt"><xsl:if test="nivelEducacional = 'MED'">X</xsl:if></fo:block>
									</fo:table-cell>									
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:if test="nivelEducacional = 'TEC'">X</xsl:if></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block  font-size="8pt"><xsl:if test="nivelEducacional = 'IN'">X</xsl:if>
																							 <xsl:if test="nivelEducacional = 'UIN'">X</xsl:if>
																							 <xsl:if test="nivelEducacional = 'EUN'">X</xsl:if>	
										</fo:block>
									</fo:table-cell>									
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:if test="nivelEducacional = 'UNV'">X</xsl:if>
																							<xsl:if test="nivelEducacional = 'PRF'">X</xsl:if>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:if test="nivelEducacional = 'SIN'">X</xsl:if></fo:block>
									</fo:table-cell>
								</fo:table-row>
								
							</fo:table-body>
						</fo:table>		
					
					</fo:block>
					
					<fo:block space-before="3mm" font-size="12pt"></fo:block>

					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(50)"/>
							<fo:table-column column-width="proportional-column-width(50)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5F9EA0" border-bottom="0.25pt solid #5F9EA0" border-left="0.25pt solid #5F9EA0" border-right="0.25pt solid #5F9EA0" background-color="#5F9EA0">
										<fo:block font-weight="bold" color="#FFFFFF" font-size="10pt" border-radius="10pt 10pt">III. ANTECEDENTES LABORALES</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" color="#5F9EA0" font-size="10pt">---------------------------------------------------------------------------</fo:block>
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
										<fo:block font-weight="bold" color="#000000" font-size="9pt" border-radius="10pt 10pt">CLIENTE</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="9pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="1mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(40)"/>
							<fo:table-column column-width="proportional-column-width(9)"/>
							<fo:table-column column-width="proportional-column-width(51)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Dependiente</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt">
											<xsl:if test="tipoActividad = 'DE1'">X</xsl:if>
											<xsl:if test="tipoActividad = 'DE2'">X</xsl:if>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="9pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="1mm" font-size="12pt"></fo:block>								
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(40)"/>
							<fo:table-column column-width="proportional-column-width(9)"/>
							<fo:table-column column-width="proportional-column-width(51)"/>
							<fo:table-body>								
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Independiente</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt">
										<xsl:if test="tipoActividad = 'IN1'">X</xsl:if>
										<xsl:if test="tipoActividad = 'IN2'">X</xsl:if>
										<xsl:if test="tipoActividad = 'IN3'">X</xsl:if>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="9pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="1mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(40)"/>
							<fo:table-column column-width="proportional-column-width(9)"/>
							<fo:table-column column-width="proportional-column-width(1)"/>
							<fo:table-column column-width="proportional-column-width(50)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Estudiante, Jubilado(a), otros, Especificar</fo:block>
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
										  <xsl:if test="tipoActividad = 'IT1'">INACTIVO</xsl:if>
											<xsl:if test="tipoActividad = 'IT2'">ESTUDIANTE</xsl:if></fo:block>											
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt">
											<xsl:if test="tipoActividad = 'IT1'">X</xsl:if>
											<xsl:if test="tipoActividad = 'IT2'">X</xsl:if>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-size="8pt">
										  
									</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Profesión</fo:block>
									</fo:table-cell>
								</fo:table-row>
								
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #F0FFF0" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt">
											<xsl:value-of select="profesion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="1mm" font-size="12pt"></fo:block>	

					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(49)"/>
							<fo:table-column column-width="proportional-column-width(1)"/>
							<fo:table-column column-width="proportional-column-width(50)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Razón Social Empleador</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Rut del Empleador</fo:block>
									</fo:table-cell>
								</fo:table-row>
								
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt">
											<xsl:value-of select="empleador/PerfilClientePersonaJuridica/razonSocial"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt">
											<xsl:choose>
											  <xsl:when test="empleador/PerfilClientePersonaJuridica/rut > 0">
													 <xsl:value-of select='format-number(empleador/PerfilClientePersonaJuridica/rut, "#","rut")' />-<xsl:value-of select="empleador/PerfilClientePersonaJuridica/dv"/>
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
						
					<fo:block space-before="1mm" font-size="12pt"></fo:block>	
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(49)"/>
							<fo:table-column column-width="proportional-column-width(51)"/>
							
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Cargo que desempeña</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-size="8pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:value-of select="cargo"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-size="8pt"></fo:block>
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
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Dirección</fo:block>
									</fo:table-cell>
								</fo:table-row>
								
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt">
											<xsl:value-of select="empleador/PerfilClientePersonaJuridica/direccion/Direccion/direccion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="1mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(49)"/>
							<fo:table-column column-width="proportional-column-width(1)"/>
							<fo:table-column column-width="proportional-column-width(50)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Comuna</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Teléfono Comercial</fo:block>
									</fo:table-cell>
								</fo:table-row>
								
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt">
											<xsl:value-of select="empleador/PerfilClientePersonaJuridica/direccion/Direccion/comuna"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#F0FFF0">
										<fo:block font-size="8pt">
											<xsl:value-of select="empleador/PerfilClientePersonaJuridica/direccion/Direccion/telefono"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>														
						
					<fo:block space-before="1mm" font-size="12pt"></fo:block>	
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(30)"/>
							<fo:table-column column-width="proportional-column-width(19)"/>
							<fo:table-column column-width="proportional-column-width(51)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Antiguedad en la Empresa</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:value-of select="mesesAntiguedad"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Meses</fo:block>
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
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Si antiguedad es menos a un año, completar datos de empleador anterior</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="1mm" font-size="12pt"></fo:block>	

					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(29)"/>
							<fo:table-column column-width="proportional-column-width(51)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Empleador</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:value-of select="empleadorAnterior"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="9pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Fecha retiro</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:value-of select="fechaRetiro"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="9pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Motivo retiro</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:value-of select="motivoRetiro"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="9pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #F0FFF0" background-color="#F0FFF0">
										<fo:block font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #F0FFF0" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="1mm" font-size="12pt"></fo:block>	
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(49)"/>
							<fo:table-column column-width="proportional-column-width(51)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Actividad de la empresa</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-size="8pt"></fo:block>
									</fo:table-cell>
									
								</fo:table-row>
								
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt"><xsl:value-of select="actividadEmpresa"/></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-size="8pt"></fo:block>
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
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">En caso de emergencia comunicarse con</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(50)"/>
							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(30)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Nombre</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:value-of select="emergenciaNombre"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Teléfono</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt">
										<xsl:value-of select="emergenciaTelefono"/>	
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>	
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(50)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(30)"/>
							<fo:table-body>
								<fo:table-row>
									
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Teléfono Celular</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-size="8pt">
											<xsl:value-of select="emergenciaTelefonoCelular"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="3mm" font-size="12pt"></fo:block>	
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(80)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5F9EA0" border-bottom="0.25pt solid #5F9EA0" border-left="0.25pt solid #5F9EA0" border-right="0.25pt solid #5F9EA0" background-color="#5F9EA0">
										<fo:block font-weight="bold" color="#FFFFFF" font-size="10pt" border-radius="10pt 10pt">IV. DESCRIPCION DE ACTIVIDADES COMERCIALES Y NEGOCIOS DEL CLIENTE</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" color="#5F9EA0" font-size="10pt">------------------------------</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="3mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"><xsl:value-of select="descripcionActividadesComerciales"/></fo:block>
									</fo:table-cell>
								</fo:table-row>
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
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5F9EA0" border-bottom="0.25pt solid #5F9EA0" border-left="0.25pt solid #5F9EA0" border-right="0.25pt solid #5F9EA0" background-color="#5F9EA0">
										<fo:block font-weight="bold" color="#FFFFFF" font-size="10pt" border-radius="10pt 10pt">V. PROPOSITO DE LA CUENTA CORRIENTE SOLICITADA</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" color="#5F9EA0" font-size="10pt">------------------------------------------------------------</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="3mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"><xsl:value-of select="propositoCuenta"/></fo:block>
									</fo:table-cell>
								</fo:table-row>
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
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5F9EA0" border-bottom="0.25pt solid #5F9EA0" border-left="0.25pt solid #5F9EA0" border-right="0.25pt solid #5F9EA0" background-color="#5F9EA0">
										<fo:block font-weight="bold" color="#FFFFFF" font-size="10pt" border-radius="10pt 10pt">VI. DEUDAS/REFERENCIAS BANCARIAS Y COMERCIALES</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" color="#5F9EA0" font-size="10pt">------------------------------------------------------------</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="1mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(25)"/>
							<fo:table-column column-width="proportional-column-width(25)"/>
							<fo:table-column column-width="proportional-column-width(25)"/>
							<fo:table-column column-width="proportional-column-width(25)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Banco - Casa Comercial</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">N° Cuenta Corriente</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Tipo Deuda</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-size="8pt">Monto Deuda M$</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
					</fo:block>	
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(25)"/>
							<fo:table-column column-width="proportional-column-width(25)"/>
							<fo:table-column column-width="proportional-column-width(25)"/>
							<fo:table-column column-width="proportional-column-width(25)"/>
							<fo:table-body>
								<xsl:if test="deudasBancariasComerciales = ''">
									<fo:table-row>
										<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
											<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
											<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
											<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
											<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
								<xsl:for-each select='deudasBancariasComerciales/DeudaBancariaComercial'>
									<fo:table-row>
										<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
											<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
												<xsl:choose>
													<xsl:when test="banco != ''">
														<xsl:value-of select="banco"/><fo:leader leader-pattern="space" leader-length="1mm"/>
													</xsl:when>			
													<xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
													</xsl:otherwise>
												</xsl:choose>
											</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												<xsl:when test="cuentaCorriente != ''">
													<xsl:value-of select="cuentaCorriente"/><fo:leader leader-pattern="space" leader-length="1mm"/>
												</xsl:when>			
												<xsl:otherwise>							
													<fo:leader leader-pattern="space" leader-length="1mm"/>	
												</xsl:otherwise>
											</xsl:choose>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												<xsl:when test="tipoDeuda != ''">
													<xsl:value-of select="tipoDeuda"/><fo:leader leader-pattern="space" leader-length="1mm"/>
												</xsl:when>			
												<xsl:otherwise>							
													<fo:leader leader-pattern="space" leader-length="1mm"/>	
												</xsl:otherwise>
											</xsl:choose>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt" >
											<xsl:choose>
												<xsl:when test="montoDeuda != 0">
													<xsl:value-of select='format-number(montoDeuda, "#","decimal")' /><fo:leader leader-pattern="space" leader-length="1mm"/>
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
					
					<fo:block space-before="3mm" font-size="12pt"></fo:block>	

					<fo:block id="finPerfil"/>
					
	        </fo:flow>	  
		</fo:page-sequence>		
	</fo:root>
</xsl:template>
</xsl:stylesheet>	