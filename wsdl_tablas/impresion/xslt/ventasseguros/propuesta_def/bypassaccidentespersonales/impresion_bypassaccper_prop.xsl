<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">	
<!-- xsl:stylesheet xmlns:fox="http://xml.apache.org/fop/extensions" xmlns:print="http://www.jcatalog.com/com.jcatalog.output.xslextensions.print.PrintElementFactory" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:saxon="http://icl.com/saxon" extension-element-prefixes="saxon print"  -->
<xsl:variable name="IMAGEEXT">gif</xsl:variable>
<xsl:template match="DatosImpresionPropAccidentesPersonalesTO">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="paginaPrimera" page-height="287mm" page-width="200mm" margin-left="1mm" margin-right="1mm" margin-top="10mm" margin-bottom="1mm">
					<fo:region-body margin-top="0cm" margin-bottom="0cm"/>
					<fo:region-before region-name="regionEncabezadoPrimera" extent="0cm" precedence="true"/>
					<fo:region-after extent="0cm" precedence="true"/>
				</fo:simple-page-master>

				<fo:simple-page-master master-name="paginaResto" page-height="287mm" page-width="200mm" margin-left="1mm" margin-right="1mm" margin-top="10mm" margin-bottom="1mm">
					<fo:region-body margin-top="0.5cm" margin-bottom="0cm"/>					
					<fo:region-before region-name="regionEncabezadoResto" extent="0.5cm" precedence="true"/>
					<fo:region-after extent="0cm" precedence="true"/>
					<!--<fo:region-after region-name="regionPieResto" extent="1.5cm" precedence="true"/>-->
				</fo:simple-page-master>
				
				<fo:simple-page-master master-name="paginaMandato" page-height="287mm" page-width="200mm" margin-left="1mm" margin-right="1mm" margin-top="10mm" margin-bottom="1mm">
					<fo:region-body margin-top="0cm" margin-bottom="0cm"/>
					<fo:region-before extent="0cm" precedence="true"/>
					<fo:region-after extent="0cm" precedence="true"/>
				</fo:simple-page-master>
				
				<fo:page-sequence-master master-name="masterSequenceName1">
					<fo:repeatable-page-master-alternatives>
						<fo:conditional-page-master-reference master-reference="paginaPrimera" page-position="first"/>
						<fo:conditional-page-master-reference master-reference="paginaResto" page-position="rest"/>
					</fo:repeatable-page-master-alternatives>
				</fo:page-sequence-master>
				
			</fo:layout-master-set>
			
				<fo:page-sequence master-name="paginaPrincipal" master-reference="masterSequenceName1">
					<fo:static-content flow-name="regionEncabezadoResto">
						<fo:block  text-align="right" font-size="11pt">
							PROPUESTA DE SEGURO Nro 
								<xsl:value-of select="nroPropuesta"/>
							 (continuación)
							  - 
							 Página <fo:page-number/>
						</fo:block>
					</fo:static-content>
					
					
					<fo:flow flow-name="xsl-region-body" color="#006666" font-size="11pt" >
						<fo:block >
												
							
<fo:block padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(57)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block >
								<xsl:call-template name="temp_datos_logos_cabecera"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>


	<!-- DATOS EJECUTIVOS Y SUCURSAL -->
	<xsl:template name="temp_datos_ejecutivo">
		<fo:block span="none">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(10)"/>
					<fo:table-column column-width="proportional-column-width(90)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell display-align="before">
								<fo:block color="#006666">Sucursal</fo:block>
							</fo:table-cell>
							<fo:table-cell display-align="before">
								<fo:block color="#006666">
									<xsl:value-of disable-output-escaping="no" select="nombreSucursal"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>

						<fo:table-row>
							<fo:table-cell display-align="before" >
								<fo:block color="#006666">Ejecutivo	</fo:block>
							</fo:table-cell>
							<fo:table-cell display-align="before">
								<fo:block color="#006666">
									<xsl:value-of disable-output-escaping="no" select="nombreEjecutivo"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell/>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_tituloPrincipal">
		<fo:block padding-before="2pt">
			<!-- GENERATE TABLE START-->
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#000000"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell padding="2.0pt" text-align="start" border-style="solid" display-align="before" border-width="1.0pt" border-color="#000000" background-color="#336699" >
						<fo:block text-align="center" color="#FFFFFF" font-size="12.0pt" font-weight="bold">
							<xsl:text>PROPUESTA DE SEGURO Nro </xsl:text><xsl:value-of disable-output-escaping="no" select="nroPropuesta"/> <xsl:text> - </xsl:text> <xsl:value-of disable-output-escaping="no" select="descripcionProducto"/>
						</fo:block>
					</fo:table-cell>
			</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	

	<xsl:template name="temp_Contratante">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>CONTRATANTE</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
		<xsl:template name="temp_datosContrante">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="2pt">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text disable-output-escaping="no">RUT</xsl:text>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="rutContratante"/>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Nombres</xsl:text>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="nombresContratante"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text disable-output-escaping="no">Apellido Paterno</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="APContratante"/>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text disable-output-escaping="no">Apellido Materno</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="AMContratante"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>						
						
					<fo:table-row>						
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Direccion Postal</xsl:text>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="direccionPostalContratante"/>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Ciudad Postal</xsl:text>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="ciudadPostalContratante"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>					

					<fo:table-row>						
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Comuna Postal</xsl:text>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="comunaPostalContratante"/>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Telefono</xsl:text>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="telefonoContratante"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>					
					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_tituloMateriaAsegurada">
		<!-- GENERATE TABLE START-->
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" padding-before="2pt">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>MATERIA ASEGURADA PARA EL RAMO ACCIDENTES PERSONALES</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_AseguradoTitular">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>ASEGURADO</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>


	<xsl:template name="datos_AseguradoTitular">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="rutAseguradoTitular"/>
						</fo:block>
					</fo:table-cell>
					
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="nombresAseguradoTitular"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Paterno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="APAseguradoTitular"/>
						</fo:block>
					</fo:table-cell>
					
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="AMAseguradoTitular"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Fecha de Nacimiento</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="fechaNacimientoAseguradoTitular"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Sexo</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="sexoAseguradoTitular"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Direccion</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="direccionPostalAseguradoTitular"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Comuna</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="comunaPostalAseguradoTitular"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Ciudad</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="ciudadPostalAseguradoTitular"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Telefono</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="telefonoAseguradoTitular"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	

<!-- Beneficiario Numero 1 -->
	<xsl:template name="temp_CabBeneficiarioNro_1">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
				<xsl:if test="( parentescoBeneficiario1 != '' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>BENEFICIARIO NRO 1</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>	
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
<!-- Beneficiario Numero 1 -->
	<xsl:template name="temp_DatosBeneficiarioNro_1">
	<fo:block span="none">
			<fo:table table-layout="fixed"  width="100%" padding-before="2pt">
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
			<xsl:if test="( parentescoBeneficiario1 != '' )"> 
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="rutBeneficiario1"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="nombreBeneficiario1"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>					
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Paterno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="ApellidoPaternoBeneficiario1"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="ApellidoMaternoBeneficiario1"/>
						</fo:block>
					</fo:table-cell>
					
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Fecha de Nacimiento</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="fechaNacimientoBeneficiario1"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Parentesco</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="parentescoBeneficiario1"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>	
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>% de Participación</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="porcentajeBeneficiario1"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</xsl:if>				
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

<!-- Beneficiario Numero 2 -->
	<xsl:template name="temp_CabBeneficiarioNro_2">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
				<xsl:if test="( parentescoBeneficiario2 != '' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>BENEFICIARIO NRO 2</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>	
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>	
<!-- Beneficiario Numero 2 -->
	<xsl:template name="temp_DatosBeneficiarioNro_2">
	<fo:block span="none">
			<fo:table table-layout="fixed"  width="100%" padding-before="2pt">
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
			<xsl:if test="( parentescoBeneficiario2 != '' )"> 
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="rutBeneficiario2"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="nombreBeneficiario2"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>					
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Paterno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="ApellidoPaternoBeneficiario2"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="ApellidoMaternoBeneficiario2"/>
						</fo:block>
					</fo:table-cell>
					
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Fecha de Nacimiento</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="fechaNacimientoBeneficiario2"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Parentesco</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="parentescoBeneficiario2"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>	
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>% de Participación</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="porcentajeBeneficiario2"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</xsl:if>				
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

<!-- Beneficiario Numero 3 -->
	<xsl:template name="temp_CabBeneficiarioNro_3">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
				<xsl:if test="( parentescoBeneficiario3 != '' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>BENEFICIARIO NRO 3</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>	
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>	
<!-- Beneficiario Numero 3 -->
	<xsl:template name="temp_DatosBeneficiarioNro_3">
	<fo:block span="none">
			<fo:table table-layout="fixed"  width="100%" padding-before="2pt">
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
			<xsl:if test="( parentescoBeneficiario3 != '' )"> 
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="rutBeneficiario3"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="nombreBeneficiario3"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>					
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Paterno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="ApellidoPaternoBeneficiario3"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="ApellidoMaternoBeneficiario3"/>
						</fo:block>
					</fo:table-cell>
					
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Fecha de Nacimiento</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="fechaNacimientoBeneficiario3"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Parentesco</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="parentescoBeneficiario3"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>	
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>% de Participación</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="porcentajeBeneficiario3"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</xsl:if>				
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

