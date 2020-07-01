<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">	
<!-- xsl:stylesheet xmlns:fox="http://xml.apache.org/fop/extensions" xmlns:print="http://www.jcatalog.com/com.jcatalog.output.xslextensions.print.PrintElementFactory" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:saxon="http://icl.com/saxon" extension-element-prefixes="saxon print"  -->
<xsl:variable name="IMAGEEXT">gif</xsl:variable>
<xsl:template match="DatosImpresionPropTO">
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
						<xsl:text>PROPUESTA DE SEGURO Nro </xsl:text><xsl:value-of disable-output-escaping="no" select="nroPropuesta"/> 
							<xsl:if test="( codigoProducto = 'BCICOL' )"> 						
									<xsl:text> - PRODUCTO Salud Total Colaboradores </xsl:text>
							</xsl:if>
							<xsl:if test="( codigoProducto = 'BCICTS' )"> 						
									<xsl:text> - PRODUCTO Seguro Máxima Salud </xsl:text>
							</xsl:if>
							<xsl:if test="( codigoProducto = 'BCICAT' )"> 						
									<xsl:text> - PRODUCTO Seguro Salud Cuenta Cero </xsl:text>
							</xsl:if>
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
								<xsl:text>MATERIA ASEGURADA PARA EL RAMO SALUD INDIVIDUAL</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_datosMateriaAsegurada">
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
								<xsl:text disable-output-escaping="no">Asegurados asociados </xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="X"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text></xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="X"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text disable-output-escaping="no">(Conyuge e hijos)</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="numeroCargas"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Total asegurados</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="totalAsegurados"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>		
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text disable-output-escaping="no">Edad Asegurado Mayor</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="X"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text></xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="X"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text disable-output-escaping="no">del grupo Familiar</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="edadAseguradoMayor"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text></xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								
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
								<xsl:text>ASEGURADO TITULAR</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>


	<xsl:template name="temp_datosConductorHabitual">
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

	

<!-- Asegurado Asociado Numero 1 -->
	<xsl:template name="temp_CabAseguradoAsociadoNro_1">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
				<xsl:if test="( rutAsegAsociado_1 != '' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>ASEGURADO ASOCIADO NRO 1</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>	
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_DatosAseguradoAsociadoNro_1">
	<fo:block span="none">
			<fo:table table-layout="fixed"  width="100%" padding-before="2pt">
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
			<xsl:if test="( nombresAsegAsociado_1 != '' )"> 
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="rutAsegAsociado_1"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="nombresAsegAsociado_1"/>
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
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="apellidoPaternoAsegAsociado_1"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="apellidoMaternoAsegAsociado_1"/>
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
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="fechaNacimientoAsegAsociado_1"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Sexo</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="sexoAsegAsociado_1"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>	
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Relacion</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="parentezcoAsegAsociado_1"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</xsl:if>				
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
<!-- Asegurado Asociado Numero 2 -->	
	<xsl:template name="temp_CabAseguradoAsociadoNro_2">
		<fo:block span="none">
			<fo:table table-layout="fixed"  width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
				<xsl:if test="( nombresAsegAsociado_2 != '' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>ASEGURADO ASOCIADO NRO 2</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>	
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_DatosAseguradoAsociadoNro_2">
	<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" padding-before="2pt">
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
			<xsl:if test="( nombresAsegAsociado_2 != '' )"> 
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="rutAsegAsociado_2"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="nombresAsegAsociado_2"/>
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
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="apellidoPaternoAsegAsociado_2"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="apellidoMaternoAsegAsociado_2"/>
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
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="fechaNacimientoAsegAsociado_2"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Sexo</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="sexoAsegAsociado_2"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>	
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Relacion</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="parentezcoAsegAsociado_2"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</xsl:if>				
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

<!-- Asegurado Asociado Numero 3 -->
	<xsl:template name="temp_CabAseguradoAsociadoNro_3">
		<fo:block span="none">
			<fo:table table-layout="fixed"  width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
				<xsl:if test="( nombresAsegAsociado_3 != '' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>ASEGURADO ASOCIADO NRO 3</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>	
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_DatosAseguradoAsociadoNro_3">
	<fo:block span="none">
			<fo:table table-layout="fixed"  width="100%" padding-before="2pt">
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
			<xsl:if test="( nombresAsegAsociado_3 != '' )"> 
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="rutAsegAsociado_3"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="nombresAsegAsociado_3"/>
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
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="apellidoPaternoAsegAsociado_3"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="apellidoMaternoAsegAsociado_3"/>
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
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="fechaNacimientoAsegAsociado_3"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Sexo</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="sexoAsegAsociado_3"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>	
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Relacion</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="parentezcoAsegAsociado_3"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</xsl:if>				
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

<!-- Asegurado Asociado Numero 4 -->
	<xsl:template name="temp_CabAseguradoAsociadoNro_4">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
				<xsl:if test="( nombresAsegAsociado_4 != '' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>ASEGURADO ASOCIADO NRO 4</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>	
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_DatosAseguradoAsociadoNro_4">
	<fo:block span="none">
			<fo:table table-layout="fixed"  width="100%" padding-before="2pt">
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
			<xsl:if test="( nombresAsegAsociado_4 != '' )"> 
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="rutAsegAsociado_4"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="nombresAsegAsociado_4"/>
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
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="apellidoPaternoAsegAsociado_4"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="apellidoMaternoAsegAsociado_4"/>
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
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="fechaNacimientoAsegAsociado_4"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Sexo</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="sexoAsegAsociado_4"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>	
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Relacion</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="parentezcoAsegAsociado_4"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</xsl:if>				
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

<!-- Asegurado Asociado Numero 5 -->
	<xsl:template name="temp_CabAseguradoAsociadoNro_5">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
				<xsl:if test="( nombresAsegAsociado_5 != '' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>ASEGURADO ASOCIADO NRO 5</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>	
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_DatosAseguradoAsociadoNro_5">
	<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" padding-before="2pt">
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
			<xsl:if test="( nombresAsegAsociado_5 != '' )"> 
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="rutAsegAsociado_5"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="nombresAsegAsociado_5"/>
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
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="apellidoPaternoAsegAsociado_5"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="apellidoMaternoAsegAsociado_5"/>
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
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="fechaNacimientoAsegAsociado_5"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Sexo</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="sexoAsegAsociado_5"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>	
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Relacion</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="parentezcoAsegAsociado_5"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</xsl:if>				
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

<!-- Asegurado Asociado Numero 6 -->
	<xsl:template name="temp_CabAseguradoAsociadoNro_6">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
				<xsl:if test="( nombresAsegAsociado_6 != '' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>ASEGURADO ASOCIADO NRO 6</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>	
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_DatosAseguradoAsociadoNro_6">
	<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" padding-before="2pt">
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
			<xsl:if test="( nombresAsegAsociado_6 != '' )"> 
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="rutAsegAsociado_6"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="nombresAsegAsociado_6"/>
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
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="apellidoPaternoAsegAsociado_6"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="apellidoMaternoAsegAsociado_6"/>
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
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="fechaNacimientoAsegAsociado_6"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Sexo</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="sexoAsegAsociado_6"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>	
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Relacion</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="parentezcoAsegAsociado_6"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				</xsl:if>				
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

<!-- Asegurado Asociado Numero 7 -->
	<xsl:template name="temp_CabAseguradoAsociadoNro_7">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
				<xsl:if test="( nombresAsegAsociado_7 != '' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>ASEGURADO ASOCIADO NRO 7</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>	
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_DatosAseguradoAsociadoNro_7">
	<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" padding-before="2pt">
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
			<xsl:if test="( nombresAsegAsociado_7 != '' )"> 
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="rutAsegAsociado_7"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="nombresAsegAsociado_7"/>
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
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="apellidoPaternoAsegAsociado_7"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="apellidoMaternoAsegAsociado_7"/>
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
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="fechaNacimientoAsegAsociado_7"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Sexo</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="sexoAsegAsociado_7"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>	
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Relacion</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="parentezcoAsegAsociado_7"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</xsl:if>				
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

<!-- Asegurado Asociado Numero 8-->
	<xsl:template name="temp_CabAseguradoAsociadoNro_8">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
				<xsl:if test="( nombresAsegAsociado_8 != '' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>ASEGURADO ASOCIADO NRO 8</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>	
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_DatosAseguradoAsociadoNro_8">
	<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" padding-before="2pt">
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
			<xsl:if test="( nombresAsegAsociado_8 != '' )"> 
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="rutAsegAsociado_8"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="nombresAsegAsociado_8"/>
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
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="apellidoPaternoAsegAsociado_8"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="apellidoMaternoAsegAsociado_8"/>
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
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="fechaNacimientoAsegAsociado_8"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Sexo</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="sexoAsegAsociado_8"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>	
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Relacion</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="parentezcoAsegAsociado_8"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</xsl:if>				
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

<!-- Asegurado Asociado Numero 9 -->
	<xsl:template name="temp_CabAseguradoAsociadoNro_9">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
				<xsl:if test="( nombresAsegAsociado_9 != '' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>ASEGURADO ASOCIADO NRO 9</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>	
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_DatosAseguradoAsociadoNro_9">
	<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" padding-before="2pt">
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
			<xsl:if test="( nombresAsegAsociado_9 != '' )"> 
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="rutAsegAsociado_9"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="nombresAsegAsociado_9"/>
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
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="apellidoPaternoAsegAsociado_9"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="apellidoMaternoAsegAsociado_9"/>
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
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="fechaNacimientoAsegAsociado_9"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Sexo</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="sexoAsegAsociado_9"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>	
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Relacion</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="parentezcoAsegAsociado_9"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</xsl:if>				
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

