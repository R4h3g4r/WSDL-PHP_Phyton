<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">	
<!-- xsl:stylesheet xmlns:fox="http://xml.apache.org/fop/extensions" xmlns:print="http://www.jcatalog.com/com.jcatalog.output.xslextensions.print.PrintElementFactory" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:saxon="http://icl.com/saxon" extension-element-prefixes="saxon print"  -->
<xsl:variable name="IMAGEEXT">gif</xsl:variable>
<xsl:template match="DatosImpresionMultiTO">
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
	
	<xsl:template name="temp_tituloAsegurado">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" padding-before="2pt">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
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
			<fo:table-column column-width="proportional-column-width(15)"/>
			<fo:table-column column-width="proportional-column-width(40)"/>
			<fo:table-column column-width="proportional-column-width(24)"/>
			<fo:table-column column-width="proportional-column-width(24)"/>
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
						<xsl:text>Prima Bruta</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="start" display-align="before">
					<fo:block white-space-collapse="true"  text-align="right" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
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
					<fo:block white-space-collapse="true"  text-align="right" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
						<xsl:text>Anual UF</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="start" display-align="before">
					<fo:block white-space-collapse="true"  text-align="right" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
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
						<fo:block white-space-collapse="true"  text-align="right" color="#006666" font-size="11.0pt">
							<xsl:value-of disable-output-escaping="no" select="bruta"/>
						</fo:block>
					</fo:table-cell>

					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="right" color="#006666" font-size="11.0pt">
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

	<xsl:template name="temp_tituloCondiciones">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="2pt">
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
						<fo:block padding-before="0pt" font-size="11.0pt">  "El valor de la prima anual para esta póliza es de UF 1.19 + IVA. Sin perjuicio de ello la Compañía otorga una </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  promoción especial al asegurado para el primer año de vigencia de esta póliza, consistente en un 10% de </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  descuento de la prima anual. " </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  En las futuras renovaciones se cobrarán una prima anual de UF 1,19 + IVA, a menos que la Compañía defina </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  cambio de condiciones, en cuyo caso se avisará al asegurado por escrito con 30 días de anticipación." </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  1.-  MATERIA ASEGURADA </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  1.1.Tarjetas de crédito y/o débito, que cuentan con las siguientes coberturas y servicios: </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  a) uso fraudulento y clonación </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  b) compra protegida </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  c) asalto en cajero </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  d) Fallecimiento por asalto </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  e) asistencia legal </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  1.2.Cheques y chequeras, que cuentan con las siguientes coberturas y servicios: </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  a) uso fraudulento </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  b) asistencia legal </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  2.-  USO FRAUDULENTO Y CLONACIÓN de tarjetas de Débito y/o crédito, cheques y chequeras: </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  2.1.Cobertura por mal uso de tarjeta como consecuencia de robo, hurto,pérdida y/o extravío de la tarjeta </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  bancaria o comercial (POL 1 05 003 sección G). Pérdidas ocasionadas como consecuencia de robo, hurto,</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  pérdida y/o extravío ocurridas dentro de la 72 horas antes del momento en que se efectúo el bloqueo. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  2.2.Cobertura de falsificación y/o adulteración física de la tarjeta bancaria o comercial  (POL 1 05 003 sección</fo:block> 
						<fo:block padding-before="0pt" font-size="11.0pt">  H).Pérdidas ocurridas a consecuencia de falsificación y/o adulteración física del plástico y/o banda magnética </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  ocurridas desde la |ra transacción ilícita hasta la publicación en el boletín respectivo y en ningún caso se </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  indemnizarán transacciones efectuadas luego de 60 días desde la primera transacción ilícita o desde la fecha de </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  cargo en el estado de cuenta de dicha transacción. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  2.3.Cobertura de robo, asalto, hurto o extravío de talonarios de cheques o cheques individuales (POL 1 005 003 </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  secciones a y b). Pérdidas ocasionadas como consecuencia de robo, hurto, pérdida y/o extravío que se </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  efectúen en el periodo de 72 horas previas a la comunicación al banco.LIMITE DE INDEMNIZACIÓN: UF 170 en </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  el agregado anual como límite para las coberturas: Uso fraudulento, clonación y Asalto en Cajero. Nro. MAXIMO </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  DE EVENTOS: 5 anuales. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  3.-  COMPRA PROTEGIDA (POL 1 05 003 sección F).  La Compañía indemnizará al asegurado, en caso de  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  robo  o asalto de bienes adquiridos a través de tarjeta de débito y/o crédito. La garantía es válida en el mundo </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  entero siempre que el robo, el asalto o el daño accidental tengan lugar dentro  de los 10 DIAS a partir de la </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  fecha de compra de los bienes o de la fecha de entrega de dichos bienes si ésta es posterior a la fecha de </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  compra. LÍMITES DE INDEMNIZACIÓN: El límite agregado anual máximo de la indemnización a pagar es de UF </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  25.  La garantía sólo será de aplicación para los bienes cuyo precio de compra unitario sea superior a  UF 1. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  4.-  ASALTO EN CAJERO: Cobertura de utilización forzada por terceros de tarjeta bancarias o comerciales </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  (POL 1 05 003 Sección C). Indemnización de la pérdida del dinero retirado del cajero automático a </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  consecuencia de un robo, asalto o secuestro hasta UF 11,80 por evento y un límite agregado anual de UF 170 </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  para las coberturas Uso fraudulento, clonación y Asalto en Cajero. La cobertura ampara hasta 1 hora después </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  de realizada la  transacción en el cajero. En el caso de secuestro, sólo se ampara si es  una  persona  con quien </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  el asegurado no tenga una relación dentro del cuarto grado de consanguinidad y primero de afinidad y que </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  obligue al asegurado a realizar una transacción. El secuestro debe involucrar el uso de un  arma  peligrosa o la  </fo:block>

					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>



	<xsl:template name="temp_tituloCondiciones2">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="2pt">
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


	<xsl:template name="temp_datosCondiciones2">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
					<fo:block padding-before="0pt" font-size="11.0pt">  amenaza de infligir  lesión   corporal al asegurado. En caso de robo, asalto o secuestro la denuncia en </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Carabineros debe presentarse dentro de las  2 horas posteriores al hecho y el reclamo se debe presentar a más </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  tardar dentro de las 72 horas siguientes a la ocurrencia del hecho.Cláusula de uso general año 2000 (CUG 1 98 </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  031) y Cláusula de uso general de exclusión datos electrónicos (CUG 1 02 074). </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  5.- FALLECIMIENTO  POR ASALTO: Cobertura de Fallecimiento por asalto (POL 1 05 003 Sección D): En caso </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  de muerte del tarjeta habiente a consecuencia de asalto y que ocurra hasta una hora  después que el titular </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  haya realizado una operación o transacción en la red de cajeros automáticos, la compañía indemnizará el monto </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  asegurado a los herederos legales.  MONTO ASEGURADO:  UF 1.000 </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  6.-  ASISTENCIA LEGAL: </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  6.1.Cobertura de asistencia y orientación legal (POL 1 05 003 sección J): Servicios de Asistencia a cuenta </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  correntistas BCI como consecuencia de robo, hurto o extravío de cédula de identidad, cheques, tarjeta Redbanc </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  y Tarjetas de crédito emitidas por el  BCI. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  6.2. Servicios de Información: Entrega de información respecto a la denuncia a realizar ante Carabineros y a la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Compañía de Seguros. Conexión con servicio de emergencia de Carabineros, Investigaciones o seguridad </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  municipal.   </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Información y bloqueo inicial de cédula de identidad con Dicom. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Información y bloqueo con Transbank de tarjetas  de   crédito emitidas por BCI. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Información y bloqueo con Redbanc de tarjetas BCI Cash. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Información y bloqueo de tarjetas de crédito y débito de otros bancos </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Información y bloqueo de celulares </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Información y bloqueo de tarjetas de crédito de casas comerciales (cuando la multitienda lo permita) </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Información de gestiones a realizar para Orden  de  no  pago  de cheques BCI. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Información de gestiones para bloqueo de tarjetas   de   casas comerciales. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Información de publicaciones legales a realizar. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Nro.  de utilización por año ilimitada. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  6.3.-Traslado médico sanitario dentro del núcleo urbano: En caso de heridas graves como consecuencia de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  asalto en la vía pública se coordinará el traslado en ambulancia al centro hospitalario más cercano o se </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  reembolsará los costos en que incurrió el beneficiario para el traslado. En caso de heridas leves como </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  consecuencia de  asalto  en la vía pública, traslado del asegurado en el medio más adecuado al centro</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  hospitalario más cercano.En caso de asalto en la vía  pública  traslado del    beneficiario hasta su domicilio  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  dentro del  núcleo urbano en  que  aconteció el robo o asalto. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  6.4.-Orientación Legal: En caso de robo, asalto o extravío, los abogados designados por la compañía </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  entregarán orientación jurídica telefónica de las gestiones y/o trámites que el asegurado debe realizar para </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  protegerse de futuras reclamaciones judiciales y extrajudiciales en su  contra, por mal uso de sus cheques </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  robados, hurtados o extraviados. Nro. de utilización por año:  ilimitada. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  6.5.-Transmisión de mensajes urgentes asociados al evento.  Ilimitado. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  6.6.-Asistencia Administrativa (gestoría): En caso de robo de documentos, se prestará el servicio de gestoría </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  para la obtención de duplicado de los documentos (padrón, permiso de circulación, seguro obligatorio, etc.) que </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  no requieran de  la presencia del asegurado y teniendo en nuestro poder autorización notarial para realizar </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  estos trámites:   Límite de 2 eventos por año. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  6.7.- Asistencia Psicológica: Ante un robo o asalto de características traumáticas, el asegurado dispondrá de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  cinco sesiones con psicólogo quien le otorgará una ayuda profesional inicial para superar la experiencia sufrida.  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Límite de 2 eventos por año. La  prestación  es  otorgada  por  los  psicólogos   designados por la compañía. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  6.8.- Defensa jurídica con un máximo de 2 eventos por año y límite anual de UF 100 </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Asesorías:  Negociaciones respecto de documentos extraviados, hurtados o robados que deban ser pagados. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Representación en caso de cobranzas extrajudiciales de documentos extraviados, hurtados o robados. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Aclaración de protestos en el boletín de Informaciones Comerciales respecto de documentos que no hubiesen </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  sido bloqueados  oportuna mente. Redacción de mandatos o poderes cuando se requiera para efectuar alguno </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  de los trámites precedentemente indicados. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Juicios: Representación judicial del cliente en querellas  iniciadas en contra de quienes resulten responsables </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  del delito de robo o hurto de documentos cometido en su contra.  Representación judicial del cliente en acciones </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  de  cobranza civiles o criminales intentadas en su contra fundadas  en  documentos hurtados, robados o </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  extraviados. Esta Asistencia no cubre materias preexistentes o acciones contra Bancos e Instituciones </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Financieras. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  DEDUCIBLES:Asesorías: UF 3, Juicios:   UF 6 </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Territorialidad:  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Asistencia Telefónica:  Todo el mundo </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Traslado médico sanitario: Territorio Chileno </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Orientación Legal: Territorio Chileno para eventos   ocurridos en Chile </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Transmisión de mensajes urgente: Todo el mundo </fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_tituloCondiciones3">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="2pt">
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


	<xsl:template name="temp_datosCondiciones3">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
						<fo:block padding-before="0pt" font-size="11.0pt">  Asistencia Psicológica: Territorio Chileno para eventos  ocurridos en Chile  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  Defensa Jurídica: Territorio Chileno, en eventos ocurridos en Chile.  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  DERECHO DE RETRACTACION: Conforme a lo dispuesto por la Circular 1.587 de la Superintendencia de  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  Valores y Seguros, el asegurado tiene derecho a  retractarse  del presente seguro sin expresión de causa y sin  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  costo alguno para él, si su decisión la informa a la Compañía dentro del plazo  de  35  días corridos contados  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  desde la fecha de inicio de vigencia de la póliza.  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  TABLA DE TÉRMINOS CORTOS: Vencido el plazo del derecho retractación del contratante, y en caso que éste  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  solicite la terminación anticipada de la presente póliza, se restituirá  la  prima  pagada y  no  consumida en </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  conformidad a  la siguiente tabla: </fo:block>

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
													<fo:table-column column-width="proportional-column-width(16)"/>
													
													<fo:table-body>
														<fo:table-row keep-with-next="always">
															<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
																<fo:block color="#006666">
																	<xsl:text>Por Mes o Fraccion</xsl:text>
																</fo:block>
															</fo:table-cell>
															
															<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
																<fo:block color="#006666" text-align="right">
																	<xsl:text>% Sobre Prima Anual</xsl:text>
																</fo:block>
															</fo:table-cell>
															
															<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
																<fo:block color="#006666" text-align="center">
																	<xsl:text>Por Mes o Fraccion</xsl:text>
																</fo:block>
															</fo:table-cell>
				
															<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
																<fo:block color="#006666" text-align="center">
																	<xsl:text>% Sobre Prima Anual</xsl:text>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
				
														<fo:table-row keep-with-next="always">
															<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
																<fo:block text-align="center" color="#006666">
																	<xsl:text>1</xsl:text>
																</fo:block>
															</fo:table-cell>
															
															<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
																<fo:block text-align="center" color="#006666">
																	<xsl:text>20%</xsl:text>
																</fo:block>
															</fo:table-cell>
															
															<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
																<fo:block color="#006666" text-align="center">
																	<xsl:text>6</xsl:text>
																</fo:block>
															</fo:table-cell>
				
															<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
																<fo:block color="#006666" text-align="center">
																	<xsl:text>70%</xsl:text>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														
														<fo:table-row keep-with-next="always">
															<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
																<fo:block text-align="center" color="#006666">
																	<xsl:text>2</xsl:text>
																</fo:block>
															</fo:table-cell>
															
															<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
																<fo:block text-align="center" color="#006666">
																	<xsl:text>30%</xsl:text>
																</fo:block>
															</fo:table-cell>
															
															<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
																<fo:block color="#006666" text-align="center">
																	<xsl:text>7</xsl:text>
																</fo:block>
															</fo:table-cell>
				
															<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
																<fo:block color="#006666" text-align="center">
																	<xsl:text>80%</xsl:text>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
				
														<fo:table-row keep-with-next="always">
															<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
																<fo:block text-align="center" color="#006666">
																	<xsl:text>3</xsl:text>
																</fo:block>
															</fo:table-cell>
															
															<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
																<fo:block text-align="center" color="#006666">
																	<xsl:text>40%</xsl:text>
																</fo:block>
															</fo:table-cell>
															
															<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
																<fo:block color="#006666" text-align="center">
																	<xsl:text>8</xsl:text>
																</fo:block>
															</fo:table-cell>
				
															<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
																<fo:block color="#006666" text-align="center">
																	<xsl:text>90%</xsl:text>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														
														<fo:table-row keep-with-next="always">
															<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
																<fo:block text-align="center" color="#006666">
																	<xsl:text>4</xsl:text>
																</fo:block>
															</fo:table-cell>
															
															<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
																<fo:block text-align="center" color="#006666">
																	<xsl:text>50%</xsl:text>
																</fo:block>
															</fo:table-cell>
															
															<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
																<fo:block color="#006666" text-align="center">
																	<xsl:text>9 o mas</xsl:text>
																</fo:block>
															</fo:table-cell>
				
															<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
																<fo:block color="#006666" text-align="center">
																	<xsl:text>100%</xsl:text>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
				
														<fo:table-row keep-with-next="always">
															<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
																<fo:block text-align="center" color="#006666">
																	<xsl:text>5</xsl:text>
																</fo:block>
															</fo:table-cell>
															
															<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
																<fo:block text-align="center" color="#006666">
																	<xsl:text>60%</xsl:text>
																</fo:block>
															</fo:table-cell>
															
															<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
																<fo:block color="#006666" text-align="center">
																	<xsl:text></xsl:text>
																</fo:block>
															</fo:table-cell>
				
															<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
																<fo:block color="#006666" text-align="center">
																	<xsl:text></xsl:text>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
				
													</fo:table-body>
												</fo:table>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
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
	</xsl:template>