<!-- Beneficiario Numero 4 -->
	<xsl:template name="temp_CabBeneficiarioNro_4">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
				<xsl:if test="( parentescoBeneficiario4 != '' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>BENEFICIARIO NRO 4</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>	
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>	
<!-- Beneficiario Numero 4 -->
	<xsl:template name="temp_DatosBeneficiarioNro_4">
	<fo:block span="none">
			<fo:table table-layout="fixed"  width="100%" padding-before="2pt">
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
			<xsl:if test="( parentescoBeneficiario4 != '' )"> 
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="rutBeneficiario4"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="nombreBeneficiario4"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>					
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Paterno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="ApellidoPaternoBeneficiario4"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="ApellidoMaternoBeneficiario4"/>
						</fo:block>
					</fo:table-cell>
					
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Fecha de Nacimiento</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="fechaNacimientoBeneficiario4"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Parentesco</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="parentescoBeneficiario4"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>	
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>% de Participación</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="porcentajeBeneficiario4"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</xsl:if>				
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

<!-- Beneficiario Numero 5 -->
	<xsl:template name="temp_CabBeneficiarioNro_5">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
				<xsl:if test="( parentescoBeneficiario5 != '' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>BENEFICIARIO NRO 5</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>	
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>	
<!-- Beneficiario Numero 5 -->
	<xsl:template name="temp_DatosBeneficiarioNro_5">
	<fo:block span="none">
			<fo:table table-layout="fixed"  width="100%" padding-before="2pt">
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
			<xsl:if test="( parentescoBeneficiario5 != '' )"> 
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="rutBeneficiario5"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="nombreBeneficiario5"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>					
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Paterno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="ApellidoPaternoBeneficiario5"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="ApellidoMaternoBeneficiario5"/>
						</fo:block>
					</fo:table-cell>
					
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Fecha de Nacimiento</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="fechaNacimientoBeneficiario5"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Parentesco</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="parentescoBeneficiario5"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>	
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>% de Participación</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="porcentajeBeneficiario5"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</xsl:if>				
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
<!-- Beneficiario Numero 6 -->
	<xsl:template name="temp_CabBeneficiarioNro_6">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
				<xsl:if test="( parentescoBeneficiario6 != '' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>BENEFICIARIO NRO 6</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>	
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>	
<!-- Beneficiario Numero 6 -->
	<xsl:template name="temp_DatosBeneficiarioNro_6">
	<fo:block span="none">
			<fo:table table-layout="fixed"  width="100%" padding-before="2pt">
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
			<xsl:if test="( parentescoBeneficiario6 != '' )"> 
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="rutBeneficiario6"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="nombreBeneficiario6"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>					
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Paterno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="ApellidoPaternoBeneficiario6"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="ApellidoMaternoBeneficiario6"/>
						</fo:block>
					</fo:table-cell>
					
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Fecha de Nacimiento</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="fechaNacimientoBeneficiario6"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Parentesco</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="parentescoBeneficiario6"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>	
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>% de Participación</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="porcentajeBeneficiario6"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</xsl:if>				
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

<!-- Beneficiario Numero 7 -->
	<xsl:template name="temp_CabBeneficiarioNro_7">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
				<xsl:if test="( parentescoBeneficiario7 != '' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>BENEFICIARIO NRO 7</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>	
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>	
<!-- Beneficiario Numero 7 -->
	<xsl:template name="temp_DatosBeneficiarioNro_7">
	<fo:block span="none">
			<fo:table table-layout="fixed"  width="100%" padding-before="2pt">
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
			<xsl:if test="( parentescoBeneficiario7 != '' )"> 
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="rutBeneficiario7"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="nombreBeneficiario7"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>					
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Paterno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="ApellidoPaternoBeneficiario7"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="ApellidoMaternoBeneficiario7"/>
						</fo:block>
					</fo:table-cell>
					
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Fecha de Nacimiento</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="fechaNacimientoBeneficiario7"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Parentesco</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="parentescoBeneficiario7"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>	
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>% de Participación</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="porcentajeBeneficiario7"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</xsl:if>				
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

<!-- Beneficiario Numero 8 -->
	<xsl:template name="temp_CabBeneficiarioNro_8">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
				<xsl:if test="( parentescoBeneficiario8 != '' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>BENEFICIARIO NRO 8</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>	
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>	
<!-- Beneficiario Numero 8 -->
	<xsl:template name="temp_DatosBeneficiarioNro_8">
	<fo:block span="none">
			<fo:table table-layout="fixed"  width="100%" padding-before="2pt">
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
			<xsl:if test="( parentescoBeneficiario8 != '' )"> 
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="rutBeneficiario8"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="nombreBeneficiario8"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>					
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Paterno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="ApellidoPaternoBeneficiario8"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="ApellidoMaternoBeneficiario8"/>
						</fo:block>
					</fo:table-cell>
					
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Fecha de Nacimiento</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="fechaNacimientoBeneficiario8"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Parentesco</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="parentescoBeneficiario8"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>	
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>% de Participación</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="porcentajeBeneficiario8"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</xsl:if>				
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

<!-- Beneficiario Numero 9 -->
	<xsl:template name="temp_CabBeneficiarioNro_9">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
				<xsl:if test="( parentescoBeneficiario9 != '' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>BENEFICIARIO NRO 9</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>	
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>	
<!-- Beneficiario Numero 9 -->
	<xsl:template name="temp_DatosBeneficiarioNro_9">
	<fo:block span="none">
			<fo:table table-layout="fixed"  width="100%" padding-before="2pt">
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
			<xsl:if test="( parentescoBeneficiario9 != '' )"> 
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="rutBeneficiario9"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="nombreBeneficiario9"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>					
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Paterno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="ApellidoPaternoBeneficiario9"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="ApellidoMaternoBeneficiario9"/>
						</fo:block>
					</fo:table-cell>
					
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Fecha de Nacimiento</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="fechaNacimientoBeneficiario9"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Parentesco</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="parentescoBeneficiario9"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>	
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>% de Participación</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="porcentajeBeneficiario9"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</xsl:if>				
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

<!-- Beneficiario Numero 10 -->
	<xsl:template name="temp_CabBeneficiarioNro_10">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
				<xsl:if test="( parentescoBeneficiario10 != '' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>BENEFICIARIO NRO 10</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>	
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>	
<!-- Beneficiario Numero 10 -->
	<xsl:template name="temp_DatosBeneficiarioNro_10">
	<fo:block span="none">
			<fo:table table-layout="fixed"  width="100%" padding-before="2pt">
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
			<xsl:if test="( parentescoBeneficiario10 != '' )"> 
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="rutBeneficiario10"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="nombreBeneficiario10"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>					
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Paterno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="ApellidoPaternoBeneficiario10"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="ApellidoMaternoBeneficiario10"/>
						</fo:block>
					</fo:table-cell>
					
				</fo:table-row>
				
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Fecha de Nacimiento</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="fechaNacimientoBeneficiario10"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Parentesco</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="parentescoBeneficiario10"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>	
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>% de Participación</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="porcentajeBeneficiario10"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</xsl:if>				
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

<!-- Fin Inicio Datos Asegurados Asociados-->


<!-- **************************************************** INICIO PRIMAS	***************************** -->
	<xsl:template name="temp_tituloPrimas">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>PRIMAS</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_datosPrimas">
			<!-- GENERATE TABLE START-->
			<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(5)"/>
			<fo:table-column column-width="proportional-column-width(30)"/>
			<fo:table-column column-width="proportional-column-width(15)"/>
			<fo:table-column column-width="proportional-column-width(20)"/>
			<fo:table-column column-width="proportional-column-width(20)"/>
			<fo:table-body>
			
			<fo:table-row>
				<fo:table-cell text-align="start" display-align="before">
					<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
						<xsl:text>Plan</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="start" display-align="before">
					<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="11.0pt" background-color="#f0f0f0" >
						<xsl:text>Descripción</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="start" display-align="before">
					<fo:block white-space-collapse="true"  text-align="center" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
						<xsl:text>Monto</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="start" display-align="before">
					<fo:block white-space-collapse="true"  text-align="center" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
						<xsl:text>Prima Bruta</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="start" display-align="before">
					<fo:block white-space-collapse="true"  text-align="center" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
						<xsl:text>Prima Bruta</xsl:text>
					</fo:block>
				</fo:table-cell>
			</fo:table-row>

			<fo:table-row>
				<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
					<fo:block color="#006666">
						<xsl:text></xsl:text>
					</fo:block>
				</fo:table-cell>
				
				<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
					<fo:block color="#006666">
						<xsl:text></xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="start" display-align="before">
					<fo:block white-space-collapse="true"  text-align="center" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
						<xsl:text>Asegurado UF</xsl:text>
					</fo:block>
				</fo:table-cell>
				
				<fo:table-cell text-align="start" display-align="before">
					<fo:block white-space-collapse="true"  text-align="center" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
						<xsl:text>Anual UF</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="start" display-align="before">
					<fo:block white-space-collapse="true"  text-align="center" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
						<xsl:text>Mensual UF</xsl:text>
					</fo:block>
				</fo:table-cell>
				
			</fo:table-row>

			<xsl:for-each select="planesCobertura/plan">
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="planElegido"/>
							</fo:block>
						</fo:table-cell>
				
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="descripcion"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="center" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="mtoAsegurado"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="center" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="brutaAnual"/>
							</fo:block>
						</fo:table-cell>
	
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="center" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="brutaMensual"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="right" color="#006666" font-size="11.0pt">
								<xsl:text>&#0160;</xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="right" color="#006666" font-size="11.0pt">
								<xsl:text>&#0160;</xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="right" color="#006666" font-size="11.0pt">
								<xsl:text>&#0160;</xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="right" color="#006666" font-size="11.0pt">
								<xsl:text>&#0160;</xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="right" color="#006666" font-size="11.0pt">
								<xsl:text>&#0160;</xsl:text>
							</fo:block>
						</fo:table-cell>
						
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="x"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="left" color="#006666" font-size="11.0pt">
								<xsl:text>Prima Exenta</xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="center" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
								<xsl:text></xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="right" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="x"/>
							</fo:block>
						</fo:table-cell>


						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="center" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="exenta"/>
							</fo:block>
						</fo:table-cell>


						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="center" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
								<xsl:text></xsl:text>
							</fo:block>
						</fo:table-cell>
						
					</fo:table-row>
	

					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="x"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="left" color="#006666" font-size="11.0pt">
								<xsl:text>Prima&#0160;&#0160;Afecta</xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="right" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="x"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="right" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="x"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="center" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="afecta"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="x"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="x"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="left" color="#006666" font-size="11.0pt">
								<xsl:text>Iva&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;</xsl:text>
							</fo:block>
						</fo:table-cell>


						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="x"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="right" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="x"/>
							</fo:block>
						</fo:table-cell>


						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="center" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="iva"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="x"/>
							</fo:block>
						</fo:table-cell>

					</fo:table-row>

					
					
			</xsl:for-each>
		</fo:table-body>
		</fo:table>
		</fo:block>
	</xsl:template>