<!-- Asegurado Asociado Numero 10 -->
	<xsl:template name="temp_CabAseguradoAsociadoNro_10">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
				<xsl:if test="( nombresAsegAsociado_10 != '' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>ASEGURADO ASOCIADO NRO 10</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:if>	
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_DatosAseguradoAsociadoNro_10">
	<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" padding-before="2pt">
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
			<xsl:if test="( nombresAsegAsociado_10 != '' )"> 
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="rutAsegAsociado_10"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="nombresAsegAsociado_10"/>
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
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="apellidoPaternoAsegAsociado_10"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="apellidoMaternoAsegAsociado_10"/>
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
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="fechaNacimientoAsegAsociado_10"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Sexo</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="sexoAsegAsociado_10"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<fo:table-row>	
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Relacion</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="parentezcoAsegAsociado_10"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</xsl:if>				
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

<!-- Fin Inicio Datos Asegurados Asociados-->

	<xsl:template name="temp_tituloPrimas">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>PRIMAS MENSUALES</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

<xsl:template name="temp_datosPrimas">
		<fo:block span="none">
		<fo:table table-layout="fixed" width="100%" padding-before="2pt">
		<fo:table-column column-width="proportional-column-width(15)"/>
		<fo:table-column column-width="proportional-column-width(50)"/>
		<fo:table-column column-width="proportional-column-width(7)"/>
		<fo:table-column column-width="proportional-column-width(7)"/>
		<fo:table-column column-width="proportional-column-width(7)"/>
		<fo:table-column column-width="proportional-column-width(7)"/>
		<fo:table-column column-width="proportional-column-width(7)"/>
		<fo:table-body>
		<fo:table-row>
			<fo:table-cell text-align="start" display-align="before">
				<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
					<xsl:text>Plan</xsl:text>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell text-align="start" display-align="before">
				<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
					<xsl:text>Descripción</xsl:text>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell text-align="start" display-align="before">
				<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
					<xsl:text>Exenta</xsl:text>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell text-align="start" display-align="before">
				<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
					<xsl:text>Afecta</xsl:text>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell text-align="start" display-align="before">
				<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
					<xsl:text>IVA</xsl:text>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell text-align="start" display-align="before">
				<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
					<xsl:text>Bruta</xsl:text>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell text-align="start" display-align="before">
				<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
					<xsl:text>Moneda</xsl:text>
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
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>0,00</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="afecta"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="iva"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="bruta"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="moneda"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
			</xsl:for-each>
		</fo:table-body>
		</fo:table>
		</fo:block>
	</xsl:template>

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
			
			<!-- SE MULTIPLICAN LOS DETALLES DE COBERTURA 0 -->
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
			<!-- SE MULTIPLICAN LOS PLANES DE COBERTURA COTIZADOS 0-->		
			
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>






<!-- ********************************************************************************* ***************************** -->
<!-- ********************************************************************************* ***************************** -->
<!-- ********************************************************************************* ***************************** -->
<!-- **************************************************** PARA COBERTURAS DE CADA PLAN ***************************** -->
<!-- ********************************************************************************* ***************************** -->
<!-- ********************************************************************************* ***************************** -->

<xsl:if test="( codigoProducto = 'BCICOL' )">
		<fo:block padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(57)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block >
								<xsl:call-template name="temp_cabecera_cobertura_BCICOL"/>
								<xsl:call-template name="temp_texto_cobertura_BCICOL"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
</xsl:if>

<xsl:if test="( codigoProducto = 'BCICAT' )">
		<fo:block padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(57)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block >
								<xsl:call-template name="temp_cabecera_cobertura_BCICAT"/>
								<xsl:call-template name="temp_texto_cobertura_BCICAT"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
</xsl:if>


<xsl:if test="( codigoProducto = 'BCICTS' )">
		<fo:block padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(57)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block >
								<xsl:call-template name="temp_cabecera_cobertura_BCICTS"/>
								<xsl:call-template name="temp_texto_cobertura_BCICTS"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
</xsl:if>





<!-- **************************************************** PARA COBERTURAS DE CADA PLAN ***************************** -->
	
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
	
	
	<!--  ****************************************************************************************************** -->
	<!--  ****************************************************************************************************** -->
	<!--  **************************************** CONDICIONES POR CADA PLAN *********************************** -->
	<!--  ****************************************************************************************************** -->
	<!--  ****************************************************************************************************** -->

						<xsl:if test="( codigoProducto = 'BCICOL' )">
							<fo:block padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<xsl:call-template name="temp_tituloCondiciones_BCICOL"/>
													<xsl:call-template name="temp_datosCondiciones_BCICOL"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
					</xsl:if>
					
					<xsl:if test="( codigoProducto = 'BCICAT' )">
							<fo:block padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<xsl:call-template name="temp_tituloCondiciones_BCICAT"/>
													<xsl:call-template name="temp_datosCondiciones_BCICAT"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
					</xsl:if>
					
					
					<xsl:if test="( codigoProducto = 'BCICTS' )">
							<fo:block padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<xsl:call-template name="temp_tituloCondiciones_BCICTS"/>
													<xsl:call-template name="temp_datosCondiciones_BCICTS"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
					</xsl:if>
						
						
	<!--  ****************************************************************************************************** -->
	<!--  ****************************************************************************************************** -->
	<!--  **************************************** CONDICIONES POR CADA PLAN *********************************** -->
	<!--  ****************************************************************************************************** -->
	<!--  ****************************************************************************************************** -->

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
	<fo:table table-layout="fixed" width="100%" padding-before="5pt">
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
					<fo:block><xsl:text>Asegurable Titular</xsl:text></fo:block>
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
	
	
<!-- *************************** CONTRATANTE DECLARACION DESPUES DE LAS FIRMAS *************************** -->
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
	<xsl:template name="temp_DPS_Contratante">
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
	
		<xsl:template name="temp_DPS_datosContrante">
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
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>	
<!-- *************************** CONTRATANTE DECLARACION DESPUES DE LAS FIRMAS *************************** -->



		
	<!-- DPS -->
	<xsl:template name="temp_DPS">
		<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>DPS</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_DPS_Consultas_1">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
				<fo:table-column column-width="proportional-column-width(2)"/>
				<fo:table-column column-width="proportional-column-width(4)"/>
				<fo:table-column column-width="proportional-column-width(47)"/>
				<fo:table-column column-width="proportional-column-width(47)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="4" text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">  ¿ Usted o alguno de sus asegurados asociados 1) Ha estado hospitalizado en los últimos 6 meses ó 2) Tiene </fo:block>
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">  programada una hospitalización a futuro; ó 3) Ha padecido, se le ha diagnosticado, o tiene conocimiento de sufrir </fo:block>
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">  alguna vez una de las siguientes enfermedades: Diabetes, enfermedades al riñón, enfermedades de los huesos o </fo:block>
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">  músculos, enfermedades cardiacas, bypass, hipertensión arterial, enfermedades coronarias, soplos cardiacos, </fo:block>
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">  arritmias, sobrepeso u obesidad, enfermedades del sistema respiratorio, cáncer, hepatitis (excepto tipo A), </fo:block>
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">  enfermedades gastrointestinales como cirrosis hepática, úlcera gástrica, colitis ulcerosa, enfermedades </fo:block>
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">  hematológicas como leucemia, linfoma o anemia (excepto la falta de fierro), desordenes nerviosos mentales, </fo:block>
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">  Sida, HIV Positivo , enfermedades neurológicas como accidente vascular cerebral, epilepsia, enfermedad de </fo:block>
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">  alzheimer, alcoholismo o drogadicción ó 4) Tiene alguna malformación congénita o ha sido transplantado?.</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:call-template name="temp_cuadros"/>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	
	<!--  ****************************************************************************************************** -->
	<!--  ****************************************************************************************************** -->
	<!--  **************************************** DPS ESPECIALES *********************************** -->
	<!--  ****************************************************************************************************** -->
	<!--  ****************************************************************************************************** -->
	
	
<!--  
						<xsl:if test="( codigoProducto = 'BCICOL' )">
							<fo:block padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<xsl:call-template name="temp_DPS_BCICOL"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
					</xsl:if>
-->	
<!-- 				
					<xsl:if test="( codigoProducto = 'BCICAT' )">
							<fo:block padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<xsl:call-template name="temp_DPS_BCICAT"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
					</xsl:if>
						
