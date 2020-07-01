<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">	
<xsl:variable name="IMAGEEXT">gif</xsl:variable>
<xsl:template match="DatosPropuesta" xmlns="http://www.w3.org/2000/svg">
	<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
		<fo:layout-master-set>
			<fo:simple-page-master master-name="simple" page-height="287mm" page-width="180mm" margin-left="40pt" margin-right="40pt" margin-top="10pt" margin-bottom="20pt">
				<fo:region-body region-name="xsl-region-body" margin-bottom="40pt" margin-top="50pt"/>
				<fo:region-before region-name="xsl-region-before" extent="50pt" />
				<fo:region-after region-name="xsl-region-after" extent="20pt"/>
			</fo:simple-page-master>	
			<fo:simple-page-master master-name="paginaResto" page-height="287mm" page-width="180mm" margin-left="40pt" margin-right="40pt" margin-top="10pt" margin-bottom="20pt">
				<fo:region-body margin-top="2.5cm" margin-bottom="1cm"/>					
				<fo:region-before region-name="regionEncabezadoResto" extent="5cm" precedence="true"/>
				<fo:region-after margin-bottom="0.05cm" region-name="regionPiePagina" extent="0.5cm" precedence="true"/>
			</fo:simple-page-master>
			<fo:page-sequence-master master-name="masterSequenceName1">
				<fo:repeatable-page-master-alternatives>
					<fo:conditional-page-master-reference master-reference="simple" page-position="first"/>
					<fo:conditional-page-master-reference master-reference="paginaResto" page-position="rest"/>
				</fo:repeatable-page-master-alternatives>
			</fo:page-sequence-master>
		</fo:layout-master-set>
			
		<fo:page-sequence master-reference="masterSequenceName1">
			<fo:static-content flow-name="xsl-region-before">
				<fo:block span="none">
					<fo:table padding-before="9pt" table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(30)"/>
						<fo:table-column column-width="proportional-column-width(60)"/>
						<fo:table-column column-width="proportional-column-width(30)"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block text-align="left">
										<fo:external-graphic scaling="uniform" height="40pt" width="90pt">
											<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/corredorSegurosNew.gif')</xsl:attribute>
										</fo:external-graphic>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block  text-align="center" font-size="8pt" color="#000000"  font-weight="bold">
										<xsl:text>PROPUESTA SEGURO AUTOMOTRIZ</xsl:text>
									</fo:block>
									<fo:block  text-align="center" font-size="8pt" color="#000000"  font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="Cotizacion/descripcionProducto"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="right">
										<fo:external-graphic  scaling="uniform" height="20pt" width="80px">
											<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/cardif_logo.jpg')</xsl:attribute>
										</fo:external-graphic>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
			</fo:static-content>
			
			<fo:static-content flow-name="regionEncabezadoResto">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(20)"/>
					<fo:table-column column-width="proportional-column-width(80)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block font-size="9pt" color="#000000">
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<xsl:if test="( DatosPoliza/condicionPoliza = 'NO' )">
									<fo:block  text-align="right" font-size="9pt" color="#4D6175">
										PROPUESTA DE SEGURO Nro 
											<xsl:value-of select="Cotizacion/numeroPropuesta"/>
										 (continuación)
										  - 
										 Página <fo:page-number/>
									</fo:block>
								</xsl:if>
								<xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">
									<fo:block  text-align="right" font-size="9pt">
										POLIZA DE SEGURO Nro 
										<xsl:value-of select="DatosPoliza/numeroPoliza"/>-<xsl:value-of select="DatosPoliza/digitoVerificadorPoliza"/>
										(continuación)
										- 
										Página <fo:page-number/>
									</fo:block>
								</xsl:if>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				<fo:table padding-before="9pt" table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(30)"/>
					<fo:table-column column-width="proportional-column-width(60)"/>
					<fo:table-column column-width="proportional-column-width(30)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block text-align="left">
									<fo:external-graphic scaling="uniform" height="40pt" width="90pt">
										<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/corredorSegurosNew.gif')</xsl:attribute>
									</fo:external-graphic>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block  text-align="center" font-size="8pt" color="#000000"  font-weight="bold">
									<xsl:text>PROPUESTA SEGURO AUTOMOTRIZ</xsl:text>
								</fo:block>
								<fo:block  text-align="center" font-size="8pt" color="#000000"  font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="Cotizacion/descripcionProducto"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="right">
									<fo:external-graphic  scaling="uniform" height="20pt" width="80px">
										<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/cardif_logo.jpg')</xsl:attribute>
									</fo:external-graphic>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>


			</fo:static-content>
			
			<fo:static-content flow-name="regionPiePagina">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(20)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block font-size="7pt" color="#4D6175">
									<xsl:text>Fecha emisión: </xsl:text><xsl:value-of select="Cotizacion/fechaPropuesta"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:static-content>

			<fo:flow flow-name="xsl-region-body" color="#4D6175" font-size="8pt" >
				<fo:block >
					<xsl:template name="temp_identificacion">	
						<fo:block align="center" span="none" padding-before="10pt">
							<fo:table  align="center" table-layout="fixed" width="100%" border="solid">
								<fo:table-column column-width="proportional-column-width(40)" background-color="#FFFFFF"/>
								<fo:table-column column-width="proportional-column-width(60)" background-color="#FFFFFF"/>
								<fo:table-body>
									<fo:table-row padding-before="2pt">
										<fo:table-cell text-align="start" number-columns-spanned="2"  display-align="before" font-weight="bold" background-color="#C8F2D4" padding="4pt" padding-left="8pt">
											<fo:block text-align="center" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Intermediario y Compañía Aseguradora</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Sucursal:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="Cotizacion/descripcionSucursal"/>
											</fo:block>
										</fo:table-cell>					
									</fo:table-row>
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Ejecutivo:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="Cotizacion/descripcionEjecutivo"/>
											</fo:block>
										</fo:table-cell>					
									</fo:table-row>
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Fecha Solicitud:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="Cotizacion/fechaInicioVigencia"/>
											</fo:block>
										</fo:table-cell>					
									</fo:table-row>
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>N° de Propuesta:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="Cotizacion/numeroPropuesta"/>
											</fo:block>
										</fo:table-cell>					
									</fo:table-row>
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Corredora:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:text>BCI Corredores de Seguros S.A.</xsl:text>
											</fo:block>
										</fo:table-cell>					
									</fo:table-row>
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>RUT Corredora:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:text>78.951.950-1</xsl:text>
											</fo:block>
										</fo:table-cell>					
									</fo:table-row>					
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>RUT Compañía:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt">
												<xsl:text>96.837.640-3</xsl:text>
											</fo:block>
										</fo:table-cell>					
									</fo:table-row>							
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Compañía:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt">
												<xsl:text>BNP PARIBAS CARDIF SEGUROS GENERALES S.A.</xsl:text>
											</fo:block>
										</fo:table-cell>					
									</fo:table-row>
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Dirección Compañía:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt">
												<xsl:text>Av. Vitacura 2670 piso 14, Las Condes, Santiago.</xsl:text>
											</fo:block>
										</fo:table-cell>					
									</fo:table-row>
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Comisión Corredor:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt">
												<xsl:text>21% de La Prima Neta + IVA.</xsl:text>
											</fo:block>
										</fo:table-cell>					
									</fo:table-row>		
								</fo:table-body>
							</fo:table>
						</fo:block>
					</xsl:template>

					<xsl:template name="temp_asegurado">	
						<fo:block align="center" span="none" padding-before="10pt">
							<fo:table  align="center" table-layout="fixed" width="100%" border="solid">
								<fo:table-column column-width="proportional-column-width(25)" background-color="#FFFFFF"/>
								<fo:table-column column-width="proportional-column-width(25)" background-color="#FFFFFF"/>
								<fo:table-column column-width="proportional-column-width(25)" background-color="#FFFFFF"/>
								<fo:table-column column-width="proportional-column-width(25)" background-color="#FFFFFF"/>
								<fo:table-body>
									<fo:table-row padding-before="2pt">
										<fo:table-cell text-align="start" number-columns-spanned="4"  display-align="before" font-weight="bold" background-color="#C8F2D4" padding="4pt" padding-left="8pt">
											<fo:block text-align="center" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Antecedentes del Contratante (Pagador del Seguro) / Responsable de Pago</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>RUT:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell   text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="contratante/rut"/><xsl:text>-</xsl:text><xsl:value-of disable-output-escaping="no" select="contratante/digitoVerificador"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Fecha Nac. Asegurado:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="contratante/fechaNacimiento"/>
											</fo:block>
										</fo:table-cell>							
									</fo:table-row>
					
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Nombre:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell number-columns-spanned="3"  text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="contratante/nombres"/>
											</fo:block>
										</fo:table-cell>							
									</fo:table-row>
	
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Apellido Paterno:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell   text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="contratante/apellidoPaterno"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Apellido Materno:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="contratante/apellidoMaterno"/>
											</fo:block>
										</fo:table-cell>							
									</fo:table-row>
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Teléfono:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  number-columns-spanned="3" text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="contratante/fono"/>
											</fo:block>
										</fo:table-cell>					
									</fo:table-row>
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>E-Mail:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  number-columns-spanned="3" text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="contratante/email"/>
											</fo:block>
										</fo:table-cell>					
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
					</xsl:template>

					<xsl:template name="temp_contratante">	
						<fo:block align="center" span="none" padding-before="10pt">
							<fo:table  align="center" table-layout="fixed" width="100%" border="solid">
								<fo:table-column column-width="proportional-column-width(25)" background-color="#FFFFFF"/>
								<fo:table-column column-width="proportional-column-width(25)" background-color="#FFFFFF"/>
								<fo:table-column column-width="proportional-column-width(25)" background-color="#FFFFFF"/>
								<fo:table-column column-width="proportional-column-width(25)" background-color="#FFFFFF"/>
								<fo:table-body>
									<fo:table-row padding-before="2pt">
										<fo:table-cell text-align="start" number-columns-spanned="4"  display-align="before" font-weight="bold" background-color="#C8F2D4" padding="4pt" padding-left="8pt">
											<fo:block text-align="center" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Identificacion Asegurado</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Plan Contratado:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  number-columns-spanned="3" text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="cobertura/descripcionPlan"/>
											</fo:block>
										</fo:table-cell>					
									</fo:table-row>
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>RUT:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell   text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="aFavor/rut"/><xsl:text>-</xsl:text><xsl:value-of disable-output-escaping="no" select="aFavor/digitoVerificador"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Fecha de Nacimiento:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="aFavor/fechaNacimiento"/>
											</fo:block>
										</fo:table-cell>							
									</fo:table-row>
									
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Nombre:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell   text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="aFavor/nombres"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Comuna:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="aFavor/descripcionComunaComercial"/>
											</fo:block>
										</fo:table-cell>							
									</fo:table-row>
					
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Apellido Paterno:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell   text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="aFavor/apellidoPaterno"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Ciudad:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="aFavor/descripcionCiudadPostal"/>
											</fo:block>
										</fo:table-cell>							
									</fo:table-row>
									
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Apellido Materno:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell   text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="aFavor/apellidoMaterno"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Región:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="aFavor/descripcionRegionPostal"/>
											</fo:block>
										</fo:table-cell>							
									</fo:table-row>
									
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Fono:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  number-columns-spanned="3" text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="aFavor/fono"/>
											</fo:block>
										</fo:table-cell>					
									</fo:table-row>
									
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Dirección:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  number-columns-spanned="3" text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="aFavor/direccionPostal"/>
											</fo:block>
										</fo:table-cell>					
									</fo:table-row>
									
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>E-Mail:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  number-columns-spanned="3" text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="aFavor/email"/>
											</fo:block>
										</fo:table-cell>					
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
						<xsl:for-each select="adicional/texto">
							<xsl:if test="(condicion = 'MANDATO_AUTORIZACION')">
								<fo:block text-align="justify" color="#000000" font-size="8.0pt" padding-before="10pt">
									<xsl:value-of disable-output-escaping="no" select="descripcion"/>
								</fo:block>
							</xsl:if>
						</xsl:for-each>
					</xsl:template>
	
					<xsl:template name="temp_vehiculo">	
						<fo:block align="center" span="none" padding-before="10pt">
							<fo:table  align="center" table-layout="fixed" width="100%" border="solid">
							<fo:table-column column-width="proportional-column-width(25)" background-color="#FFFFFF"/>
							<fo:table-column column-width="proportional-column-width(25)" background-color="#FFFFFF"/>
							<fo:table-column column-width="proportional-column-width(25)" background-color="#FFFFFF"/>
							<fo:table-column column-width="proportional-column-width(25)" background-color="#FFFFFF"/>
							<fo:table-body>
									<fo:table-row padding-before="2pt">
										<fo:table-cell text-align="start" number-columns-spanned="4"  display-align="before" font-weight="bold" background-color="#C8F2D4" padding="4pt" padding-left="8pt">
											<fo:block text-align="center" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Identificación de la Materia Asegurada</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Tipo de Vehículo:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell   text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionTipoVehiculo"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Marca:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionMarcaVehiculo"/>
											</fo:block>
										</fo:table-cell>							
									</fo:table-row>
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Patente:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell   text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/patenteVehiculo"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Modelo:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionModeloVehiculo"/>
											</fo:block>
										</fo:table-cell>							
									</fo:table-row>		

									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Número de Motor:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell   text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/numeroMotorVehiculo"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Número de Chasis:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/numeroChasisVehiculo"/>
											</fo:block>
										</fo:table-cell>							
									</fo:table-row>		
									
									
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Año Vehículo:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell   text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/anoFabricacionVehiculo"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Uso de Vehículo:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionUsoVehiculo"/>
											</fo:block>
										</fo:table-cell>							
									</fo:table-row>	
									
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Color:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell number-columns-spanned="3"  text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionColorVehiculo"/>
											</fo:block>
										</fo:table-cell>							
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
					</xsl:template>

					<xsl:template name="temp_tituloVigencia">	
						<fo:block align="center" span="none" padding-before="10pt">
							<fo:table  align="center" table-layout="fixed" width="100%" border="solid">
							<fo:table-column column-width="proportional-column-width(25)" background-color="#FFFFFF"/>
							<fo:table-body>
									<fo:table-row padding-before="2pt">
										<fo:table-cell text-align="start" number-columns-spanned="4"  display-align="before" font-weight="bold" background-color="#C8F2D4" padding="4pt" padding-left="8pt">
											<fo:block text-align="center" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>VIGENCIA DEL SEGURO</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Desde 12:00 del dia </xsl:text><xsl:value-of disable-output-escaping="no" select="Cotizacion/fechaInicioVigencia"/><xsl:text> Hasta las 12:00 del día </xsl:text><xsl:value-of disable-output-escaping="no" select="Cotizacion/fechaFinVigencia"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
						<fo:block break-before="page"></fo:block>
					</xsl:template>
					
					<xsl:template name="temp_mediopago">
						<fo:block align="center" span="none" padding-before="10pt">
							<fo:table  align="center" table-layout="fixed" width="100%" border="solid">
								<fo:table-column column-width="proportional-column-width(25)" background-color="#FFFFFF"/>
								<fo:table-column column-width="proportional-column-width(25)" background-color="#FFFFFF"/>
								<fo:table-column column-width="proportional-column-width(25)" background-color="#FFFFFF"/>
								<fo:table-column column-width="proportional-column-width(25)" background-color="#FFFFFF"/>
								<fo:table-body>
									<fo:table-row padding-before="2pt">
										<fo:table-cell text-align="center" number-columns-spanned="4"  display-align="center" background-color="#C8F2D4" padding="4pt" padding-left="8pt">
											<fo:block align="center" span="none" color="#000000">
												<fo:inline font-weight="bold">
													<xsl:text>Medio de Pago </xsl:text>
												</fo:inline>
												<xsl:text>
														Completar información tarjeta en mandato correspondiente
												</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" number-columns-spanned="3" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt">
												<xsl:text>Pago Automático con Cuenta Corriente (PAC)</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:instream-foreign-object>
												<svg width="10" height="10">
													<rect width="10" height="10" style="fill:white;stroke-width:0.1;stroke:rgb(0,0,0)" />
													<xsl:if test="( detallePago/codigoPrimerPago = '6' or detallePago/codigoPrimerPago = '3' or detallePago/codigoPrimerPago = '10' )"> 
														<line x1="0" x2="10" y1="0" y2="10" stroke="black" stroke-width="1"/>
														<line x1="0" x2="10" y1="10" y2="0" stroke="black" stroke-width="1"/>
													</xsl:if>
												</svg> 
											</fo:instream-foreign-object>
										</fo:table-cell>
									</fo:table-row>

									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" number-columns-spanned="3" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt">
												<xsl:text>Pago Automático con Tarjeta de Crédito (PAT)</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:instream-foreign-object>
												<svg width="10" height="10">
													<rect width="10" height="10" style="fill:white;stroke-width:0.1;stroke:rgb(0,0,0)" />
													<xsl:if test="( detallePago/codigoPrimerPago = '5' or detallePago/codigoPrimerPago = '4')"> 
														<line x1="0" x2="10" y1="0" y2="10" stroke="black" stroke-width="1"/>
														<line x1="0" x2="10" y1="10" y2="0" stroke="black" stroke-width="1"/>
													</xsl:if>
												</svg> 
											</fo:instream-foreign-object>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
					</xsl:template>

					<xsl:template name="temp_deducibletick">						
						<fo:block align="center" span="none" padding-before="10pt">
							<fo:table  align="center" table-layout="fixed" width="100%" border="solid">
								<fo:table-column column-width="proportional-column-width(25)" background-color="#FFFFFF"/>
								<fo:table-column column-width="proportional-column-width(25)" background-color="#FFFFFF"/>
								<fo:table-column column-width="proportional-column-width(25)" background-color="#FFFFFF"/>
								<fo:table-column column-width="proportional-column-width(25)" background-color="#FFFFFF"/>
								<fo:table-body>
									<fo:table-row padding-before="2pt">
										<fo:table-cell text-align="center" number-columns-spanned="4"  display-align="center" background-color="#C8F2D4" padding="4pt" padding-left="8pt">
											<fo:block align="center" span="none" color="#000000" font-weight="bold">
												<xsl:text>
													Deducible
												</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" number-columns-spanned="3" display-align="before" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt">
												<fo:inline font-weight="bold">
													<xsl:text>SIN </xsl:text>
												</fo:inline>
												<xsl:text>Deducible</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:instream-foreign-object>
											<svg width="10" height="10">
												<rect width="10" height="10" style="fill:white;stroke-width:0.1;stroke:rgb(0,0,0)" />
												<xsl:if test="( materiaAsegurada/deducible = '0.0' or materiaAsegurada/deducible = '0')">
													<line x1="0" x2="10" y1="0" y2="10" stroke="black" stroke-width="1"/>
													<line x1="0" x2="10" y1="10" y2="0" stroke="black" stroke-width="1"/>
												</xsl:if>
											</svg> 
										</fo:instream-foreign-object>
										</fo:table-cell>
									</fo:table-row>

									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" number-columns-spanned="3" display-align="before" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
										<fo:block text-align="start" color="#000000" font-size="8.0pt">
											<xsl:text>Deducible </xsl:text>
											<fo:inline font-weight="bold">
												<xsl:text>UF 3</xsl:text>
											</fo:inline>
										</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:instream-foreign-object>
											<svg width="10" height="10">
												<rect width="10" height="10" style="fill:white;stroke-width:0.1;stroke:rgb(0,0,0)" />
												<xsl:if test="( materiaAsegurada/deducible = '3.0' or materiaAsegurada/deducible = '3' )">
													<line x1="0" x2="10" y1="0" y2="10" stroke="black" stroke-width="1"/>
													<line x1="0" x2="10" y1="10" y2="0" stroke="black" stroke-width="1"/>
												</xsl:if>
											</svg> 
										</fo:instream-foreign-object>
										</fo:table-cell>
									</fo:table-row>

									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" number-columns-spanned="3" display-align="before" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
										<fo:block text-align="start" color="#000000" font-size="8.0pt">
											<xsl:text>Deducible </xsl:text>
											<fo:inline font-weight="bold">
												<xsl:text>UF 5</xsl:text>
											</fo:inline>
										</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
										<fo:instream-foreign-object>
											<svg width="10" height="10">
												<rect width="10" height="10" style="fill:white;stroke-width:0.1;stroke:rgb(0,0,0)" />
												<xsl:if test="( materiaAsegurada/deducible = '5.0' or materiaAsegurada/deducible = '5' )">
													<line x1="0" x2="10" y1="0" y2="10" stroke="black" stroke-width="1"/>
													<line x1="0" x2="10" y1="10" y2="0" stroke="black" stroke-width="1"/>
												</xsl:if>
											</svg> 
										</fo:instream-foreign-object>
										</fo:table-cell>
									</fo:table-row>

									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" number-columns-spanned="3" display-align="before" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
										<fo:block text-align="start" color="#000000" font-size="8.0pt">
											<xsl:text>Deducible </xsl:text>
											<fo:inline font-weight="bold">
												<xsl:text>UF 10</xsl:text>
											</fo:inline>
										</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
										<fo:instream-foreign-object>
											<svg width="10" height="10">
												<rect width="10" height="10" style="fill:white;stroke-width:0.1;stroke:rgb(0,0,0)" />
												<xsl:if test="( materiaAsegurada/deducible = '10.0' or materiaAsegurada/deducible = '10' )">
													<line x1="0" x2="10" y1="0" y2="10" stroke="black" stroke-width="1"/>
													<line x1="0" x2="10" y1="10" y2="0" stroke="black" stroke-width="1"/>
												</xsl:if>
											</svg> 
										</fo:instream-foreign-object>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
					</xsl:template>

					<xsl:template name="temp_plandepago">	
						<fo:block align="center" span="none" padding-before="10pt">
							<fo:table  align="center" table-layout="fixed" width="100%" border="solid">
							<fo:table-column column-width="proportional-column-width(25)" background-color="#FFFFFF"/>
							<fo:table-column column-width="proportional-column-width(25)" background-color="#FFFFFF"/>
							<fo:table-column column-width="proportional-column-width(25)" background-color="#FFFFFF"/>
							<fo:table-column column-width="proportional-column-width(25)" background-color="#FFFFFF"/>
							<fo:table-body>
									<fo:table-row padding-before="2pt">
										<fo:table-cell text-align="start" number-columns-spanned="4"  display-align="before" font-weight="bold" background-color="#C8F2D4" padding="4pt" padding-left="8pt">
											<fo:block text-align="center" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Plan de Pago en UF</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Prima Afecta:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell   text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="tarifa/primaAfecta"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Prima Exenta:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="tarifa/primaExenta"/>
											</fo:block>
										</fo:table-cell>							
									</fo:table-row>
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>IVA:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell   text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="tarifa/iva"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Prima Bruta Anual:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="tarifa/primaBruta"/>
											</fo:block>
										</fo:table-cell>							
									</fo:table-row>		

									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Total Cuotas Pactadas:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell   text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="detallePago/numeroCuotas"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Prima Bruta Mensual:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="tarifa/primaBrutaMensual"/>
											</fo:block>
										</fo:table-cell>							
									</fo:table-row>		
									
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Forma de Pago:</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell number-columns-spanned="3"  text-align="start" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >						
												<xsl:choose>
													<xsl:when test="(detallePago/codigoPrimerPago = '3')">
														<xsl:text>Cuenta Corriente BCI</xsl:text>
													</xsl:when>
													<xsl:otherwise>
														<xsl:text>Tarjeta de Crédito BCI</xsl:text>
													</xsl:otherwise>
												</xsl:choose>
											</fo:block>
										</fo:table-cell>							
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<xsl:for-each select="adicional/texto">
								<xsl:if test="(condicion = 'MANDATO')">
									<fo:block text-align="justify" color="#000000" font-size="8.0pt" padding-before="10pt">
										<xsl:value-of disable-output-escaping="no" select="descripcion"/>
									</fo:block>
								</xsl:if>
							</xsl:for-each>
						</fo:block>
					</xsl:template>
	
					<xsl:template name="temp_declaracionasegurado">
						<xsl:for-each select="adicional/texto">
							<xsl:if test="(condicion = 'MANDATO_POLIZA')">
								<fo:block align="center" span="none" color="#000000" padding-before="10pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="titulo"/>
								</fo:block>
								<fo:block align="center" span="none" padding-before="10pt">
									<fo:table  align="center" table-layout="fixed" width="100%" border="solid">
										<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
										<fo:table-body>
											<fo:table-row padding-before="0pt">
												<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
													<fo:block white-space-collapse="false" text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
														<xsl:value-of disable-output-escaping="no" select="descripcion"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</xsl:if>
						</xsl:for-each>
					</xsl:template>

					<xsl:template name="temp_inspeccion">
						<xsl:for-each select="adicional/texto">
							<xsl:if test="(condicion = 'DECLARACION_ESP')">
								<fo:block align="center" span="none" padding-before="10pt">
									<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:block>

								<fo:block span="none" padding-before="6pt">
									<fo:table table-layout="fixed" width="100%" >
									<fo:table-column column-width="proportional-column-width(100)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell text-align="start">
												<fo:block white-space-collapse="false" padding-before="0pt" font-size="8.0pt" color="#000000">
													<xsl:value-of disable-output-escaping="no" select="descripcion"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
									</fo:table>
								</fo:block>
							</xsl:if>
						</xsl:for-each>
						<fo:block break-before="page"></fo:block>
					</xsl:template>

					<xsl:template name="temp_vigencia_renovacion">
						<xsl:for-each select="adicional/texto">
							<xsl:if test="(condicion = 'CLAU_RENOV_AUT')">
								<fo:block align="center" span="none" padding-before="10pt">
									<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:block>

								<fo:block span="none" padding-before="6pt">
									<fo:table table-layout="fixed" width="100%" >
									<fo:table-column column-width="proportional-column-width(100)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell text-align="start">
												<fo:block white-space-collapse="false" padding-before="0pt" font-size="8.0pt" color="#000000">
													<xsl:value-of disable-output-escaping="no" select="descripcion"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
									</fo:table>
								</fo:block>
							</xsl:if>
						</xsl:for-each>
						<fo:block break-before="page"></fo:block>
					</xsl:template>

					<xsl:template name="temp_resumenCoberturas">	
						<fo:block align="center" span="none" padding-before="10pt">
							<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
								<xsl:text>
									RESUMEN DE COBERTURAS
								</xsl:text>
							</fo:block>
							<fo:block text-align="justify" color="#000000" font-size="8.0pt" padding-before="2pt">
								<xsl:text>Los términos, condiciones y exclusiones de este seguro se encuentran contenidos en las Condiciones Generales y en las Cláusulas Adicionales depositadas en la Superintendencia de Valores y Seguros (S.V.S.) bajo los códigos POL120140295, CAD120140297, CAD120140299, CAD120140301 y POL320131424.</xsl:text>
							</fo:block>
						</fo:block>
					</xsl:template>
					
					<xsl:template name="temp_tablaCoberturas">	
						<fo:block align="center" span="none" padding-before="10pt">
							<fo:table  align="center" table-layout="fixed" width="100%" >
							<fo:table-column column-width="proportional-column-width(33)" background-color="#FFFFFF"/>
							<fo:table-column column-width="proportional-column-width(32)" background-color="#FFFFFF"/>
							<fo:table-column column-width="proportional-column-width(20)" background-color="#FFFFFF"/>
							<fo:table-column column-width="proportional-column-width(15)" background-color="#FFFFFF"/>
							<fo:table-body>
									<fo:table-row padding-before="2pt" >
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#C8F2D4" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
											<fo:block text-align="center" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Cobertura</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#C8F2D4" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
											<fo:block text-align="center" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Monto Máximo</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#C8F2D4" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
											<fo:block text-align="center" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Condicionado</xsl:text>
												<xsl:text> SVS</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#C8F2D4" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
											<fo:block text-align="center" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text>Descomposición</xsl:text>
												<xsl:text> de la Prima (%)</xsl:text>
											</fo:block>
										</fo:table-cell>						
									</fo:table-row>
									<xsl:for-each select="tablaCoberturasProductos/cobertura">
									<fo:table-row padding-before="0pt" >
										<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
											<fo:block text-align="center" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="texto"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
											<fo:block text-align="center" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="monto"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
											<fo:block text-align="center" color="#000000" font-size="8.0pt" font-weight="bold" >
												<xsl:value-of disable-output-escaping="no" select="codigoSVS"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
											<fo:block text-align="center" color="#000000" font-size="8.0pt" >
												<xsl:value-of disable-output-escaping="no" select="prima"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									</xsl:for-each>
								</fo:table-body>
							</fo:table>
						</fo:block>
					</xsl:template>
	
					<xsl:template name="temp_declaraciones_especiales">
						<xsl:for-each select="adicional/texto">
							<xsl:if test="(condicion = 'DECLARAC_ESP')">
								<fo:block align="center" span="none" padding-before="10pt">
									<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:block>

								<fo:block span="none" padding-before="6pt">
									<fo:table table-layout="fixed" width="100%" >
									<fo:table-column column-width="proportional-column-width(100)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell text-align="start">
												<fo:block white-space-collapse="false" padding-before="0pt" font-size="8.0pt" color="#000000">
													<xsl:value-of disable-output-escaping="no" select="descripcion"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
									</fo:table>
								</fo:block>
							</xsl:if>
						</xsl:for-each>
					</xsl:template>

					<xsl:template name="temp_codigo_autorregulacion">
						<xsl:for-each select="adicional/texto">
							<xsl:if test="(condicion = 'COD_AUTORREG')">
								<fo:block align="center" span="none" padding-before="10pt">
									<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold"> 
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:block>

								<fo:block span="none" padding-before="6pt">
									<fo:table table-layout="fixed" width="100%" >
									<fo:table-column column-width="proportional-column-width(100)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell text-align="start">
												<fo:block white-space-collapse="false" padding-before="0pt" font-size="8.0pt" color="#000000">
													<xsl:value-of disable-output-escaping="no" select="descripcion"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
									</fo:table>
								</fo:block>
							</xsl:if>
						</xsl:for-each>
					</xsl:template>

					<xsl:template name="temp_firmas_declaraciones_especiales">
						<fo:block align="center" span="none" padding-before="10pt">
							<fo:table  align="center" table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(33)" background-color="#FFFFFF"/>
								<fo:table-column column-width="proportional-column-width(34)" background-color="#FFFFFF"/>
								<fo:table-column column-width="proportional-column-width(33)" background-color="#FFFFFF"/>
								<fo:table-body>
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text></xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell display-align="center">
											<fo:block display-align="center" white-space-collapse="false" padding-before="0pt">
												<fo:external-graphic scaling="uniform">
													<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/firmas/FIR_COR2.gif')</xsl:attribute>
												</fo:external-graphic>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text></xsl:text>
											</fo:block>
										</fo:table-cell>					
									</fo:table-row>
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text></xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" >
												<xsl:text>______________________________________</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text></xsl:text>
											</fo:block>
										</fo:table-cell>					
									</fo:table-row>
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="center" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text></xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="center" color="#000000" font-size="8.0pt" >
												<xsl:text>RUT 78.951.950-1</xsl:text>
											</fo:block>
										</fo:table-cell>	
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text></xsl:text>
											</fo:block>
										</fo:table-cell>				
									</fo:table-row>
									<fo:table-row padding-before="0pt">
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text></xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="center" color="#000000" font-size="8.0pt" >
												<xsl:text>BCI Corredores de Seguros S.A.</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" font-weight="bold" background-color="#FFFFFF" padding="2pt" padding-left="8pt">
											<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold">
												<xsl:text></xsl:text>
											</fo:block>
										</fo:table-cell>					
									</fo:table-row>	
								</fo:table-body>
							</fo:table>
						</fo:block>
						<fo:block break-before="page"></fo:block>
					</xsl:template>
	
					<xsl:template name="temp_info_consultas_reclamos">
						<xsl:for-each select="adicional/texto">
							<xsl:if test="(condicion = 'INF_CONS_RECL')">
								<fo:block align="center" span="none" padding-before="10pt">
									<fo:block text-align="center" text-decoration="underline" color="#000000" font-size="8.0pt" font-weight="bold">
										<xsl:text>
											ANEXO I
										</xsl:text>
									</fo:block>
								</fo:block>
								<fo:block align="center" span="none" padding-before="10pt">
									<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold"> 
										<xsl:value-of disable-output-escaping="no" select="titulo"/> 
									</fo:block>
								</fo:block>

								<fo:block span="none" padding-before="6pt">
									<fo:table table-layout="fixed" width="100%" >
									<fo:table-column column-width="proportional-column-width(100)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell text-align="start">
												<fo:block white-space-collapse="false" padding-before="0pt" font-size="8.0pt" color="#000000">
													<xsl:value-of disable-output-escaping="no" select="descripcion"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
									</fo:table>
								</fo:block>
							</xsl:if>
						</xsl:for-each>
					</xsl:template>

					<xsl:template name="temp_proceso_liquidacion_siniestros">
						
						<xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">
							<xsl:for-each select="adicional/texto">
								<xsl:if test="(condicion = 'PROC_LIQ_SINI')">
									<fo:block align="center" span="none" padding-before="10pt">
										<fo:block text-align="center" text-decoration="underline" color="#000000" font-size="8.0pt" font-weight="bold">
											<xsl:text>
												ANEXO II
											</xsl:text>
										</fo:block>
									</fo:block>
									
									<fo:block align="center" span="none" padding-before="10pt">
										<fo:block text-align="start" color="#000000" font-size="8.0pt" font-weight="bold"> 
											<xsl:value-of disable-output-escaping="no" select="titulo"/> 
										</fo:block>
									</fo:block>

									<fo:block span="none" padding-before="6pt">
										<fo:table table-layout="fixed" width="100%" >
										<fo:table-column column-width="proportional-column-width(100)"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell text-align="start">
													<fo:block white-space-collapse="false" padding-before="0pt" font-size="8.0pt" color="#000000">
														<xsl:value-of disable-output-escaping="no" select="descripcion"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
										</fo:table>
									</fo:block>
								</xsl:if>
							</xsl:for-each>
						</xsl:if>
						<fo:block break-before="page"></fo:block>
					</xsl:template>

					<xsl:template name="temp_mandatoPAC">
						<xsl:for-each select="adicional/texto">
							<xsl:if test="(condicion = 'MANDATO_PAC' and (../../detallePago/codigoFuturosPagos = '3' or ../../detallePago/codigoFuturosPagos = '6' or ../../detallePago/codigoFuturosPagos = '10'))">
								<fo:block padding-before="10pt" text-align="start" color="#000000" font-size="8.0pt" font-weight="bold"> 
									<xsl:value-of disable-output-escaping="no" select="titulo"/> 
								</fo:block>
								<fo:block align="center" span="none" padding-before="10pt">
									<fo:table align="center" table-layout="fixed" width="100%" >
										<fo:table-column column-width="proportional-column-width(15)" background-color="#FFFFFF"/>
										<fo:table-column column-width="proportional-column-width(20)" background-color="#FFFFFF"/>
										<fo:table-column column-width="proportional-column-width(15)" background-color="#FFFFFF"/>
										<fo:table-column column-width="proportional-column-width(50)" background-color="#FFFFFF"/>
										<fo:table-body>
											<fo:table-row padding-before="2pt" >
												<fo:table-cell number-columns-spanned="4" text-align="center" display-align="before" font-weight="bold" background-color="#C8F2D4" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block white-space-collapse="true"  text-align="center" color="#000000" font-size="8.0pt" font-weight="bold">
														<fo:inline>IDENTIFICACION DEL TITULAR CUENTA CORRIENTE</fo:inline>
														<fo:inline font-style="italic">(Responsable de Pago)</fo:inline>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row padding-before="0pt" >
												<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:text>Nombre: </xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell number-columns-spanned="3" text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:value-of disable-output-escaping="no" select="../../responsablePago/nombres"/>
														<xsl:text> </xsl:text>
														<xsl:value-of disable-output-escaping="no" select="../../responsablePago/apellidoPaterno"/>
														<xsl:text> </xsl:text>
														<xsl:value-of disable-output-escaping="no" select="../../responsablePago/apellidoMaterno"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row padding-before="0pt" >
												<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:text>RUT:</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:value-of disable-output-escaping="no" select="../../responsablePago/rut"/><xsl:text>-</xsl:text><xsl:value-of disable-output-escaping="no" select="../../responsablePago/digitoVerificador"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:text>Banco:</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:value-of disable-output-escaping="no" select="../../detallePago/descripcionBancoFuturosPagos"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											
											<fo:table-row padding-before="0pt" >
												<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:text>Nº Cta. Corriente:</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:value-of disable-output-escaping="no" select="../../detallePago/documentoFuturosPagos"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:text>Sucursal:</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:value-of disable-output-escaping="no" select="../../Cotizacion/descripcionSucursal"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											
											<fo:table-row padding-before="0pt" >
												<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:text>Propuesta N°:</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:value-of disable-output-escaping="no" select="../../Cotizacion/numeroPropuesta"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:text>Compañía:</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:text>BNP PARIBAS CARDIF SEGUROS GENERALES S.A.</xsl:text>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>

											<fo:table-row padding-before="0pt">
												<fo:table-cell number-columns-spanned="4" text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block white-space-collapse="false" text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:value-of disable-output-escaping="no" select="descripcion"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</xsl:if>
						</xsl:for-each>
					</xsl:template>
		
					<xsl:template name="temp_mandatoPAT">
						<xsl:for-each select="adicional/texto">
							<xsl:if test="(condicion = 'MANDATO_PAT' and (../../detallePago/codigoFuturosPagos = '5' or ../../detallePago/codigoFuturosPagos = '4'))">
								<fo:block padding-before="10pt" text-align="start" color="#000000" font-size="8.0pt" font-weight="bold"> 
									<xsl:value-of disable-output-escaping="no" select="titulo"/> 
								</fo:block>
								<fo:block align="center" span="none" padding-before="10pt">
									<fo:table align="center" table-layout="fixed" width="100%" >
										<fo:table-column column-width="proportional-column-width(15)" background-color="#FFFFFF"/>
										<fo:table-column column-width="proportional-column-width(20)" background-color="#FFFFFF"/>
										<fo:table-column column-width="proportional-column-width(15)" background-color="#FFFFFF"/>
										<fo:table-column column-width="proportional-column-width(50)" background-color="#FFFFFF"/>
										<fo:table-body>
											<fo:table-row padding-before="2pt" >
												<fo:table-cell number-columns-spanned="4" text-align="center" display-align="before" font-weight="bold" background-color="#C8F2D4" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block white-space-collapse="true"  text-align="center" color="#000000" font-size="8.0pt" font-weight="bold">
														<fo:inline>IDENTIFICACION DEL TITULAR TARJETA DE CRÉDITO</fo:inline>
														<fo:inline font-style="italic">(Responsable de Pago)</fo:inline>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row padding-before="0pt" >
												<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:text>Nombre: </xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell number-columns-spanned="3" text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:value-of disable-output-escaping="no" select="../../responsablePago/nombres"/>
														<xsl:text> </xsl:text>
														<xsl:value-of disable-output-escaping="no" select="../../responsablePago/apellidoPaterno"/>
														<xsl:text> </xsl:text>
														<xsl:value-of disable-output-escaping="no" select="../../responsablePago/apellidoMaterno"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row padding-before="0pt" >
												<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:text>RUT:</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:value-of disable-output-escaping="no" select="../../responsablePago/rut"/><xsl:text>-</xsl:text><xsl:value-of disable-output-escaping="no" select="../../responsablePago/digitoVerificador"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:text>Tipo Tarjeta:</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:value-of disable-output-escaping="no" select="../../detallePago/descripcionBancoFuturosPagos"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											
											<fo:table-row padding-before="0pt" >
												<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:text>Nº Tarjeta:</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:value-of disable-output-escaping="no" select="../../detallePago/documentoFuturosPagos"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:text>Fecha Vencimiento:</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:value-of disable-output-escaping="no" select="../../detallePago/vencimientoFuturosPagos"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											
											<fo:table-row padding-before="0pt" >
												<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:text>Propuesta N°:</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:value-of disable-output-escaping="no" select="../../Cotizacion/numeroPropuesta"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:text>Compañía:</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:text>BNP PARIBAS CARDIF SEGUROS GENERALES S.A.</xsl:text>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>

											<fo:table-row padding-before="0pt">
												<fo:table-cell number-columns-spanned="4" text-align="start" display-align="before" padding="4pt" padding-left="8pt" border="solid" border-width="0.5pt" border-color="#000000">
													<fo:block white-space-collapse="false" text-align="start" color="#000000" font-size="8.0pt" >
														<xsl:value-of disable-output-escaping="no" select="descripcion"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</xsl:if>
						</xsl:for-each>
					</xsl:template>
					<fo:block id="last-page"/>
				</fo:block>
			</fo:flow>
			</fo:page-sequence>
		</fo:root>
</xsl:template>
</xsl:stylesheet>