<!-- **************************************************** FIN PRIMAS	***************************** -->


<!-- **************************************************** INICIO COBERTURAS ***************************** -->
	<xsl:template name="temp_tituloCoberturas">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>COBERTURAS</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>


	<xsl:template name="temp_datosCoberturas">	
		<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
				<fo:table-body>
					<xsl:if test="( coberturaDetalle/cobertura != '' )">
						<xsl:for-each select="coberturaDetalle/cobertura">
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="nombreCobertura"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</xsl:for-each>
					</xsl:if>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>


<!-- **************************************************** PARA COBERTURAS DE CADA PLAN ***************************** -->
<xsl:if test="( codigoProducto = 'BCIAPET' )">
		<fo:block padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(57)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block >
								<xsl:call-template name="temp_cabecera_cobertura_BCIAPET"/>
								<xsl:call-template name="temp_texto_cobertura_BCIAPET"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
</xsl:if>
<!-- **************************************************** INICIO COBERTURAS ***************************** -->

<!-- **************************************************** INICIO VIGENCIA DEL SEGURO	***************************** -->
	
	<xsl:template name="temp_datosVigencia">
		<fo:block padding-before="2pt">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(24)"/>
						<fo:table-column column-width="proportional-column-width(76)"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="#dedede" padding-left="5pt">
									<fo:block font-weight="bold" color="#000066" font-size="12pt">
										<xsl:text>Vigencia del seguro</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="#f0f0f0" padding-left="5pt" padding-right="5pt">
									<fo:block>
										Desde 00:01 del dia <xsl:value-of select="fechaPropuesta"/>.    Hasta las 24:00 del dia <xsl:value-of select="fechaFinPropuesta"/>.
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
	</xsl:template>	
<!-- **************************************************** FIN VIGENCIA DEL SEGURO	***************************** -->


<!-- **************************************************** INICIO RESPONSABLE DE PAGO	***************************** -->
<xsl:template name="temp_tituloResponsablePago">
		<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>RESPONSABLE DE PAGO</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_datosResponsablePago">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" padding-before="2pt">
				<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Rut</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="rutResponsablePago"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Nombre</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="nombresResponsablePago"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Apellido Paterno</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="APResponsablePago"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Apellido Materno</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="AMResponsablePago"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Dirección</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
								<xsl:value-of disable-output-escaping="no" select="direccionPostalResponsablePago"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Comuna</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
								<xsl:value-of disable-output-escaping="no" select="comunaPostalResponsablePago"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Ciudad</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
								<xsl:value-of disable-output-escaping="no" select="ciudadPostalResponsablePago"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
<!-- **************************************************** FIN RESPONSABLE DE PAGO ***************************** -->	

<!-- **************************************************** INICIO PRIMER PAGO ***************************** -->
	<xsl:template name="temp_tituloPrimerPago">
		<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
				<xsl:if test="( tienePrimer = 'S' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>Primer Pago:</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>	
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>


<xsl:template name="temp_datosPrimerPago">
		<fo:block span="none" padding-before="2pt">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				
				<fo:table-body>
				<xsl:if test="( tienePrimer = 'S' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Forma de Pago</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="formaPagoPrimer"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Fecha :</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="fechaHoy"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
				<xsl:if test="( codigoFormaPagoPrimer = '2' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
									<xsl:value-of disable-output-escaping="no" select="descripcionDocumentoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
									<xsl:value-of disable-output-escaping="no" select="nroDocumentoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</xsl:if>
				<xsl:if test="( codigoFormaPagoPrimer = '3' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
									<xsl:text>Banco :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
									<xsl:value-of disable-output-escaping="no" select="bancoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
									<xsl:value-of disable-output-escaping="no" select="descripcionDocumentoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
									<xsl:value-of disable-output-escaping="no" select="nroDocumentoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</xsl:if>	
				
				<xsl:if test="( codigoFormaPagoPrimer = '4' )"> 	
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
									<xsl:text>N° de Tarjeta :</xsl:text>
								</fo:block>
							</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
								<xsl:value-of disable-output-escaping="no" select="nroDocumentoPrimerPago"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>			
					
					
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Valor :</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="valorPrimerPagoUF"/><xsl:text> UF</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Valor(Pesos) :</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>$ </xsl:text><xsl:value-of disable-output-escaping="no" select="valorPrimerPagoPesos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

				</xsl:if> 
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
<!-- **************************************************** FIN PRIMER PAGO ***************************** -->	

<!-- **************************************************** INICIO FUTUROS PAGOS ***************************** -->

<xsl:template name="temp_tituloFuturosPagos">
		<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
				<xsl:if test="( tieneFuturos = 'S' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>Siguientes Pagos:</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>	
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

		<xsl:template name="temp_datosFuturosPagos">
		<fo:block span="none" padding-before="2pt">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				
				<fo:table-body>
				<xsl:if test="( tieneFuturos = 'S' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Forma de Pago</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="formaPagoFuturos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
				<xsl:if test="( codigoFormaPagoFuturos = '3' )"> 	
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Banco :</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="bancoFuturosPagos"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="descripcionDocumentoFuturosPagos"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
								<xsl:value-of disable-output-escaping="no" select="nroDocumentoFuturosPagos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>
				
				<xsl:if test="( codigoFormaPagoFuturos = '4' )"> 	
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="descripcionDocumentoFuturosPagos"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
								<xsl:value-of disable-output-escaping="no" select="nroDocumentoFuturosPagos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>
				
				
				<xsl:if test="( codigoFormaPagoFuturos = '5' )"> 	
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Banco :</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="bancoFuturosPagos"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="descripcionDocumentoFuturosPagos"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
								<xsl:value-of disable-output-escaping="no" select="nroDocumentoFuturosPagos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>				
				
				<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Dia de Pago :</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
								<xsl:value-of disable-output-escaping="no" select="diasPago"/>
							</fo:block>
						</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Cant.cuotas restantes :</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
								<xsl:value-of disable-output-escaping="no" select="cantidadCuotas"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Valor Cuota :</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
								<xsl:value-of disable-output-escaping="no" select="valorFuturosPagos"/><xsl:text> UF</xsl:text>
							</fo:block>
						</fo:table-cell>
				</fo:table-row>

					
				</xsl:if> 
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<!-- **************************************************** FIN FUTUROS PAGOS ***************************** -->
	
		<xsl:if test="( codigoProducto = 'BCIAPE' )">
			<xsl:template name="temp_tituloFactura">
				<fo:block span="none" padding-before="2pt">
					<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
									<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
										<xsl:text>FACTURA (SOLO SI ES CONTRIBUYENTE DE IVA)</xsl:text>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
			</xsl:template>
			
			<xsl:template name="temp_datosFactura">
				<fo:block span="none" padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
						<fo:table-column column-width="proportional-column-width(25)"/>
						<fo:table-column column-width="proportional-column-width(25)"/>
						<fo:table-column column-width="proportional-column-width(25)"/>
						
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
										<xsl:text>Envío de Factura</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
										<xsl:value-of disable-output-escaping="no" select="envioFactura"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
										<xsl:text>Dirección</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
										<xsl:value-of disable-output-escaping="no" select="direccionFactura"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" number-columns-spanned="4">
					<xsl:text>En caso afirmativo, el responsable del pago identificado anteriormente declara ser contribuyente de IVA.</xsl:text>
				</fo:block>
			</xsl:template>
		</xsl:if>	
	
	
	
	
		
	
	<!--  **************************************** INICIO CONDICIONES POR CADA PLAN *********************************** -->
	
		<xsl:if test="( codigoProducto = 'BCIAPE' )">
			<fo:block padding-before="2pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="temp_tituloCondiciones_BCIAPE"/>
									<xsl:call-template name="temp_datosCondiciones_BCIAPE"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</xsl:if>
	
		<xsl:if test="( codigoProducto = 'BCIAPET' )">
			<fo:block padding-before="2pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="temp_tituloCondiciones_BCIAPET"/>
									<xsl:call-template name="temp_datosCondiciones_BCIAPET"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</xsl:if>

	<!--  **************************************** FIN CONDICIONES POR CADA PLAN *********************************** -->
			<fo:block padding-before="2pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="temp_tituloInformacion"/>
									<xsl:call-template name="temp_datosInformacion"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>