<!-- 	<xsl:template name="temp_detalle_de_pago_planes_disp" border-style="solid" border-width="1.0pt" border-color="#000000">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(40)"/>
			<fo:table-column column-width="proportional-column-width(30)"/>
			<fo:table-column column-width="proportional-column-width(30)"/>
			<fo:table-body>
				<xsl:for-each select="Pagos/PlanPago">

					<fo:table-row>
						<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
							<fo:block color="#006666">
								<xsl:text>Prima bruta anual UF</xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="left" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="brutaAnual"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="left" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="X"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<fo:table-row>
						<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
							<fo:block color="#006666">
								<xsl:text>MEDIOS DE PAGO DISPONIBLE</xsl:text>
							</fo:block>
						</fo:table-cell>

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
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
							<fo:block color="#006666">
								<xsl:text></xsl:text>
							</fo:block>
						</fo:table-cell>
	
						<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
							<fo:block color="#006666">
								<xsl:text>Primer pago</xsl:text>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
							<fo:block color="#006666">
								<xsl:text>Futuros pagos</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<xsl:for-each select="FormaPago/MedioPago">
						<fo:table-row>
							<fo:table-cell display-align="center"  background-color="#ffffff" padding-left="5pt">
								<fo:block color="#006666"><xsl:value-of select="X"/></fo:block>
							</fo:table-cell>
	
							<fo:table-cell display-align="center"  background-color="#ffffff" padding-left="5pt">
								<fo:block color="#006666"><xsl:value-of select="descripcionPrimerPagos"/></fo:block>
							</fo:table-cell>
	
							<fo:table-cell  border-left-style="solid"  border-left-width="1.0pt" border-left-color="#000000" display-align="before"  background-color="#ffffff" padding-left="5pt">
								<fo:block color="#006666"><xsl:value-of select="descripcionFuturosPagos"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:for-each>

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

						<fo:table-cell padding-left="5pt" background-color="#f0f0f0">
							<fo:block color="#006666">
								<xsl:text></xsl:text>
							</fo:block>
						</fo:table-cell>
						
					</fo:table-row>

				</xsl:for-each>
			</fo:table-body>
		</fo:table>		
	</xsl:template>