-->						
	<!--  ****************************************************************************************************** -->
	<!--  ****************************************************************************************************** -->
	<!--  **************************************** DPS POR CADA PLAN *********************************** -->
	<!--  ****************************************************************************************************** -->
	<!--  ****************************************************************************************************** -->
	
	

	
	
		<!--  ****************************************************************************************************** -->
	<!--  ****************************************************************************************************** -->
	<!--  **************************************** DECLARACIONES ESPECIALES *********************************** -->
	<!--  ****************************************************************************************************** -->
	<!--  ****************************************************************************************************** -->

						<xsl:if test="( codigoProducto = 'BCICOL' )">
							<fo:block padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<xsl:call-template name="temp_titulo_Declaracion_Especial_BCICOL"/>
													<xsl:call-template name="temp_Declaracion_Especial_BCICOL"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
					</xsl:if>
					
					<xsl:if test="( codigoProducto = 'BCICAT' )">
							<fo:block padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<xsl:call-template name="temp_titulo_Declaracion_Especial_BCICAT"/>
													<xsl:call-template name="temp_Declaracion_Especial_BCICAT"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
					</xsl:if>
					
					
					<xsl:if test="( codigoProducto = 'BCICTS' )">
							<fo:block padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<xsl:call-template name="temp_titulo_Declaracion_Especial_BCICTS"/>
													<xsl:call-template name="temp_Declaracion_Especial_BCICTS"/>
													<xsl:call-template name="temp_titulo_Declaracion_Especial_2_BCICTS"/>
													<xsl:call-template name="temp_Declaracion_Especial_2_BCICTS"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
					</xsl:if>
						
						
	<!--  ****************************************************************************************************** -->
	<!--  ****************************************************************************************************** -->
	<!--  **************************************** CONDICIONES POR CADA PLAN *********************************** -->
	<!--  ****************************************************************************************************** -->
	<!--  ****************************************************************************************************** -->
	



	
	<xsl:call-template name="temp_firmas_nro2"/>
	
	
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
	
	
	
	
						

<fo:block id="last-page"/>

</fo:block>
</fo:flow>
</fo:page-sequence>
</fo:root>
</xsl:template>	

