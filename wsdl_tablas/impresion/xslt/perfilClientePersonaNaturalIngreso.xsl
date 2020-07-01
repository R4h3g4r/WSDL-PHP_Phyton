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
					<fo:page-number-citation ref-id="finPerfil"/>
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
										<xsl:if test="direccion/Direccion/tipoPropiedad = 'FAMIL'"><xsl:value-of select="direccion/Direccion/tipoPropiedad"/></xsl:if>
										<xsl:if test="direccion/Direccion/tipoPropiedad = 'FIEMP'"><xsl:value-of select="direccion/Direccion/tipoPropiedad"/></xsl:if>
										<xsl:if test="direccion/Direccion/tipoPropiedad = 'NO'"><xsl:value-of select="direccion/Direccion/tipoPropiedad"/></xsl:if>
										
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
					
					<!-- fo:block>
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
					</fo:block-->		

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
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Es familiar de personas que ocupan o han ocupado cargos en algún Poder del Estado o en las FF AA y de Orden(*)</fo:block>
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
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Poder Legislativo: Senadores y Diputados. Poder Judicial: Ministros de la corte Suprema y Fiscal Nacional.</fo:block>
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
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Presidente y ex Presidente del consejo de Defensa del Estado (CODEFE), Director y ex-Director de la Unidad de Análisis Financiero (UAF), Dirigentes Políticos y ex-Dirigentes Políticos.</fo:block>
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
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Familiares inmediatos de las personas definidas anteriormente (padres, hermanos, cónyuges, hijos) hasta 2° grado de afinidad y consanguinidad (cuñados, primos, tíos, sobrinos, suegros).</fo:block>
									</fo:table-cell>
								</fo:table-row>		
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="justify" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">Nota: En el caso de PAEPs, se deberá considerar el ejercicio de la función por un período de a lo menos 12 años a la fecha de solicitud del producto. Con todo, para personajes nacionales o internacionales de alta figuración pública, cuestionados negativamente, no regirá la limitación de 12 años. </fo:block>
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
						
					<fo:block>	
						
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(33)"/>
							<fo:table-column column-width="proportional-column-width(67)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">RUT</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-size="8pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												<xsl:when test="conyuge/PerfilClientePersonaNatural/rut > 0">
													<xsl:value-of select="conyuge/PerfilClientePersonaNatural/rut"/>-<xsl:value-of select="conyuge/PerfilClientePersonaNatural/dv"/>
												</xsl:when>			
												<xsl:otherwise>							
													<fo:leader leader-pattern="space" leader-length="1mm"/>	
												</xsl:otherwise>
											</xsl:choose>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-size="8pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>						

					</fo:block>
					
					<xsl:if test="personaAltaExposicionPublica = ''">	
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block color="#000000" font-size="60pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  						
					</fo:block>	
					</xsl:if>	
					
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
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Actividad de la Empresa</fo:block>
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
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Monto Deuda M$</fo:block>
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
								
							<xsl:when test="deudasBancariasComerciales/DeudaBancariaComercial != ''">
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
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
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
							</xsl:when>		
							
							</fo:table-body>
						</fo:table>  
					</fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(80)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block color="#000000" font-size="48pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>
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
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Activos ($)</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt"></fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">Pasivos ($)</fo:block>
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
					<fo:block space-before="3mm" font-size="12pt"></fo:block>
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(15)"/>
							<fo:table-column column-width="proportional-column-width(85)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-weight="bold" color="#5F9EA0" font-size="10pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Bien raíz :<xsl:value-of select="$cur" /></fo:block>
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
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												<xsl:when test="direccion != ''">
													<xsl:value-of select="direccion/Direccion/direccion"/>
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
												<xsl:when test="direccion != ''">
													<xsl:value-of select="direccion/Direccion/comuna"/>
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
												<xsl:when test="direccion != ''">
													<xsl:value-of select="direccion/Direccion/ciudad"/>
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
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												<xsl:when test="rol != 0">
													<xsl:value-of select="rol"/>
												</xsl:when>			
												<xsl:otherwise>							
													<fo:leader leader-pattern="space" leader-length="1mm"/>	
												</xsl:otherwise>
											</xsl:choose>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
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
										<fo:block color="#000000" font-size="8pt">Bien raíz : 1</fo:block>
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
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>
										</fo:block>
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
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>	
					
					<fo:block space-before="3mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(15)"/>
							<fo:table-column column-width="proportional-column-width(85)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-weight="bold" color="#5F9EA0" font-size="10pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>							
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Bien raíz : 2</fo:block>
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
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>
										</fo:block>
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
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>
										</fo:block>
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
									<fo:table-cell>
										<fo:block font-weight="bold" color="#5F9EA0" font-size="10pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>							
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Vehículo :<xsl:value-of select="$cur" /></fo:block>
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
										<fo:block color="#000000" font-size="8pt">Marca y Modelo</fo:block>
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
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												<xsl:when test="marcaModelo != ''">
													<xsl:value-of select="marcaModelo"/>
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
												<xsl:when test="tipoVehiculo != ''">
													<xsl:value-of select="tipoVehiculo"/>
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
												<xsl:when test="anyo != 0">
													<xsl:value-of select="anyo"/>
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
												<xsl:when test="patente != ''">
													<xsl:value-of select="patente"/>
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
					<fo:block space-before="3mm" font-size="12pt"></fo:block>						
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
										<fo:block color="#000000" font-size="8pt">Vehículo : 1</fo:block>
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
										<fo:block color="#000000" font-size="8pt">Marca y Modelo</fo:block>
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
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						

					<fo:block space-before="3mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(15)"/>
							<fo:table-column column-width="proportional-column-width(85)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-weight="bold" color="#5F9EA0" font-size="10pt"></fo:block>
									</fo:table-cell>
								</fo:table-row>							
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">Vehículo : 2</fo:block>
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
										<fo:block color="#000000" font-size="8pt">Marca y Modelo</fo:block>
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
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						

          <fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block color="#000000" font-size="10pt">
											<fo:leader leader-pattern="space" leader-length="30mm"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>  						
					</fo:block>	

					</xsl:if>	
					<fo:block space-before="4mm" font-size="12pt"></fo:block>									
					<fo:block space-before="3mm" font-size="12pt"></fo:block>
					<fo:block space-before="3mm" font-size="12pt"></fo:block>						
					
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
										después de esta fecha. Para este efecto, los antecedentes del caso se entregarán por escrito al Banco con la documentación de respaldo que corresponda.</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell text-align="justify" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #FFFFFF" border-bottom="0.25pt solid #FFFFFF" border-left="0.25pt solid #FFFFFF" border-right="0.25pt solid #FFFFFF" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt">
										Si como consecuencia de la presente declaración o del no cumplimiento de lo señalado precedentemente, el Banco de Crédito e Inversiones determina las obligaciones crediticias del Cliente en forma que no se ajustan a las normas legales vigentes y por este motivo quedase afecto a multas de cualquier naturaleza, el Cliente se obliga a indemnizar al Banco con todos los pagos que deba efectuar por tal razón, más intereses calculados según la tasa máxima convencional autorizada por la ley. Para este fin, el Banco queda autorizado para cursar los cargos necesarios en la cuenta corriente o para descontar las sumas correspondientes de cualquier acreencia a su favor.
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
								<xsl:when test="patrimonio/Patrimonio/sociedades != ''">
									<xsl:for-each select='patrimonio/Patrimonio/sociedades/Sociedad'>
									<xsl:variable name="soc"/>
										<xsl:if test="finesLucro = 'true'">
											<fo:table-row>
													<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
														<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
															<xsl:choose>
																<xsl:when test="nombre != ''">
																	<xsl:value-of select="$soc" /><xsl:value-of select="nombre"/>
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
																<xsl:when test="rut != 0">
																	<xsl:value-of select='format-number(rut, "#","rut")' />-<xsl:value-of select="dv"/>
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
																<xsl:when test="tipoRelacion != ''">
																	<xsl:value-of select="tipoRelacion"/>
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
																<xsl:when test="porcentajeParticipacion != 0">
																	<xsl:value-of select="porcentajeParticipacion"/>%
																</xsl:when>			
																<xsl:otherwise>							
																	<fo:leader leader-pattern="space" leader-length="1mm"/>	
																</xsl:otherwise>
															</xsl:choose>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
										</xsl:if>
									</xsl:for-each>
								</xsl:when>	
								
									<xsl:if test="patrimonio/Patrimonio/sociedades= ''">
										<fo:table-row>
												<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt  #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										<fo:table-row>
												<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt  #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										<fo:table-row>
												<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt  #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										<fo:table-row>
												<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt  #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
									</xsl:if>
								
								
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
								
								<xsl:when test="patrimonio/Patrimonio/sociedades != ''">
									<xsl:for-each select='patrimonio/Patrimonio/sociedades/Sociedad'>
									<xsl:variable name="soc" />
										<xsl:if test="finesLucro = 'false'">
											<fo:table-row>
													<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
														<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
															<xsl:choose>
																<xsl:when test="nombre != ''">
																	<xsl:value-of select="$soc" /><xsl:value-of select="nombre"/>
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
																<xsl:when test="rut != 0">
																	<xsl:value-of select='format-number(rut, "#","rut")' />-<xsl:value-of select="dv"/>
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
																<xsl:when test="tipoRelacion != ''">
																	<xsl:value-of select="tipoRelacion"/>
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
																<xsl:when test="porcentajeParticipacion != 0">
																	<xsl:value-of select="porcentajeParticipacion"/>%
																</xsl:when>			
																<xsl:otherwise>							
																	<fo:leader leader-pattern="space" leader-length="1mm"/>	
																</xsl:otherwise>
															</xsl:choose>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
										</xsl:if>
									</xsl:for-each>
								</xsl:when>		

									<xsl:if test="patrimonio/Patrimonio/sociedades= ''">
										<fo:table-row>
												<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										<fo:table-row>
												<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt  #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										<fo:table-row>
												<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt  #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										<fo:table-row>
												<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt  #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
													<fo:block color="#000000" font-size="8pt">
														<fo:leader leader-pattern="space" leader-length="1mm"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
									</xsl:if>								
							</fo:table-body>
						</fo:table>  
						
					</fo:block>						
						
					<fo:block space-before="1mm" font-size="12pt"></fo:block>
					<fo:block space-before="1mm" font-size="12pt"></fo:block>
					
					<fo:block>
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(60)"/>
							<fo:table-column column-width="proportional-column-width(40)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="9pt">4. OTROS BIENES (Acciones, Bonos, Depósitos a Plazo, etc.)</fo:block>
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
																
              <xsl:when test="patrimonio/Patrimonio/otrosBienes != ''">
								<xsl:for-each select='patrimonio/Patrimonio/otrosBienes/OtroBien'>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#FFFFFF">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
											<xsl:choose>
												<xsl:when test="descripcion != ''">
													<xsl:value-of select="descripcion"/>
												</xsl:when>			
												<xsl:otherwise>							
													<fo:leader leader-pattern="space" leader-length="1mm"/>	
												</xsl:otherwise>
											</xsl:choose>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block font-weight="bold" color="#000000" font-size="8pt" border-radius="10pt 10pt">
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
							</xsl:when>
								
							<xsl:if test="patrimonio/Patrimonio/otrosBienes = ''">
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>	
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>	
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>	
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid  #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>	
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid  #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>	
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid  #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>	
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="center" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" padding-top="1mm" padding-left="1mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#F0FFF0">
										<fo:block color="#000000" font-size="8pt">
											<fo:leader leader-pattern="space" leader-length="1mm"/>	
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</xsl:if>
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
											escrito y con la debida anticipación, todo hecho, acto o contrato que pueda disminuir o extinguir mis cauciones o el valor declarado de mis bienes o patrimonio. La infracción a lo contemplado en la predecente estipulación que tiene 
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
					
					<fo:block space-before="3mm" font-size="12pt"></fo:block>	

					<fo:block id="finPerfil"/>
					
	        </fo:flow>	  
		</fo:page-sequence>		
	</fo:root>
</xsl:template>
</xsl:stylesheet>	