-->

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


	<xsl:template name="temp_tituloCondiciones4">
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


	<xsl:template name="temp_datosCondiciones4">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
					<fo:block padding-before="0pt" font-size="11.0pt">  " Para cuentas bipersonales el seguro cubre los cheques, chequeras,tarjetas de débito y tarjetas de crédito </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  asociadas solo al titular que contrata el seguro, con las coberturas, exclusiones y topes especificados en la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  póliza respectiva.  En caso de querer cubrir los documentos asociados a ambos titulares se debe contratar BCI</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Multiprotección para cada uno de los titulares. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  MANDATO : El contratante acepta que la compañía renueva automáticamente, tácita y sucesivamente  por </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  periodos iguales el seguro a que da origen esta propuesta, salvo voluntad contraria manifestada por escrito por </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  el contratante, mediante carta certificada o fax dirigido a BCI Seguros Generales S.A. o a BCI Corredores de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Seguros S.A., con 30 días de anticipación a la fecha de término primitivo o de cualquiera de sus prorrogas. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Asimismo, autoriza a BCI Corredores de Seguros S.A., para que suscriba todos los documentos que sean</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  necesarios para la emisión  de la póliza de seguro, sus futuras renovaciones y eventuales modificaciones. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  CODIGO DE AUTORREGULACIÓN : BCI Seguros Generales S.A.,  se encuentra adherida voluntariamente al </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Código de Autorregulación y al Compendio de Buenas Prácticas de las Compañías de Seguros, cuyo propósito </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  es propender al desarrollo del mercado de seguros, en consonancia de los principios de libre competencia y </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  buena fe que debe existir entre las empresas y entre éstas y sus clientes. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  Copia del Compendio de Buenas Prácticas Corporativas de las Compañías de Seguros se encuentra  a </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  disposición de los interesados en cualquiera de las oficinas de BCI Seguros Generales S.A. y en www.aach.cl.</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">  El Seguro ofrecido es intermediado por BCI corredores de Seguros S.A. y la compañía que cubre el riesgo es </fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>



	<xsl:template name="temp_tituloCondiciones5">
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


	<xsl:template name="temp_datosCondiciones5">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
						<fo:block padding-before="0pt" font-size="11.0pt">  BCI Seguros Generales S.A. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  El proponente ha tomado conocimiento del derecho a desistir sobre la contratación de los seguros y a la libre </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  elección de intermediario y compañía aseguradora. </fo:block>
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
	