<!-- ********************************************************************************************************************************* -->
<!-- *********************************************** FIN DE LO QUE SALE EN LA IMPRESION******************************************************* -->
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
				<fo:table-column column-width="proportional-column-width(19)"/>
				<fo:table-column column-width="proportional-column-width(39)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(17)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left">
								<fo:external-graphic scaling="uniform" height="58pt" width="174pt">
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/LOGOBCI2.gif')</xsl:attribute>
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
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/BciSeguros_vertical.jpg')</xsl:attribute>
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
				<fo:table-column column-width="proportional-column-width(19)"/>
				<fo:table-column column-width="proportional-column-width(62)"/>
				<fo:table-column column-width="proportional-column-width(19)"/>
				<fo:table-body>
					<fo:table-row>

						<fo:table-cell>
							<fo:block text-align="left">
								<fo:external-graphic scaling="uniform" height="69pt" width="174pt">
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/LOGOBCI2.gif')</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell display-align="before">
							<fo:block color="#000000" font-size="20pt" text-align="center" font-weight="bold">
								</fo:block>
						</fo:table-cell>

						<fo:table-cell>
							<fo:block text-align="right">
								<fo:external-graphic  scaling="uniform" height="69pt" width="174px">
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/BciSeguros_vertical.jpg')</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_cuadros">
		<fo:table-row>
			<fo:table-cell height="10pt" border-style="solid" border-width="1.0pt" border-color="#000000" text-align="left">
				<fo:block>
					<xsl:text> </xsl:text>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell>
				<fo:block padding-left="2pt" text-align="center">
					<xsl:text>Si</xsl:text>
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
		<fo:table-row>
			<fo:table-cell height="10pt" border-style="solid" border-width="1.0pt" border-color="#000000" text-align="left">
				<fo:block>
					<xsl:text> </xsl:text>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell>
				<fo:block padding-left="2pt" text-align="center">
					<xsl:text>No</xsl:text>
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
	</xsl:template>
	
	
	<xsl:template name="temp_cuadro_ok">
		<fo:table-row>
			<fo:table-cell height="10pt" border-style="solid" border-width="1.0pt" border-color="#000000" text-align="left">
				<fo:block>
					<xsl:text> </xsl:text>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell>
				<fo:block padding-left="2pt" text-align="center">
					<xsl:text>OK</xsl:text>
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
	</xsl:template>
	
	<xsl:template name="tem_linea_en_blanco">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="10pt">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(2)"/>
				<fo:table-column column-width="proportional-column-width(4)"/>
				<fo:table-column column-width="proportional-column-width(47)"/>
				<fo:table-column column-width="proportional-column-width(47)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="4" text-align="start" display-align="before">
									<fo:block ></fo:block>
						</fo:table-cell>
					</fo:table-row>
					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>


	<xsl:template name="temp_firmas_nro2">
	
		<fo:block text-align="center"  padding-before="45pt" keep-with-previous.within-page="always">
			<fo:table table-layout="fixed"  width="50%">
				<fo:table-column column-width="proportional-column-width(45)"/>
				<fo:table-column column-width="proportional-column-width(10)"/>
				<fo:table-column column-width="proportional-column-width(45)"/>
				<fo:table-body>
					<fo:table-row keep-with-next="always">
						<fo:table-cell text-align="center" display-align="center">
							<fo:block><xsl:value-of select="fechaHoy"/></fo:block>
						</fo:table-cell>
						<fo:table-cell  text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
						<fo:table-cell  text-align="center" display-align="center">
							<fo:block></fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row keep-with-next="always">
						<fo:table-cell padding-before="4pt" border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
							<fo:block><xsl:text>Fecha Solicitud</xsl:text></fo:block>
						</fo:table-cell>
						<fo:table-cell  text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
						<fo:table-cell padding-before="4pt" border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
							<fo:block><xsl:text>Firma Asegurable Titular</xsl:text></fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<!-- ****************************************** COBERTURAS SALUD TOTAL COLABORADORES ***************************************** -->
	
	<xsl:template name="temp_cabecera_cobertura_BCICOL">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="1pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>COBERTURAS, SERVICIOS, MONTOS ASEGURADOS Y CONDICIONES PARTICULARES</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_texto_cobertura_BCICOL">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
					<fo:block padding-before="0pt" font-size="11.0pt">	1.-CONDICIONES DE ASEGURAMIENTO:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-La Edad de Ingreso del Titular y Cónyuge es tanto para las Mujeres y hombres desde los 18 años hasta los 55 años 0 días. (edad cronológica)</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-La Cobertura es Vitalicia tanto para  el Titular  y Asegurados Dependientes</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-La Edad de Ingreso de los hijos es desde los 14 días y la tarifa se ajustará al cumplir el hijo los 24 años de edad.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-El asegurado Titular no podrá ser mayor de 55 años 0 días para ingresar al seguro.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-El asegurado Titular deberá llenar una DPS simple.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-Deberá ser el Contratante y el Asegurado Titular la misma persona. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	2.-CONDICIONES PARTICULARES</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Se entenderá por cónyuge la persona individualizada como tal en las Condiciones Particulares de la póliza.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Se entenderá por hijos (Asegurados Dependientes) a aquellos que sean carga, del asegurado titular o del</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	cónyuge, como beneficiario de un sistema provisional.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Una vez que el Asegurado Dependiente (hijo) cumpla los 24 años de edad, la Compañía ajustará la prima</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	 según la siguiente Fórmula:</fo:block>  
					<fo:block padding-before="0pt" font-size="11.0pt">	Prima mensual = (Prima mensual de acuerdo a la edad del Asegurado de Mayor edad y al número de</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  asegurados dependientes conformadas por cónyuge e hijos menores a 24 años) + (Prima mensual para cero</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  asegurados dependientes y su edad correspondiente por cada hijo mayor a 24 años) * 90%.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- La tarifa cobrada será la correspondiente a la cantidad de Asegurados Dependientes y por la edad del</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	 Asegurado Mayor del Grupo Familiar.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- En caso de fallecimiento del Asegurado Titular o Asegurado Dependiente se deberá dar aviso a la Compañía</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	de Seguros en el más breve plazo.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Renovaciones del Seguro: El presente seguro se  renovará anualmente en forma automática, salvo que</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	cualquiera de las partes manifieste su intención de no continuar con el seguro, por medio de aviso escrito</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	enviado al domicilio del contrato con 30 días de anticipación.  La prima de esta póliza será ajustada anualmente,</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	de acuerdo a la tarifa vigente y a la edad de los Asegurados al momento de la renovación del contrato. (Art. 13</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	de las Condiciones Generales).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	3.-DEFINICIONES:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Evento :Todas las prestaciones hospitalarias o ambulatorias asociadas a un diagnóstico por enfermedad o </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	accidente  y sus consecuencias posteriores asociadas directamente al diagnóstico principal, con una duración</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	máxima de tres años contados desde la fecha de pago del primer reembolso cubierto por esta póliza. En caso</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	que la enfermedad o accidente que dio origen a un evento objeto de reembolso se prolongue más allá del plazo</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	indicado precedentemente, éste será considerado como un nuevo evento, reinstalándose la franquicia y el</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	capital asegurado.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Evento Familiar: Un mismo evento que involucra simultáneamente a más de un miembro del grupo familiar</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	asegurado.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Franquicia: La Aseguradora asumirá el 100% de la indemnización que sea determinada por el liquidador y</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	aceptada por aquella, pero sólo en el caso de que el monto de la indemnización supere el monto en UF indicado</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	en las condiciones particulares como franquicia por evento, y hasta el límite de la suma asegurada señalada en</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	las condiciones particulares de la póliza.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Complicaciones del embarazo: Estará cubierto por esta póliza el embarazo extrauterino, eclampsia,</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	preclampsia y mola hidatiforme (embarazo molar), asi como complicaciones de estos mismos.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	4.-FRANQUICIAS Y CARENCIAS:</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	-En caso que un mismo evento afecte a más de un integrante del grupo asegurado (evento familiar), no se</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	considerará la franquicia por cada miembro de la familia, sino que se asumirá un sola franquicia equivalente al</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	150% de la franquicia del  Plan seleccionado, considerando todos los gastos del grupo familiar</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-Para el plan Contratado de UF 4.000 a partir de los 66 años se aplica una franquicia UF 100 y capital se reduce</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	a UF 2.000.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-Para los planes contratados de  UF 10.000 y UF 20.000 a partir de los 66 años se aplica una franquicia de UF</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	100 y el capital se reduce UF 4.000.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-El período de carencia es de 60 días. Esto significa que carecerán de cobertura todos los eventos que se</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	originen dentro de un plazo de 60 días corridos, contados desde la fecha de inicio de vigencia de la póliza.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-La cobertura de complicaciones por embarazo tendrá un período de carencia de 10 meses, contado a partir de</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	la incorporación de la asegurada con derecho a esta prestación.</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	5.-INCLUSIÓN DE ASEGURADOS</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Para incorporar asegurados al seguro, será requisito indispensable que el asegurado titular complete y firme</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	la Solicitud de Endoso que incluye la Declaración de Salud correspondiente.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	En caso que la compañía acepte la modificación del grupo familiar, la fecha de inicio de vigencia, para el nuevo</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	asegurado, será el mes siguiente de la recepción de la solicitud correspondiente. Igual criterio se aplicará en</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	caso de exclusión de asegurado del grupo familiar.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.-PORCENTAJES DE REEMBOLSOS PARA SITUACIONES ESPECIALES:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Los gastos no reembolsables por la institución de salud previsional a la  cual se encuentre adherido el</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	asegurado (prestaciones no cubiertas por el plan individual y/o prestaciones no codificadas), serán</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	indemnizados considerando el 50% del gasto real efectuado. Este criterio también será aplicado a los</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	reembolsos que correspondan a asegurados que no estén afiliados a una institución de salud previsional y</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	cuando se trate de gastos efectuados en el extranjero.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Si el asegurado no hace uso del sistema de salud previsional al cual está asociado, los gastos serán</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	indemnizados considerando el 25% del gasto real efectuado.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Para efectos de completar la franquicia, sólo se considerarán aquellos gastos médicos efectuados dentro de</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	los ciento ochenta (180) días corridos anteriores a la fecha de presentación de la primera solicitud de reembolso</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	que supere la franquicia fijada para el Plan seleccionado.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	7.-DESCRIPCIÓN DE LAS COBERTURAS Y LOS BENEFICIOS DEL SEGURO</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	COBERTURA SEGURO CATASTROFICO</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	7.1. BENEFICIO DE HOSPITALIZACIÓN</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	DÍAS CAMA 100 % Reembolso;SERVICIOS HOSPITALARIOS: 100 % Reembolso;HONORARIOS MÉDICOS</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	QUIRÚRGICOS:100 % Reembolso;CIRUGIA DENTAL POR ACCIDENTE:100 % Reembolso;SERVICIO</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	PRIVADO DE ENFERMERA:100 % Reembolso;SERVICIO DE AMBULANCIA TERRESTRE:100 % Reembolso.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	GASTOS EN EL EXTRANJERO: 50% Reembolso</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	7.2.BENEFICIO AMBULATORIO:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	CONSULTAS MÉDICA:100 % Reembolso;EXAMENES DE LABORATORIO - RADIOGRAFÍAS:100 % </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Reembolso;</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	TRATAMIENTOS Y PROCEDIMIENTOS:100 % Reembolso;CIRUGÍA AMBULATORIA:100 % Reembolso;</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	ÓRTESIS Y PROTESIS:100 % Reembolso;KINESIOLOGÍA:100 % Reembolso,MEDICAMENTOS</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	AMBULATORIOS:50% Reembolso</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	COBERTURA COMPLICACIONES DEL EMBARAZO:Se otorga únicamente al asegurado titular o a la esposa ,</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	entre 18 y 45 años.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	7.3. BENEFICIO DESCUENTO FARMACIAS SALCOBRAND:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Bonofarma: Bonificación 40% Remedios de Marca; y 40% Remedios genéricos.Tope Bonificado por Asegurado</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	5 UF.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	El asegurado debe acudir al médico con su Vademécum Bonofarma, para que éste le recete del listado de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	medicamentos bonificados. Luego, dirigirse a cualquier farmacia Salcobrand con:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Credencial Bonofarma.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- N° Cédula de identidad del asegurado titular.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Receta Médica que indique: Nombre y Rut del Médico, Fecha</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Nombre del asegurado titular.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Detalle de medicamentos (cantidad y dosis)</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	7.4. BENEFICIO COMPLEMENTARIO     </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Este beneficio  permite acceder a descuentos automáticos en locales Salcobrand; Beneficio desde un 4% a</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	10%:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Medicamentos no Genéricos 	4%</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Medicamentos Genéricos 		7%</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Vademécum Salcobrand	 	10%</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Productos no medicamentosos   	5%</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Recetario Magistral		          10%</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Beneficio no requiere de receta médica.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	8. SERVICIO ALO DOCTOR (AXA ASSISTANCE)</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	8.1.- DESCRIPCION DEL SERVICIO</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	AXA ASSISTANCE prestará los siguientes servicios a que tengan derecho los asegurados de BCI SEGUROS</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	VIDA S.A.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	a)El objetivo del Servicio es recomendar y orientar telefónicamente sobre las acciones que  más conviene seguir</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	en   caso de dolencias, problemas, dudas o inquietudes de salud. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	b)El Servicio se otorgará, 24 horas al día, 7 días a la semana.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	c)Las recomendaciones emanadas de AXA ASSISTANCE en ningún caso constituyen la realización de</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	diagnóstico ni indicación de tratamiento.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	d)Todas las conversaciones telefónicas relativas al servicio serán grabadas. AXA ASSISTANCE se compromete</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	a hacer un uso prudente y apropiado de las grabaciones referidas. Lo anterior tiene por objeto contar con un </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	respaldo acerca de la orientación efectuada.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	e)AXA ASSISTANCE estará facultada para suspender temporalmente todos o algunos de los servicios </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	comprendidos en este contrato sin derecho a indemnización o reparación de ninguna especie en favor de la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	empresa o beneficiarios,  en todos aquellos casos en que no le sea posible momentáneamente continuar </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	prestando sus servicios por razones de fuerza mayor, caso fortuito, observancia de prohibiciones, restricciones,</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	condicionantes o limitaciones establecidas por la legislación o las autoridades administrativas o judiciales </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	chilenas o extranjeras. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Toda responsabilidad que se deriva del Servicio, será de cargo exclusivo de AXA ASSISTANCE. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	8.2.-El Servicio de Orientación Médica Telefónica sólo se otorgará a los titulares asegurados y a las cargas </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	registradas en el seguro. Tendrán aplicación las exclusiones contempladas para la cobertura principal.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	8.3.-Servicio de Coordinación de Ambulancia y enfermera</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	8.4.-Se suspenderá el servicio a los asegurados, como consecuencia de la eliminación de la póliza por parte del </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	contratante.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	8.5.-En caso de que una persona distinta a las individualizadas por BCI SEGUROS VIDA S.A. hiciere o intentare </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	hacer uso del Servicio, haciéndose pasar por algún beneficiario, AXA ASSISTANCE podrá eliminar del sistema </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	al beneficiario, sin perjuicio de cualquier otra acción legal, civil o penal, contra quienes resulten responsables. La</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	calificación del mal a que se refiere lo anterior corresponderá únicamente a AXA ASSISTANCE.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Para solicitar el servicio el asegurado deberá llamar a AXA ASSISTANCE al 600 510 0303.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	ESTE SEGURO NO CUBRE:1.Tratamientos, procedimientos, medicamentos, lociones, cremas, shampoo, con </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	fines estéticos y de embellecimiento.2.Atenciones hospitalarias y quirúrgicas relacionadas con tratamientos y/o </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	procedimientos de infertilidad o esterilidad.3.Medicamento de recetario magistral y de homeopatía, como </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	también, medicamentos para: subir o bajar de peso, para estimular el crecimiento, crecimiento o implante de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	cabello o cualquier medicamento con fines preventivos.4.Hospitalización domiciliaria.5.Arriendo de equipos de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	apoyo médico, suministro de aparatos o equipos ortopédicos.6.Tratamientos psiquiátricos, psicológicos y </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	psicopedagogía. 7.Honorarios de profesionales paramédicos, nutricionista, matrona, etc. 8.Gastos hospitalarios </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	y ambulatorios incurridos a consecuencia de embarazo normal, parto y puerperio y sus patologías relacionadas </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	o con cualquier otra enfermedad de la madre no relacionada a la definición adjunta de complicaciones por </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	embarazo.9.Insumos ambulatorios, tales como: jeringas, bajadas de suero, vendas, yeso, etc.10.Cirugía láser </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	por miopía y/o astigmatismo.11.Enfermedades preexistentes, congénitas o hereditarias.12.Complicaciones por </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	embarazo para aseguradas titulares o cónyuge menores de 18 años o mayores a 45 años y para aseguradas </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	hijas del grupo familiar. 13. Complicaciones del embarazo, parto y/o puerperio en gestaciones resultantes de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	tratamientos de esterilidad, infertilidad o fertilización asistida.</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<!-- ****************************************** COBERTURAS SALUD TOTAL COLABORADORES ***************************************** -->
	
	<!-- ****************************************** COBERTURAS SALUD CUENTA CERO   ***************************************** -->
	
	<xsl:template name="temp_cabecera_cobertura_BCICAT">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="1pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>COBERTURAS, SERVICIOS, MONTOS ASEGURADOS Y CONDICIONES PARTICULARES</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
		<xsl:template name="temp_texto_cobertura_BCICAT">		
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
					<fo:block padding-before="0pt" font-size="11.0pt">	1.-CONDICIONES DE ASEGURAMIENTO:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-La Edad de Ingreso del Titular y Cónyuge es tanto para las Mujeres y hombres desde los 18 años hasta los 55 años 0 días. (edad cronológica)</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-La Cobertura es Vitalicia tanto para  el Titular  y Asegurados Dependientes</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-La Edad de Ingreso de los hijos es desde los 14 días y la tarifa se ajustará al cumplir el hijo los 24 años de edad.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-El asegurado Titular no podrá ser mayor de 55 años 0 días para ingresar al seguro.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-El asegurado Titular deberá llenar una DPS simple.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-Deberá ser el Contratante y el Asegurado Titular la misma persona. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">2.-CONDICIONES PARTICULARES</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">1.Se entenderá por cónyuge la persona individualizada como tal en las Condiciones Particulares de la póliza.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">2.Se entenderá por hijos (Asegurados Dependientes) a aquellos que sean carga, del asegurado titular o del </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">cónyuge, como beneficiario de un sistema provisional.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">3.Una vez que el Asegurado Dependiente (hijo) cumpla los 24 años de edad, la Compañía ajustará la prima </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">según la siguiente Fórmula:  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Prima mensual = (Prima mensual de acuerdo a la edad del Asegurado de Mayor edad y al número de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">asegurados dependientes conformadas por cónyuge e hijos menores a 24 años) + (Prima mensual para cero </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">asegurados dependientes y su edad correspondiente por cada hijo mayor a 24 años) * 90%.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">4.La tarifa cobrada será la correspondiente a la cantidad de Asegurados Dependientes y por la edad del </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Asegurado Mayor del Grupo Familiar. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">5. En caso de fallecimiento del Asegurado Titular o Asegurado Dependiente se deberá dar aviso a la Compañía </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">de Seguros en el más breve plazo.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">6.Renovaciones del Seguro: El presente seguro se  renovará anualmente en forma automática, salvo que </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">cualquiera de las partes manifieste su intención de no continuar con el seguro, por medio de aviso escrito </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">enviado al domicilio del contrato con 30 días de anticipación.  La prima de esta póliza será ajustada anualmente, </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">de acuerdo a la tarifa vigente y a la edad de los Asegurados al momento de la renovación del contrato. (Art. 13 </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">de las Condiciones Generales).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">3.-DEFINICIONES:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Evento : Todas las prestaciones hospitalarias o ambulatorias asociadas a un diagnóstico por enfermedad o </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">accidente  y sus consecuencias posteriores asociadas directamente al diagnóstico principal, con una duración </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">máxima de tres años contados desde la fecha de pago del primer reembolso cubierto por esta póliza. En caso </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">que la enfermedad o accidente que dio origen a un evento objeto de reembolso se prolongue más allá del plazo </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">indicado precedentemente, éste será considerado como un nuevo evento, reinstalándose la franquicia y el </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">capital asegurado.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Evento Familiar: Un mismo evento que involucra simultáneamente a más de un miembro del grupo familiar </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">asegurado.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Franquicia: La Aseguradora asumirá el 100% de la indemnización que sea determinada por el liquidador y </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">aceptada por aquella, pero sólo en el caso de que el monto de la indemnización supere el monto en UF indicado </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">en las condiciones particulares como franquicia por evento, y hasta el límite de la suma asegurada señalada en </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">las condiciones particulares de la póliza.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Complicaciones del embarazo: Estará cubierto por esta póliza el embarazo extrauterino, eclamsia,  preclamsia y </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">mola hidatiforme (embarazo molar), asi como complicaciones de estos mismos.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">4.-FRANQUICIAS Y CARENCIAS: </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">-En caso que un mismo evento afecte a más de un integrante del grupo asegurado (evento familiar), no se </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">considerará la franquicia por cada miembro de la familia, sino que se asumirá un sola franquicia equivalente al </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">150% de la franquicia del  Plan seleccionado, considerando todos los gastos del grupo familiar</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">-Para el plan Contratado de UF 4.000 a partir de los 66 años se aplica una franquicia UF 100 y capital se reduce </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">a UF 2.000.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">-Para los planes contratados de  UF 10.000 y UF 20.000 a partir de los 66 años se aplica una franquicia de UF </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">100 y el capital se reduce UF 4.000.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">-El período de carencia es de 60 días. Esto significa que carecerán de cobertura todos los eventos que se </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">originen dentro de un plazo de 60 días corridos, contados desde la fecha de inicio de vigencia de la póliza.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">-La cobertura de complicaciones por embarazo tendrá un período de carencia de 10 meses, contado a partir de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">la incorporación de la asegurada con derecho a esta prestación. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">5.-INCLUSIÓN DE ASEGURADOS</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Para incorporar asegurados al seguro, será requisito indispensable que el asegurado titular complete y firme la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Solicitud de Endoso que incluye la Declaración de Salud correspondiente. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">En caso que la compañía acepte la modificación del grupo familiar, la fecha de inicio de vigencia, para el nuevo </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">asegurado, será el mes siguiente de la recepción de la solicitud correspondiente. Igual criterio se aplicará en </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">caso de exclusión de asegurado del grupo familiar.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">6.-PORCENTAJES DE REEMBOLSOS PARA SITUACIONES ESPECIALES:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">1.Los gastos no reembolsables por la institución de salud previsional a la  cual se encuentre adherido el </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">asegurado (prestaciones no cubiertas por el plan individual y/o prestaciones no codificadas), serán </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">indemnizados considerando el 50% del gasto real efectuado. Este criterio también será aplicado a los </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">reembolsos que correspondan a asegurados que no estén afiliados a una institución de salud previsional y </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">cuando se trate de gastos efectuados en el extranjero.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">2.Si el asegurado no hace uso del sistema de salud previsional al cual está asociado, los gastos serán </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">indemnizados considerando el 25% del gasto real efectuado.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">3.Para efectos de completar la franquicia, sólo se considerarán aquellos gastos médicos efectuados dentro de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">los ciento ochenta (180) días corridos anteriores a la fecha de presentación de la primera solicitud de reembolso </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">que supere la franquicia fijada para el Plan seleccionado.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">7.-DESCRIPCIÓN DE LAS COBERTURAS Y LOS BENEFICIOS DEL SEGURO</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">COBERTURA SEGURO CATASTROFICO </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">1.- BENEFICIO DE HOSPITALIZACIÓN </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">DÍAS CAMA 100 % Reembolso;SERVICIOS HOSPITALARIOS: 100 % Reembolso;HONORARIOS MÉDICOS </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">QUIRÚRGICOS:100 % Reembolso;CIRUGIA DENTAL POR ACCIDENTE:100 % Reembolso;SERVICIO </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">PRIVADO DE ENFERMERA:100 % Reembolso;SERVICIO DE AMBULANCIA TERRESTRE:100 % Reembolso</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">GASTOS EN EL EXTRANJERO: 50% Reembolso</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">2.-BENEFICIO AMBULATORIO:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">CONSULTAS MÉDICA:100 % Reembolso;EXAMENES DE LABORATORIO - RADIOGRAFÍAS:100 % </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Reembolso;</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">TRATAMIENTOS Y PROCEDIMIENTOS:100 % Reembolso;CIRUGÍA AMBULATORIA:100 % Reembolso;</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">ÓRTESIS Y PROTESIS:100 % Reembolso;KINESIOLOGÍA:100 % Reembolso,MEDICAMENTOS </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">AMBULATORIOS:50% Reembolso</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">COBERTURA COMPLICACIONES DEL EMBARAZO:Se otorga únicamente al asegurado titular o a la esposa , </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">entre 18 y 45 años.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">3.-BENEFICIO DESCUENTO FARMACIAS SALCOBRAND:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Bonofarma: Bonificación 40% Remedios de Marca; y 40% Remedios genéricos.Tope Bonificado por Asegurado </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">5 UF.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">El asegurado debe acudir al médico con su Vademécum Bonofarma, para que éste le recete del listado de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">medicamentos bonificados. Luego, dirigirse a cualquier farmacia Salcobrand con:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">- Credencial Bonofarma.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">- N° Cédula de identidad del asegurado titular.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">- Receta Médica que indique: Nombre y Rut del Médico,Fecha</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">- Nombre del asegurado titular.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">- Detalle de medicamentos (cantidad y dosis)</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">8. SERVICIO ALO DOCTOR (AXA ASSISTANCE)</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">1.- DESCRIPCION DEL SERVICIO</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">AXA ASSISTANCE prestará los siguientes servicios a que tengan derecho los asegurados de BCI SEGUROS </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">VIDA S.A.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">a)El objetivo del Servicio es recomendar y orientar telefónicamente sobre las acciones que  más conviene seguir </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">en   caso de dolencias, problemas, dudas o inquietudes de salud. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">b)El Servicio se otorgará, 24 horas al día, 7 días a la semana.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">c)Las recomendaciones emanadas de AXA ASSISTANCE en ningún caso constituyen la realización de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">diagnóstico ni indicación de tratamiento.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">d)Todas las conversaciones telefónicas relativas al servicio serán grabadas. AXA ASSISTANCE se compromete </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">a hacer un uso prudente y apropiado de las grabaciones referidas. Lo anterior tiene por objeto contar con un </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">respaldo acerca de la orientación efectuada.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">e)AXA ASSISTANCE estará facultada para suspender temporalmente todos o algunos de los servicios </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">comprendidos en este contrato sin derecho a indemnización o reparación de ninguna especie en favor de la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">empresa o beneficiarios,  en todos aquellos casos en que no le sea posible momentáneamente continuar </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">prestando sus servicios por razones de fuerza mayor, caso fortuito, observancia de prohibiciones, restricciones,</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">condicionantes o limitaciones establecidas por la legislación o las autoridades administrativas o judiciales </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">chilenas o extranjeras. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Toda responsabilidad que se deriva del Servicio, será de cargo exclusivo de AXA ASSISTANCE. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">2.-El Servicio de Orientación Médica Telefónica sólo se otorgará a los titulares asegurados y a las cargas </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">registradas en el seguro. Tendrán aplicación las exclusiones contempladas para la cobertura principal.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">3.-Servicio de Coordinación de Ambulancia y enfermera</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">4.-Se suspenderá el servicio a los asegurados, como consecuencia de la eliminación de la póliza por parte del </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">contratante.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">5.-En caso de que una persona distinta a las individualizadas por BCI SEGUROS VIDA S.A. hiciere o intentare </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">hacer uso del Servicio, haciéndose pasar por algún beneficiario, AXA ASSISTANCE podrá eliminar del sistema </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">al beneficiario, sin perjuicio de cualquier otra acción legal, civil o penal, contra quienes resulten responsables. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">La calificación del mal a que se refiere lo anterior corresponderá únicamente a AXA ASSISTANCE.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Para solicitar el servicio el asegurado deberá llamar a AXA ASSISTANCE al 600 510 0303.</fo:block>

					<fo:block padding-before="0pt" font-size="11.0pt">ESTE SEGURO NO CUBRE:1.Tratamientos, procedimientos, medicamentos, lociones, cremas, shampoo, con </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">fines estéticos y de embellecimiento.2.Atenciones hospitalarias y quirúrgicas relacionadas con tratamientos y/o </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">procedimientos de infertilidad o esterilidad.3.Medicamento de recetario magistral y de homeopatía, como </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">también, medicamentos para: subir o bajar de peso, para estimular el crecimiento, crecimiento o implante de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">cabello o cualquier medicamento con fines preventivos.4.Hospitalización domiciliaria.5.Arriendo de equipos de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">apoyo médico, suministro de aparatos o equipos ortopédicos.6.Tratamientos psiquiátricos, psicológicos y </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">sicopedagogía.7. Honorarios de profesionales paramédicos (enfermera, nutricionista, matrona, etc.)8.Gastos </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">hospitalarios y ambulatorios incurridos a consecuencia de embarazo normal, parto y puerperio y sus patologías </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">relacionadas o con cualquier otra enfermedad de la madre no relacionada a la definición adjunta de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">complicaciones por embarazo.9.Insumos ambulatorios, tales como: jeringas, bajadas de suero, vendas, yeso, </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">etc.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">10.Cirugía láser por miopía y/o astigmatismo.11.Enfermedades preexistentes, congénitas o </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">hereditarias.12.Complicaciones por embarazo para aseguradas titulares o cónyuge menores de 18 años o </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">mayores a 45 años y para aseguradas hijas del grupo familiar. 13.Complicaciones del embarazo, parto y/o </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">puerperio en gestaciones resultantes de tratamientos de esterilidad, infertilidad o fertilización asistida.</fo:block>

					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	
	<!-- ****************************************** COBERTURAS SALUD CUENTA CERO  ***************************************** -->

	<!-- ****************************************** COBERTURAS MAXIMA SALUD  ***************************************** -->
