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
							 (continuaci�n)
							  - 
							 P�gina <fo:page-number/>
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
									<xsl:text> - PRODUCTO Seguro M�xima Salud </xsl:text>
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
					<xsl:text>Descripci�n</xsl:text>
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
								<xsl:text>Direcci�n</xsl:text>
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
									<xsl:text>N� de Tarjeta :</xsl:text>
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
								<xsl:text>Env�o de Factura</xsl:text>
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
								<xsl:text>Direcci�n</xsl:text>
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
						<xsl:text>Compa�ia</xsl:text>
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
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">  � Usted o alguno de sus asegurados asociados 1) Ha estado hospitalizado en los �ltimos 6 meses � 2) Tiene </fo:block>
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">  programada una hospitalizaci�n a futuro; � 3) Ha padecido, se le ha diagnosticado, o tiene conocimiento de sufrir </fo:block>
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">  alguna vez una de las siguientes enfermedades: Diabetes, enfermedades al ri��n, enfermedades de los huesos o </fo:block>
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">  m�sculos, enfermedades cardiacas, bypass, hipertensi�n arterial, enfermedades coronarias, soplos cardiacos, </fo:block>
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">  arritmias, sobrepeso u obesidad, enfermedades del sistema respiratorio, c�ncer, hepatitis (excepto tipo A), </fo:block>
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">  enfermedades gastrointestinales como cirrosis hep�tica, �lcera g�strica, colitis ulcerosa, enfermedades </fo:block>
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">  hematol�gicas como leucemia, linfoma o anemia (excepto la falta de fierro), desordenes nerviosos mentales, </fo:block>
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">  Sida, HIV Positivo , enfermedades neurol�gicas como accidente vascular cerebral, epilepsia, enfermedad de </fo:block>
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">  alzheimer, alcoholismo o drogadicci�n � 4) Tiene alguna malformaci�n cong�nita o ha sido transplantado?.</fo:block>
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
												<xsl:text>N� Cta. Corriente</xsl:text>
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
									<!-- SECCION COMPA�IA -->
									<fo:table-row>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Propuesta N�</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:value-of disable-output-escaping="no" select="nroPropuesta"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Compa��a</xsl:text>
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

													<fo:block padding-before="3pt">1. Autorizo al Banco antes indicado a pagar, con cargo a mi cuenta corriente, los valores  involucrados en cada una de la(s) p�liza(s) y endoso(s) que BCI Seguros Generales S.A. y/o BCI Seguros Vida S.A., en adelante, BCI Seguros, presente a cobro.</fo:block>
													<fo:block padding-before="3pt">2. BCI Seguros enviar� al Banco peri�dicamente, de acuerdo a lo estipulado con la Compa��a, la informaci�n  para el pago correspondiente.</fo:block>
													<fo:block padding-before="3pt">3. Asumo el compromiso de mantener en mi Cuenta Corriente indicada precedentemente, incluida L�nea de  Cr�dito, si la hubiere, los fondos necesarios para cubrir los cargos que se hagan en virtud del presente instrumento, liberando al Banco de toda responsabilidad si ello no ocurriera.</fo:block>
													<fo:block padding-before="3pt">4. El abono deber� hacerse en favor de BCI Seguros, el d�a establecido en el contrato, con cargo a mi cuenta corriente antes indicada. En la eventualidad que el d�a de cargo corresponda a s�bado, domingo o festivo, el cargo se efectuar� el d�a h�bil bancario anterior  o posterior, seg�n sea el modo de operaci�n del Banco. Este cargo en mi Cuenta Corriente se regir� por las condiciones generales de uso del servicio del Banco, los cuales declaro conocer y aceptar.</fo:block>
													<fo:block padding-before="3pt">5. Si en el d�a establecido para efectuar el cargo en cuenta corriente no hubiere fondos disponibles o �stos no fueren suficientes, el Banco podr� reintentar cargos o cobros posteriores cuantas veces sea necesario. A mayor abundamiento, la presente autorizaci�n de cargo en mi cuenta corriente se entender�, para todos los efectos legales, dada el mismo d�a en que �sta se lleve a efecto.</fo:block>
													<fo:block padding-before="3pt">6. En el evento que se  produzca el cierre de la Cuenta Corriente del mandante, por cualquier motivo que ello ocurra o que  BCI  Seguros cancele el Convenio de Cargo  en  Cuenta  Corriente o, el Banco  cancele dicho Convenio con BCI Seguros, este  instrumento dejar�  de tener efecto y obligar� al mandante a realizar los pagos convenidos directamente en BCI Seguros. Si este mandato es revocado  por  el  mandante,  �ste  deber�  notificar  por  escrito  su  decisi�n a BCI Seguros,  con  copia al Banco, con a lo menos un mes de anticipaci�n a la fecha en que se desee poner t�rmino.</fo:block>
													<fo:block padding-before="3pt">7. El presente mandato dejar� de tener vigencia en forma autom�tica en caso de t�rmino del convenio de   recaudaci�n  entre el Banco con BCI Seguros.</fo:block>
													<fo:block padding-before="3pt">8. Toda referencia del presente mandato a las cuentas corrientes se entender� formulada respecto de otras cuentas que el mandante indique.</fo:block>
													<fo:block padding-before="3pt">9. El presente mandato entrar� en vigor en forma indefinida desde la fecha de recepci�n en BCI Seguros  y hasta que se produzcan las situaciones descritas en el punto 6 anterior.</fo:block>
													<fo:block padding-before="3pt">10. "El presente mandato afecta al conjunto de p�lizas y renovaciones celebradas con la compa��a durante la vigencia de �ste; y autoriza a que las primas  de dichas p�lizas se paguen mediante la modalidad PAC, es decir, Autorizaci�n de Descuento en Cuenta Corriente Bancaria. El monto de  la prima, su forma y modalidad de pago, se encuentran insertas en las condiciones particulares de cada p�liza". (Circular S.V.S. Nro.  1.499 del 15.09.2000)</fo:block>
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
											<fo:block text-align="center" font-size="12pt" font-weight="bold" color="#ffffff">AUTORIZACION DE DESCUENTO EN TARJETAS DE CR�DITO (PAT)</fo:block>
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
												<fo:inline>IDENTIFICACION DEL TITULAR TARJETA DE CR�DITO</fo:inline>
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
												<xsl:text>N� Tarjeta</xsl:text>
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
									<!-- SECCION COMPA�IA -->
									<fo:table-row>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
													<xsl:text>Propuesta N�</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:value-of disable-output-escaping="no" select="nroPropuesta"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Compa��a</xsl:text>
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
													<fo:block padding-before="4pt">1. Por medio del presente instrumento autorizo expresamente a Transbank S.A. a cargar en mi tarjeta   de cr�dito arriba individualizada, el valor correspondiente por los servicios prestados por BCI   Seguros Generales S.A. y/o BCI Seguros Vida S.A., en adelante, BCI Seguros. Este cargo se efectuar� en forma mensual, por un per�odo de meses o indefinidamente.</fo:block>
													<fo:block padding-before="4pt">2. Convengo en que BCI Seguros enviar� a Transbank peri�dicamente, de acuerdo al contrato establecido, la informaci�n para el cobro correspondiente, liberando de toda responsabilidad a Transbank si ello no ocurriera.</fo:block>
													<fo:block padding-before="4pt">3. El cargo se har� efectivo a partir de la fecha en que esta autorizaci�n sea aceptada por Transbank.  En caso que la autorizaci�n no sea aceptada, esta situaci�n le ser� comunicada al titular de la tarjeta de cr�dito por BCI Seguros.</fo:block>
													<fo:block padding-before="4pt">4. El servicio prestado por BCI Seguros, ser� responsabilidad �nica y exclusiva de BCI Seguros liberando a Transbank de cualquier obligaci�n. </fo:block>
													<fo:block padding-before="4pt">5. En el evento que Transbank no pudiese por cualquier circunstancia efectuar el cargo correspondiente, comunicar� esta situaci�n a BCI Seguros.</fo:block>
													<fo:block padding-before="4pt">6. La presente autorizaci�n se entender�, para todos los efectos legales, dada el mismo d�a en que se lleve a efecto el cargo en la tarjeta de cr�dito. Asimismo, se entender� renovada mes a mes, en tanto no se revoque por escrito.</fo:block>
													<fo:block padding-before="4pt">7. La presente autorizaci�n de cargo en mi tarjeta de cr�dito continuar� vigente hasta que yo la revoque por escrito a BCI Seguros, en la forma indicada en el n�mero precedente.</fo:block>
													<fo:block padding-before="4pt">8. El presente mandato expirar� autom�ticamente en el caso de t�rmino de contrato de Transbank con BCI Seguros.</fo:block>
													<fo:block padding-before="4pt">9. En consideraci�n a este servicio convengo, adem�s, que si cualquiera de las cuotas mensuales, no fuese pagada por cualquier causa, Transbank no tendr� responsabilidad alguna, aunque de dicho pago   pueda resultar alg�n perjuicio para el tarjetahabiente o para BCI Seguros.</fo:block>
													<fo:block padding-before="4pt">10. El presente mandato entrar� en vigor en forma indefinida desde la fecha de recepci�n en BCI Seguros y hasta que se produzcan las situaciones descritas en los punto 7 y 8 anteriores.</fo:block>
													<fo:block padding-before="4pt">11. El l�mite de pago ser� igual al monto disponible en la tarjeta de cr�dito anteriormente individualizada, a la fecha de cargo.</fo:block>
													<fo:block padding-before="4pt">12. El presente mandato afecta al conjunto de p�lizas y renovaciones celebradas con la compa��a durante la vigencia de �ste; y autoriza a que las primas de dichas p�lizas se paguen mediante la modalidad PAT, es decir, Autorizaci�n de Descuento en Tarjeta de Cr�dito. El monto de la prima, su forma y  modalidad de pago, se encuentran insertas en las condiciones particulares de cada p�liza.(Circular S.V.S. Nro. 1.499 del 15.09.2000).</fo:block>
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
												<fo:block>Firma del Titular de la Tarjeta de Cr�dito</fo:block>
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
					<fo:block padding-before="0pt" font-size="11.0pt">	-La Edad de Ingreso del Titular y C�nyuge es tanto para las Mujeres y hombres desde los 18 a�os hasta los 55 a�os 0 d�as. (edad cronol�gica)</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-La Cobertura es Vitalicia tanto para  el Titular  y Asegurados Dependientes</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-La Edad de Ingreso de los hijos es desde los 14 d�as y la tarifa se ajustar� al cumplir el hijo los 24 a�os de edad.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-El asegurado Titular no podr� ser mayor de 55 a�os 0 d�as para ingresar al seguro.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-El asegurado Titular deber� llenar una DPS simple.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-Deber� ser el Contratante y el Asegurado Titular la misma persona. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	2.-CONDICIONES PARTICULARES</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Se entender� por c�nyuge la persona individualizada como tal en las Condiciones Particulares de la p�liza.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Se entender� por hijos (Asegurados Dependientes) a aquellos que sean carga, del asegurado titular o del</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	c�nyuge, como beneficiario de un sistema provisional.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Una vez que el Asegurado Dependiente (hijo) cumpla los 24 a�os de edad, la Compa��a ajustar� la prima</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	 seg�n la siguiente F�rmula:</fo:block>  
					<fo:block padding-before="0pt" font-size="11.0pt">	Prima mensual = (Prima mensual de acuerdo a la edad del Asegurado de Mayor edad y al n�mero de</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  asegurados dependientes conformadas por c�nyuge e hijos menores a 24 a�os) + (Prima mensual para cero</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  asegurados dependientes y su edad correspondiente por cada hijo mayor a 24 a�os) * 90%.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- La tarifa cobrada ser� la correspondiente a la cantidad de Asegurados Dependientes y por la edad del</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	 Asegurado Mayor del Grupo Familiar.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- En caso de fallecimiento del Asegurado Titular o Asegurado Dependiente se deber� dar aviso a la Compa��a</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	de Seguros en el m�s breve plazo.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Renovaciones del Seguro: El presente seguro se  renovar� anualmente en forma autom�tica, salvo que</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	cualquiera de las partes manifieste su intenci�n de no continuar con el seguro, por medio de aviso escrito</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	enviado al domicilio del contrato con 30 d�as de anticipaci�n.  La prima de esta p�liza ser� ajustada anualmente,</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	de acuerdo a la tarifa vigente y a la edad de los Asegurados al momento de la renovaci�n del contrato. (Art. 13</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	de las Condiciones Generales).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	3.-DEFINICIONES:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Evento :Todas las prestaciones hospitalarias o ambulatorias asociadas a un diagn�stico por enfermedad o </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	accidente  y sus consecuencias posteriores asociadas directamente al diagn�stico principal, con una duraci�n</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	m�xima de tres a�os contados desde la fecha de pago del primer reembolso cubierto por esta p�liza. En caso</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	que la enfermedad o accidente que dio origen a un evento objeto de reembolso se prolongue m�s all� del plazo</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	indicado precedentemente, �ste ser� considerado como un nuevo evento, reinstal�ndose la franquicia y el</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	capital asegurado.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Evento Familiar: Un mismo evento que involucra simult�neamente a m�s de un miembro del grupo familiar</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	asegurado.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Franquicia: La Aseguradora asumir� el 100% de la indemnizaci�n que sea determinada por el liquidador y</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	aceptada por aquella, pero s�lo en el caso de que el monto de la indemnizaci�n supere el monto en UF indicado</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	en las condiciones particulares como franquicia por evento, y hasta el l�mite de la suma asegurada se�alada en</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	las condiciones particulares de la p�liza.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Complicaciones del embarazo: Estar� cubierto por esta p�liza el embarazo extrauterino, eclampsia,</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	preclampsia y mola hidatiforme (embarazo molar), asi como complicaciones de estos mismos.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	4.-FRANQUICIAS Y CARENCIAS:</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	-En caso que un mismo evento afecte a m�s de un integrante del grupo asegurado (evento familiar), no se</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	considerar� la franquicia por cada miembro de la familia, sino que se asumir� un sola franquicia equivalente al</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	150% de la franquicia del  Plan seleccionado, considerando todos los gastos del grupo familiar</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-Para el plan Contratado de UF 4.000 a partir de los 66 a�os se aplica una franquicia UF 100 y capital se reduce</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	a UF 2.000.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-Para los planes contratados de  UF 10.000 y UF 20.000 a partir de los 66 a�os se aplica una franquicia de UF</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	100 y el capital se reduce UF 4.000.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-El per�odo de carencia es de 60 d�as. Esto significa que carecer�n de cobertura todos los eventos que se</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	originen dentro de un plazo de 60 d�as corridos, contados desde la fecha de inicio de vigencia de la p�liza.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-La cobertura de complicaciones por embarazo tendr� un per�odo de carencia de 10 meses, contado a partir de</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	la incorporaci�n de la asegurada con derecho a esta prestaci�n.</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	5.-INCLUSI�N DE ASEGURADOS</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Para incorporar asegurados al seguro, ser� requisito indispensable que el asegurado titular complete y firme</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	la Solicitud de Endoso que incluye la Declaraci�n de Salud correspondiente.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	En caso que la compa��a acepte la modificaci�n del grupo familiar, la fecha de inicio de vigencia, para el nuevo</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	asegurado, ser� el mes siguiente de la recepci�n de la solicitud correspondiente. Igual criterio se aplicar� en</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	caso de exclusi�n de asegurado del grupo familiar.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.-PORCENTAJES DE REEMBOLSOS PARA SITUACIONES ESPECIALES:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Los gastos no reembolsables por la instituci�n de salud previsional a la  cual se encuentre adherido el</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	asegurado (prestaciones no cubiertas por el plan individual y/o prestaciones no codificadas), ser�n</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	indemnizados considerando el 50% del gasto real efectuado. Este criterio tambi�n ser� aplicado a los</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	reembolsos que correspondan a asegurados que no est�n afiliados a una instituci�n de salud previsional y</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	cuando se trate de gastos efectuados en el extranjero.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Si el asegurado no hace uso del sistema de salud previsional al cual est� asociado, los gastos ser�n</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	indemnizados considerando el 25% del gasto real efectuado.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Para efectos de completar la franquicia, s�lo se considerar�n aquellos gastos m�dicos efectuados dentro de</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	los ciento ochenta (180) d�as corridos anteriores a la fecha de presentaci�n de la primera solicitud de reembolso</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	que supere la franquicia fijada para el Plan seleccionado.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	7.-DESCRIPCI�N DE LAS COBERTURAS Y LOS BENEFICIOS DEL SEGURO</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	COBERTURA SEGURO CATASTROFICO</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	7.1. BENEFICIO DE HOSPITALIZACI�N</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	D�AS CAMA 100 % Reembolso;SERVICIOS HOSPITALARIOS: 100 % Reembolso;HONORARIOS M�DICOS</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	QUIR�RGICOS:100 % Reembolso;CIRUGIA DENTAL POR ACCIDENTE:100 % Reembolso;SERVICIO</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	PRIVADO DE ENFERMERA:100 % Reembolso;SERVICIO DE AMBULANCIA TERRESTRE:100 % Reembolso.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	GASTOS EN EL EXTRANJERO: 50% Reembolso</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	7.2.BENEFICIO AMBULATORIO:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	CONSULTAS M�DICA:100 % Reembolso;EXAMENES DE LABORATORIO - RADIOGRAF�AS:100 % </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Reembolso;</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	TRATAMIENTOS Y PROCEDIMIENTOS:100 % Reembolso;CIRUG�A AMBULATORIA:100 % Reembolso;</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	�RTESIS Y PROTESIS:100 % Reembolso;KINESIOLOG�A:100 % Reembolso,MEDICAMENTOS</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	AMBULATORIOS:50% Reembolso</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	COBERTURA COMPLICACIONES DEL EMBARAZO:Se otorga �nicamente al asegurado titular o a la esposa ,</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	entre 18 y 45 a�os.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	7.3. BENEFICIO DESCUENTO FARMACIAS SALCOBRAND:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Bonofarma: Bonificaci�n 40% Remedios de Marca; y 40% Remedios gen�ricos.Tope Bonificado por Asegurado</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	5 UF.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	El asegurado debe acudir al m�dico con su Vadem�cum Bonofarma, para que �ste le recete del listado de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	medicamentos bonificados. Luego, dirigirse a cualquier farmacia Salcobrand con:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Credencial Bonofarma.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- N� C�dula de identidad del asegurado titular.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Receta M�dica que indique: Nombre y Rut del M�dico, Fecha</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Nombre del asegurado titular.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Detalle de medicamentos (cantidad y dosis)</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	7.4. BENEFICIO COMPLEMENTARIO     </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Este beneficio  permite acceder a descuentos autom�ticos en locales Salcobrand; Beneficio desde un 4% a</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	10%:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Medicamentos no Gen�ricos 	4%</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Medicamentos Gen�ricos 		7%</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Vadem�cum Salcobrand	 	10%</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Productos no medicamentosos   	5%</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Recetario Magistral		          10%</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Beneficio no requiere de receta m�dica.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	8. SERVICIO ALO DOCTOR (AXA ASSISTANCE)</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	8.1.- DESCRIPCION DEL SERVICIO</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	AXA ASSISTANCE prestar� los siguientes servicios a que tengan derecho los asegurados de BCI SEGUROS</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	VIDA S.A.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	a)El objetivo del Servicio es recomendar y orientar telef�nicamente sobre las acciones que  m�s conviene seguir</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	en   caso de dolencias, problemas, dudas o inquietudes de salud. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	b)El Servicio se otorgar�, 24 horas al d�a, 7 d�as a la semana.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	c)Las recomendaciones emanadas de AXA ASSISTANCE en ning�n caso constituyen la realizaci�n de</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	diagn�stico ni indicaci�n de tratamiento.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	d)Todas las conversaciones telef�nicas relativas al servicio ser�n grabadas. AXA ASSISTANCE se compromete</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	a hacer un uso prudente y apropiado de las grabaciones referidas. Lo anterior tiene por objeto contar con un </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	respaldo acerca de la orientaci�n efectuada.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	e)AXA ASSISTANCE estar� facultada para suspender temporalmente todos o algunos de los servicios </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	comprendidos en este contrato sin derecho a indemnizaci�n o reparaci�n de ninguna especie en favor de la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	empresa o beneficiarios,  en todos aquellos casos en que no le sea posible moment�neamente continuar </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	prestando sus servicios por razones de fuerza mayor, caso fortuito, observancia de prohibiciones, restricciones,</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	condicionantes o limitaciones establecidas por la legislaci�n o las autoridades administrativas o judiciales </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	chilenas o extranjeras. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Toda responsabilidad que se deriva del Servicio, ser� de cargo exclusivo de AXA ASSISTANCE. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	8.2.-El Servicio de Orientaci�n M�dica Telef�nica s�lo se otorgar� a los titulares asegurados y a las cargas </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	registradas en el seguro. Tendr�n aplicaci�n las exclusiones contempladas para la cobertura principal.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	8.3.-Servicio de Coordinaci�n de Ambulancia y enfermera</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	8.4.-Se suspender� el servicio a los asegurados, como consecuencia de la eliminaci�n de la p�liza por parte del </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	contratante.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	8.5.-En caso de que una persona distinta a las individualizadas por BCI SEGUROS VIDA S.A. hiciere o intentare </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	hacer uso del Servicio, haci�ndose pasar por alg�n beneficiario, AXA ASSISTANCE podr� eliminar del sistema </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	al beneficiario, sin perjuicio de cualquier otra acci�n legal, civil o penal, contra quienes resulten responsables. La</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	calificaci�n del mal a que se refiere lo anterior corresponder� �nicamente a AXA ASSISTANCE.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Para solicitar el servicio el asegurado deber� llamar a AXA ASSISTANCE al 600 510 0303.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	ESTE SEGURO NO CUBRE:1.Tratamientos, procedimientos, medicamentos, lociones, cremas, shampoo, con </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	fines est�ticos y de embellecimiento.2.Atenciones hospitalarias y quir�rgicas relacionadas con tratamientos y/o </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	procedimientos de infertilidad o esterilidad.3.Medicamento de recetario magistral y de homeopat�a, como </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	tambi�n, medicamentos para: subir o bajar de peso, para estimular el crecimiento, crecimiento o implante de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	cabello o cualquier medicamento con fines preventivos.4.Hospitalizaci�n domiciliaria.5.Arriendo de equipos de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	apoyo m�dico, suministro de aparatos o equipos ortop�dicos.6.Tratamientos psiqui�tricos, psicol�gicos y </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	psicopedagog�a. 7.Honorarios de profesionales param�dicos, nutricionista, matrona, etc. 8.Gastos hospitalarios </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	y ambulatorios incurridos a consecuencia de embarazo normal, parto y puerperio y sus patolog�as relacionadas </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	o con cualquier otra enfermedad de la madre no relacionada a la definici�n adjunta de complicaciones por </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	embarazo.9.Insumos ambulatorios, tales como: jeringas, bajadas de suero, vendas, yeso, etc.10.Cirug�a l�ser </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	por miop�a y/o astigmatismo.11.Enfermedades preexistentes, cong�nitas o hereditarias.12.Complicaciones por </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	embarazo para aseguradas titulares o c�nyuge menores de 18 a�os o mayores a 45 a�os y para aseguradas </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	hijas del grupo familiar. 13. Complicaciones del embarazo, parto y/o puerperio en gestaciones resultantes de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	tratamientos de esterilidad, infertilidad o fertilizaci�n asistida.</fo:block>
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
					<fo:block padding-before="0pt" font-size="11.0pt">	-La Edad de Ingreso del Titular y C�nyuge es tanto para las Mujeres y hombres desde los 18 a�os hasta los 55 a�os 0 d�as. (edad cronol�gica)</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-La Cobertura es Vitalicia tanto para  el Titular  y Asegurados Dependientes</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-La Edad de Ingreso de los hijos es desde los 14 d�as y la tarifa se ajustar� al cumplir el hijo los 24 a�os de edad.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-El asegurado Titular no podr� ser mayor de 55 a�os 0 d�as para ingresar al seguro.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-El asegurado Titular deber� llenar una DPS simple.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	-Deber� ser el Contratante y el Asegurado Titular la misma persona. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">2.-CONDICIONES PARTICULARES</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">1.Se entender� por c�nyuge la persona individualizada como tal en las Condiciones Particulares de la p�liza.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">2.Se entender� por hijos (Asegurados Dependientes) a aquellos que sean carga, del asegurado titular o del </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">c�nyuge, como beneficiario de un sistema provisional.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">3.Una vez que el Asegurado Dependiente (hijo) cumpla los 24 a�os de edad, la Compa��a ajustar� la prima </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">seg�n la siguiente F�rmula:  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Prima mensual = (Prima mensual de acuerdo a la edad del Asegurado de Mayor edad y al n�mero de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">asegurados dependientes conformadas por c�nyuge e hijos menores a 24 a�os) + (Prima mensual para cero </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">asegurados dependientes y su edad correspondiente por cada hijo mayor a 24 a�os) * 90%.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">4.La tarifa cobrada ser� la correspondiente a la cantidad de Asegurados Dependientes y por la edad del </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Asegurado Mayor del Grupo Familiar. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">5. En caso de fallecimiento del Asegurado Titular o Asegurado Dependiente se deber� dar aviso a la Compa��a </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">de Seguros en el m�s breve plazo.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">6.Renovaciones del Seguro: El presente seguro se  renovar� anualmente en forma autom�tica, salvo que </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">cualquiera de las partes manifieste su intenci�n de no continuar con el seguro, por medio de aviso escrito </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">enviado al domicilio del contrato con 30 d�as de anticipaci�n.  La prima de esta p�liza ser� ajustada anualmente, </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">de acuerdo a la tarifa vigente y a la edad de los Asegurados al momento de la renovaci�n del contrato. (Art. 13 </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">de las Condiciones Generales).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">3.-DEFINICIONES:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Evento : Todas las prestaciones hospitalarias o ambulatorias asociadas a un diagn�stico por enfermedad o </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">accidente  y sus consecuencias posteriores asociadas directamente al diagn�stico principal, con una duraci�n </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">m�xima de tres a�os contados desde la fecha de pago del primer reembolso cubierto por esta p�liza. En caso </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">que la enfermedad o accidente que dio origen a un evento objeto de reembolso se prolongue m�s all� del plazo </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">indicado precedentemente, �ste ser� considerado como un nuevo evento, reinstal�ndose la franquicia y el </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">capital asegurado.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Evento Familiar: Un mismo evento que involucra simult�neamente a m�s de un miembro del grupo familiar </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">asegurado.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Franquicia: La Aseguradora asumir� el 100% de la indemnizaci�n que sea determinada por el liquidador y </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">aceptada por aquella, pero s�lo en el caso de que el monto de la indemnizaci�n supere el monto en UF indicado </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">en las condiciones particulares como franquicia por evento, y hasta el l�mite de la suma asegurada se�alada en </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">las condiciones particulares de la p�liza.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Complicaciones del embarazo: Estar� cubierto por esta p�liza el embarazo extrauterino, eclamsia,  preclamsia y </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">mola hidatiforme (embarazo molar), asi como complicaciones de estos mismos.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">4.-FRANQUICIAS Y CARENCIAS: </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">-En caso que un mismo evento afecte a m�s de un integrante del grupo asegurado (evento familiar), no se </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">considerar� la franquicia por cada miembro de la familia, sino que se asumir� un sola franquicia equivalente al </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">150% de la franquicia del  Plan seleccionado, considerando todos los gastos del grupo familiar</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">-Para el plan Contratado de UF 4.000 a partir de los 66 a�os se aplica una franquicia UF 100 y capital se reduce </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">a UF 2.000.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">-Para los planes contratados de  UF 10.000 y UF 20.000 a partir de los 66 a�os se aplica una franquicia de UF </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">100 y el capital se reduce UF 4.000.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">-El per�odo de carencia es de 60 d�as. Esto significa que carecer�n de cobertura todos los eventos que se </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">originen dentro de un plazo de 60 d�as corridos, contados desde la fecha de inicio de vigencia de la p�liza.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">-La cobertura de complicaciones por embarazo tendr� un per�odo de carencia de 10 meses, contado a partir de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">la incorporaci�n de la asegurada con derecho a esta prestaci�n. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">5.-INCLUSI�N DE ASEGURADOS</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Para incorporar asegurados al seguro, ser� requisito indispensable que el asegurado titular complete y firme la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Solicitud de Endoso que incluye la Declaraci�n de Salud correspondiente. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">En caso que la compa��a acepte la modificaci�n del grupo familiar, la fecha de inicio de vigencia, para el nuevo </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">asegurado, ser� el mes siguiente de la recepci�n de la solicitud correspondiente. Igual criterio se aplicar� en </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">caso de exclusi�n de asegurado del grupo familiar.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">6.-PORCENTAJES DE REEMBOLSOS PARA SITUACIONES ESPECIALES:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">1.Los gastos no reembolsables por la instituci�n de salud previsional a la  cual se encuentre adherido el </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">asegurado (prestaciones no cubiertas por el plan individual y/o prestaciones no codificadas), ser�n </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">indemnizados considerando el 50% del gasto real efectuado. Este criterio tambi�n ser� aplicado a los </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">reembolsos que correspondan a asegurados que no est�n afiliados a una instituci�n de salud previsional y </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">cuando se trate de gastos efectuados en el extranjero.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">2.Si el asegurado no hace uso del sistema de salud previsional al cual est� asociado, los gastos ser�n </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">indemnizados considerando el 25% del gasto real efectuado.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">3.Para efectos de completar la franquicia, s�lo se considerar�n aquellos gastos m�dicos efectuados dentro de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">los ciento ochenta (180) d�as corridos anteriores a la fecha de presentaci�n de la primera solicitud de reembolso </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">que supere la franquicia fijada para el Plan seleccionado.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">7.-DESCRIPCI�N DE LAS COBERTURAS Y LOS BENEFICIOS DEL SEGURO</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">COBERTURA SEGURO CATASTROFICO </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">1.- BENEFICIO DE HOSPITALIZACI�N </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">D�AS CAMA 100 % Reembolso;SERVICIOS HOSPITALARIOS: 100 % Reembolso;HONORARIOS M�DICOS </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">QUIR�RGICOS:100 % Reembolso;CIRUGIA DENTAL POR ACCIDENTE:100 % Reembolso;SERVICIO </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">PRIVADO DE ENFERMERA:100 % Reembolso;SERVICIO DE AMBULANCIA TERRESTRE:100 % Reembolso</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">GASTOS EN EL EXTRANJERO: 50% Reembolso</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">2.-BENEFICIO AMBULATORIO:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">CONSULTAS M�DICA:100 % Reembolso;EXAMENES DE LABORATORIO - RADIOGRAF�AS:100 % </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Reembolso;</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">TRATAMIENTOS Y PROCEDIMIENTOS:100 % Reembolso;CIRUG�A AMBULATORIA:100 % Reembolso;</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">�RTESIS Y PROTESIS:100 % Reembolso;KINESIOLOG�A:100 % Reembolso,MEDICAMENTOS </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">AMBULATORIOS:50% Reembolso</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">COBERTURA COMPLICACIONES DEL EMBARAZO:Se otorga �nicamente al asegurado titular o a la esposa , </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">entre 18 y 45 a�os.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">3.-BENEFICIO DESCUENTO FARMACIAS SALCOBRAND:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Bonofarma: Bonificaci�n 40% Remedios de Marca; y 40% Remedios gen�ricos.Tope Bonificado por Asegurado </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">5 UF.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">El asegurado debe acudir al m�dico con su Vadem�cum Bonofarma, para que �ste le recete del listado de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">medicamentos bonificados. Luego, dirigirse a cualquier farmacia Salcobrand con:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">- Credencial Bonofarma.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">- N� C�dula de identidad del asegurado titular.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">- Receta M�dica que indique: Nombre y Rut del M�dico,Fecha</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">- Nombre del asegurado titular.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">- Detalle de medicamentos (cantidad y dosis)</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">8. SERVICIO ALO DOCTOR (AXA ASSISTANCE)</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">1.- DESCRIPCION DEL SERVICIO</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">AXA ASSISTANCE prestar� los siguientes servicios a que tengan derecho los asegurados de BCI SEGUROS </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">VIDA S.A.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">a)El objetivo del Servicio es recomendar y orientar telef�nicamente sobre las acciones que  m�s conviene seguir </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">en   caso de dolencias, problemas, dudas o inquietudes de salud. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">b)El Servicio se otorgar�, 24 horas al d�a, 7 d�as a la semana.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">c)Las recomendaciones emanadas de AXA ASSISTANCE en ning�n caso constituyen la realizaci�n de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">diagn�stico ni indicaci�n de tratamiento.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">d)Todas las conversaciones telef�nicas relativas al servicio ser�n grabadas. AXA ASSISTANCE se compromete </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">a hacer un uso prudente y apropiado de las grabaciones referidas. Lo anterior tiene por objeto contar con un </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">respaldo acerca de la orientaci�n efectuada.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">e)AXA ASSISTANCE estar� facultada para suspender temporalmente todos o algunos de los servicios </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">comprendidos en este contrato sin derecho a indemnizaci�n o reparaci�n de ninguna especie en favor de la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">empresa o beneficiarios,  en todos aquellos casos en que no le sea posible moment�neamente continuar </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">prestando sus servicios por razones de fuerza mayor, caso fortuito, observancia de prohibiciones, restricciones,</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">condicionantes o limitaciones establecidas por la legislaci�n o las autoridades administrativas o judiciales </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">chilenas o extranjeras. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Toda responsabilidad que se deriva del Servicio, ser� de cargo exclusivo de AXA ASSISTANCE. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">2.-El Servicio de Orientaci�n M�dica Telef�nica s�lo se otorgar� a los titulares asegurados y a las cargas </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">registradas en el seguro. Tendr�n aplicaci�n las exclusiones contempladas para la cobertura principal.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">3.-Servicio de Coordinaci�n de Ambulancia y enfermera</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">4.-Se suspender� el servicio a los asegurados, como consecuencia de la eliminaci�n de la p�liza por parte del </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">contratante.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">5.-En caso de que una persona distinta a las individualizadas por BCI SEGUROS VIDA S.A. hiciere o intentare </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">hacer uso del Servicio, haci�ndose pasar por alg�n beneficiario, AXA ASSISTANCE podr� eliminar del sistema </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">al beneficiario, sin perjuicio de cualquier otra acci�n legal, civil o penal, contra quienes resulten responsables. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">La calificaci�n del mal a que se refiere lo anterior corresponder� �nicamente a AXA ASSISTANCE.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Para solicitar el servicio el asegurado deber� llamar a AXA ASSISTANCE al 600 510 0303.</fo:block>

					<fo:block padding-before="0pt" font-size="11.0pt">ESTE SEGURO NO CUBRE:1.Tratamientos, procedimientos, medicamentos, lociones, cremas, shampoo, con </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">fines est�ticos y de embellecimiento.2.Atenciones hospitalarias y quir�rgicas relacionadas con tratamientos y/o </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">procedimientos de infertilidad o esterilidad.3.Medicamento de recetario magistral y de homeopat�a, como </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">tambi�n, medicamentos para: subir o bajar de peso, para estimular el crecimiento, crecimiento o implante de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">cabello o cualquier medicamento con fines preventivos.4.Hospitalizaci�n domiciliaria.5.Arriendo de equipos de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">apoyo m�dico, suministro de aparatos o equipos ortop�dicos.6.Tratamientos psiqui�tricos, psicol�gicos y </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">sicopedagog�a.7. Honorarios de profesionales param�dicos (enfermera, nutricionista, matrona, etc.)8.Gastos </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">hospitalarios y ambulatorios incurridos a consecuencia de embarazo normal, parto y puerperio y sus patolog�as </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">relacionadas o con cualquier otra enfermedad de la madre no relacionada a la definici�n adjunta de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">complicaciones por embarazo.9.Insumos ambulatorios, tales como: jeringas, bajadas de suero, vendas, yeso, </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">etc.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">10.Cirug�a l�ser por miop�a y/o astigmatismo.11.Enfermedades preexistentes, cong�nitas o </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">hereditarias.12.Complicaciones por embarazo para aseguradas titulares o c�nyuge menores de 18 a�os o </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">mayores a 45 a�os y para aseguradas hijas del grupo familiar. 13.Complicaciones del embarazo, parto y/o </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">puerperio en gestaciones resultantes de tratamientos de esterilidad, infertilidad o fertilizaci�n asistida.</fo:block>

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
										<fo:block padding-before="0pt" font-size="11.0pt">� Usted o alguno de sus asegurados asociados 1) Ha estado hospitalizado en los �ltimos 6		</fo:block>	
										<fo:block padding-before="0pt" font-size="11.0pt"> meses � 2) Tiene programada una hospitalizaci�n a futuro; � 3) Ha padecido, se le ha                 </fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">  diagnosticado, o tiene conocimiento de sufrir alguna vez una de las siguientes enfermedades:        </fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">   Diabetes, enfermedades al ri��n, enfermedades de los huesos o m�sculos, enfermedades               </fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">    cardiacas, bypass, hipertensi�n arterial, enfermedades coronarias, soplos cardiacos, arritmias,   </fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">     sobrepeso u obesidad, enfermedades del sistema respiratorio, c�ncer, hepatitis (excepto tipo A), </fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">      enfermedades gastrointestinales como cirrosis hep�tica, �lcera g�strica, colitis ulcerosa,      </fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">      enfermedades hematol�gicas como leucemia, linfoma o anemia (excepto la falta de fierro),        </fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">      desordenes nerviosos mentales, Sida, HIV Positivo , enfermedades neurol�gicas como              </fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">      accidente vascular cerebral, epilepsia, enfermedad de alzheimer, alcoholismo o drogadicci�n �   </fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">      4) Tiene alguna malformaci�n cong�nita o ha sido transplantado?.                                </fo:block>
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
							<fo:block padding-before="0pt" font-size="11.0pt">  Si la prima en dep�sito es pagada mediante cargo en tarjeta de cr�dito, se entender� cancelada solo una vez</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  que la Administradora de Tarjetas de Cr�dito apruebe el cargo de dicha tarjeta.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  Se entender� que hay aceptaci�n del riesgo por el solo hecho de la emisi�n de la p�liza solicitada en virtud de </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  esta propuesta, pag�ndose la primera cuota con este primer pago.  En caso de rechazo, la compa��a </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  comunicar� por escrito al contratante, al domicilio arriba se�alado, devolvi�ndole la prima en dep�sito recibida.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  La p�liza que se emita como consecuencia de la presente propuesta, se regir� por las condiciones generales </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  inscritas en la S.V.S. bajo el c�digo POL. 299 003</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  El Seguro ofrecido es intermediado por BCI Corredores de Seguros S.A. y la compa��a que cubre el riesgo es </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  BCI Seguros Vida S.A.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  El proponente ha tomado conocimiento del derecho a decidir sobre la contrataci�n de los seguros y a la libre</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  elecci�n del intermediario y compa��a aseguradora.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  "Con la emisi�n de la presente propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  cobertura comenzar� a regir �nicamente a partir del momento en que esta propuesta sea aceptada por el </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  asegurador y se inicie la vigencia de la p�liza" (Circular N� 1.390 S.V.S.).</fo:block>						
							<fo:block padding-before="0pt" font-size="11.0pt">  El contratante faculta a BCI Seguros Vida S.A., para guardar y conservar el original de toda y cualquier poliza de</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  seguro que tenga su origen en la presente propuesta o en el ejercicio del mandato que en este acto confiere o el </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  de sus endosos, si los hubiere, liberando expresamente a la compa�ia y al corredor, en su caso, de la</fo:block>
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
							<fo:block padding-before="0pt" font-size="11.0pt">  Si la prima en dep�sito es pagada mediante cargo en tarjeta de cr�dito, se entender� cancelada solo una vez</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  que la Administradora de Tarjetas de Cr�dito apruebe el cargo de dicha tarjeta.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  Se entender� que hay aceptaci�n del riesgo por el solo hecho de la emisi�n de la p�liza solicitada en virtud de </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  esta propuesta, pag�ndose la primera cuota con este primer pago.  En caso de rechazo, la compa��a </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  comunicar� por escrito al contratante, al domicilio arriba se�alado, devolvi�ndole la prima en dep�sito recibida.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  La p�liza que se emita como consecuencia de la presente propuesta, se regir� por las condiciones generales </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  inscritas en la S.V.S. bajo el c�digo POL. 299 003</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  Se deja constancia que, en caso que esta propuesta sea aceptada por el asegurador, la fecha de inicio de la </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  cobertura al riesgo ser� el d�a siguiente de la fecha de llenado de esta propuesta, por los montos que se indican</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  para el plan elegido</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  El seguro ofrecido es inmediato por BCI Corredores de Seguros S.A. y la compa��a que cubre el riesgo es</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  BCI Seguros de Vida S.A.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  El proponente ha tomado conocimiento del derecho a decidir sobre la contrataci�n de los seguros y a la libre</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  elecci�n del intermediario y compa��a aseguradora</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  "Con la emisi�n de la presente propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  cobertura comenzar� a regir �nicamente a partir del momento en que esta propuesta sea aceptada por el </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  asegurador y se inicie la vigencia de la p�liza" (Circular N� 1.390 S.V.S.).</fo:block>							
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
							<fo:block padding-before="0pt" font-size="11.0pt">Si la prima en dep�sito es pagada mediante cargo en tarjeta de cr�dito, se entender� cancelada solo una vez           </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">que la Administradora de Tarjetas de Cr�dito apruebe el cargo de dicha tarjeta.                                       </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Se entender� que hay aceptaci�n del riesgo por el solo hecho de la emisi�n de la p�liza solicitada en virtud de       </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">esta propuesta, pag�ndose la primera cuota con este primer pago.  En caso de rechazo, la compa��a                     </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">comunicar� por escrito al contratante, al domicilio arriba se�alado, devolvi�ndole la prima en dep�sito recibida.     </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">La p�liza que se emita como consecuencia de la presente propuesta, se regir� por las condiciones generales            </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">inscritas en la S.V.S. bajo el c�digo  POL 299 003                                                                   </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">El Seguro ofrecido es intermediado por BCI Corredores de Seguros S.A. y la compa��a que cubre el riesgo es            </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">BCI Seguros Vida S.A.                                                                                                 </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">El proponente ha tomado conocimiento del derecho a decidir sobre la contrataci�n de los seguros y a la libre          </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">elecci�n del intermediario y compa��a aseguradora.                                                                    </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">"Con la emisi�n de la presente propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La        </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">cobertura comenzar� a regir �nicamente a partir del momento en que esta propuesta sea aceptada por el                 </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">asegurador y se inicie la vigencia de la p�liza" (Circular N� 1.390 S.V.S.).                                          </fo:block>
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
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">POR LA PRESENTE DECLARO QUE A MI MEJOR CONOCIMIENTO, INFORMACI�N Y ENTENDER,					</fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">NINGUNA DE LAS PERSONAS PROPUESTAS PARA EL SEGURO EN ESTA SOLICITUD, PADECE, O LE                               </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">HAN SIDO DIAGNOSTICADA ALGUNA DE LAS ENFERMEDADES,SINTOMAS O TRATAMIENTOS                                       </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">SE�ALADOS ANTERIORMENTE.                                                                                        </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">Entiendo y concuerdo que ninguno de los asegurados de este seguro operar� si la causa del fallecimiento o       </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">diagn�stico de la enfermedad, fuese preexistente a la fecha de suscriptci�n de esta propuesta.                  </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">El Contratante ha tomado conocimiento del derecho a decidir sobre la contrataci�n de los asegurados y la libre  </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">elecci�n del intermediario y compa�ia aseguradora.                                                              </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">Declaro que he contestado completa y ver�dicamente la pregunta arriba formulada y que estoy de acuerdo con      </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">que esta declaraci�n forme parte integrante del contrato.                                                       </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">En cumplimiento a lo dispuesto en la Norma de Car�cter General N� 124 del 22 de Noviembre del 2001, dictada     </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">por la Superintendencia de Valores y Seguros, declaro que he consentido expresamente las coberturas de que      </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">da cuenta el presente contrato, excluye los gastos m�dicos producidos:                                          </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">1.- Durante la realizaci�n de deportes riesgosos, aunque se practique en forma espor�dica, y en que se ponga    </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">en peligro la vida o la integridad f�sica de la persona, tales como : Buceo, alas delta, parapente, carreras de </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">velocidad (auto, moto, ciclismo), carreras de caballo, piloto de aviaci�n civil, andinismo, entre otros.        </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">2.- Cuando el siniestro tenga lugar como consecuencia del desempe�o de actividades especificadas para su        </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">cargo u ocupaci�n, que se consideran riesgosas, tales como : trabajo en actividades mineras, forestales,        </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">pesqueras, operador de explosivos, alba�iles en altura, bomberos en general, miembro de las fuerzas armadas     </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">y de orden, reportero en zonas de conflicto, entre otras.                                                       </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">3.- A consecuencia directa o indirecta de un accidente o de una incapacidad diagnosticada o conocida con        </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">anterioridad a la vigencia inicial de la p�liza. Quedan comprendidas en esta exclusi�n las enfermedades         </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">producidas directa e indirectamente por excesos o usos abusivos de sustencias como el tabaco, alcohol y         </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">drogas.                                                                                                         </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">4.- Adicionalmente, autorizo a cualquier m�dico, hospital, clinica u otra instituci�n o persona que tenga mis   </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">registros personales, para que pueda dar informaci�n solicitada por BCI Seguros Vida S.A.. A su vez faculto a   </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">esta �ltima, para que solicite o retire copia de tales antecedentes.                                            </fo:block>		
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
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">POR LA PRESENTE DECLARO QUE A MI MEJOR CONOCIMIENTO, INFORMACI�N Y ENTENDER,					</fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">NINGUNA DE LAS PERSONAS PROPUESTAS PARA EL SEGURO EN ESTA SOLICITUD, PADECE, O LE                               </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">HAN SIDO DIAGNOSTICADA ALGUNA DE LAS ENFERMEDADES,SINTOMAS O TRATAMIENTOS                                       </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">SE�ALADOS ANTERIORMENTE.                                                                                        </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">Entiendo y concuerdo que ninguno de los asegurados de este seguro operar� si la causa del fallecimiento o       </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">diagn�stico de la enfermedad, fuese preexistente a la fecha de suscriptci�n de esta propuesta.                  </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">El Contratante ha tomado conocimiento del derecho a decidir sobre la contrataci�n de los asegurados y la libre  </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">elecci�n del intermediario y compa�ia aseguradora.                                                              </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">Declaro que he contestado completa y ver�dicamente la pregunta arriba formulada y que estoy de acuerdo con      </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">que esta declaraci�n forme parte integrante del contrato.                                                       </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">En cumplimiento a lo dispuesto en la Norma de Car�cter General N� 124 del 22 de Noviembre del 2001, dictada     </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">por la Superintendencia de Valores y Seguros, declaro que he consentido expresamente las coberturas de que      </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">da cuenta el presente contrato, excluye los gastos m�dicos producidos:                                          </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">1.- Durante la realizaci�n de deportes riesgosos, aunque se practique en forma espor�dica, y en que se ponga    </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">en peligro la vida o la integridad f�sica de la persona, tales como : Buceo, alas delta, parapente, carreras de </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">velocidad (auto, moto, ciclismo), carreras de caballo, piloto de aviaci�n civil, andinismo, entre otros.        </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">2.- Cuando el siniestro tenga lugar como consecuencia del desempe�o de actividades especificadas para su        </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">cargo u ocupaci�n, que se consideran riesgosas, tales como : trabajo en actividades mineras, forestales,        </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">pesqueras, operador de explosivos, alba�iles en altura, bomberos en general, miembro de las fuerzas armadas     </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">y de orden, reportero en zonas de conflicto, entre otras.                                                       </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">3.- A consecuencia directa o indirecta de un accidente o de una incapacidad diagnosticada o conocida con        </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">anterioridad a la vigencia inicial de la p�liza. Quedan comprendidas en esta exclusi�n las enfermedades         </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">producidas directa e indirectamente por excesos o usos abusivos de sustencias como el tabaco, alcohol y         </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">drogas.                                                                                                         </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">4.- Adicionalmente, autorizo a cualquier m�dico, hospital, clinica u otra instituci�n o persona que tenga mis   </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">registros personales, para que pueda dar informaci�n solicitada por BCI Seguros Vida S.A.. A su vez faculto a   </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">esta �ltima, para que solicite o retire copia de tales antecedentes.                                            </fo:block>		
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
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">POR LA PRESENTE DECLARO QUE A MI MEJOR CONOCIMIENTO, INFORMACI�N Y ENTENDER,						</fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0"> NINGUNA DE LAS PERSONAS PROPUESTAS PARA EL SEGURO EN ESTA SOLICITUD, PADECE, O LE                                      </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">  HAN SIDO DIAGNOSTICADA ALGUNA DE LAS ENFERMEDADES,SINTOMAS O TRATAMIENTOS                                             </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">  SE�ALADOS ANTERIORMENTE.                                                                                              </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">Entiendo y concuerdo que ninguno de los asegurados de este seguro operar� si la causa del fallecimiento o               </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">diagn�stico de la enfermedad, fuese preexistente a la fecha de suscriptci�n de esta propuesta.                          </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">El Contratante ha tomado conocimiento del derecho a decidir sobre la contrataci�n de los asegurados y la libre          </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">elecci�n del intermediario y compa�ia aseguradora.                                                                      </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">Declaro que he contestado completa y ver�dicamente la pregunta arriba formulada y que estoy de acuerdo con              </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">que esta declaraci�n forme parte integrante del contrato.                                                               </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">En cumplimiento a lo dispuesto en la Norma de Car�cter General N� 124 del 22 de Noviembre del 2001, dictada             </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">por la Superintendencia de Valores y Seguros, declaro que he consentido expresamente las coberturas de que              </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">da cuenta el presente contrato, excluye los gastos m�dicos producidos:                                                  </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">1.- Durante la realizaci�n de deportes riesgosos, aunque se practique en forma espor�dica, y en que se ponga            </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">en peligro la vida o la integridad f�sica de la persona, tales como : Buceo, alas delta, parapente, carreras de         </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">velocidad (auto, moto, ciclismo), carreras de caballo, piloto de aviaci�n civil, andinismo, entre otros.                </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">2.- Cuando el siniestro tenga lugar como consecuencia del desempe�o de actividades especificadas para su                </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">cargo u ocupaci�n, que se consideran riesgosas, tales como : trabajo en actividades mineras, forestales,                </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">pesqueras, operador de explosivos, alba�iles en altura, bomberos en general, miembro de las fuerzas armadas             </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">y de orden, reportero en zonas de conflicto, entre otras.                                                               </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">3.- A consecuencia directa o indirecta de un accidente o de una incapacidad diagnosticada o conocida con                </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">anterioridad a la vigencia inicial de la p�liza. Quedan comprendidas en esta exclusi�n las enfermedades                 </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">producidas directa e indirectamente por excesos o usos abusivos de sustencias como el tabaco, alcohol y                 </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">drogas.                                                                                                                 </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">4.- Asimismo, declaro expresamente conocer que el presente contrato tendr� un per�odo de carencia de 30 d�as.           </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">Esto significa que carecer�n de coberturas todos los eventos que se originen dentro de un plazo de 30 d�as              </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">corridos, contados desde la fecha de inicio de vigencia de la p�liza.                                                   </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">Adicionalmente, autorizo a cualquier m�dico, hospital, clinica u otra instituci�n o persona que tenga mis registros     </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">personales, para que pueda dar informaci�n solicitada por BCI Seguros Vida S.A.. A su vez faculto a esta                </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">�ltima, para que solicite o retire copia de tales antecedentes.                                                         </fo:block>
		
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
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0"> cobertura al riesgo ser� el d�a siguiente de la fecha de llenado de esta propuesta, por los montos que se indican      </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">  para el plan elegido.                                                                                                 </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">La p�liza que se emita como consecuencia de la presente propuesta, se regir� por las condiciones generales              </fo:block>
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">inscritas en la S.V.S. bajo el c�digo POL. 299 003.                                                                    </fo:block>
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
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">SI UNO DE LOS ASEGURADOS TIENE 55 O MAS A�OS DEBERA CONTESTAR DECLARACION PERSONAL </fo:block>
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
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#f0f0f0">SI UNO DE LOS ASEGURADOS TIENE 55 O MAS A�OS DEBERA CONTESTAR DECLARACION PERSONAL </fo:block>
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
							<xsl:text>INFORMACION ARTICULOS 57 Y 58 DEL DL N� 251</xsl:text>
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
					<fo:block padding-before="0pt" font-size="11.0pt">ley, informo que durante el a�o calendario anterior intermedi� contratos de seguros con las siguientes Compa��as      	</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">de Seguros:                                                                                                           	</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">En Seguros Generales, el 76,37 % en BCI Seguros Generales SA, el 11,50 % con la Compa��a de seguros    					</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">generales Cardif SA, el 3,62% con Royal Sunalliance Seguros SA, el 2,09 % con Liberty Cia. de    							</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Seguros Generales SA, el 1,70 % con Aseguradora Magallanes SA, el 1,52 % con C.S.G Penta Security S.A, 					</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">el 1,42 % MAPFRE Seguros generales, el 1,16 % con Consorcio Nacional de seguros Generales S.A. y otras 					</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">0,61 %. En Seguros de Vida, el 60,96 % con BCI Seguros de Vida S.A., el 29,37 % con la Compa��a de seguros 				</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">de vida Cardif  S.A., el 3,86 % con la Chilena Consolidada Seguros de Vida SA, el 2,53 % en la Interamericana  			</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">C�a. de Seguros de Vida S.A., el 1,08 % con Euroamerica Vida SA y otras 2,19 %. En Renta Vitalicia, el 30,91 % ,  		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">con MetLife Chile  Seguros de vida SA, 15,03 % con Euroamerica Seg. de Vida SA el 14,78 % con ING  Seg. de    			</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Vida, el 10,35 % con C.S.V Consorcio nacional de seguros S.A., el 8,85 % con Principal C�a. de seguros  de  				</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Vida Chile S.A., el 7,27  % con Vida Corp Seguros de Vida S.A., el 5,08 % con Bci seguros Vida,  							</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">y otras  7,73 %. Para responder del correcto y cabal cumplimiento de todas mis obligaciones emanadas de la  				</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">actividad de Corredor de seguros y en especial de los perjuicios que pueda ocasionar a los asegurados que					</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">contraten seguros por mi intermedio se ha emitido P�liza de Responsabilidad  Civil  N� 4245882 en Consorcio 				</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Nacional de Seguros Generales y P�liza de Garant�a N� 10005712 en Consorcio Nacional de Seguros Generales.  				</fo:block>
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
									<!-- SECCION COMPA�IA -->
									<fo:table-row>
										<fo:table-cell number-columns-spanned="4" display-align="center" background-color="#dedede" padding-left="5pt" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block font-weight="bold" color="#000066" font-size="12pt">
												<fo:inline>COMPA�IA</fo:inline>
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
												<xsl:text>Propuesta N�</xsl:text>
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
											<fo:block>C�digo</fo:block>
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
												<fo:inline>AUTORIZACI�N DE DESCUENTO POR PLANILLA</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell display-align="center" text-align="justify" background-color="#ffffff" padding-left="5pt" padding-right="5pt" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block padding-before="4pt">1. Autorizo a mi empleador m�s arriba individualizado para descontar de mi remuneraci�n mensual los valores correspondientes a primas en cada una de la(s) p�liza(s) y/o endoso(s) que BCI Seguros Generales y/o BCI Seguros Vida S.A., en adelante e indistintamente, BCI Seguros, presente a cobro.</fo:block>
											<fo:block padding-before="4pt">2. BCI Seguros enviar� a mi empleador peri�dicamente, de acuerdo lo estipulado con la Compa��a, la informaci�n para la deducci�n o pago correspondiente.</fo:block>
											<fo:block padding-before="4pt">3. El pago deber� hacerse a favor de BCI Seguros, en la fecha acordada entre esta �ltima y mi empleador. El descuento que se practique a mi remuneraci�n se regir� de acuerdo a las normas laborales pertinentes, las cuales en este acto declaro conocer y aceptar.</fo:block>
											<fo:block padding-before="4pt">4. La presente autorizaci�n que por medio del presente instrumento efect�o, se entender�, para todos los efectos legales dado el mismo d�a en que se lleve a efecto.</fo:block>
											<fo:block padding-before="4pt">5. En el evento que se produzca cualquiera de las siguientes circunstancias; t�rmino de la relaci�n laboral entre mandante y mandatario, y en virtud de la cual se formul� la presente autorizaci�n, cualquiera sea la causal que la motiv�, que BCI Seguros termine el convenio de Descuento, que mi empleador lo termine con BCI Seguros, este instrumento caducar� inmediatamente y me obligar� a realizar los pagos por prima convenidos directamente en la oficinas de BCI Seguros. Si este mandato es revocado por en Mandante, �ste deber� notificar por escrito su decisi�n a BCI Seguros, con a lo menos un mes de anticipaci�n a la fecha en que se desee poner t�rmino.</fo:block>
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