<xsl:template name="temp_firmas">
	<fo:table table-layout="fixed" width="100%" padding-before="10pt">
		<fo:table-column column-width="proportional-column-width(16)"/>
		<fo:table-column column-width="proportional-column-width(4)"/>
		<fo:table-column column-width="proportional-column-width(24)"/>
		<fo:table-column column-width="proportional-column-width(4)"/>
		<fo:table-column column-width="proportional-column-width(24)"/>
		<fo:table-column column-width="proportional-column-width(4)"/>
		<fo:table-column column-width="proportional-column-width(24)"/>
		<fo:table-body>
			<fo:table-row keep-with-next="always">
				<fo:table-cell text-align="center" display-align="center">
					<fo:block><xsl:value-of select="fechaHoy"/></fo:block>
				</fo:table-cell>
				<fo:table-cell  text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
				<fo:table-cell  text-align="center" display-align="center">
					<fo:block></fo:block>
				</fo:table-cell>
				<fo:table-cell  text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
				<fo:table-cell  text-align="center" display-align="center">
					<fo:block>
							<fo:external-graphic scaling="uniform" height="50pt" width="90pt"> 
								<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/firmas/FIR_COR2.gif')</xsl:attribute> 
						</fo:external-graphic>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell  text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
				<fo:table-cell  text-align="center" display-align="center">
					<fo:block>
							<fo:external-graphic scaling="uniform" height="50pt" width="90pt"> 
								<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/firmas/fir_axa.gif')</xsl:attribute> 
						</fo:external-graphic>
					</fo:block>
				</fo:table-cell>
			</fo:table-row>
			<fo:table-row keep-with-next="always">
				<fo:table-cell padding-before="4pt" border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
					<fo:block><xsl:text>Fecha</xsl:text></fo:block>
				</fo:table-cell>
				<fo:table-cell padding-before="4pt" text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
				<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
					<fo:block><xsl:text>Contratante</xsl:text></fo:block>
				</fo:table-cell>
				<fo:table-cell padding-before="4pt" text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
				<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
					<fo:block>
						<xsl:text>Corredor</xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell padding-before="4pt" text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
				<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
					<fo:block>
						<xsl:text>Compañia</xsl:text>
					</fo:block>
				</fo:table-cell>
			</fo:table-row>
		</fo:table-body>
	</fo:table>
</xsl:template>


	<xsl:if test="( codigoFormaPagoFuturos = '3' )"> 
	
		<fo:block padding-before="2pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="temp_da_salto_pag"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
		</fo:block>
		<fo:block padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(57)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block >
								<xsl:call-template name="temp_datos_logos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>		
		<fo:block padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(57)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block >
								<xsl:call-template name="temp_mandatos_pac"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:if>	
	
	<xsl:if test="( codigoFormaPagoFuturos = '5' )"> 
	
		<fo:block padding-before="2pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="temp_da_salto_pag"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
		</fo:block>
		<fo:block padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(57)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block >
								<xsl:call-template name="temp_datos_logos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>		
		<fo:block padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(57)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block >
								<xsl:call-template name="temp_mandatos_pac"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:if>	
	
	<xsl:if test="( codigoFormaPagoFuturos = '4' )"> 
	
			<fo:block padding-before="28pt">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(57)"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block >
										<xsl:call-template name="temp_da_salto_pag"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
			</fo:block>
			
			<fo:block padding-before="2pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="temp_datos_logos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		
			
			<fo:block padding-before="28pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="temp_mandatos_pat"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
	</xsl:if>		
	
	<xsl:if test="( codigoFormaPagoFuturos = '6' )"> 
	
		<fo:block padding-before="28pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="temp_da_salto_pag"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
		</fo:block>
		
		<fo:block padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(57)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block >
								<xsl:call-template name="temp_datos_logos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	
		
		<fo:block padding-before="28pt">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(57)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block >
								<xsl:call-template name="temp_mandatos_planilla"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:if>						

	<xsl:if test="( codigoFormaPagoFuturos = '7' )"> 
	
			<fo:block padding-before="28pt">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(57)"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block >
										<xsl:call-template name="temp_da_salto_pag"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
			</fo:block>
			
			<fo:block padding-before="2pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="temp_datos_logos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		
			
			<fo:block padding-before="28pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="temp_mandatos_pat"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
	</xsl:if>		
	

<fo:block id="last-page"/>

</fo:block>
</fo:flow>
</fo:page-sequence>
</fo:root>
</xsl:template>	

<!-- ********************************************************************************************************************************* -->
<!-- *********************************************** FIN DE LO QUE SALE EN LA IMPRESION*********************************************** -->
<!-- ********************************************************************************************************************************* -->


	<xsl:template name="temp_da_salto_pag">
		<fo:block break-before="page"></fo:block>
	</xsl:template>
	