<xsl:template name="temp_cabecera_cobertura_BCICTS">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="1pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>DECLARACION PERSONAL DE SALUD</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
		
	<xsl:template name="temp_texto_cobertura_BCICTS">
		<fo:block padding-before="2pt">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(85)"/>
						<fo:table-column column-width="proportional-column-width(15)"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="#dedede" padding-left="5pt">
										<fo:block padding-before="0pt" font-size="11.0pt">¿ Usted o alguno de sus asegurados asociados 1) Ha estado hospitalizado en los últimos 6		</fo:block>	
										<fo:block padding-before="0pt" font-size="11.0pt"> meses ó 2) Tiene programada una hospitalización a futuro; ó 3) Ha padecido, se le ha                 </fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">  diagnosticado, o tiene conocimiento de sufrir alguna vez una de las siguientes enfermedades:        </fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">   Diabetes, enfermedades al riñón, enfermedades de los huesos o músculos, enfermedades               </fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">    cardiacas, bypass, hipertensión arterial, enfermedades coronarias, soplos cardiacos, arritmias,   </fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">     sobrepeso u obesidad, enfermedades del sistema respiratorio, cáncer, hepatitis (excepto tipo A), </fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">      enfermedades gastrointestinales como cirrosis hepática, úlcera gástrica, colitis ulcerosa,      </fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">      enfermedades hematológicas como leucemia, linfoma o anemia (excepto la falta de fierro),        </fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">      desordenes nerviosos mentales, Sida, HIV Positivo , enfermedades neurológicas como              </fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">      accidente vascular cerebral, epilepsia, enfermedad de alzheimer, alcoholismo o drogadicción ó   </fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">      4) Tiene alguna malformación congénita o ha sido transplantado?.                                </fo:block>
								</fo:table-cell>
								<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="#f0f0f0" padding-left="5pt" padding-right="5pt">
									<fo:block>
										<xsl:text>NO</xsl:text>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
	</xsl:template>	
	<!-- ****************************************** COBERTURAS MAXIMA SALUD  ***************************************** -->
	
	
	<!-- ********************************************************************************** -->
	<!-- ********************************************************************************** -->
	<!-- ********************************************************************************** -->
	<!-- ********************************************************************************** -->
	<!-- ********************************************************************************** -->
	<!-- ********************************************************************************** -->
	


	<!-- ****************************************** CONDICIONES MAXIMA SALUD  ***************************************** -->

	<xsl:template name="temp_tituloCondiciones_BCICTS">
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

	<xsl:template name="temp_datosCondiciones_BCICTS">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
							<fo:block padding-before="0pt" font-size="11.0pt">  CONDICIONES DEL PRIMER PAGO</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  Si la prima en depósito es pagada mediante cargo en tarjeta de crédito, se entenderá cancelada solo una vez</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  que la Administradora de Tarjetas de Crédito apruebe el cargo de dicha tarjeta.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  Se entenderá que hay aceptación del riesgo por el solo hecho de la emisión de la póliza solicitada en virtud de </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  esta propuesta, pagándose la primera cuota con este primer pago.  En caso de rechazo, la compañía </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  comunicará por escrito al contratante, al domicilio arriba señalado, devolviéndole la prima en depósito recibida.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  La póliza que se emita como consecuencia de la presente propuesta, se regirá por las condiciones generales </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  inscritas en la S.V.S. bajo el código POL. 299 003</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  El Seguro ofrecido es intermediado por BCI Corredores de Seguros S.A. y la compañía que cubre el riesgo es </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  BCI Seguros Vida S.A.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  El proponente ha tomado conocimiento del derecho a decidir sobre la contratación de los seguros y a la libre</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  elección del intermediario y compañía aseguradora.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  "Con la emisión de la presente propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  cobertura comenzará a regir únicamente a partir del momento en que esta propuesta sea aceptada por el </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  asegurador y se inicie la vigencia de la póliza" (Circular Nª 1.390 S.V.S.).</fo:block>						
							<fo:block padding-before="0pt" font-size="11.0pt">  El contratante faculta a BCI Seguros Vida S.A., para guardar y conservar el original de toda y cualquier poliza de</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  seguro que tenga su origen en la presente propuesta o en el ejercicio del mandato que en este acto confiere o el </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  de sus endosos, si los hubiere, liberando expresamente a la compañia y al corredor, en su caso, de la</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  obligacion que contempla el articulo 549 del Codigo de Comercio.</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<!-- ****************************************** CONDICIONES MAXIMA SALUD  ***************************************** -->
	
	
	
	
	<!-- ****************************************** CONDICIONES CUENTA CERO  ***************************************** -->

	<xsl:template name="temp_tituloCondiciones_BCICAT">
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

	<xsl:template name="temp_datosCondiciones_BCICAT">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
							<fo:block padding-before="0pt" font-size="11.0pt">  CONDICIONES DEL PRIMER PAGO</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  Si la prima en depósito es pagada mediante cargo en tarjeta de crédito, se entenderá cancelada solo una vez</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  que la Administradora de Tarjetas de Crédito apruebe el cargo de dicha tarjeta.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  Se entenderá que hay aceptación del riesgo por el solo hecho de la emisión de la póliza solicitada en virtud de </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  esta propuesta, pagándose la primera cuota con este primer pago.  En caso de rechazo, la compañía </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  comunicará por escrito al contratante, al domicilio arriba señalado, devolviéndole la prima en depósito recibida.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  La póliza que se emita como consecuencia de la presente propuesta, se regirá por las condiciones generales </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  inscritas en la S.V.S. bajo el código POL. 299 003</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  Se deja constancia que, en caso que esta propuesta sea aceptada por el asegurador, la fecha de inicio de la </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  cobertura al riesgo será el día siguiente de la fecha de llenado de esta propuesta, por los montos que se indican</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  para el plan elegido</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  El seguro ofrecido es inmediato por BCI Corredores de Seguros S.A. y la compañía que cubre el riesgo es</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  BCI Seguros de Vida S.A.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  El proponente ha tomado conocimiento del derecho a decidir sobre la contratación de los seguros y a la libre</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  elección del intermediario y compañía aseguradora</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  "Con la emisión de la presente propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  cobertura comenzará a regir únicamente a partir del momento en que esta propuesta sea aceptada por el </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  asegurador y se inicie la vigencia de la póliza" (Circular Nª 1.390 S.V.S.).</fo:block>							
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<!-- ****************************************** CONDICIONES CERO ***************************************** -->
	
	
	
	
	
	
	
	<!-- ****************************************** CONDICIONES COLABORADORES  ***************************************** -->

	<xsl:template name="temp_tituloCondiciones_BCICOL">
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

	<xsl:template name="temp_datosCondiciones_BCICOL">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
							<fo:block padding-before="0pt" font-size="11.0pt">CONDICIONES DEL PRIMER PAGO												</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Si la prima en depósito es pagada mediante cargo en tarjeta de crédito, se entenderá cancelada solo una vez           </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">que la Administradora de Tarjetas de Crédito apruebe el cargo de dicha tarjeta.                                       </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Se entenderá que hay aceptación del riesgo por el solo hecho de la emisión de la póliza solicitada en virtud de       </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">esta propuesta, pagándose la primera cuota con este primer pago.  En caso de rechazo, la compañía                     </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">comunicará por escrito al contratante, al domicilio arriba señalado, devolviéndole la prima en depósito recibida.     </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">La póliza que se emita como consecuencia de la presente propuesta, se regirá por las condiciones generales            </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">inscritas en la S.V.S. bajo el código  POL 299 003                                                                   </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">El Seguro ofrecido es intermediado por BCI Corredores de Seguros S.A. y la compañía que cubre el riesgo es            </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">BCI Seguros Vida S.A.                                                                                                 </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">El proponente ha tomado conocimiento del derecho a decidir sobre la contratación de los seguros y a la libre          </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">elección del intermediario y compañía aseguradora.                                                                    </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">"Con la emisión de la presente propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La        </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">cobertura comenzará a regir únicamente a partir del momento en que esta propuesta sea aceptada por el                 </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">asegurador y se inicie la vigencia de la póliza" (Circular Nª 1.390 S.V.S.).                                          </fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<!-- ****************************************** CONDICIONES COLABORADORES ***************************************** -->
	
	
	
	
	
	<!-- ****************************************** DECLARACIONES COLABORADORES ***************************************** -->
	
	<xsl:template name="temp_titulo_Declaracion_Especial_BCICOL">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>DECLARACION ESPECIAL</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>	
	<xsl:template name="temp_Declaracion_Especial_BCICOL">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(2)"/>
				<fo:table-column column-width="proportional-column-width(4)"/>
				<fo:table-column column-width="proportional-column-width(47)"/>
				<fo:table-column column-width="proportional-column-width(47)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="4" text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">POR LA PRESENTE DECLARO QUE A MI MEJOR CONOCIMIENTO, INFORMACIÓN Y ENTENDER,					</fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">NINGUNA DE LAS PERSONAS PROPUESTAS PARA EL SEGURO EN ESTA SOLICITUD, PADECE, O LE                               </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">HAN SIDO DIAGNOSTICADA ALGUNA DE LAS ENFERMEDADES,SINTOMAS O TRATAMIENTOS                                       </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">SEÑALADOS ANTERIORMENTE.                                                                                        </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">Entiendo y concuerdo que ninguno de los asegurados de este seguro operará si la causa del fallecimiento o       </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">diagnóstico de la enfermedad, fuese preexistente a la fecha de suscriptción de esta propuesta.                  </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">El Contratante ha tomado conocimiento del derecho a decidir sobre la contratación de los asegurados y la libre  </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">elección del intermediario y compañia aseguradora.                                                              </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">Declaro que he contestado completa y verídicamente la pregunta arriba formulada y que estoy de acuerdo con      </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">que esta declaración forme parte integrante del contrato.                                                       </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">En cumplimiento a lo dispuesto en la Norma de Carácter General Nº 124 del 22 de Noviembre del 2001, dictada     </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">por la Superintendencia de Valores y Seguros, declaro que he consentido expresamente las coberturas de que      </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">da cuenta el presente contrato, excluye los gastos médicos producidos:                                          </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">1.- Durante la realización de deportes riesgosos, aunque se practique en forma esporádica, y en que se ponga    </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">en peligro la vida o la integridad física de la persona, tales como : Buceo, alas delta, parapente, carreras de </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">velocidad (auto, moto, ciclismo), carreras de caballo, piloto de aviación civil, andinismo, entre otros.        </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">2.- Cuando el siniestro tenga lugar como consecuencia del desempeño de actividades especificadas para su        </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">cargo u ocupación, que se consideran riesgosas, tales como : trabajo en actividades mineras, forestales,        </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">pesqueras, operador de explosivos, albañiles en altura, bomberos en general, miembro de las fuerzas armadas     </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">y de orden, reportero en zonas de conflicto, entre otras.                                                       </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">3.- A consecuencia directa o indirecta de un accidente o de una incapacidad diagnosticada o conocida con        </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">anterioridad a la vigencia inicial de la póliza. Quedan comprendidas en esta exclusión las enfermedades         </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">producidas directa e indirectamente por excesos o usos abusivos de sustencias como el tabaco, alcohol y         </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">drogas.                                                                                                         </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">4.- Adicionalmente, autorizo a cualquier médico, hospital, clinica u otra institución o persona que tenga mis   </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">registros personales, para que pueda dar información solicitada por BCI Seguros Vida S.A.. A su vez faculto a   </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">esta última, para que solicite o retire copia de tales antecedentes.                                            </fo:block>		
						</fo:table-cell>
					</fo:table-row>
					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>		
	
	<!-- ****************************************** DECLARACIONES COLABORADORES ***************************************** -->
	
	
		
	<!-- ****************************************** DECLARACIONES CUENTA CERO ***************************************** -->
	
	<xsl:template name="temp_titulo_Declaracion_Especial_BCICAT">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>DECLARACION ESPECIAL</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>	
	<xsl:template name="temp_Declaracion_Especial_BCICAT">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(2)"/>
				<fo:table-column column-width="proportional-column-width(4)"/>
				<fo:table-column column-width="proportional-column-width(47)"/>
				<fo:table-column column-width="proportional-column-width(47)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="4" text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">POR LA PRESENTE DECLARO QUE A MI MEJOR CONOCIMIENTO, INFORMACIÓN Y ENTENDER,					</fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">NINGUNA DE LAS PERSONAS PROPUESTAS PARA EL SEGURO EN ESTA SOLICITUD, PADECE, O LE                               </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">HAN SIDO DIAGNOSTICADA ALGUNA DE LAS ENFERMEDADES,SINTOMAS O TRATAMIENTOS                                       </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">SEÑALADOS ANTERIORMENTE.                                                                                        </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">Entiendo y concuerdo que ninguno de los asegurados de este seguro operará si la causa del fallecimiento o       </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">diagnóstico de la enfermedad, fuese preexistente a la fecha de suscriptción de esta propuesta.                  </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">El Contratante ha tomado conocimiento del derecho a decidir sobre la contratación de los asegurados y la libre  </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">elección del intermediario y compañia aseguradora.                                                              </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">Declaro que he contestado completa y verídicamente la pregunta arriba formulada y que estoy de acuerdo con      </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">que esta declaración forme parte integrante del contrato.                                                       </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">En cumplimiento a lo dispuesto en la Norma de Carácter General Nº 124 del 22 de Noviembre del 2001, dictada     </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">por la Superintendencia de Valores y Seguros, declaro que he consentido expresamente las coberturas de que      </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">da cuenta el presente contrato, excluye los gastos médicos producidos:                                          </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">1.- Durante la realización de deportes riesgosos, aunque se practique en forma esporádica, y en que se ponga    </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">en peligro la vida o la integridad física de la persona, tales como : Buceo, alas delta, parapente, carreras de </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">velocidad (auto, moto, ciclismo), carreras de caballo, piloto de aviación civil, andinismo, entre otros.        </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">2.- Cuando el siniestro tenga lugar como consecuencia del desempeño de actividades especificadas para su        </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">cargo u ocupación, que se consideran riesgosas, tales como : trabajo en actividades mineras, forestales,        </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">pesqueras, operador de explosivos, albañiles en altura, bomberos en general, miembro de las fuerzas armadas     </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">y de orden, reportero en zonas de conflicto, entre otras.                                                       </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">3.- A consecuencia directa o indirecta de un accidente o de una incapacidad diagnosticada o conocida con        </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">anterioridad a la vigencia inicial de la póliza. Quedan comprendidas en esta exclusión las enfermedades         </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">producidas directa e indirectamente por excesos o usos abusivos de sustencias como el tabaco, alcohol y         </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">drogas.                                                                                                         </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">4.- Adicionalmente, autorizo a cualquier médico, hospital, clinica u otra institución o persona que tenga mis   </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">registros personales, para que pueda dar información solicitada por BCI Seguros Vida S.A.. A su vez faculto a   </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">esta última, para que solicite o retire copia de tales antecedentes.                                            </fo:block>		
						</fo:table-cell>
					</fo:table-row>
					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>		
	
	<!-- ****************************************** DECLARACIONES CUENTA CERO ***************************************** -->
	
	
	
	
	<!-- ****************************************** DECLARACIONES MAXIMA SALUD ***************************************** -->
	
	<xsl:template name="temp_titulo_Declaracion_Especial_BCICTS">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>CONDICIONES GENERALES</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>	
	<xsl:template name="temp_Declaracion_Especial_BCICTS">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(2)"/>
				<fo:table-column column-width="proportional-column-width(4)"/>
				<fo:table-column column-width="proportional-column-width(47)"/>
				<fo:table-column column-width="proportional-column-width(47)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="4" text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">POR LA PRESENTE DECLARO QUE A MI MEJOR CONOCIMIENTO, INFORMACIÓN Y ENTENDER,						</fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0"> NINGUNA DE LAS PERSONAS PROPUESTAS PARA EL SEGURO EN ESTA SOLICITUD, PADECE, O LE                                      </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">  HAN SIDO DIAGNOSTICADA ALGUNA DE LAS ENFERMEDADES,SINTOMAS O TRATAMIENTOS                                             </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">  SEÑALADOS ANTERIORMENTE.                                                                                              </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">Entiendo y concuerdo que ninguno de los asegurados de este seguro operará si la causa del fallecimiento o               </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">diagnóstico de la enfermedad, fuese preexistente a la fecha de suscriptción de esta propuesta.                          </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">El Contratante ha tomado conocimiento del derecho a decidir sobre la contratación de los asegurados y la libre          </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">elección del intermediario y compañia aseguradora.                                                                      </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">Declaro que he contestado completa y verídicamente la pregunta arriba formulada y que estoy de acuerdo con              </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">que esta declaración forme parte integrante del contrato.                                                               </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">En cumplimiento a lo dispuesto en la Norma de Carácter General Nº 124 del 22 de Noviembre del 2001, dictada             </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">por la Superintendencia de Valores y Seguros, declaro que he consentido expresamente las coberturas de que              </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">da cuenta el presente contrato, excluye los gastos médicos producidos:                                                  </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">1.- Durante la realización de deportes riesgosos, aunque se practique en forma esporádica, y en que se ponga            </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">en peligro la vida o la integridad física de la persona, tales como : Buceo, alas delta, parapente, carreras de         </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">velocidad (auto, moto, ciclismo), carreras de caballo, piloto de aviación civil, andinismo, entre otros.                </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">2.- Cuando el siniestro tenga lugar como consecuencia del desempeño de actividades especificadas para su                </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">cargo u ocupación, que se consideran riesgosas, tales como : trabajo en actividades mineras, forestales,                </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">pesqueras, operador de explosivos, albañiles en altura, bomberos en general, miembro de las fuerzas armadas             </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">y de orden, reportero en zonas de conflicto, entre otras.                                                               </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">3.- A consecuencia directa o indirecta de un accidente o de una incapacidad diagnosticada o conocida con                </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">anterioridad a la vigencia inicial de la póliza. Quedan comprendidas en esta exclusión las enfermedades                 </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">producidas directa e indirectamente por excesos o usos abusivos de sustencias como el tabaco, alcohol y                 </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">drogas.                                                                                                                 </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">4.- Asimismo, declaro expresamente conocer que el presente contrato tendrá un período de carencia de 30 días.           </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">Esto significa que carecerán de coberturas todos los eventos que se originen dentro de un plazo de 30 días              </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">corridos, contados desde la fecha de inicio de vigencia de la póliza.                                                   </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">Adicionalmente, autorizo a cualquier médico, hospital, clinica u otra institución o persona que tenga mis registros     </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">personales, para que pueda dar información solicitada por BCI Seguros Vida S.A.. A su vez faculto a esta                </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">última, para que solicite o retire copia de tales antecedentes.                                                         </fo:block>
		
						</fo:table-cell>
					</fo:table-row>
					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>	
	<xsl:template name="temp_titulo_Declaracion_Especial_2_BCICTS">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>COMPROMISO DE COBERTURA</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>	
	<xsl:template name="temp_Declaracion_Especial_2_BCICTS">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(2)"/>
				<fo:table-column column-width="proportional-column-width(4)"/>
				<fo:table-column column-width="proportional-column-width(47)"/>
				<fo:table-column column-width="proportional-column-width(47)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="4" text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">Se deja constancia que, en caso que esta propuesta sea aceptada por el asegurador, la fecha de inicio de la		</fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0"> cobertura al riesgo será el día siguiente de la fecha de llenado de esta propuesta, por los montos que se indican      </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">  para el plan elegido.                                                                                                 </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">La póliza que se emita como consecuencia de la presente propuesta, se regirá por las condiciones generales              </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">inscritas en la S.V.S. bajo el código POL. 299 003.                                                                    </fo:block>
						</fo:table-cell>
					</fo:table-row>
					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>	
		
	
	<!-- ****************************************** DECLARACIONES CUENTA CERO ***************************************** -->
	
	<!-- ****************************************** DPS ***************************************** -->
	
	
	
