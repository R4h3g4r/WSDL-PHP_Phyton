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
							 (continuación)
							  - 
							 Página <fo:page-number/>
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



	<xsl:template name="temp_datos_ejecutivo">
		<fo:block span="none">
			<!-- GENERATE TABLE START-->
			
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
			<xsl:text>COTIZACION DE SEGURO Nro </xsl:text><xsl:value-of disable-output-escaping="no" select="nroCotizacion"/> 
							<xsl:if test="( codigoProducto = 'BCIASG' )"> 						
									<xsl:text> - PRODUCTO Vehiculos Motorizados </xsl:text>
							</xsl:if>
							<xsl:if test="( codigoProducto = 'BCIACOL' )"> 						
									<xsl:text> - PRODUCTO Vehiculos Motorizados Colaboradores </xsl:text>
							</xsl:if>
							<xsl:if test="( codigoProducto = 'BCIACAM' )"> 						
									<xsl:text> - PRODUCTO Vehiculos Motorizados </xsl:text>
							</xsl:if>
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
								<xsl:text>MATERIA ASEGURADA (DATOS DEL VEHICULO)</xsl:text>
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
								<xsl:text disable-output-escaping="no">Marca Vehiculo</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="marcaVehiculo"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Modelo Vehiculo</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="modeloVehiculo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Uso Vehiculo</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="usoVehiculo"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Año Fabricación</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="anoVehiculo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Conduccion Exclusiva</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
								<xsl:value-of disable-output-escaping="no" select="conduccionExclusiva"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<!-- <xsl:text>Deducible</xsl:text> -->
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<!-- <xsl:value-of disable-output-escaping="no" select="deducible"/> -->
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
								<xsl:text>CONDUCTOR HABITUAL</xsl:text>
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
				<xsl:text>Rut</xsl:text></fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="start" display-align="before">
				<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
				<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="rutConductorHabitual"/>
				</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="start" display-align="before">
				<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
				<xsl:text>Edad</xsl:text></fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="start" display-align="before">
				<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
				<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="edadConductorHabitual"/>
				</fo:block>
				</fo:table-cell>
				</fo:table-row>
		<!-- 		<fo:table-row>
				<fo:table-cell text-align="start" display-align="before">
				<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
				<xsl:text>Nro. Siniestros</xsl:text></fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="start" display-align="before">
				<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
				<xsl:text></xsl:text><xsl:value-of disable-output-escaping="no" select="nroSiniestros"/>
				</fo:block>
				</fo:table-cell>
			</fo:table-row> -->
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
		<fo:table-column column-width="proportional-column-width(12)"/>
		<fo:table-column column-width="proportional-column-width(50)"/>
		<fo:table-column column-width="proportional-column-width(7)"/>
		<fo:table-column column-width="proportional-column-width(7)"/>
		<fo:table-column column-width="proportional-column-width(7)"/>
		<fo:table-column column-width="proportional-column-width(7)"/>
		<fo:table-column column-width="proportional-column-width(10)"/>
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
				<fo:block white-space-collapse="true"  text-align="right" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
					<xsl:text>Moneda</xsl:text>
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
		
		
		<!-- SE MULTIPLICAN LOS PLANES DE COBERTURA COTIZADOS -->
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
						<fo:table-cell text-align="center" display-align="before">
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
		<!-- GENERATE TABLE START-->
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
		<!-- GENERATE TABLE START-->
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


	<xsl:template name="temp_tituloDeducibles">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="1pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>DEDUCIBLES</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_datosDeducibles">
		<!-- GENERATE TABLE START-->
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
			   <fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:value-of disable-output-escaping="no" select="deducible"/>
						</fo:block>
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
									<fo:table-column column-width="proportional-column-width(10)"/>
									<fo:table-column column-width="proportional-column-width(60)"/>
									<fo:table-column column-width="proportional-column-width(15)"/>
									<fo:table-column column-width="proportional-column-width(15)"/>
									<fo:table-body>
										<fo:table-row keep-with-next="always">
											<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
												<fo:block color="#006666">
													<xsl:text>Codigo</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
												<fo:block color="#006666">
													<xsl:text>Nombre Plan de Cobertura</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
												<fo:block color="#006666" text-align="right">
													<xsl:text>Prima total</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
												<fo:block color="#006666" text-align="right">
													<xsl:text>Depósito inicial</xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										
										<!-- para cada plan de cobertura -->
									<xsl:for-each select="planesCobertura/plan">
										<fo:table-row keep-with-next="always" border-style="solid" border-width="1.0pt" border-color="#000000" padding-before="2pt">
											<fo:table-cell padding-left="5pt">
												<fo:block color="#006666">
													<xsl:value-of disable-output-escaping="no" select="planElegido"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding-left="5pt">
												<fo:block color="#006666">
													<xsl:value-of disable-output-escaping="no" select="descripcion"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding-left="5pt">
												<fo:block color="#006666" text-align="right">
													<xsl:value-of disable-output-escaping="no" select="bruta"/> <xsl:text> </xsl:text><xsl:value-of disable-output-escaping="no" select="moneda"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell padding-left="5pt">
												<fo:block color="#006666" text-align="right">
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
						<fo:block color="#006666"><xsl:text>Cuota máx.</xsl:text></fo:block>
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
														<xsl:if test="( codigoPlanPago = '1' or codigoPlanPago = '4')"> 
															<fo:block color="#006666"><xsl:value-of select="../../../../bruta"/></fo:block>
														</xsl:if>	
														<xsl:if test="( codigoPlanPago != '1' and codigoPlanPago != '4')"> 
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

							<fo:block padding-before="0pt" font-size="11.0pt">  EXCLUSIONES</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt"> </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  - Vehículos con más de 15 años de antigüedad. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  - Vehículos de 3 o menos ruedas. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  - Vehículos de arriendo o renta car. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  - Vehículos de turismo.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  - Vehículos de locomoción colectiva o taxis. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  - Furgones escolares. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  - Vehículos del Cuerpo de Bomberos, ambulancias y policiales. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  - Vehículos de Escuela de Conductores. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  - Vehículos sin placa única nacional, excepto Vehículos nuevos.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  - Vehículos internados con franquicia aduanera y que no correspondan a versiones vendidas en Chile por representantes de la marca debidamente autorizados. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  - Vehículos hechizos.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">  - Vehículos que transporten material explosivo, corrosivo o combustible.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt"></fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Para le emisión del presente certificado ha sido determinante la declaración formulada por el contratante, respecto de otros seguros contratados que hayan amparado al vehículo individualizado anteriormente y a quien sea el conductor habitual de éste.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt"></fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Todas las menciones de este certificado formarán parte integrante de las Condiciones Particulares de la póliza. </fo:block>
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
							<fo:block padding-before="3pt" font-size="11.0pt">La vigencia de esta cotización es de 10 días </fo:block>
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