<xsl:template name="temp_mandatos_pac">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000">
						<fo:block>
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#336699">
											<fo:block text-align="center" font-size="10pt" font-weight="bold" color="#ffffff">AUTORIZACION DE DESCUENTO CUENTA CORRIENTE (PAC)</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:block padding-before="2pt">
							</fo:block>
							<fo:table table-layout="fixed" width="100%" border-style="solid" border-width="1.0pt" border-color="#000000">
								<fo:table-column column-width="proportional-column-width(22)" background-color="#f0f0f0"/>
								<fo:table-column column-width="proportional-column-width(22)" background-color="#ffffff"/>
								<fo:table-column column-width="proportional-column-width(15)" background-color="#f0f0f0"/>
								<fo:table-column column-width="proportional-column-width(41)" background-color="#ffffff"/>
								<fo:table-body>
									<!-- SECCION IDENTIFICACION DEL CLIENTE -->
									<fo:table-row>
										<fo:table-cell number-columns-spanned="4" display-align="center" background-color="#dedede" padding-left="5pt" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block font-weight="bold" color="#000066" font-size="10pt">
												<fo:inline>IDENTIFICACION DEL TITULAR CUENTA CORRIENTE</fo:inline>
												<fo:inline font-style="italic">(Responsable de Pago)</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Nombre</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" number-columns-spanned="3" background-color="#ffffff" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:value-of disable-output-escaping="no" select="nombresResponsablePago"/>
												<xsl:text> </xsl:text>
												<xsl:value-of disable-output-escaping="no" select="APResponsablePago"/>
												<xsl:text> </xsl:text>
												<xsl:value-of disable-output-escaping="no" select="AMResponsablePago"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>RUT</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:value-of disable-output-escaping="no" select="rutResponsablePago"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Banco</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:value-of disable-output-escaping="no" select="bancoFuturosPagos"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Nº Cta. Corriente</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:value-of disable-output-escaping="no" select="nroDocumentoFuturosPagos"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Sucursal</xsl:text>
											</fo:block>
										</fo:table-cell>
									<xsl:if test="( codigoFormaPagoFuturos = '3' )"> 	
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:value-of disable-output-escaping="no" select="nombreSucursal"/>
											</fo:block>
										</fo:table-cell>
									</xsl:if>
									</fo:table-row>
									<!-- SECCION COMPAÑIA -->
									<fo:table-row>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Propuesta N°</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:value-of disable-output-escaping="no" select="nroPropuesta"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Compañía</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:text>BCI Seguros Vida S.A.</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<!-- SECCION TEXTO DEL MANDATO -->
									<fo:table-row>
										<fo:table-cell number-columns-spanned="4" display-align="center" background-color="#dedede" padding-left="5pt" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block font-weight="bold" color="#000066" font-size="10pt">
												<fo:inline>MANDATO</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell number-columns-spanned="4" display-align="center" text-align="justify" border-style="solid"  border-width="1.0pt" color="#006666" font-size="11pt" padding-left="5pt" padding-right="5pt" border-color="#000000" background-color="#f0f0f0">

													<fo:block padding-before="3pt">1. Autorizo al Banco antes indicado a pagar, con cargo a mi cuenta corriente, los valores  involucrados en cada una de la(s) póliza(s) y endoso(s) que BCI Seguros Generales S.A. y/o BCI Seguros Vida S.A., en adelante, BCI Seguros, presente a cobro.</fo:block>
													<fo:block padding-before="3pt">2. BCI Seguros enviará al Banco periódicamente, de acuerdo a lo estipulado con la Compañía, la información  para el pago correspondiente.</fo:block>
													<fo:block padding-before="3pt">3. Asumo el compromiso de mantener en mi Cuenta Corriente indicada precedentemente, incluida Línea de  Crédito, si la hubiere, los fondos necesarios para cubrir los cargos que se hagan en virtud del presente instrumento, liberando al Banco de toda responsabilidad si ello no ocurriera.</fo:block>
													<fo:block padding-before="3pt">4. El abono deberá hacerse en favor de BCI Seguros, el día establecido en el contrato, con cargo a mi cuenta corriente antes indicada. En la eventualidad que el día de cargo corresponda a sábado, domingo o festivo, el cargo se efectuará el día hábil bancario anterior  o posterior, según sea el modo de operación del Banco. Este cargo en mi Cuenta Corriente se regirá por las condiciones generales de uso del servicio del Banco, los cuales declaro conocer y aceptar.</fo:block>
													<fo:block padding-before="3pt">5. Si en el día establecido para efectuar el cargo en cuenta corriente no hubiere fondos disponibles o éstos no fueren suficientes, el Banco podrá reintentar cargos o cobros posteriores cuantas veces sea necesario. A mayor abundamiento, la presente autorización de cargo en mi cuenta corriente se entenderá, para todos los efectos legales, dada el mismo día en que ésta se lleve a efecto.</fo:block>
													<fo:block padding-before="3pt">6. En el evento que se  produzca el cierre de la Cuenta Corriente del mandante, por cualquier motivo que ello ocurra o que  BCI  Seguros cancele el Convenio de Cargo  en  Cuenta  Corriente o, el Banco  cancele dicho Convenio con BCI Seguros, este  instrumento dejará  de tener efecto y obligará al mandante a realizar los pagos convenidos directamente en BCI Seguros. Si este mandato es revocado  por  el  mandante,  éste  deberá  notificar  por  escrito  su  decisión a BCI Seguros,  con  copia al Banco, con a lo menos un mes de anticipación a la fecha en que se desee poner término.</fo:block>
													<fo:block padding-before="3pt">7. El presente mandato dejará de tener vigencia en forma automática en caso de término del convenio de   recaudación  entre el Banco con BCI Seguros.</fo:block>
													<fo:block padding-before="3pt">8. Toda referencia del presente mandato a las cuentas corrientes se entenderá formulada respecto de otras cuentas que el mandante indique.</fo:block>
													<fo:block padding-before="3pt">9. El presente mandato entrará en vigor en forma indefinida desde la fecha de recepción en BCI Seguros  y hasta que se produzcan las situaciones descritas en el punto 6 anterior.</fo:block>
													<fo:block padding-before="3pt">10. "El presente mandato afecta al conjunto de pólizas y renovaciones celebradas con la compañía durante la vigencia de éste; y autoriza a que las primas  de dichas pólizas se paguen mediante la modalidad PAC, es decir, Autorización de Descuento en Cuenta Corriente Bancaria. El monto de  la prima, su forma y modalidad de pago, se encuentran insertas en las condiciones particulares de cada póliza". (Circular S.V.S. Nro.  1.499 del 15.09.2000)</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:block padding-before="20pt" text-align="center">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(1)"/>
									<fo:table-column column-width="8cm"/>
									<fo:table-column column-width="proportional-column-width(1)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell height="20pt" column-number="2" border-bottom-style="solid" border-bottom-width="1.0pt" border-bottom-color="#000000">
												<fo:block>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell column-number="2"  text-align="center" display-align="center" padding-before="4pt">
												<fo:block white-space-collapse="true" color="#006666" font-size="11.0pt">
												Firma del Titular de la Cuenta Corriente</fo:block>
												<fo:block white-space-collapse="true" color="#006666" font-size="11.0pt">
													En <xsl:value-of disable-output-escaping="no" select="nombreSucursal"/>
													 a <xsl:value-of disable-output-escaping="no" select="diaHoy"/>
													 de <xsl:value-of disable-output-escaping="no" select="mesHoy"/> 
													 de <xsl:value-of disable-output-escaping="no" select="anoHoy"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>



	<xsl:template name="temp_mandatos_pat">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000">
						<fo:block>
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#336699">
											<fo:block text-align="center" font-size="12pt" font-weight="bold" color="#ffffff">AUTORIZACION DE DESCUENTO EN TARJETAS DE CRÉDITO (PAT)</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:block padding-before="10pt">
							</fo:block>
							<fo:table table-layout="fixed" width="100%" border-style="solid" border-width="1.0pt" border-color="#000000">
								<fo:table-column column-width="proportional-column-width(18)" background-color="#f0f0f0"/>
								<fo:table-column column-width="proportional-column-width(20)" background-color="#ffffff"/>
								<fo:table-column column-width="proportional-column-width(21)" background-color="#f0f0f0"/>
								<fo:table-column column-width="proportional-column-width(41)" background-color="#ffffff"/>
								<fo:table-body>
									<!-- SECCION IDENTIFICACION DEL CLIENTE -->
									<fo:table-row>
										<fo:table-cell number-columns-spanned="4" display-align="center" background-color="#dedede" padding-left="5pt" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block font-weight="bold" color="#000066" font-size="12pt">
												<fo:inline>IDENTIFICACION DEL TITULAR TARJETA DE CRÉDITO</fo:inline>
												<fo:inline font-style="italic">(Responsable de Pago)</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Nombre</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" number-columns-spanned="3" background-color="#ffffff" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:value-of disable-output-escaping="no" select="nombresResponsablePago"/>
												<xsl:text> </xsl:text>
												<xsl:value-of disable-output-escaping="no" select="APResponsablePago"/>
												<xsl:text> </xsl:text>
												<xsl:value-of disable-output-escaping="no" select="AMResponsablePago"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>RUT</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:value-of disable-output-escaping="no" select="rutResponsablePago"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Tipo Tarjeta</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:value-of disable-output-escaping="no" select="bancoFuturosPagos"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Nº Tarjeta</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:value-of disable-output-escaping="no" select="nroDocumentoFuturosPagos"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Fecha Vencimiento</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:value-of disable-output-escaping="no" select="vencimientoFuturosPagos"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<!-- SECCION COMPAÑIA -->
									<fo:table-row>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
													<xsl:text>Propuesta N°</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:value-of disable-output-escaping="no" select="nroPropuesta"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Compañía</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:text>BCI Seguros Vida S.A.</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<!-- SECCION TEXTO DEL MANDATO -->
									<fo:table-row>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<fo:inline>MANDATO</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell number-columns-spanned="4" display-align="center" text-align="justify" border-style="solid"  border-width="1.0pt" color="#006666" font-size="10pt" padding-left="5pt" padding-right="5pt" border-color="#000000" background-color="#f0f0f0">
													<fo:block padding-before="4pt">1. Por medio del presente instrumento autorizo expresamente a Transbank S.A. a cargar en mi tarjeta   de crédito arriba individualizada, el valor correspondiente por los servicios prestados por BCI   Seguros Generales S.A. y/o BCI Seguros Vida S.A., en adelante, BCI Seguros. Este cargo se efectuará en forma mensual, por un período de meses o indefinidamente.</fo:block>
													<fo:block padding-before="4pt">2. Convengo en que BCI Seguros enviará a Transbank periódicamente, de acuerdo al contrato establecido, la información para el cobro correspondiente, liberando de toda responsabilidad a Transbank si ello no ocurriera.</fo:block>
													<fo:block padding-before="4pt">3. El cargo se hará efectivo a partir de la fecha en que esta autorización sea aceptada por Transbank.  En caso que la autorización no sea aceptada, esta situación le será comunicada al titular de la tarjeta de crédito por BCI Seguros.</fo:block>
													<fo:block padding-before="4pt">4. El servicio prestado por BCI Seguros, será responsabilidad única y exclusiva de BCI Seguros liberando a Transbank de cualquier obligación. </fo:block>
													<fo:block padding-before="4pt">5. En el evento que Transbank no pudiese por cualquier circunstancia efectuar el cargo correspondiente, comunicará esta situación a BCI Seguros.</fo:block>
													<fo:block padding-before="4pt">6. La presente autorización se entenderá, para todos los efectos legales, dada el mismo día en que se lleve a efecto el cargo en la tarjeta de crédito. Asimismo, se entenderá renovada mes a mes, en tanto no se revoque por escrito.</fo:block>
													<fo:block padding-before="4pt">7. La presente autorización de cargo en mi tarjeta de crédito continuará vigente hasta que yo la revoque por escrito a BCI Seguros, en la forma indicada en el número precedente.</fo:block>
													<fo:block padding-before="4pt">8. El presente mandato expirará automáticamente en el caso de término de contrato de Transbank con BCI Seguros.</fo:block>
													<fo:block padding-before="4pt">9. En consideración a este servicio convengo, además, que si cualquiera de las cuotas mensuales, no fuese pagada por cualquier causa, Transbank no tendrá responsabilidad alguna, aunque de dicho pago   pueda resultar algún perjuicio para el tarjetahabiente o para BCI Seguros.</fo:block>
													<fo:block padding-before="4pt">10. El presente mandato entrará en vigor en forma indefinida desde la fecha de recepción en BCI Seguros y hasta que se produzcan las situaciones descritas en los punto 7 y 8 anteriores.</fo:block>
													<fo:block padding-before="4pt">11. El límite de pago será igual al monto disponible en la tarjeta de crédito anteriormente individualizada, a la fecha de cargo.</fo:block>
													<fo:block padding-before="4pt">12. El presente mandato afecta al conjunto de pólizas y renovaciones celebradas con la compañía durante la vigencia de éste; y autoriza a que las primas de dichas pólizas se paguen mediante la modalidad PAT, es decir, Autorización de Descuento en Tarjeta de Crédito. El monto de la prima, su forma y  modalidad de pago, se encuentran insertas en las condiciones particulares de cada póliza.(Circular S.V.S. Nro. 1.499 del 15.09.2000).</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:block padding-before="20pt" text-align="center">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(1)"/>
									<fo:table-column column-width="8cm"/>
									<fo:table-column column-width="proportional-column-width(1)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell height="25pt" column-number="2" border-bottom-style="solid" border-bottom-width="1.0pt" border-bottom-color="#000000">
												<fo:block>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell column-number="2"  text-align="center" display-align="center" padding-before="4pt">
												<fo:block>Firma del Titular de la Tarjeta de Crédito</fo:block>
												<fo:block>
													En <xsl:value-of disable-output-escaping="no" select="ciudad"/>
													 a <xsl:value-of disable-output-escaping="no" select="diaHoy"/>
													 de <xsl:value-of disable-output-escaping="no" select="mesHoy"/> 
													 de <xsl:value-of disable-output-escaping="no" select="anoHoy"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>

	
	
	
		<xsl:template name="temp_datos_logos_cabecera">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-column column-width="proportional-column-width(35)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left">
								<fo:external-graphic scaling="uniform" height="30pt" width="120pt">
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/LOGOBCI2BPS.gif')</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell display-align="before" >
							<fo:block color="#000000" font-size="5pt" text-align="center" font-weight="bold">
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell vertical-align="top" text-align="center" display-align="before">
								<fo:block color="#000000" font-size="20pt" text-align="center" font-weight="bold">
										  <xsl:apply-templates select="codigobarras-39" /> 
								</fo:block>
						</fo:table-cell>

						<fo:table-cell>
							<fo:block text-align="right">
								<fo:external-graphic  scaling="uniform" height="58pt" width="174px">
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/BciSeguros_verticalBPS.jpg')</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left">
							</fo:block>
						</fo:table-cell>

						<fo:table-cell display-align="before">
							<fo:block color="#000000" font-size="5pt" text-align="center" font-weight="bold">
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell vertical-align="top" text-align="center" display-align="before">
								<fo:block color="#000000" font-size="20pt" text-align="center" font-weight="bold">
							</fo:block>
							
							<fo:block color="#000000" font-size="6pt" text-align="center" font-weight="bold">
									<xsl:value-of  select="nroPropuesta"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell>
							<fo:block text-align="right">
									</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_datos_logos">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(40)"/>
				<fo:table-column column-width="proportional-column-width(30)"/>
				<fo:table-column column-width="proportional-column-width(30)"/>
				<fo:table-body>
					<fo:table-row>

						<fo:table-cell>
							<fo:block text-align="left">
								<fo:external-graphic scaling="uniform" height="30pt" width="120pt">
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/LOGOBCI2BPS.gif')</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell display-align="before">
							<fo:block color="#000000" font-size="5pt" text-align="center" font-weight="bold">
								</fo:block>
						</fo:table-cell>

						<fo:table-cell>
							<fo:block text-align="right">
								<fo:external-graphic  scaling="uniform" height="30pt" width="120pt">
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/BciSeguros_verticalBPS.jpg')</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<!-- ****************************************** COBERTURAS MAXIMA SALUD  ***************************************** -->
	<xsl:template name="temp_cabecera_cobertura_BCIAPET">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="1pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>COBERTURAS, SERVICIOS, MONTOS ASEGURQADOS Y CONDICIONES PARTICULARES</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
		
	<xsl:template name="temp_texto_cobertura_BCIAPET">
		<fo:block padding-before="2pt">
					<fo:table table-layout="fixed" width="100%" >
					<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="#dedede" padding-left="5pt">
										<fo:block padding-before="0pt" font-size="11.0pt">CLAUSULA:</fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">#El valor de la prima anual para esta póliza es de UF 2,4. Sin perjuicio de ello la Compañía otorga una</fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">promocion especial al asegurado par el primer año de vigencia de esta póliza, consistente en la exención de</fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">pago de la primera cuota de la prima."</fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">#En las futuras renovaciones se cobrarán 12 cuotas de UF 0,20, equivalentes a una prima bruta anual de</fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">UF 2,4 a menos que la Compañía defina cambios de condiciones , en cuyo caso se avisará al asegurado por</fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">escrito con 30 días de anticipación.".</fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">8. DERECHO A RETRACTACIÓN DEL SEGURO</fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">El asegurado podrá, sin expresión de causa ni penalización alguna, retractarse del seguro contratado dentro del</fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">plazo de 35 días, contado desde que tomó conocimiento de esta póliza o desde la fecha que ésta llegue al</fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">domicilio registrado por la Compañía. Dicha retractación deberá comunicarse, a la Compañía o Corredora de</fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">Seguros, por cualquier medio que permita la expresión fehaciente de dicha voluntad.</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
	</xsl:template>	
	<!-- ****************************************** COBERTURAS MAXIMA SALUD  ***************************************** -->
	
	
	<!-- ****************************************** INICIO CONDICIONES BCIAPE  ***************************************** -->

	<xsl:template name="temp_tituloCondiciones_BCIAPE">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>CONDICIONES PARTICULARES Y DECLARACIONES ESPECIALES</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	

	<xsl:template name="temp_datosCondiciones_BCIAPE">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
						
							<fo:block padding-before="0pt" font-size="11.0pt">CONDICIONES DE PRIMER PAGO</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">Si la prima en depósito es pagada mediante cargo en tarjeta de crédito, se entenderá cancelada solo una vez</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">que la Administradora de Tarjetas de Crédito apruebe el cargo en dicha tarjeta.</fo:block>  
							
							<fo:block padding-before="0pt" font-size="11.0pt">La presente propuesta de seguro es a la vez un Certificado de Cobertura Provisoria por el riesgo de muerte</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">causada por accidente, con vigencia por el término máximo de 30 días contados desde la fecha de recepción de</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">este documento en la compañía, únicamente si se ha pagado la prima de depósito inicial.</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">En todo caso, la cobertura provisoria cesará automáticamente en la fecha en que la compañía acepte o rechace</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">el riesgo de la presente propuesta.  Se entenderá que hay aceptación del riesgo por el solo hecho de la emisión</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">de la póliza solicitada en virtud de la propuesta.  En caso de rechazo, la compañía comunicará por escrito al</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">contratante, al domicilio arriba señalado, devolviendo la prima en déposito recibida.</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">Capital asegurado: El monto de cobertura provisoria por accidente será igual al capital de la cobertura por</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">fallecimiento solicitado en la propuesta, pero con tope máximo de UF 1.000.</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">El contratante acepta que la cobertura provisoria derivada de la presente propuesta es absolutamente</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">incomplatible con cualquier otra en tramitación o vigente en la compañía aseguradora, teniendo validez sólo</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">aquella que primero se hubiere solicitado.</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">Serán aplicables las Condiciones Generales del Beneficio de Muerte Accidental registradas bajo el código POL.</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">2 92 015 de la S.V.S.</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">DECLARACION ESPECIAL</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">En cumplimiento a lo dispuesto en la Norma de Carácter General Nº 124 del 22 de Noviembre del 2001, dictada</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">por la Superintendencia de Valores y Seguros, declaro que he consentido expresamente que las coberturas de</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">que da cuenta el presente contrato, excluye la muerte e invalidez producida:</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">1.- Durante la realización de deportes riesgosos, aunque se practique en forma esporádica, y en que se ponga</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">en peligro la vida o la integridad física de la persona, tales como : Buceo, alas delta, parapente, carreras de</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">velocidad (auto, moto, ciclismo), carreras de caballo, piloto de aviación civil, andinismo, entre otros.</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">2.- Cuando el siniestro tenga lugar como consecuencia del desempeño de actividades especificadas para su</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">cargo u ocupación, que se consideran riesgosas, tales como : trabajo en actividades mineras, forestales,</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">pesqueras, operador de explosivos, albañiles en altura, bomberos en general, miembro de las fuerzas armadas</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">y de orden, reportero en zonas de conflicto, entre otras.</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">3.- A consecuencia directa o indirecta de un accidente o de una incapacidad diagnosticada o conocida con</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">anterioridad a la vigencia inicial de la póliza. Quedan comprendidas en esta exclusión las enfermedades</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">producidas directa e indirectamente por excesos o usos abusivos de sustancias como el tabaco, alcohol y </fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">drogas.</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">Adicionalmente, autorizo a cualquier médico, hospital, clinica u otra institución o persona que tenga mis registros</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">personales, para que pueda dar información solicitada por BCI Seguros Vida S.A.. A su vez faculto a esta</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">última, para que solicite o retire copia de tales antecedentes.</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">COMPROMISO DE COBERTURA</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">Se deja constancia que, en caso que esta propuesta sea aceptada por el asegurador, la fecha de inicio de la</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">cobertura al riesgo será el día siguiente de la fecha de llenado de esta propuesta, por los montos que se indican</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">para el plan elegido.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">La póliza que se emita como consecuencia de la presente propuesta, se regirá por las condiciones generales</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">inscritas en la S.V.S. bajo el Código POL. 2 92 015.</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">El Seguro ofrecido es intermediado por BCI Corredores de Seguros S.A. y la compañía que cubre el riesgo es</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">BCI Seguros Vida S.A.</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">El proponente ha tomado conocimiento del derecho a decidir sobre la contratación de los seguros y a la libre</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">elección del intermediario y compañía aseguradora.</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">"Con la emisión de la presente propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">cobertura comenzará a regir únicamente a partir del momento en que esta propuesta sea aceptada por el</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">asegurador y se inicie la vigencia de la póliza" (Circular Nº 1.390 S.V.S.).</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">El contratante faculta a BCI Seguros Vida S.A., para guardar y conservar el original de toda y cualquier póliza de</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">seguro que tenga su origen en la presente propuesta o en el ejercicio del mandato que en este acto confiere o el</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">de sus endosos, si los hubiere, liberando expresamente a la compañía y al corredor, en su caso, de la</fo:block> 
							<fo:block padding-before="0pt" font-size="11.0pt">obligación que contempla el artículo 549 del Código de Comercio.</fo:block> 
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<!-- ****************************************** INICIO CONDICIONES BCIAPE  ***************************************** -->
	
	
	
	
	<!-- ****************************************** INICIO CONDICIONES BCIAPET  ***************************************** -->

	<xsl:template name="temp_tituloCondiciones_BCIAPET">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>CONDICIONES PARTICULARES Y DECLARACIONES ESPECIALES</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_datosCondiciones_BCIAPET">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
							<fo:block padding-before="0pt" font-size="11.0pt">DECLARACION ESPECIAL</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">En cumplimiento a lo dispuesto en la Norma de Carácter General Nº 124 del 22 de Noviembre del 2001, dictada</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">por la Superintendencia de Valores y Seguros, declaro que he consentido expresamente que las coberturas de</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">que da cuenta el presente contrato, excluye la muerte e invalidez producida:</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">1.- Durante la realización de deportes riesgosos, aunque se practique en forma esporádica, y en que se ponga</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">en peligro la vida o la integridad física de la persona, tales como : Buceo, alas delta, parapente, carreras de</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">velocidad (auto, moto, ciclismo), carreras de caballo, piloto de aviación civil, andinismo, entre otros.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">2.- Cuando el siniestro tenga lugar como consecuencia del desempeño de actividades especificadas para su</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">cargo u ocupación, que se consideran riesgosas, tales como : trabajo en actividades mineras, forestales,</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">pesqueras, operador de explosivos, albañiles en altura, bomberos en general, miembro de las fuerzas armadas</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">y de orden, reportero en zonas de conflicto, entre otras.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">3.- A consecuencia directa o indirecta de un accidente o de una incapacidad diagnosticada o conocida con</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">anterioridad a la vigencia inicial de la póliza. Quedan comprendidas en esta exclusión las enfermedades</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">producidas directa e indirectamente por excesos o usos abusivos de sustancias como el tabaco, alcohol y</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">drogas.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Adicionalmente, autorizo a cualquier médico, hospital, clinica u otra institución o persona que tenga mis registros</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">personales, para que pueda dar información solicitada por BCI Seguros Vida S.A.. A su vez faculto a esta</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">última, para que solicite o retire copia de tales antecedentes.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">COMPROMISO DE COBERTURA</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Se deja constancia que, en caso que esta propuesta sea aceptada por el asegurador, la fecha de inicio de la</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">cobertura al riesgo será el día siguiente de la fecha de llenado de esta propuesta, por los montos que se indican</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">para el plan elegido.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">La póliza que se emita como consecuencia de la presente propuesta, se regirá por las condiciones generales</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">inscritas en la S.V.S. bajo el Código POL. 2 92 015.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">El Seguro ofrecido es intermediado por BCI Corredores de Seguros S.A. y la compañía que cubre el riesgo es</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">BCI Seguros Vida S.A.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">El proponente ha tomado conocimiento del derecho a decidir sobre la contratación de los seguros y a la libre</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">elección del intermediario y compañía aseguradora.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">"Con la emisión de la presente propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">cobertura comenzará a regir únicamente a partir del momento en que esta propuesta sea aceptada por el</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">asegurador y se inicie la vigencia de la póliza" (Circular Nº 1.390 S.V.S.).</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<!-- ****************************************** INICIO CONDICIONES BCIAPET  ***************************************** -->
	
		<!-- ****************************************** INFORMACION  ***************************************** -->