<!--  	<xsl:template name="temp_DPS_BCICAT">
		
		<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(2)"/>
				<fo:table-column column-width="proportional-column-width(4)"/>
				<fo:table-column column-width="proportional-column-width(47)"/>
				<fo:table-column column-width="proportional-column-width(47)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="4" text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">SI UNO DE LOS ASEGURADOS TIENE 55 O MAS AÑOS DEBERA CONTESTAR DECLARACION PERSONAL </fo:block>
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">DE SALUD ADICIONAL COMO REQUISITO DE ASEGURABILIDAD Y ADJUNTARLA A LA PRESENTE     </fo:block>
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">PROPUESTA.                                                                         </fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:call-template name="temp_cuadros"/>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template> -->
	
	
<!--	<xsl:template name="temp_DPS_BCICOL">
		
		<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(2)"/>
				<fo:table-column column-width="proportional-column-width(4)"/>
				<fo:table-column column-width="proportional-column-width(47)"/>
				<fo:table-column column-width="proportional-column-width(47)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="4" text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">SI UNO DE LOS ASEGURADOS TIENE 55 O MAS AÑOS DEBERA CONTESTAR DECLARACION PERSONAL </fo:block>
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">DE SALUD ADICIONAL COMO REQUISITO DE ASEGURABILIDAD Y ADJUNTARLA A LA PRESENTE     </fo:block>
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">PROPUESTA.                                                                         </fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:call-template name="temp_cuadro_ok"/>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	-->
	
	<!-- ****************************************** DPS ***************************************** -->
	
	
	
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
					<fo:block padding-before="0pt" font-size="11.0pt">Bci Corredores de Seguros S.A., Rut: 78.951.950-1, en mi calidad de Corredor de Seguros y en cumplimiento a la	    	</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">ley, informo que durante el año calendario anterior intermedié contratos de seguros con las siguientes Compañías      	</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">de Seguros:                                                                                                           	</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">En Seguros Generales, el 76,37 % en BCI Seguros Generales SA, el 11,50 % con la Compañía de seguros    					</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">generales Cardif SA, el 3,62% con Royal Sunalliance Seguros SA, el 2,09 % con Liberty Cia. de    							</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Seguros Generales SA, el 1,70 % con Aseguradora Magallanes SA, el 1,52 % con C.S.G Penta Security S.A, 					</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">el 1,42 % MAPFRE Seguros generales, el 1,16 % con Consorcio Nacional de seguros Generales S.A. y otras 					</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">0,61 %. En Seguros de Vida, el 60,96 % con BCI Seguros de Vida S.A., el 29,37 % con la Compañía de seguros 				</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">de vida Cardif  S.A., el 3,86 % con la Chilena Consolidada Seguros de Vida SA, el 2,53 % en la Interamericana  			</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Cía. de Seguros de Vida S.A., el 1,08 % con Euroamerica Vida SA y otras 2,19 %. En Renta Vitalicia, el 30,91 % ,  		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">con MetLife Chile  Seguros de vida SA, 15,03 % con Euroamerica Seg. de Vida SA el 14,78 % con ING  Seg. de    			</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Vida, el 10,35 % con C.S.V Consorcio nacional de seguros S.A., el 8,85 % con Principal Cía. de seguros  de  				</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Vida Chile S.A., el 7,27  % con Vida Corp Seguros de Vida S.A., el 5,08 % con Bci seguros Vida,  							</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">y otras  7,73 %. Para responder del correcto y cabal cumplimiento de todas mis obligaciones emanadas de la  				</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">actividad de Corredor de seguros y en especial de los perjuicios que pueda ocasionar a los asegurados que					</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">contraten seguros por mi intermedio se ha emitido Póliza de Responsabilidad  Civil  N° 4245882 en Consorcio 				</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Nacional de Seguros Generales y Póliza de Garantía N° 10005712 en Consorcio Nacional de Seguros Generales.  				</fo:block>
				</fo:table-cell>
			</fo:table-row>
		</fo:table-body>
		</fo:table>
	</fo:block>
</xsl:template>
	
	
	
	
	
	<!-- RUTINA CODIGO BARRA -->
	
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
	<!-- FIN RUTINA CODIGO BARRA -->

		<!-- INICIO DESCUENTO POR PLANILLA -->
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

	<!-- FIN DESCUENTO POR PLANILLA -->




</xsl:stylesheet>

