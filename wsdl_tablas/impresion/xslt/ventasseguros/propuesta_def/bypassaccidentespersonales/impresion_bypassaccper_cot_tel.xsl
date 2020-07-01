<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">	
<!-- xsl:stylesheet xmlns:fox="http://xml.apache.org/fop/extensions" xmlns:print="http://www.jcatalog.com/com.jcatalog.output.xslextensions.print.PrintElementFactory" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:saxon="http://icl.com/saxon" extension-element-prefixes="saxon print"  -->
<xsl:variable name="IMAGEEXT">gif</xsl:variable>
<xsl:template match="DatosImpresionCotAccPerTO">
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
			<fo:table-column column-width="proportional-column-width(40)"/>
			<fo:table-column column-width="proportional-column-width(30)"/>
			<fo:table-column column-width="proportional-column-width(30)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block text-align="left">
							<fo:external-graphic scaling="uniform" height="30pt" width="120pt">
								<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/BciSeguros_verticalBPS.jpg')</xsl:attribute>
							</fo:external-graphic>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center">
						<fo:block color="#CC0000" font-size="5pt" text-align="center" font-weight="bold">
							</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="right">
							<fo:external-graphic  scaling="uniform" height="30pt" width="120px">
								<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/LOGOBCI2BPS.gif')</xsl:attribute>
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
						<xsl:text>COTIZACION DE SEGURO Nro </xsl:text><xsl:value-of disable-output-escaping="no" select="nroCotizacion"/> <xsl:text> - </xsl:text> <xsl:value-of disable-output-escaping="no" select="descripcionProducto"/>
						</fo:block>
					</fo:table-cell>
			</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_tituloMateriaAsegurada">
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
	
	<xsl:template name="temp_tituloAsegurado">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" padding-before="2pt">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>ASEGURADO</xsl:text>
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
								<xsl:text disable-output-escaping="no">RUT</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="rutAseguradoTitular"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Nombres</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="nombresAseguradoTitular"/>
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
								<xsl:value-of disable-output-escaping="no" select="apellidoPaternoAseguradoTitular"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text disable-output-escaping="no">Apellido Materno</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="apellidoMaternoAseguradoTitular"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>					
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text disable-output-escaping="no">Fecha de Nacimiento</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="fechaNacimientoAseguradoTitular"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text disable-output-escaping="no">Sexo</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="sexoAseguradoTitular"/>
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
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_glosa_cobertura">
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
	
	<xsl:template name="temp_datosCondiciones">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
					<fo:block padding-before="0pt" font-size="11.0pt">  CLAUSULA:  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  ?El valor de la prima bruta anual para esta póliza esde UF 1.8 Sin perjuicio de ello la Compañía otorga una   </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  promoción especial al asegurado para el primer año de vigencia de esta póliza,consistente en la exención de   </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  pago de la primera cuota de la prima."  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  ?En las futuras renovaciones se cobrarán 12 cuotas de UF 0,15 equivalentes a una prima bruta anual de   </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  UF 1,8 a menos quela Compañía defina cambio de condiciones, en cuyo caso se avisará al asegurado por  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  escrito con 30 días de anticipación.".  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  DERECHO A RETRACTACIÓN DEL SEGURO  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  El asegurado podrá, sin expresión de causa ni penalización alguna, retractarse del seguro contratado dentro del   </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  plazo de 35 días, contado desde que tomó conocimiento de ésta póliza o desde la fecha que ésta llegue al   </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  domicilio registrado por la Compañía. Dicha retractación deberá comunicarse, a la Compañía o Corredora de   </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Seguros, por cualquier medio que permita la expresión fehaciente de dicha voluntad  </fo:block>
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
	</xsl:template>

	<xsl:template name="temp_detalle_de_pago_planes_disp" border-style="solid" border-width="1.0pt" border-color="#000000">
		<xsl:for-each select="Pagos/PlanPago">
			<fo:block span="none" padding-before="1pt">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
								<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="nombrePlanPago"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
			  </fo:table>
			</fo:block>

	    	  <fo:block span="none" padding-before="2pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
					<fo:table-column column-width="proportional-column-width(25)"/>
					<fo:table-column column-width="proportional-column-width(25)" />
					<fo:table-column column-width="proportional-column-width(25)"/>
							
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
									<xsl:text>Prima bruta anual UF :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
									<xsl:value-of disable-output-escaping="no" select="brutaAnual"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
									
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
 		</xsl:for-each>
 </xsl:template>	

<xsl:template name="temp_tituloMediosPago">
	<fo:block span="none" padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
		<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
						<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
							<xsl:text>MEDIOS DE PAGO DISPONIBLES</xsl:text>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