<xsl:template name="temp_tituloInformacion">
	<fo:block span="none">
		<fo:table table-layout="fixed" width="100%">
		<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
						<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
							<xsl:text>INFORMACION ARTICULOS 57 Y 58 DEL DL Nº 251</xsl:text>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
</xsl:template>

<xsl:template name="temp_datosInformacion">
	<fo:block span="none">
		<fo:table table-layout="fixed" width="100%" >
		<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
		<fo:table-body>
			<fo:table-row>
				<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
					<fo:block padding-before="0pt" font-size="11.0pt">Bci Corredores de Seguros S.A. , Rut 78.951.950-1 , en mi calidad de Corredor de seguros y en cumplimiento a la ley , informo que durante el año calendario anterior intermedié contratos de seguros con las siguientes Compañías de seguros.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">En Seguros Generales: El 79,28 % en BCI Seguros Generales S.A., el 7,40 % con la Compañía de Seguros Generales Cardif  S.A., el 3,28 % con Aseguradora Magallanes S.A., el 3,24 % con Liberty Compañía de Seguros Generales S.A., el 2,45 % con Royal Sun alliance Seguros S.A., el 1,83 % con Mapfre Seguros Generales SA., el 1,10 % con C.S.G. Penta Security S.A. , el 0,75 % con Consorcio Nacional  de Seguros Generales S.A.  y otras 1,42 %.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">En Seguros de Vida: El 65,69 % con Bci Seguros de Vida S.A., el 24,71 % con la Compañía de Seguros de Vida Cardif  S.A , el 5,66 % con Chilena Consolidada Seguros de Vida S.A., el 2,02 % en la Interamericana Compañía de Seguros de Vida S.A. , el 1,03 % con Euroamerica Vida S.A, el 0,42 % con Consorcio Nacional Vida  y otras 0,47 %.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">En Renta Vitalicia: El 25,62 % con Principal Compañía de Seguros de Vida Chile S.A., el 23,50 % con Met Life Chile  Seguros de Vida S.A., el 11,25% con Compañía de Seguros de Vida Corp S.A. , el 8,25% con ING Vida S.A., el 6,92 % con Cruz del Sur Vida S.A.,.el 6,57% con Penta Vida Compañía de Seguros de Vida S.A., el 5,78 % con C.S.V Consorcio Nacional de Seguros S.A , el   4,08 % con Bci Seguros Vida S.A. , el 2,54 % con Renta Vida S.A. , el 2,07% con Euroamerica Seguros de Vida S.A. y otras  3,43 %.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Para responder del correcto y cabal cumplimiento de todas mis obligaciones emanadas de la actividad de Corredor de Seguros y en especial de los perjuicios que pueda ocasionar a los asegurados que contraten seguros por mi intermedio se ha emitido Póliza de Responsabilidad  Civil  N° 4282810 y Póliza de Garantía N° 10009577 en Consorcio Nacional de Seguros  S.A.</fo:block>
					
				</fo:table-cell>
			</fo:table-row>
		</fo:table-body>
		</fo:table>
	</fo:block>
