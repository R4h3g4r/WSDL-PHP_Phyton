<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">	
<!-- xsl:stylesheet xmlns:fox="http://xml.apache.org/fop/extensions" xmlns:print="http://www.jcatalog.com/com.jcatalog.output.xslextensions.print.PrintElementFactory" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:saxon="http://icl.com/saxon" extension-element-prefixes="saxon print"  -->
<xsl:variable name="IMAGEEXT">gif</xsl:variable>
<xsl:template match="DatosImpresionCotTO">
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
							COTIZACION DE SEGURO Nro 
								<xsl:value-of select="nroCotizacion"/>
							 (continuaci�n)
							  - 
							 P�gina <fo:page-number/>
						</fo:block>
					</fo:static-content>
					
					
					<fo:flow flow-name="xsl-region-body" color="#006666" font-size="11pt" >
						<fo:block >
							
							
							
							
						
	<fo:block>
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(19)"/>
			<fo:table-column column-width="proportional-column-width(62)"/>
			<fo:table-column column-width="proportional-column-width(19)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block text-align="left">
							<fo:external-graphic scaling="uniform" height="69pt" width="174pt">
								<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/BciSeguros_vertical.jpg')</xsl:attribute>
							</fo:external-graphic>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center">
						<fo:block color="#CC0000" font-size="20pt" text-align="center" font-weight="bold">
							</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="right">
							<fo:external-graphic  scaling="uniform" height="69pt" width="174px">
								<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/LOGOBCI2.gif')</xsl:attribute>
							</fo:external-graphic>
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
					<fo:table-cell padding="2.0pt" text-align="start" border-style="solid" display-align="before" border-width="1.0pt" border-color="#000000" background-color="#336699" padding-left="5pt">
						<fo:block text-align="center" color="#FFFFFF" font-size="12.0pt" font-weight="bold">
						<xsl:text>COTIZACION DE SEGURO Nro </xsl:text><xsl:value-of disable-output-escaping="no" select="nroCotizacion"/> <xsl:text> - PRODUCTO Salud Total Colaboradores </xsl:text>
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
								<xsl:text>MATERIA ASEGURADA PARA EL RAMO SALUD INDIVIDUAL II</xsl:text>
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



	<xsl:template name="temp_tituloConductorHabitual">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>CONTRATANTE COTIZANTE</xsl:text>
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
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="nombresCotizante"/>
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
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="APCotizante"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="AMCotizante"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	
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
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
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
				<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="11.0pt" background-color="#f0f0f0" >
					<xsl:text>Descripci�n</xsl:text>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell text-align="start" display-align="before">
				<fo:block white-space-collapse="true"  text-align="right" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
					<xsl:text>Exenta</xsl:text>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell text-align="start" display-align="before">
				<fo:block white-space-collapse="true"  text-align="right" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
					<xsl:text>Afecta</xsl:text>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell text-align="start" display-align="before">
				<fo:block white-space-collapse="true"  text-align="right" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
					<xsl:text>IVA</xsl:text>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell text-align="start" display-align="before">
				<fo:block white-space-collapse="true"  text-align="right" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
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
				<!-- <fo:block white-space-collapse="false"> -->
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
							<fo:block white-space-collapse="true"  text-align="right" color="#006666" font-size="11.0pt">
								<xsl:text>0,00</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="right" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="afecta"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="right" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="iva"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="right" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="bruta"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="center" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="moneda"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				<!-- </fo:block>   -->
			</xsl:for-each>
		</fo:table-body>
		</fo:table>
		</fo:block>
	</xsl:template>
	


	<xsl:template name="temp_tituloCoberturas">
		<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede" padding-left="5pt">
							<fo:block text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
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
			<xsl:if test="( coberturaDetalleDatos_0/cobertura != '' )">
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede" padding-left="5pt">
						<fo:block text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
							<xsl:value-of disable-output-escaping="no" select="coberturaDetalleDatos_0/cobertura/nombrePlan"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<xsl:for-each select="coberturaDetalleDatos_0/cobertura">
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
			
			<!-- SE MULTIPLICAN LOS DETALLES DE COBERTURA 1 -->
			<xsl:if test="( coberturaDetalleDatos_1/cobertura != '' )">
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede" padding-left="5pt">
					 
						<fo:block text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
							<xsl:value-of disable-output-escaping="no" select="coberturaDetalleDatos_1/cobertura/nombrePlan"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<xsl:for-each select="coberturaDetalleDatos_1/cobertura">
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
									<xsl:value-of disable-output-escaping="no" select="nombreCobertura"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:for-each>
			</xsl:if>
			<!-- SE MULTIPLICAN LOS PLANES DE COBERTURA COTIZADOS 1-->
			
			
			<!-- SE MULTIPLICAN LOS DETALLES DE COBERTURA 2 -->
			<xsl:if test="( coberturaDetalleDatos_2/cobertura != '' )">
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede" padding-left="5pt">
					 
						<fo:block text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
							<xsl:value-of disable-output-escaping="no" select="coberturaDetalleDatos_2/cobertura/nombrePlan"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<xsl:for-each select="coberturaDetalleDatos_2/cobertura">
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
									<xsl:value-of disable-output-escaping="no" select="nombreCobertura"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:for-each>
			</xsl:if>
			<!-- SE MULTIPLICAN LOS PLANES DE COBERTURA COTIZADOS 2-->
			
			<!-- SE MULTIPLICAN LOS DETALLES DE COBERTURA 3 -->
			<xsl:if test="( coberturaDetalleDatos_3/cobertura != '' )">
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede" padding-left="5pt">
					 
						<fo:block text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
							<xsl:value-of disable-output-escaping="no" select="coberturaDetalleDatos_3/cobertura/nombrePlan"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<xsl:for-each select="coberturaDetalleDatos_3/cobertura">
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
									<xsl:value-of disable-output-escaping="no" select="nombreCobertura"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:for-each>
			</xsl:if>
			<!-- SE MULTIPLICAN LOS PLANES DE COBERTURA COTIZADOS 3-->
			
			
			<!-- SE MULTIPLICAN LOS DETALLES DE COBERTURA 4 -->
			<xsl:if test="( coberturaDetalleDatos_4/cobertura != '' )">
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede" padding-left="5pt">
					 
						<fo:block text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
							<xsl:value-of disable-output-escaping="no" select="coberturaDetalleDatos_4/cobertura/nombrePlan"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<xsl:for-each select="coberturaDetalleDatos_4/cobertura">
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
									<xsl:value-of disable-output-escaping="no" select="nombreCobertura"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:for-each>
			</xsl:if>
			<!-- SE MULTIPLICAN LOS PLANES DE COBERTURA COTIZADOS 4-->
			
			<!-- SE MULTIPLICAN LOS DETALLES DE COBERTURA 5 -->
			<xsl:if test="( coberturaDetalleDatos_5/cobertura != '' )">
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede" padding-left="5pt">
					 
						<fo:block text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
							<xsl:value-of disable-output-escaping="no" select="coberturaDetalleDatos_5/cobertura/nombrePlan"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<xsl:for-each select="coberturaDetalleDatos_5/cobertura">
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
									<xsl:value-of disable-output-escaping="no" select="nombreCobertura"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:for-each>
			</xsl:if>
			<!-- SE MULTIPLICAN LOS PLANES DE COBERTURA COTIZADOS 5-->
			
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>


	<xsl:template name="temp_cabecera_1_cobertura">
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
	
	<xsl:template name="temp_texto_1_cobertura">
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
					<fo:block padding-before="0pt" font-size="11.0pt">	m�xima de tres a�os contados desde la fecha de pago del primer reembolso cubierto por esta p�liza.</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">  En caso que la enfermedad o accidente que dio origen a un evento objeto de reembolso se prolongue m�s all�</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	del plazo indicado precedentemente, �ste ser� considerado como un nuevo evento, reinstal�ndose la franquicia y el</fo:block>
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

	
		<xsl:template name="temp_detalle_de_pago">
			<fo:block span="none" padding-before="1pt">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
								<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
									<xsl:text>DETALLE DE PAGO</xsl:text>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
			</fo:table>
			</fo:block>
			<fo:block padding-before="2pt">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell display-align="center">
									<fo:table table-layout="fixed" width="100%">
										<fo:table-column column-width="proportional-column-width(16)"/>
										<fo:table-column column-width="proportional-column-width(16)"/>
										<fo:table-column column-width="proportional-column-width(16)"/>
										<fo:table-body>
											<fo:table-row keep-with-next="always">
												<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
													<fo:block color="#006666">
														<xsl:text>Plan de Cobertura</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
													<fo:block color="#006666" text-align="right">
														<xsl:text>Prima total</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
													<fo:block color="#006666" text-align="center">
														<xsl:text>Dep�sito inicial</xsl:text>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											
											<!-- para cada plan de cobertura -->
										<xsl:for-each select="planesCobertura/plan">
											<fo:table-row keep-with-next="always" border-style="solid" border-width="1.0pt" border-color="#000000" padding-before="2pt">
												<fo:table-cell padding-left="5pt">
													<fo:block color="#006666" >
														<xsl:value-of disable-output-escaping="no" select="planElegido"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell padding-left="5pt">
													<fo:block color="#006666" text-align="right">
														<xsl:value-of disable-output-escaping="no" select="bruta"/><xsl:text> </xsl:text><xsl:value-of disable-output-escaping="no" select="moneda"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell padding-left="5pt">
													<fo:block color="#006666" text-align="center">
														<xsl:text>0,00 </xsl:text><xsl:value-of disable-output-escaping="no" select="moneda"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</xsl:for-each>
											<!-- para cada plan de cobertura -->
											
										</fo:table-body>
									</fo:table>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row keep-with-next="always">
								<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="#dedede" padding-left="5pt">
									<fo:block font-weight="bold" color="#000066" font-size="12pt">
										<xsl:text>Planes de pago disponibles</xsl:text>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
			</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_detalle_de_pago_planes_disp" border-style="solid" border-width="1.0pt" border-color="#000000">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(3)"/>
			<fo:table-column column-width="proportional-column-width(2)"/>
			<fo:table-column column-width="proportional-column-width(1)"/>
			<fo:table-column column-width="proportional-column-width(1)"/>
			<fo:table-column column-width="proportional-column-width(2)"/>
			<fo:table-column column-width="proportional-column-width(1)"/>
			<fo:table-column column-width="proportional-column-width(1)"/>
			<fo:table-column column-width="proportional-column-width(1)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell number-rows-spanned="2"  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="#dedede" padding-left="5pt">
						<fo:block color="#006666"><xsl:text>Nombre</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell number-columns-spanned="3" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="#dedede" padding-left="5pt">
						<fo:block color="#006666"><xsl:text>Primer pago</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell number-columns-spanned="4" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="#dedede" padding-left="5pt">
						<fo:block color="#006666"><xsl:text>Futuros pagos</xsl:text></fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center" background-color="#dedede">
						<fo:block color="#006666"><xsl:text>Modo de Pago</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center" background-color="#dedede">
						<fo:block color="#006666"><xsl:text>Desto.</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center" background-color="#dedede">
						<fo:block color="#006666"><xsl:text>Valor primer pago</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center" background-color="#dedede">
						<fo:block color="#006666"><xsl:text>Modo de pago</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center" background-color="#dedede">
						<fo:block color="#006666"><xsl:text>Desto.</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center" background-color="#dedede">
						<fo:block color="#006666"><xsl:text>Cuota m�x.</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell  border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" text-align="center" background-color="#dedede">
						<fo:block color="#006666"><xsl:text>Valor cuota</xsl:text></fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				
		<xsl:for-each select="planesCobertura/plan">
				<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" number-columns-spanned="8">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" background-color="#dedede">
								<xsl:value-of disable-output-escaping="no" select="descripcion"/>
							</fo:block>
						</fo:table-cell>
				</fo:table-row>		
				
				<xsl:for-each select="planesPagoDetalle/planPago">
					<fo:table-row>
						<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="#ffffff" padding-left="5pt">
							<fo:block color="#006666"><xsl:value-of select="nombrePlanPago"/></fo:block>
						</fo:table-cell>
						<fo:table-cell number-columns-spanned="3" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="#ffffff">
							<fo:block color="#006666">
								
									<fo:table table-layout="fixed" width="100%">
										<fo:table-column column-width="proportional-column-width(2)"/>
										<fo:table-column column-width="proportional-column-width(1)"/>
										<fo:table-column column-width="proportional-column-width(1)"/>
										<fo:table-body>
											<xsl:for-each select="PrimerosPagos/forma">
												<fo:table-row>
													<fo:table-cell display-align="center"  background-color="#ffffff" padding-left="5pt">
														<fo:block color="#006666"><xsl:value-of select="descripcionFormaPago"/></fo:block>
													</fo:table-cell>
													<fo:table-cell border-left-style="solid" border-right-style="solid" border-left-width="1.0pt" border-right-width="1.0pt" border-left-color="#000000" border-right-color="#000000" display-align="center" text-align="center" background-color="#ffffff">
														<fo:block color="#006666"><xsl:text>0,0%</xsl:text></fo:block>
													</fo:table-cell>
													<fo:table-cell border-left-style="solid" border-left-width="1.0pt" border-left-color="#000000" display-align="center" text-align="center" background-color="#ffffff">
														<xsl:if test="( codigoPlanPago = '1' )"> 
															<fo:block color="#006666"><xsl:value-of select="../../../../bruta"/></fo:block>
														</xsl:if>	
														<xsl:if test="( codigoPlanPago != '1' )"> 
															<fo:block color="#006666"><xsl:value-of select="../../../../primerospagos"/></fo:block>
														</xsl:if>	
															
													</fo:table-cell>
												</fo:table-row>
											</xsl:for-each>
										</fo:table-body>
									</fo:table>


							</fo:block>
						</fo:table-cell>
						<fo:table-cell number-columns-spanned="4" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="center" background-color="#ffffff">
							<fo:block color="#006666">
										<fo:table table-layout="fixed" width="100%">
											<fo:table-column column-width="proportional-column-width(2)"/>
											<fo:table-column column-width="proportional-column-width(1)"/>
											<fo:table-column column-width="proportional-column-width(1)"/>
											<fo:table-column column-width="proportional-column-width(1)"/>
											<fo:table-body>
												<xsl:for-each select="FuturosPagos/forma">
													<fo:table-row>
														<fo:table-cell  border-left-style="solid"  border-left-width="1.0pt" border-left-color="#000000" display-align="before"  background-color="#ffffff" padding-left="5pt">
															<fo:block color="#006666"><xsl:value-of select="descripcionFormaPago"/></fo:block>
														</fo:table-cell>
														<fo:table-cell border-left-style="solid" border-right-style="solid" border-left-width="1.0pt" border-right-width="1.0pt" border-left-color="#000000" border-right-color="#000000" display-align="center" text-align="center" background-color="#ffffff">
															<fo:block color="#006666"><xsl:text>0,0%</xsl:text></fo:block>
														</fo:table-cell>
														<fo:table-cell border-left-style="solid" border-right-style="solid" border-left-width="1.0pt" border-right-width="1.0pt" border-left-color="#000000" border-right-color="#000000" display-align="center" text-align="center" background-color="#ffffff">
															<fo:block color="#006666"><xsl:value-of select="nroCuotasPago"/></fo:block>
														</fo:table-cell>
														<fo:table-cell border-left-style="solid" border-left-width="1.0pt" border-left-color="#000000" display-align="center" text-align="center" background-color="#ffffff">
															<fo:block color="#006666"><xsl:value-of select="../../../../valorCuota"/></fo:block>
														</fo:table-cell>
													</fo:table-row>
												</xsl:for-each>
											</fo:table-body>
										</fo:table>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:for-each>
		</xsl:for-each>	
		</fo:table-body>
		</fo:table>
	</xsl:template>

	

	
	
	<xsl:template name="temp_tituloCondiciones">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="2pt">
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
	
	
	
	<xsl:template name="temp_datosCondiciones">
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
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_vigencia">
		<!-- GENERATE TABLE START-->
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
							<fo:block padding-before="3pt" font-size="11.0pt">La vigencia de esta cotizaci�n es de 10 d�as </fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_firmas">
		<fo:table table-layout="fixed"  width="50%" padding-before="35pt">
				<fo:table-column column-width="proportional-column-width(45)"/>
				<fo:table-column column-width="proportional-column-width(10)"/>
				<fo:table-column column-width="proportional-column-width(45)"/>
				<fo:table-body>
				<fo:table-row keep-with-next="always">
					<fo:table-cell text-align="center" display-align="center">
						<fo:block color="#006666"><xsl:value-of select="fechaCotizacion"/></fo:block>
					</fo:table-cell>
					<fo:table-cell  text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
					<fo:table-cell  text-align="center" display-align="center">
						<fo:block>
							<fo:external-graphic scaling="uniform" height="50pt" width="90pt"> 
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/firmas/FIR_COR2.gif')</xsl:attribute> 
							</fo:external-graphic>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next="always">
					<fo:table-cell padding-before="4pt" border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
						<fo:block color="#006666"><xsl:text>Fecha</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell  text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
					<fo:table-cell padding-before="4pt" border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
						<fo:block color="#006666"><xsl:text>Corredor</xsl:text></fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>

							<fo:block id="last-page"/>
							
						</fo:block>
					</fo:flow>
	
				</fo:page-sequence>
				
				
	

		</fo:root>
	</xsl:template>
</xsl:stylesheet>