</xsl:template>	

<xsl:template name="temp_datosMediosPago">
	<fo:block span="none" padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(10)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(35)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(10)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(35)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(10)" background-color="#f0f0f0"/>
					
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Primer pago</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Futuros pagos</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<!-- <xsl:value-of disable-output-escaping="no" select="fechaHoy"/>-->
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
										
			</fo:table-body>
		</fo:table>
	</fo:block>
</xsl:template>


<xsl:template name="temp_datosMediosPago2">
	<fo:block span="none" padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(15)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(30)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(15)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(30)" background-color="#f0f0f0"/>
			<fo:table-column column-width="proportional-column-width(10)" background-color="#f0f0f0"/>
					
			<fo:table-body>
												
				<xsl:for-each select="Pagos/FormaPago/MedioPago">
												
				<fo:table-row>
				
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							
						</fo:block>
					</fo:table-cell>
																					
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">											
							<xsl:value-of disable-output-escaping="no" select="descripcionPrimerPagos"/>
						</fo:block>
					</fo:table-cell>

					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							
						</fo:block>
					</fo:table-cell>

					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:value-of disable-output-escaping="no" select="descripcionFuturosPagos"/>
						</fo:block>
					</fo:table-cell>
					
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							
						</fo:block>
					</fo:table-cell>
														
					
				</fo:table-row>	
			
					
				</xsl:for-each>
																		
			</fo:table-body>
		</fo:table>
	</fo:block>
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
					<fo:block padding-before="0pt" font-size="11.0pt">  DECLARACION ESPECIAL</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  En cumplimiento a lo dispuesto en la Norma de Carácter General Nº 124 del 22 de Noviembre del 2001, dictada   </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  por la Superintendencia de Valores y Seguros, declaro que he consentido expresamente que las coberturas de   </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  que da cuenta el presente contrato, excluye la muerte e invalidez producida:  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  1.- Durante la realización de deportes riesgosos, aunque se practique en forma esporádica, y en que se ponga   </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  en peligro la vida o la integridad física de la persona, tales como : Buceo, alas delta, parapente, carreras de   </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  velocidad (auto, moto, ciclismo), carreras de caballo, piloto de aviación civil, andinismo, entre otros.  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  2.- Cuando el siniestro tenga lugar como consecuencia del desempeño de actividades especificadas para su   </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  cargo u ocupación, que se consideran riesgosas, tales como : trabajo en actividades mineras, forestales,  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  pesqueras, operador de explosivos, albañiles en altura, bomberos en general, miembro de las fuerzas armadas   </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  y de orden, reportero en zonas de conflicto, entre otras.  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  3.- A consecuencia directa o indirecta de un accidente o de una incapacidad diagnosticada o conocida con   </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  anterioridad a la vigencia inicial de la póliza. Quedan comprendidas en esta exclusión las enfermedades    </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  producidas directa e indirectamente por excesos o usos abusivos de sustancias como el tabaco, alcohol y   </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  drogas.  </fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>



	<xsl:template name="temp_tituloCondiciones_2">
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
	
	<xsl:template name="temp_datosCondiciones_2">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
					<fo:block padding-before="0pt" font-size="11.0pt">  Adicionalmente, autorizo a cualquier médico, hospital, clinica u otra institución o persona que tenga mis registros   </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  personales, para que pueda dar información solicitada por BCI Seguros Vida S.A.. A su vez faculto a esta   </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  última, para que solicite o retire copia de tales antecedentes.  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  COMPROMISO DE COBERTURA  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Se deja constancia que, en caso que esta propuesta sea aceptada por el	asegurador, la fecha de inicio de la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  cobertura al riesgo será el día	siguiente de la fecha de llenado de esta propuesta, por los montos que se indican </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  para el plan elegido.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  La póliza que se emita como consecuencia de la presente propuesta, se regirá por las condiciones generales </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  inscritas en la S.V.S. bajo el Código POL. 2 92 015.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  El Seguro ofrecido es intermediado por BCI Corredores de Seguros S.A. y la compañía que cubre el riesgo es </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  BCI Seguros Vida S.A.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  El proponente ha tomado conocimiento del derecho a decidir sobre la contratación de los seguros y a la libre </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  elección del intermediario y compañía aseguradora.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  "Con la emisión de la presente propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  cobertura comenzará a regir únicamente a partir del momento en que esta propuesta sea aceptada por el </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  asegurador y se inicie la vigencia de la póliza" (Circular Nº 1.390 S.V.S.).</fo:block>
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
	