</xsl:template>
	
	<!-- ****************************************************   INICIO CODIGO DE BARRA ********************************* -->
	
	<xsl:template name="dibujar_patron">
	<xsl:param name="patron"/>
	<xsl:param name="indice"/>
	<xsl:param name="dimension_x"/>
	<xsl:choose>
		<xsl:when test="string-length($patron) &gt; 0">
			<xsl:variable name="anchura_linea">
				<xsl:choose>
					<xsl:when test="substring($patron, 1, 1) = 'w'">
						<xsl:value-of select="$dimension_x * 2.1"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="$dimension_x"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:variable>
			<xsl:choose>
				<xsl:when test="($indice mod 2) = 0">
					<!-- es una barra -->
					<fo:leader leader-pattern="rule" rule-thickness="1.0cm" rule-style="solid" leader-length="{$anchura_linea}mm"/>
				</xsl:when>
				<xsl:otherwise>
					<fo:leader leader-pattern="rule" rule-thickness="1.0cm" rule-style="solid" color="white" leader-length="{$anchura_linea}mm"/>
					<!-- es un espacio -->
				</xsl:otherwise>
			</xsl:choose>
			<xsl:call-template name="dibujar_patron">
				<xsl:with-param name="patron" select="substring($patron, 2)"/>
				<xsl:with-param name="indice" select="$indice + 1"/>
				<xsl:with-param name="dimension_x" select="$dimension_x"/>
			</xsl:call-template>
		</xsl:when>
		<xsl:otherwise>
		</xsl:otherwise>
	</xsl:choose>
	</xsl:template>
	
	<xsl:template name="dibujar_caracter">
		<xsl:param name="caracter"/>
		<xsl:param name="dimension_x"/>
		<xsl:variable name="patrones" select="'0nnnwwnwnn1wnnwnnnnw2nnwwnnnnw3wnwwnnnnn4nnnwwnnnw5wnnwwnnnn6nnwwwnnnn7nnnwnnwnw8wnnwnnwnn9nnwwnnwnnAwnnnnwnnwBnnwnnwnnwCwnwnnwnnnDnnnnwwnnwEwnnnwwnnnFnnwnwwnnnGnnnnnwwnwHwnnnnwwnnInnwnnwwnnJnnnnwwwnnKwnnnnnnwwLnnwnnnnwwMwnwnnnnwnNnnnnwnnwwOwnnnwnnwnPnnwnwnnwnQnnnnnnwwwRwnnnnnwwnSnnwnnnwwnTnnnnwnwwnUwwnnnnnnwVnwwnnnnnwWwwwnnnnnnXnwnnwnnnwYwwnnwnnnnZnwwnwnnnn-nwnnnnwnw.wwnnnnwnn nwwnnnwnn*nwnnwnwnn$nwnwnwnnn/nwnwnnnwn+nwnnnwnwn%nnnwnwnwn'"/>
		<xsl:variable name="caracteres_validos" select="'0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%'"/>
		<xsl:choose>
			<xsl:when test="(string-length($caracter) != 1) or (contains($caracteres_validos, $caracter) = false())">
			</xsl:when>
			<xsl:otherwise>
				<xsl:variable name="patron" select="substring(substring-after($patrones, $caracter), 1, 9)"/>
				<xsl:call-template name="dibujar_patron">
					<xsl:with-param name="patron" select="$patron"/>
					<xsl:with-param name="indice" select="0"/>
					<xsl:with-param name="dimension_x" select="$dimension_x"/>
				</xsl:call-template>
				<fo:leader leader-pattern="rule" rule-thickness="1.0cm" rule-style="solid" color="white" leader-length="{$dimension_x}mm"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<xsl:template name="dibujar_codigobarras_39">
		<xsl:param name="cadena"/>
		<xsl:param name="dimension_x" select="0.3"/>
		<xsl:choose>
			<xsl:when test="string-length($cadena) &gt; 0">
				<xsl:variable name="caracter_actual" select="substring($cadena, 1, 1)"/>
				<xsl:call-template name="dibujar_caracter">
					<xsl:with-param name="caracter" select="$caracter_actual"/>
					<xsl:with-param name="dimension_x" select="$dimension_x"/>
				</xsl:call-template>
				<xsl:call-template name="dibujar_codigobarras_39">
					<xsl:with-param name="cadena" select="substring($cadena, 2)"/>
					<xsl:with-param name="dimension_x" select="$dimension_x"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<xsl:template match="codigobarras-39">
		<fo:block line-height="1cm">
			<xsl:call-template name="dibujar_codigobarras_39">
				<xsl:with-param name="cadena" select="concat('*',@valor,'*')"/>
			</xsl:call-template>
		</fo:block>
	</xsl:template>
	<!-- ****************************************************   FIN CODIGO DE BARRA ********************************* -->

	
	
	<!-- ****************************************************  INICIO DESCUENTO POR PLANILLA ********************************* -->
	<xsl:template name="temp_mandatos_planilla">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000">
						<fo:block>
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#336699">
											<fo:block text-align="center" font-size="12pt" font-weight="bold" color="#ffffff">AUTORIZACION DE DESCUENTO POR PLANILLA</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:block padding-before="10pt">
							</fo:block>
							<fo:table table-layout="fixed" width="100%" border-style="solid" border-width="1.0pt" border-color="#000000">
								<fo:table-column column-width="proportional-column-width(22)" background-color="#f0f0f0"/>
								<fo:table-column column-width="proportional-column-width(28)" background-color="#ffffff"/>
								<fo:table-column column-width="proportional-column-width(22)" background-color="#f0f0f0"/>
								<fo:table-column column-width="proportional-column-width(28)" background-color="#ffffff"/>
								<fo:table-body>
									<!-- SECCION COMPAÑIA -->
									<fo:table-row>
										<fo:table-cell number-columns-spanned="4" display-align="center" background-color="#dedede" padding-left="5pt" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block font-weight="bold" color="#000066" font-size="12pt">
												<fo:inline>COMPAÑIA</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt" number-columns-spanned="2" background-color="#ffffff" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text> BCI Seguros Generales S.A.</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text>Propuesta N°</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												: <xsl:value-of disable-output-escaping="no" select="nroPropuesta"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<!-- SECCION EMPLEADO -->
									<fo:table-row>
										<fo:table-cell number-columns-spanned="4" display-align="center" background-color="#dedede" padding-left="5pt" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block font-weight="bold" color="#000066" font-size="12pt">
												<fo:block>EMPLEADO</fo:block>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text>RUT</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell number-columns-spanned="3" background-color="#ffffff" padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												: <xsl:value-of disable-output-escaping="no" select="rutResponsablePago"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text>Apellido Paterno</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												: <xsl:value-of disable-output-escaping="no" select="APResponsablePago"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text>Apellido Materno</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												: <xsl:value-of disable-output-escaping="no" select="AMResponsablePago"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row keep-with-next="always">
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text>Nombres</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell number-columns-spanned="3" background-color="#ffffff" padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												: <xsl:value-of disable-output-escaping="no" select="nombresResponsablePago"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(25)"/>
								<fo:table-column column-width="proportional-column-width(50)"/>
								<fo:table-column column-width="proportional-column-width(25)"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell number-columns-spanned="3" display-align="center" background-color="#dedede" padding-left="5pt" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block font-weight="bold" color="#000066" font-size="12pt">
												<fo:block>EMPLEADOR CONVENIO</fo:block>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row background-color="#f0f0f0">
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>Código</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>Nombre</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>Rut</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row background-color="#ffffff" height="15pt">
										<fo:table-cell display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text> </xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text> </xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block>
												<xsl:text> </xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<!-- SECCION TEXTO DEL MANDATO -->
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell display-align="center" background-color="#dedede" padding-left="5pt" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block font-weight="bold" color="#000066" font-size="12pt">
												<fo:inline>AUTORIZACIÓN DE DESCUENTO POR PLANILLA</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell display-align="center" text-align="justify" background-color="#ffffff" padding-left="5pt" padding-right="5pt" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block padding-before="4pt">1. Autorizo a mi empleador más arriba individualizado para descontar de mi remuneración mensual los valores correspondientes a primas en cada una de la(s) póliza(s) y/o endoso(s) que BCI Seguros Generales y/o BCI Seguros Vida S.A., en adelante e indistintamente, BCI Seguros, presente a cobro.</fo:block>
											<fo:block padding-before="4pt">2. BCI Seguros enviará a mi empleador periódicamente, de acuerdo lo estipulado con la Compañía, la información para la deducción o pago correspondiente.</fo:block>
											<fo:block padding-before="4pt">3. El pago deberá hacerse a favor de BCI Seguros, en la fecha acordada entre esta última y mi empleador. El descuento que se practique a mi remuneración se regirá de acuerdo a las normas laborales pertinentes, las cuales en este acto declaro conocer y aceptar.</fo:block>
											<fo:block padding-before="4pt">4. La presente autorización que por medio del presente instrumento efectúo, se entenderá, para todos los efectos legales dado el mismo día en que se lleve a efecto.</fo:block>
											<fo:block padding-before="4pt">5. En el evento que se produzca cualquiera de las siguientes circunstancias; término de la relación laboral entre mandante y mandatario, y en virtud de la cual se formuló la presente autorización, cualquiera sea la causal que la motivó, que BCI Seguros termine el convenio de Descuento, que mi empleador lo termine con BCI Seguros, este instrumento caducará inmediatamente y me obligará a realizar los pagos por prima convenidos directamente en la oficinas de BCI Seguros. Si este mandato es revocado por en Mandante, éste deberá notificar por escrito su decisión a BCI Seguros, con a lo menos un mes de anticipación a la fecha en que se desee poner término.</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:block padding-before="20pt" text-align="center">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(14)"/>
									<fo:table-column column-width="proportional-column-width(16)"/>
									<fo:table-column column-width="proportional-column-width(4)"/>
									<fo:table-column column-width="proportional-column-width(24)"/>
									<fo:table-column column-width="proportional-column-width(4)"/>
									<fo:table-column column-width="proportional-column-width(24)"/>
									<fo:table-column column-width="proportional-column-width(14)"/>
									<fo:table-body>
										<fo:table-row keep-with-next="always">
											<fo:table-cell text-align="center" display-align="center">
												<fo:block/>
											</fo:table-cell>
											<fo:table-cell text-align="center" display-align="center">
												<fo:block>
													<xsl:value-of select="fechaHoy"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center" display-align="center">
												<fo:block/>
											</fo:table-cell>
											<fo:table-cell text-align="center" display-align="center">
												<fo:block/>
											</fo:table-cell>
											<fo:table-cell text-align="center" display-align="center">
												<fo:block/>
											</fo:table-cell>
											<fo:table-cell text-align="center" display-align="center">
												<fo:block>
													<fo:external-graphic scaling="uniform" height="110pt" width="150pt">
														<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>\firmas\FIR_COR2.gif')</xsl:attribute> 
													</fo:external-graphic>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center" display-align="center">
												<fo:block/>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row keep-with-next="always">
											<fo:table-cell text-align="center" display-align="center">
												<fo:block/>
											</fo:table-cell>
											<fo:table-cell padding-before="4pt" border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
												<fo:block>
													<xsl:text>Fecha</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding-before="4pt" text-align="center" display-align="center">
												<fo:block/>
											</fo:table-cell>
											<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
												<fo:block>
													<xsl:text>Firma Empleado</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding-before="4pt" text-align="center" display-align="center">
												<fo:block/>
											</fo:table-cell>
											<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
												<fo:block>
													<xsl:text>Firma Corredor</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center" display-align="center">
												<fo:block/>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>
	<!-- ****************************************************   FIN DESCUENTO POR PLANILLA ********************************* -->




</xsl:stylesheet>
