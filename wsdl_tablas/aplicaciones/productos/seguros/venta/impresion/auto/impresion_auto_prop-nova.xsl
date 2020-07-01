<?xml version="1.0" encoding="ISO-8859-1"?>   

<!DOCTYPE xml [<!ENTITY copy "&#169;"> <!ENTITY trade "&#8482;"> <!ENTITY deg "&#x00b0;"> <!ENTITY gt "&#62;"> <!ENTITY sup2 "&#x00b2;"> <!ENTITY frac14 "&#x00bc;"> <!ENTITY quot "&#34;"> <!ENTITY frac12 "&#x00bd;"> <!ENTITY euro "&#x20ac;"> <!ENTITY Omega "&#937;"> ]> <!-- Document generated with XSLfast v2.0 alpha -->
	
<xsl:stylesheet xmlns:fox="http://xml.apache.org/fop/extensions" xmlns:print="http://www.jcatalog.com/com.jcatalog.output.xslextensions.print.PrintElementFactory" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:saxon="http://icl.com/saxon" extension-element-prefixes="saxon print" >
<xsl:variable name="IMAGEEXT">gif</xsl:variable>
<xsl:template match="DatosPropuesta">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="paginaPrimera" page-height="287mm" page-width="200mm" margin-left="1mm" margin-right="1mm" margin-top="0mm" margin-bottom="0mm">
					<fo:region-body margin-top="0.0cm" margin-bottom="0cm"/>
					<fo:region-before region-name="regionEncabezadoPrimera" extent="0.5cm" precedence="true"/>
					<fo:region-after extent="0cm" precedence="true"/>
				</fo:simple-page-master>
				<fo:simple-page-master master-name="paginaResto" page-height="287mm" page-width="200mm" margin-left="1mm" margin-right="1mm" margin-top="10mm" margin-bottom="1mm">
					<fo:region-body margin-top="0.5cm" margin-bottom="0cm"/>					
					<fo:region-before region-name="regionEncabezadoResto" extent="0.5cm" precedence="true"/>
					<fo:region-after extent="0cm" precedence="true"/>
					<!--<fo:region-after region-name="regionPieResto" extent="1.5cm" precedence="true"/>-->
				</fo:simple-page-master>
				<fo:simple-page-master master-name="paginaCertificado" page-height="287mm" page-width="200mm" margin-left="1mm" margin-right="1mm" margin-top="10mm" margin-bottom="1mm">
					<fo:region-body margin-top="0.5cm" margin-bottom="0cm"/>					
					<fo:region-before region-name="regionEncabezadoCertificado" extent="0.5cm" precedence="true"/>
					<fo:region-after extent="0cm" precedence="true"/>
				</fo:simple-page-master>
				<fo:page-sequence-master master-name="masterSequenceName1">
					<fo:repeatable-page-master-alternatives>
						<fo:conditional-page-master-reference master-reference="paginaPrimera" page-position="first"/>
						<fo:conditional-page-master-reference master-reference="paginaResto" page-position="rest"/>
					</fo:repeatable-page-master-alternatives>
				</fo:page-sequence-master>
				<fo:page-sequence-master master-name="masterSequenceName2">
					<fo:repeatable-page-master-reference master-reference="paginaCertificado" />
				</fo:page-sequence-master>
			</fo:layout-master-set>
			
				<fo:page-sequence master-name="paginaPrincipal" master-reference="masterSequenceName1">
					<!--fo:static-content flow-name="regionEncabezadoPrimera">
						<fo:block font-size="11pt" color="#000000"><xsl:text>COPIA CLIENTE</xsl:text></fo:block>
					</fo:static-content-->
					<fo:static-content flow-name="regionEncabezadoResto">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(80)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="11pt" color="#000000">
											<xsl:text>COPIA CLIENTE</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<xsl:if test="( DatosPoliza/condicionPoliza = 'NO' )">
											<fo:block  text-align="right" font-size="11pt" color="#4D6175">
												PROPUESTA DE SEGURO Nro 
													<xsl:value-of select="Cotizacion/numeroPropuesta"/>
												 (continuación)
												  - 
												 Página <fo:page-number/>
											</fo:block>
										</xsl:if>
										<xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">
											<fo:block  text-align="right" font-size="11pt">
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
					</fo:static-content>
					
					
					<fo:flow flow-name="xsl-region-body" color="#006666" font-size="11pt" >
						<fo:block >
	
    <!-- INICIO - Hoja Resumen -->
    <fo:block				
        background-position="center"
        background-color="white"
        background-repeat="no-repeat">
		<xsl:attribute name="background-image">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/Hoja_resumen_sl_crecorte.jpg')</xsl:attribute>
			<fo:table table-layout="fixed" width="100%">
	            <fo:table-column column-width="proportional-column-width(57)"/>
				<fo:table-body>
					<fo:table-row>
                        <fo:table-cell>
                           <fo:block>
						       <xsl:call-template name="temp_hoja_resumen" />
				           </fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
    <!-- FIN - Hoja Resumen -->		
    
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<xsl:call-template name="temp_datos_logos_cabecera"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>

<xsl:if test="( DatosPoliza/condicionPoliza = 'NO' )">
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_datos_ejecutivo"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
</xsl:if>	
		
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_tituloPrincipal"/>
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
							<xsl:call-template name="temp_tituloContratante"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	<fo:block padding-before="6pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_datosContratante"/>
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
							<xsl:call-template name="temp_tituloAFavor"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	<fo:block padding-before="6pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_datosAFavor"/>
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
							<xsl:call-template name="temp_tituloMateriaAsegurada"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>	

	<fo:block padding-before="6pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<xsl:call-template name="temp_datosMateriaAsegurada" />
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
    <!-- INICIO - USO ESPECIFICO -->
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
							<xsl:call-template name="temp_tituloUsoEspecifico"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>	

	<fo:block padding-before="6pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block>
							<xsl:call-template name="temp_datosUsoEspecifico" />
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>  
    <!-- FIN - USO ESPECIFICO -->  
<!-- 	
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
 -->
	<xsl:if test="(  materiaAsegurada/conduccionExclusiva = 'SI')">
		<fo:block padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(57)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block >
								<xsl:call-template name="temp_tituloConductorHabitual"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>	
		<fo:block padding-before="6pt">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(57)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block>
								<xsl:call-template name="temp_datosConductorHabitual" />
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:if>
	
	<xsl:if test="( materiaAsegurada/condicionInspeccion = '2')">
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
	</xsl:if>


	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_tituloPrimas"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>

	<fo:block padding-before="6pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_datosPrimas"/>
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
							<xsl:call-template name="temp_tituloCoberturas"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>

	<fo:block padding-before="6pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_datosCoberturas"/>
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
							<xsl:call-template name="temp_tituloDeducibles"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>

	<fo:block padding-before="6pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_datosDeducibles"/>
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
							<xsl:call-template name="temp_tituloVigencia"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	
	<fo:block padding-before="6pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_datosVigencia"/>
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
							<xsl:call-template name="temp_tituloResponsablePago"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	
	<fo:block padding-before="6pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_datosResponsablePago"/>
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
							<xsl:call-template name="temp_tituloPrimerPago"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>	
	 
	<fo:block padding-before="6pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_datosPrimerPago"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>	

	 
    <fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_tituloFuturosPagos"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	
	<fo:block padding-before="6pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_datosFuturosPagos"/>
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
							<xsl:call-template name="temp_tituloFactura"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	 
	<fo:block padding-before="6pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_datosFactura"/>
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
							<xsl:call-template name="temp_tituloEnvioPoliza"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	 
	<fo:block padding-before="6pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_datosEnvioPoliza"/>
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
							<xsl:call-template name="temp_textoBasico"/>
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
								<xsl:call-template name="temp_declaraciones_especiales"/>
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
							<xsl:call-template name="temp_mandato"/>
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
							<xsl:call-template name="temp_consultas_reclamos"/>
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
							<xsl:call-template name="temp_codigo_autorregulacion"/>
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
							<xsl:call-template name="temp_diversificacion_riesgo"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>	

	<fo:block padding-before="38pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_firmas"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>







					<!-- *************************************************************************************************************** -->
					<!-- ********************************************************************************* ***************************** -->
					<!-- *************************************************************************************************************** -->
					<!-- **************************************************** PROPUESTA DE SEGUROS ************************************* -->
					<!-- *************************************************************************************************************** -->
					<!-- *************************************************************************************************************** -->
<xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">
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
											<xsl:call-template name="temp_datos_logos_cabecera_propuesta"/>
										</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
						</fo:table>
					</fo:block>

					<xsl:template name="temp_tituloPrincipalPropuesta">
						<fo:block padding-before="2pt">
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
								<fo:table-body>
									<fo:table-row>
									<fo:table-cell padding="4.0pt" text-align="start" border-top-style="solid" border-after-style="solid" display-align="before" border-width="1.0pt" border-color="#DCDCDC" padding-left="5pt">
										<fo:block white-space-collapse="true"  text-align="center" color="#6B6765" font-size="13.0pt" font-weight="bold">
											<xsl:text>PROPUESTA DE SEGUROS</xsl:text>
										</fo:block>
									</fo:table-cell>
									</fo:table-row>
																		
								</fo:table-body>
							</fo:table>
						
						</fo:block>
						<fo:block padding-before="2pt">
						
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(50)" />
								<fo:table-column column-width="proportional-column-width(45)" />
								<fo:table-column column-width="proportional-column-width(5)" />
								<fo:table-body>
								
									<fo:table-row>
										<fo:table-cell padding="2.0pt" text-align="start" display-align="before" border-width="1.0pt" border-color="#000000"  >
											<fo:block text-align="center" font-size="12.0pt" font-weight="bold">
											<xsl:text></xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="start" display-align="before" border-color="#DCDCDC" padding-left="8pt">
											<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
											<xsl:text>NRO. PROPUESTA </xsl:text><xsl:value-of select="Cotizacion/numeroPropuesta"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding="2.0pt" text-align="start" display-align="before" border-width="1.0pt" border-color="#000000"  >
											<fo:block text-align="center" font-size="12.0pt" font-weight="bold">
											<xsl:text></xsl:text>
											</fo:block>
										</fo:table-cell>

									</fo:table-row>
																		
								</fo:table-body>
							</fo:table>
		
						</fo:block>
					</xsl:template>
					
					<fo:block span="none" padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(30)" background-color="#FFFFFF"/>
						<fo:table-column column-width="proportional-column-width(70)" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
											<xsl:text>Nro POLIZA</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
											<xsl:value-of select="DatosPoliza/numeroPoliza"/><xsl:text>-</xsl:text><xsl:value-of select="DatosPoliza/digitoVerificadorPoliza"/>
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
											<xsl:call-template name="temp_tituloContratante"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block padding-before="6pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_datosContratante"/>
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
											<xsl:call-template name="temp_tituloMateriaAsegurada"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>	
				
					<fo:block padding-before="6pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block>
											<xsl:call-template name="temp_datosMateriaAsegurada" />
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
											<xsl:call-template name="temp_tituloPrimas"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
				
					<fo:block padding-before="6pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_datosPrimas"/>
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
											<xsl:call-template name="temp_tituloCoberturas"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
				
					<fo:block padding-before="6pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_datosCoberturas"/>
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
											<xsl:call-template name="temp_tituloResponsablePago"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					
					<fo:block padding-before="6pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_datosResponsablePago"/>
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
											<xsl:call-template name="temp_tituloPrimerPago"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>	
					 
					<fo:block padding-before="6pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_datosPrimerPago"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>	
					
					
					<fo:block padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_tituloFuturosPagos"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					
					<fo:block padding-before="6pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(100)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_datosFuturosPagos"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block> 
				<!-- 
					<fo:block padding-before="6pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_tituloFactura"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
	
					<fo:block padding-before="6pt">
						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(57)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<xsl:call-template name="temp_datosFactura"/>
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
											<xsl:call-template name="temp_da_salto_pag"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block> -->

</xsl:if>
					<!-- *************************************************************************************************************** -->
					<!-- ********************************************************************************* ***************************** -->
					<!-- *************************************************************************************************************** -->
					<!-- **************************************************** FIN PROPUESTA DE SEGUROS ************************************* -->
					<!-- *************************************************************************************************************** -->
					<!-- *************************************************************************************************************** -->










	<!-- 
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_textosAdicionales"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
	-->
	
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_terminos_cortos"/>
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
							<xsl:call-template name="temp_condiciones_regalo"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>		
<!-- INICIO - Procedimiento de Liquidación de Siniestros -->
    <xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">
    <fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_anterior_a_procedLiqSiniestros"/>
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
							<xsl:call-template name="temp_procedLiqSiniestros"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>
    </xsl:if>
<!-- FIN - Procedimiento de Liquidación de Siniestros -->    	
	<fo:block padding-before="2pt">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(57)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block >
							<xsl:call-template name="temp_anterior_a_mandato_PAC"/>
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
							<xsl:call-template name="temp_mandatoPAC"/>
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
							<xsl:call-template name="temp_anterior_a_mandato_PAT"/>
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
							<xsl:call-template name="temp_mandatoPAT"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>					

							<fo:block id="last-page"/> <!-- Para idenrificar la ultima pagina -->
							
						</fo:block>
					</fo:flow>
				</fo:page-sequence>
				
				<xsl:if test="(/DatosPropuesta/condComprobante = 'SI') and ((count(/DatosPropuesta/docAdicionales/*) > 0) or (/DatosPropuesta/detallePago/codigoFuturosPagos = '6'))">
					<fo:page-sequence master-name="secComprobante" master-reference="masterSequenceName2">
						<fo:static-content flow-name="regionEncabezadoCertificado">
							<fo:block font-size="11pt" color="#000000"><xsl:text>COPIA EJECUTIVO</xsl:text></fo:block>
						</fo:static-content>
						<fo:flow flow-name="xsl-region-body" color="#006666" font-size="11pt" >
							<xsl:call-template name="temp_da_salto_pag"/>
							<xsl:call-template name="CERT_documento_completo" />
							<xsl:if test="(/DatosPropuesta/detallePago/codigoFuturosPagos = '6')">
								<xsl:call-template name="temp_mandatoPAC">
									<xsl:with-param name="sinHuella">TRUE</xsl:with-param>
								</xsl:call-template>
							</xsl:if>
						</fo:flow>
					</fo:page-sequence>
				</xsl:if>
		</fo:root>
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
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/BciSeguros_verticalBPS.jpg')</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>						
						
						<fo:table-cell display-align="before">
							<fo:block color="#000000" font-size="5pt" text-align="center" font-weight="bold">
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell display-align="before">
							<fo:block color="#000000" font-size="5pt" text-align="right" font-weight="bold">
									<xsl:apply-templates select="codigobarras-39" /> 
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell>
							<fo:block text-align="right">
								<fo:external-graphic  scaling="uniform" height="30pt" width="120pt">
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/LOGOBCI2BPS.gif')</xsl:attribute>
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
									<xsl:value-of  select="Cotizacion/numeroPropuesta"/> 
								</fo:block> 
						</fo:table-cell>

						<fo:table-cell>
							<fo:block text-align="right">
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
			<xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">		
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
							<fo:block color="#000000" font-size="6pt" text-align="center" font-weight="bold">
								
							</fo:block>
						</fo:table-cell>

						<fo:table-cell>
							<fo:block>
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"  />
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
														Nro PROPUESTA
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
														<xsl:value-of select="Cotizacion/numeroPropuesta"/>		
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:table-cell>
						
					</fo:table-row>
			</xsl:if>		
					
					
					
					
					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_datos_logos_cabecera_propuesta">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(15)"/>
				<fo:table-column column-width="proportional-column-width(40)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left">
								<fo:external-graphic scaling="uniform" height="30pt" width="120pt">
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/BciSeguros_verticalBPS.jpg')</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell display-align="before" >
							<fo:block color="#000000" font-size="20pt" text-align="center" font-weight="bold">
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell vertical-align="top" text-align="center" display-align="before">
							<fo:block color="#000000" font-size="20pt" text-align="center" font-weight="bold">
								
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
							<fo:block color="#000000" font-size="6pt" text-align="center" font-weight="bold">
								<xsl:value-of  select="numeroPropuesta"/>
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


	<xsl:template name="temp_datos_ejecutivo">
		<fo:block span="none">			
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(10)"/>
					<fo:table-column column-width="proportional-column-width(90)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell display-align="before">
								<fo:block color="#0360A2" font-size="11.0pt">Sucursal</fo:block>
							</fo:table-cell>
							<fo:table-cell display-align="before">
								<fo:block color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="Cotizacion/descripcionSucursal"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell display-align="before" >
								<fo:block color="#0360A2" font-size="11.0pt">Ejecutivo</fo:block>
							</fo:table-cell>
							<fo:table-cell display-align="before">
								<fo:block color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="Cotizacion/descripcionEjecutivo"/>
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
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
			<fo:table-body>
			<xsl:if test="( DatosPoliza/condicionPoliza = 'NO' )">
				<fo:table-row>
					<fo:table-cell padding="4.0pt" text-align="start" border-top-style="solid" border-after-style="solid" display-align="before" border-width="1.0pt" border-color="#DCDCDC" padding-left="5pt">
						<fo:block white-space-collapse="true"  text-align="center" color="#6B6765" font-size="13.0pt" font-weight="bold">
							<xsl:text>PROPUESTA DE SEGURO Nro </xsl:text><xsl:value-of disable-output-escaping="no" select="Cotizacion/numeroPropuesta"/> 
							<xsl:text> - Seguro </xsl:text><xsl:value-of disable-output-escaping="no" select="Cotizacion/descripcionProducto"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</xsl:if>
			<xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">
				<fo:table-row>
					<fo:table-cell padding="4.0pt" text-align="start" border-top-style="solid" border-after-style="solid" display-align="before" border-width="1.0pt" border-color="#DCDCDC" padding-left="5pt">
						<fo:block white-space-collapse="true"  text-align="center" color="#6B6765" font-size="13.0pt" font-weight="bold">
							<xsl:text>POLIZA DE SEGURO Nro </xsl:text><xsl:value-of disable-output-escaping="no" select="DatosPoliza/numeroPoliza"/> <xsl:text>-</xsl:text><xsl:value-of disable-output-escaping="no" select="DatosPoliza/digitoVerificadorPoliza"/> 
							<xsl:text> - Seguro </xsl:text><xsl:value-of disable-output-escaping="no" select="Cotizacion/descripcionProducto"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</xsl:if>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_tituloContratante">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
								<xsl:text>CONTRATANTE</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_datosContratante">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/rut"/><xsl:text>-</xsl:text><xsl:value-of disable-output-escaping="no" select="contratante/digitoVerificador"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/nombres"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Apellido Paterno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/apellidoPaterno"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/apellidoMaterno"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Fecha de Nacimiento</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/fechaNacimiento"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Edad</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/edad"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Sexo</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/descripcionSexo"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Dirección Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" number-columns-spanned="2" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/direccionPostal"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<!-- <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell> -->
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Ciudad Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/descripcionCiudadPostal"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Comuna Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/descripcionComunaPostal"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Dirección Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" number-columns-spanned="2" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/direccionComercial"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<!-- <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>-->
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Ciudad Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/descripcionCiudadComercial"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Comuna Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/descripcionComunaComercial"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>				
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Telefono</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/fono"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Celular</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/celular"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>	
				<fo:table-row>				
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Email</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="contratante/email"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>	
				
				
				
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_tituloAFavor">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
								<xsl:text>ASEGURADO</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_datosAFavor">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/rut"/><xsl:text>-</xsl:text><xsl:value-of disable-output-escaping="no" select="aFavor/digitoVerificador"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/nombres"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Apellido Paterno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/apellidoPaterno"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/apellidoMaterno"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Fecha de Nacimiento</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/fechaNacimiento"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Edad</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/edad"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Sexo</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/descripcionSexo"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Dirección Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" number-columns-spanned="2" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/direccionPostal"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<!-- <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell> -->
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Ciudad Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/descripcionCiudadPostal"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Comuna Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/descripcionComunaPostal"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Dirección Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" number-columns-spanned="2" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/direccionComercial"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<!-- <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>-->
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Ciudad Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/descripcionCiudadComercial"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Comuna Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/descripcionComunaComercial"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>				
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Telefono</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/fono"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Celular</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/celular"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>	
				<fo:table-row>				
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Email</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="aFavor/email"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_tituloMateriaAsegurada">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
								<xsl:text>MATERIA ASEGURADA PARA EL RAMO VEHICULOS MOTORIZADOS</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_datosMateriaAsegurada">
		<fo:block span="none">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Tipo Vehiculo</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionTipoVehiculo"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Marca Vehiculo</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionMarcaVehiculo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Modelo Vehiculo</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionModeloVehiculo"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Color</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionColorVehiculo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>N° Motor</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/numeroMotorVehiculo"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>N° Chasis</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/numeroChasisVehiculo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Patente</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/patenteVehiculo"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Año de Fabricación</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/anoFabricacionVehiculo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Uso Vehículo</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionUsoVehiculo"/>
							</fo:block>
						</fo:table-cell>
						<!--fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Valor Comercial</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/valorComercialVehiculo"/>
							</fo:block>
						</fo:table-cell-->
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Inspeccion</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                    <xsl:value-of disable-output-escaping="no" select="inspeccion/descripcionInspeccion"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<!--fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
									<xsl:text>Conduccion Exclusiva</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
									<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/conduccionExclusiva"/>
								</fo:block>
							</fo:table-cell>
							
					</fo:table-row-->

					<xsl:if test="( materiaAsegurada/condicionInspeccion = 'Usado')"> 
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Centro de Inspeccion</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="inspeccion/descripcionCentroInspeccion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<!--fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Direccion Centro de Inspeccion</xsl:text>
									</fo:block-->
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<!--fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="inspeccion/direccionInspeccion"/>
									</fo:block-->
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<!--fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Horario de Atencion</xsl:text>
									</fo:block-->
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<!--fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="inspeccion/horarioInspeccion"/>
									</fo:block-->
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<!--fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Ciudad Inspeccion</xsl:text>
									</fo:block-->
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<!--fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="inspeccion/ciudadInspeccion"/>
									</fo:block-->
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<!--fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Telefono Centro de Inspeccion</xsl:text>
									</fo:block-->
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<!--fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="inspeccion/telefonoInspeccion"/>
									</fo:block-->
								</fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Nombre Contacto</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="inspeccion/nombreContacto"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Fono Contacto</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="inspeccion/fonoContacto"/>
									</fo:block>
								</fo:table-cell>
                            </fo:table-row>
					</xsl:if>
					
					<xsl:if test="( materiaAsegurada/condicionInspeccion = 'Nuevo')">
						<!--fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Motivo No Inspeccion</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="inspeccion/descripcionMotivoNoInspeccion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text></xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:text></xsl:text>
									</fo:block>
								</fo:table-cell>
							</fo:table-row-->
							<xsl:if test="( inspeccion/motivoNoInspeccion = '')">  
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
											<xsl:text>Nro de Factura</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
											<xsl:value-of disable-output-escaping="no" select="inspeccion/documentoNoInspeccion"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
											<xsl:text>Fecha de Factura</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
											<xsl:value-of disable-output-escaping="no" select="inspeccion/fechaNoInspeccion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
                                <fo:table-row>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
											<xsl:text>Rut Empresa Giradora</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
											<xsl:value-of disable-output-escaping="no" select="inspeccion/rutEmpresaGiradora"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
											<xsl:text>Nombre Empresa Giradora</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
											<xsl:value-of disable-output-escaping="no" select="inspeccion/empresaGiradora"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</xsl:if>
							<xsl:if test="( inspeccion/motivoNoInspeccion = '2' or inspeccion/motivoNoInspeccion = '3')">  
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
											<xsl:text>Nro de Poliza</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
											<xsl:value-of disable-output-escaping="no" select="inspeccion/documentoNoInspeccion"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
											<xsl:text>Compania</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
											<xsl:value-of disable-output-escaping="no" select="inspeccion/descripcionCompaniaNoInspeccion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
											<xsl:text>Vigencia Hasta</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
											<xsl:value-of disable-output-escaping="no" select="inspeccion/fechaNoInspeccion"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
											<xsl:text></xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
											<xsl:text></xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</xsl:if>
					</xsl:if>
                    <xsl:if test="(materiaAsegurada/interesAsegurable != '-1')">
                        <fo:table-row>
				<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
						<xsl:text>Interes Asegurable</xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
						<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionInteresAsegurable"/>
					</fo:block>
				</fo:table-cell>
                        </fo:table-row>
                    </xsl:if>					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_tituloConductorHabitual">
			<fo:block span="none">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
									<xsl:text>CONDUCTOR HABITUAL</xsl:text>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</xsl:template>
		
	<xsl:template name="temp_datosConductorHabitual">
			<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/rut"/><xsl:text>-</xsl:text><xsl:value-of disable-output-escaping="no" select="conductor/digitoVerificador"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/nombres"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Apellido Paterno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/apellidoPaterno"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/apellidoMaterno"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Fecha de Nacimiento</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/fechaNacimiento"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Edad</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/edad"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Sexo</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/descripcionSexo"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Dirección Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" number-columns-spanned="2" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/direccionPostal"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<!-- <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell> -->
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Ciudad Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/descripcionCiudadPostal"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Comuna Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/descripcionComunaPostal"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Dirección Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" number-columns-spanned="2" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/direccionComercial"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<!-- <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>-->
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Ciudad Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/descripcionCiudadComercial"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Comuna Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/descripcionComunaComercial"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>				
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Telefono</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/fono"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Celular</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/celular"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>	
				<fo:table-row>				
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Email</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="conductor/email"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
		</xsl:template>
	
	<xsl:template name="temp_tituloPrimas">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
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
			<fo:table-column column-width="proportional-column-width(11)"/>
			<fo:table-column column-width="proportional-column-width(39)"/>
<!-- 			<fo:table-column column-width="proportional-column-width(15)"/> -->
			<fo:table-column column-width="proportional-column-width(20)"/>
			<fo:table-column column-width="proportional-column-width(20)"/>
			<fo:table-body>
			
			<fo:table-row>
				<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text>Plan</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text>Descripción</xsl:text>
					</fo:block>
				</fo:table-cell>
<!-- 
				<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt">
						<xsl:text></xsl:text>
					</fo:block>
				</fo:table-cell>
 -->
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text>Prima Bruta</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text>Prima Bruta</xsl:text>
					</fo:block>
				</fo:table-cell>
			</fo:table-row>

			<fo:table-row>
				<fo:table-cell padding-left="5pt" border-after-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block color="#006666">
						<xsl:text></xsl:text>
					</fo:block>
				</fo:table-cell>
<!-- 
				<fo:table-cell padding-left="5pt" border-after-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block color="#006666">
						<xsl:text></xsl:text>
					</fo:block>
				</fo:table-cell>
 -->
				<fo:table-cell text-align="center" display-align="before" border-after-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt">
						<xsl:text></xsl:text>
					</fo:block>
				</fo:table-cell>
				
				<fo:table-cell text-align="center" display-align="before" border-after-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text>UF</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="center" display-align="before" border-after-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text>Mensual UF</xsl:text>
					</fo:block>
				</fo:table-cell>
				
			</fo:table-row>

			
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="tarifa/codigo"/>
							</fo:block>
						</fo:table-cell>
				
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="tarifa/descripcion"/>
							</fo:block>
						</fo:table-cell>
<!-- 
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>&#0160;</xsl:text>
							</fo:block>
						</fo:table-cell>
 -->
						<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="tarifa/primaBruta"/>
							</fo:block>
						</fo:table-cell>
	
						<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="tarifa/primaBrutaMensual"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>&#0160;</xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>&#0160;</xsl:text>
							</fo:block>
						</fo:table-cell>
<!-- 
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>&#0160;</xsl:text>
							</fo:block>
						</fo:table-cell>
 -->
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>&#0160;</xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>&#0160;</xsl:text>
							</fo:block>
						</fo:table-cell>
						
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="x"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Prima Exenta</xsl:text>
							</fo:block>
						</fo:table-cell>
<!-- 
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" background-color="#FFFFFF">
								<xsl:text></xsl:text>
							</fo:block>
						</fo:table-cell>
 -->
						<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="tarifa/primaExenta"/>
							</fo:block>
						</fo:table-cell>


						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text></xsl:text>
							</fo:block>
						</fo:table-cell>
						
					</fo:table-row>
					

					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="x"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Prima&#0160;&#0160;Afecta</xsl:text>
							</fo:block>
						</fo:table-cell>
<!-- 
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="x"/>
							</fo:block>
						</fo:table-cell>
 -->
						<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="tarifa/primaAfecta"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="x"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="x"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>IVA&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;</xsl:text>
							</fo:block>
						</fo:table-cell>

<!-- 
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="x"/>
							</fo:block>
						</fo:table-cell>
 -->
						<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="tarifa/iva"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="x"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
		</fo:table-body>
		</fo:table>
		</fo:block>
	</xsl:template>


	<xsl:template name="temp_tituloCoberturas">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
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
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
			<fo:table-body>
			<xsl:for-each select="cobertura">
				<fo:table-row padding-before="10pt">
					<fo:table-cell text-align="start" display-align="before" font-weight="bold" border-after-style="solid" border-width="0.5pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="10pt" padding-left="8pt">
						<fo:block text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
							<xsl:value-of disable-output-escaping="no" select="descripcionPlan"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<xsl:for-each select="subCobertura">
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" padding-left="8pt" padding-before="4pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:value-of disable-output-escaping="no" select="valor"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:for-each>
			</xsl:for-each>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>


	<xsl:template name="temp_tituloDeducibles">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
								<xsl:text>DEDUCIBLES</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<xsl:template name="temp_datosDeducibles">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)"/>
			<fo:table-body>
			   <fo:table-row>
					<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
							<xsl:value-of disable-output-escaping="no" select="tarifa/franquiciaDeducible"/><xsl:text>&#0160;</xsl:text> <xsl:value-of disable-output-escaping="no" select="tarifa/descripcionMoneda"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_tituloVigencia">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell border-after-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt" text-align="start" color="#0360A2">
							<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
								<xsl:text>VIGENCIA DEL SEGURO</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_datosVigencia">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
			<fo:table-body>
			   <fo:table-row>
					<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
							<xsl:text>Desde 12:01 del dia </xsl:text><xsl:value-of disable-output-escaping="no" select="Cotizacion/fechaInicioVigencia"/><xsl:text> Hasta las 12:00 del día </xsl:text><xsl:value-of disable-output-escaping="no" select="Cotizacion/fechaFinVigencia"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>	

	<xsl:template name="temp_tituloResponsablePago">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
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
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Rut</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/rut"/><xsl:text>-</xsl:text><xsl:value-of disable-output-escaping="no" select="responsablePago/digitoVerificador"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/nombres"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Apellido Paterno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/apellidoPaterno"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/apellidoMaterno"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Fecha de Nacimiento</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/fechaNacimiento"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Edad</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/edad"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Sexo</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/descripcionSexo"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Dirección Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" number-columns-spanned="2" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/direccionPostal"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<!-- <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell> -->
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Ciudad Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/descripcionCiudadPostal"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Comuna Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/descripcionComunaPostal"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Dirección Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" number-columns-spanned="2" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/direccionComercial"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<!-- <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>-->
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Ciudad Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/descripcionCiudadComercial"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Comuna Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/descripcionComunaComercial"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>				
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Telefono</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/fono"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Celular</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/celular"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>	
				<fo:table-row>				
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text>Email</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="responsablePago/email"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
 	
 	<xsl:template name="temp_tituloPrimerPago">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)"/>
				<fo:table-body>
				<xsl:if test="( detallePago/indicadorPrimerosPagos = 'SI' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
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
		<fo:block span="none">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				
				<fo:table-body>
				<xsl:if test="( detallePago/indicadorPrimerosPagos = 'SI' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:text>Forma de Pago</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
								<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionPrimerPago"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:text>Fecha :</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
								<xsl:value-of disable-output-escaping="no" select="Cotizacion/fechaPropuesta"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				
				<xsl:if test="( detallePago/codigoPrimerPago = '1' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Nº Depósito :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</xsl:if>	
				<xsl:if test="( detallePago/codigoPrimerPago = '2' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Nº Depósito :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</xsl:if>
				<xsl:if test="( detallePago/codigoPrimerPago = '3' or detallePago/codigoPrimerPago = '10')"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Banco :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Cta.Cte.BCI :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</xsl:if>				
				<xsl:if test="( detallePago/codigoPrimerPago = '4' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Tarjeta de Credito BCI:</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Nº Tarjeta de Credito :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</xsl:if>
				<xsl:if test="( detallePago/codigoPrimerPago = '5' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Tarjeta de Credito otro banco:</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Nº Tarjeta de Credito :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</xsl:if>
				<xsl:if test="( detallePago/codigoPrimerPago = '6' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Cta.Cte. otro banco:</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Nº Cta.Cte. :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</xsl:if>			
					
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:text>Valor :</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
								<xsl:value-of disable-output-escaping="no" select="detallePago/montoPrimerPago"/><xsl:text> UF</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:text>Valor(Pesos) :</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
								<xsl:text>$ </xsl:text><xsl:value-of disable-output-escaping="no" select="detallePago/montoPrimerPagoPesos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

				</xsl:if> 
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	
	<xsl:template name="temp_tituloFuturosPagos">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
				<fo:table-body>
				<xsl:if test="( detallePago/indicadorFuturosPagos = 'SI' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
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
		<fo:block span="none">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				
				<fo:table-body>
				<xsl:if test="( detallePago/indicadorFuturosPagos = 'SI' )"> 
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:text>Forma de Pago</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
								<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionFuturosPagos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>




				<xsl:if test="( detallePago/codigoFuturosPagos = '1' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Nº Recibo :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</xsl:if>	
				<xsl:if test="( detallePago/codigoFuturosPagos = '2' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Nº Cheque :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</xsl:if>
				<xsl:if test="( detallePago/codigoFuturosPagos = '3' or detallePago/codigoFuturosPagos = '10')"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Banco :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Cta.Cte.BCI :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</xsl:if>				
				<xsl:if test="( detallePago/codigoFuturosPagos = '4' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Tarjeta de Credito BCI:</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Nº Tarjeta de Credito :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</xsl:if>
				<xsl:if test="( detallePago/codigoFuturosPagos = '5' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Tarjeta de Credito otro banco:</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Nº Tarjeta de Credito :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</xsl:if>
				<xsl:if test="( detallePago/codigoFuturosPagos = '6' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Cta.Cte. otro banco:</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
									<xsl:text>Nº Cta.Cte. :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</xsl:if>


				<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:text>Dia de Pago :</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
								<xsl:value-of disable-output-escaping="no" select="detallePago/diaPagoFuturosPagos"/>
							</fo:block>
						</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:text>Cant.Cuotas restantes :</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
								<xsl:value-of disable-output-escaping="no" select="detallePago/numeroCuotas"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:text>Valor Cuota :</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
								<xsl:value-of disable-output-escaping="no" select="detallePago/montoFuturosPagos"/><xsl:text> UF</xsl:text>
							</fo:block>
						</fo:table-cell>
				</fo:table-row>

					
				</xsl:if> 
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_tituloFactura">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
								<xsl:text>FACTURA (SOLO SI ES CONTRIBUYENTE DE IVA)</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_datosFactura">
		<fo:block span="none">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:text>Envío de Factura</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
								<xsl:value-of disable-output-escaping="no" select="detallePago/facturacion"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:text>Dirección</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
								<xsl:value-of disable-output-escaping="no" select="detallePago/direccionFacturacion"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="4" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block  white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:text>En caso afirmativo, el responsable del pago identificado anteriormente declara ser contribuyente de IVA.</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_tituloEnvioPoliza">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
								<xsl:text>DESPACHO DE POLIZA POR CORREO ELECTRONICO</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_datosEnvioPoliza">
		<fo:block span="none">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:text>Envío de Póliza</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
								<xsl:value-of disable-output-escaping="no" select="detallePago/indicadorMail"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
								<xsl:text>Dirección Correo Electrónico</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="2pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
								<xsl:value-of disable-output-escaping="no" select="detallePago/direccionMail"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>


	
	<xsl:template name="temp_textoBasico">
		<xsl:for-each select="basico/texto">
			<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>		
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
									<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" >
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
									<fo:block white-space-collapse="false" padding-before="0pt" font-size="11.0pt">
										<xsl:value-of disable-output-escaping="no" select="descripcion"/>
									</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</xsl:for-each>
	</xsl:template>

	<xsl:template name="temp_textosAdicionales">
		<xsl:for-each select="adicional/texto">
			<xsl:if test="(condicion != 'MANDATO_PAC' and condicion != 'MANDATO_PAT')">
				<fo:block span="none" padding-before="6pt">
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
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>		
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
									<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" >
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
									<fo:block white-space-collapse="false" padding-before="0pt" font-size="11.0pt">
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

	<xsl:template name="temp_declaraciones_especiales">
		<xsl:for-each select="adicional/texto">
			<xsl:if test="(condicion = 'DECLARAC_ESP')">
				<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>		
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
									<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" >
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
									<fo:block white-space-collapse="false" padding-before="0pt" font-size="11.0pt">
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

	<xsl:template name="temp_mandato">
		<xsl:for-each select="adicional/texto">
			<xsl:if test="(condicion = 'MANDATO')">
				<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>		
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
									<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" >
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
									<fo:block white-space-collapse="false" padding-before="0pt" font-size="11.0pt">
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

    <xsl:template name="temp_consultas_reclamos">
		<xsl:for-each select="adicional/texto">
			<xsl:if test="(condicion = 'INF_CONS_RECL')">
				<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>		
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
									<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" >
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
									<fo:block white-space-collapse="false" padding-before="0pt" font-size="11.0pt">
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
    
   
	<xsl:template name="temp_diversificacion_riesgo">
		<xsl:for-each select="adicional/texto">
			<xsl:if test="(condicion = 'DIVERSIF_RIES')">
				<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>		
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
									<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" >
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
									<fo:block white-space-collapse="false" padding-before="0pt" font-size="11.0pt">
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
				<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>		
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
									<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" >
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
									<fo:block white-space-collapse="false" padding-before="0pt" font-size="11.0pt">
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
    
    
    
    
	<xsl:template name="temp_anterior_a_mandato_PAC">
		<xsl:for-each select="adicional/texto">
			<xsl:if test="(condicion = 'MANDATO_PAC' and (../../detallePago/codigoFuturosPagos = '3' or ../../detallePago/codigoFuturosPagos = '6' or ../../detallePago/codigoFuturosPagos = '10'))">
				<fo:block span="none" padding-before="6pt">
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
						<fo:table-row>
							<fo:table-cell>
								<fo:block white-space-collapse="true"  text-align="start" color="#FFFFFF" font-size="300.0pt"> . </fo:block>
								<fo:block text-align="center" font-size="14pt" color="#4D6175">
								Fin de Propuesta Seguro Nro. 
								<xsl:value-of select="../../Cotizacion/numeroPropuesta"/>
								, en próxima hoja se adjunta mandato: PAC para ser firmado por Responsable de Pago. 
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				</fo:block>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="temp_mandatoPAC">
		<xsl:param name="sinHuella" />
		<xsl:for-each select="adicional/texto">
			<xsl:if test="(condicion = 'MANDATO_PAC' and (../../detallePago/codigoFuturosPagos = '3' or ../../detallePago/codigoFuturosPagos = '6' or ../../detallePago/codigoFuturosPagos = '10'))">
				<fo:block span="none" padding-before="6pt">
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
				
				<fo:block span="none">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(19)"/>
						<fo:table-column column-width="proportional-column-width(62)"/>
						<fo:table-column column-width="proportional-column-width(19)"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block text-align="left">
										<fo:external-graphic scaling="uniform" height="30pt" width="120pt">
											<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="../../rutaLogos"/>/logos/BciSeguros_verticalBPS.jpg')</xsl:attribute>
										</fo:external-graphic>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell display-align="center">
									<fo:block color="#CC0000" font-size="20pt" text-align="center" font-weight="bold">
										</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="right">
										<fo:external-graphic  scaling="uniform" height="30pt" width="120px">
											<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="../../rutaLogos"/>/logos/LOGOBCI2BPS.gif')</xsl:attribute>
										</fo:external-graphic>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
		
				<fo:block span="none" padding-before="6pt">	
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>		
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
									<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
				</fo:table>
				</fo:block>
				
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
										<fo:inline>IDENTIFICACION DEL TITULAR CUENTA CORRIENTE</fo:inline>
										<fo:inline font-style="italic">(Responsable de Pago)</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" border-style="solid" border-width="1.0pt" border-color="#FFFFFF">
						<fo:table-column column-width="proportional-column-width(22)" background-color="#FFFFFF"/>
						<fo:table-column column-width="proportional-column-width(22)" background-color="#ffffff"/>
						<fo:table-column column-width="proportional-column-width(15)" background-color="#FFFFFF"/>
						<fo:table-column column-width="proportional-column-width(41)" background-color="#ffffff"/>
						<fo:table-body>
							<!-- SECCION IDENTIFICACION DEL CLIENTE -->
							<fo:table-row keep-with-next="always">
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Nombre</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell number-columns-spanned="3" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										: <xsl:value-of disable-output-escaping="no" select="../../responsablePago/nombres"/>
										<xsl:text> </xsl:text>
										<xsl:value-of disable-output-escaping="no" select="../../responsablePago/apellidoPaterno"/>
										<xsl:text> </xsl:text>
										<xsl:value-of disable-output-escaping="no" select="../../responsablePago/apellidoMaterno"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row keep-with-next="always">
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>RUT</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										: <xsl:value-of disable-output-escaping="no" select="../../responsablePago/rut"/><xsl:text>-</xsl:text><xsl:value-of disable-output-escaping="no" select="../../responsablePago/digitoVerificador"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Banco</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										: <xsl:value-of disable-output-escaping="no" select="../../detallePago/descripcionBancoFuturosPagos"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row keep-with-next="always">
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Nº Cta. Corriente</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										: <xsl:value-of disable-output-escaping="no" select="../../detallePago/documentoFuturosPagos"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Sucursal</xsl:text>
									</fo:block>
								</fo:table-cell>
							<xsl:if test="( ../../detallePago/codigoFuturosPagos = '3')"> 	
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										: <xsl:value-of disable-output-escaping="no" select="../../Cotizacion/descripcionSucursal"/>
									</fo:block>
								</fo:table-cell>
							</xsl:if>
							</fo:table-row>
							<!-- SECCION COMPAÑIA -->
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Propuesta N°</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										: <xsl:value-of disable-output-escaping="no" select="../../Cotizacion/numeroPropuesta"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Compañía</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										: <xsl:text>BCI Seguros Generales S.A.</xsl:text>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<!-- SECCION TEXTO DEL MANDATO -->
						</fo:table-body>
					</fo:table>
				</fo:block>

				</fo:block>
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" >
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
									<fo:block white-space-collapse="false" padding-before="0pt" font-size="11.0pt">
										<xsl:value-of disable-output-escaping="no" select="descripcion"/>
									</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
					</fo:table>
				</fo:block>
				
				<fo:block padding-before="20pt" text-align="center">
						<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(1)"/>
						<fo:table-column column-width="8cm"/>
						<fo:table-column column-width="proportional-column-width(1)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell height="70pt" column-number="2" border-bottom-style="solid" border-bottom-width="1.0pt" border-bottom-color="#DCDCDC">
										<fo:block>
											<xsl:if test="not($sinHuella)">
												<fo:external-graphic scaling="uniform" height="70pt" width="70pt">
													<xsl:attribute name="src"><xsl:value-of select="/DatosPropuesta/rutaHDAction" />?method=generaImagenHuella&amp;rut=<xsl:value-of disable-output-escaping="no" select="/DatosPropuesta/FigurasLegales/figuraLegal[@id='R']" />&amp;nro_prop=<xsl:value-of select="/DatosPropuesta/Cotizacion/numeroPropuesta" /></xsl:attribute>
												</fo:external-graphic>
											</xsl:if>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell column-number="2"  text-align="center" display-align="center" padding-before="4pt">
									<!--	<fo:block white-space-collapse="true" color="#0360A2" font-size="11.0pt">
										Firma del Titular de la Cuenta Corriente</fo:block>
								-->		<fo:block white-space-collapse="true" color="#0360A2" font-size="11.0pt">
											En Suc. <xsl:value-of disable-output-escaping="no" select="../../Cotizacion/descripcionSucursal"/>
											 a <xsl:value-of disable-output-escaping="no" select="../../Cotizacion/fechaInicioVigencia"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block> 
				
			</xsl:if>
		</xsl:for-each>
	</xsl:template>

	<xsl:template name="temp_anterior_a_mandato_PAT">
		<xsl:for-each select="adicional/texto">
			<xsl:if test="(condicion = 'MANDATO_PAT' and (../../detallePago/codigoFuturosPagos = '4' or ../../detallePago/codigoFuturosPagos = '5'))">
				<fo:block span="none" padding-before="6pt">
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
						<fo:table-row>
							<fo:table-cell>
								<fo:block white-space-collapse="true"  text-align="start" color="#FFFFFF" font-size="300.0pt"> . </fo:block>
								<fo:block text-align="center" font-size="14pt" color="#4D6175">
								Fin de Propuesta Seguro Nro. 
								<xsl:value-of select="../../Cotizacion/numeroPropuesta"/>
								, en próxima hoja se adjunta mandato: PAT para ser firmado por Responsable de Pago. 
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
			<xsl:if test="(condicion = 'MANDATO_PAT' and (../../detallePago/codigoFuturosPagos = '4' or ../../detallePago/codigoFuturosPagos = '5'))">
				<fo:block span="none" padding-before="6pt">
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
				
				<fo:block span="none">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(19)"/>
						<fo:table-column column-width="proportional-column-width(62)"/>
						<fo:table-column column-width="proportional-column-width(19)"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block text-align="left">
										<fo:external-graphic scaling="uniform" height="30pt" width="120pt">
											<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="../../rutaLogos"/>/logos/BciSeguros_verticalBPS.jpg')</xsl:attribute>
										</fo:external-graphic>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell display-align="center">
									<fo:block color="#CC0000" font-size="20pt" text-align="center" font-weight="bold">
										</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="right">
										<fo:external-graphic  scaling="uniform" height="30pt" width="120px">
											<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="../../rutaLogos"/>/logos/LOGOBCI2BPS.gif')</xsl:attribute>
										</fo:external-graphic>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
		
				<fo:block span="none" padding-before="6pt">	
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>		
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
									<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
				</fo:table>
				</fo:block>
				
				<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
					 
						<fo:table-row>
							<fo:table-cell number-columns-spanned="4" text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
									<fo:inline>IDENTIFICACION DEL TITULAR TARJETA DE CRÉDITO</fo:inline>
									<fo:inline font-style="italic">(Responsable de Pago)</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						
					</fo:table-body>
				</fo:table>
			</fo:block>
			
			
			<fo:block span="none" padding-before="6pt">
			<fo:table table-layout="fixed" width="100%" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
				<fo:table-column column-width="proportional-column-width(18)" background-color="#FFFFFF"/>
				<fo:table-column column-width="proportional-column-width(20)" background-color="#ffffff"/>
				<fo:table-column column-width="proportional-column-width(21)" background-color="#FFFFFF"/>
				<fo:table-column column-width="proportional-column-width(41)" background-color="#ffffff"/>
				<fo:table-body>
					<!-- SECCION IDENTIFICACION DEL CLIENTE -->
	
					<fo:table-row keep-with-next="always">
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Nombre</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell number-columns-spanned="3" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								: <xsl:value-of disable-output-escaping="no" select="../../responsablePago/nombres"/>
									<xsl:text> </xsl:text>
									<xsl:value-of disable-output-escaping="no" select="../../responsablePago/apellidoPaterno"/>
									<xsl:text> </xsl:text>
									<xsl:value-of disable-output-escaping="no" select="../../responsablePago/apellidoMaterno"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row keep-with-next="always">
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>RUT</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								: <xsl:value-of disable-output-escaping="no" select="../../responsablePago/rut"/><xsl:text>-</xsl:text><xsl:value-of disable-output-escaping="no" select="../../responsablePago/digitoVerificador"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Tipo Tarjeta</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								: <xsl:value-of disable-output-escaping="no" select="../../detallePago/descripcionBancoFuturosPagos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row keep-with-next="always">
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Nº Tarjeta</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								: <xsl:value-of disable-output-escaping="no" select="../../detallePago/documentoFuturosPagos"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Fecha Vencimiento</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								: <xsl:value-of disable-output-escaping="no" select="../../detallePago/vencimientoFuturosPagos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<!-- SECCION COMPAÑIA -->
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
									<xsl:text>Propuesta N°</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								: <xsl:value-of disable-output-escaping="no" select="../../Cotizacion/numeroPropuesta"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Compañía</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								: <xsl:text>BCI Seguros Generales S.A.</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</fo:table-body>
					</fo:table>
				</fo:block>

				</fo:block>
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" >
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
									<fo:block white-space-collapse="false" padding-before="0pt" font-size="11.0pt">
										<xsl:value-of disable-output-escaping="no" select="descripcion"/>
									</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
					</fo:table>
				</fo:block>
					
					
				<fo:block padding-before="18pt" text-align="center">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(1)"/>
						<fo:table-column column-width="8cm"/>
						<fo:table-column column-width="proportional-column-width(1)"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell height="25pt" column-number="2" border-bottom-style="solid" border-bottom-width="1.0pt" border-bottom-color="#DCDCDC">
									<fo:block>
										<fo:external-graphic scaling="uniform" height="70pt" width="70pt">
											<xsl:attribute name="src"><xsl:value-of select="/DatosPropuesta/rutaHDAction" />?method=generaImagenHuella&amp;rut=<xsl:value-of disable-output-escaping="no" select="/DatosPropuesta/FigurasLegales/figuraLegal[@id='R']" />&amp;nro_prop=<xsl:value-of select="/DatosPropuesta/Cotizacion/numeroPropuesta" /></xsl:attribute>
										</fo:external-graphic>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell column-number="2"  text-align="center" display-align="center" padding-before="4pt" color="#0360A2">
									<fo:block></fo:block>
									<fo:block>
										En Suc. <xsl:value-of disable-output-escaping="no" select="../../Cotizacion/descripcionSucursal"/>
										 a <xsl:value-of disable-output-escaping="no" select="../../Cotizacion/fechaInicioVigencia"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block> 
				
			</xsl:if>
		</xsl:for-each>
	</xsl:template>


	<xsl:template name="temp_terminos_cortos">
		<xsl:for-each select="adicional/texto">
			<xsl:if test="(condicion = 'TERM_CORTOS')">
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
				<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>		
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
									<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" >
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
									<fo:block white-space-collapse="false" padding-before="0pt" font-size="11.0pt">
										<xsl:value-of disable-output-escaping="no" select="descripcion"/>
									</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block padding-before="20pt" text-align="center">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(1)"/>
						<fo:table-column column-width="8cm"/>
						<fo:table-column column-width="proportional-column-width(1)"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell height="20pt" column-number="2" text-align="center" display-align="center" border-bottom-style="solid" border-bottom-width="1.0pt" border-bottom-color="#DCDCDC">
									<fo:block>
										<fo:external-graphic scaling="uniform" height="70pt" width="70pt">
											<xsl:attribute name="src"><xsl:value-of select="/DatosPropuesta/rutaHDAction" />?method=generaImagenHuella&amp;rut=<xsl:value-of disable-output-escaping="no" select="/DatosPropuesta/FigurasLegales/figuraLegal[@id='R']" />&amp;nro_prop=<xsl:value-of select="/DatosPropuesta/Cotizacion/numeroPropuesta" /></xsl:attribute>
										</fo:external-graphic>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell column-number="2" text-align="center" display-align="center" padding-before="4pt">
									<fo:block color="#0360A2" font-size="11.0pt"><xsl:text>Firma Responsable de Pago</xsl:text></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>

	<xsl:template name="temp_condiciones_regalo">
		<xsl:for-each select="adicional/texto">
			<xsl:if test="(condicion = 'CONDIC_REGALO')">
				<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>		
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
									<fo:block text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="titulo"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" >
					<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
									<fo:block white-space-collapse="false" padding-before="0pt" font-size="11.0pt">
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



<!-- *********************************************************FIRMAS FINALES **************************************************** -->
	<xsl:template name="temp_firmas">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(16)"/>
			<fo:table-column column-width="proportional-column-width(4)"/>
			<fo:table-column column-width="proportional-column-width(24)"/>
			<fo:table-column column-width="proportional-column-width(4)"/>
			<fo:table-column column-width="proportional-column-width(24)"/>
			<fo:table-column column-width="proportional-column-width(4)"/>
			<fo:table-column column-width="proportional-column-width(24)"/>
			<fo:table-body>
				<fo:table-row keep-with-next="always">
					<fo:table-cell text-align="center" display-align="center" color="#0360A2">
						<fo:block><xsl:value-of select="Cotizacion/fechaPropuesta"/></fo:block>
					</fo:table-cell>
					<fo:table-cell  text-align="center" display-align="center" color="#0360A2"><fo:block></fo:block></fo:table-cell>
					<fo:table-cell  text-align="center" display-align="center" color="#0360A2">
						<fo:block>
							<fo:external-graphic scaling="uniform" height="70pt" width="70pt">
								<xsl:attribute name="src"><xsl:value-of select="/DatosPropuesta/rutaHDAction" />?method=generaImagenHuella&amp;rut=<xsl:value-of disable-output-escaping="no" select="/DatosPropuesta/FigurasLegales/figuraLegal[@id='C']" />&amp;nro_prop=<xsl:value-of select="/DatosPropuesta/Cotizacion/numeroPropuesta" /></xsl:attribute>
							</fo:external-graphic>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell  text-align="center" display-align="center" color="#0360A2"><fo:block></fo:block></fo:table-cell>
					<fo:table-cell  text-align="center" display-align="center" color="#0360A2">
						<fo:block>
								<fo:external-graphic scaling="uniform" height="50pt" width="90pt"> 
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/firmas/FIR_COR2.gif')</xsl:attribute> 
							</fo:external-graphic>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell  text-align="center" display-align="center" color="#0360A2"><fo:block></fo:block></fo:table-cell>
					<fo:table-cell  text-align="center" display-align="center" color="#0360A2">
						<fo:block>
							<fo:external-graphic scaling="uniform" height="88pt" width="44pt"> 
								<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/firmas/fir_axa_mod.jpg')</xsl:attribute> 
							</fo:external-graphic>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next="always">
					<fo:table-cell padding-before="4pt" border-top-style="solid" border-top-width="1.0pt" border-top-color="#DCDCDC" text-align="center" display-align="center" color="#0360A2">
						<fo:block><xsl:text>Fecha</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell padding-before="4pt" text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
					<fo:table-cell>
						<fo:block><xsl:text></xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell padding-before="4pt" text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
					<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#DCDCDC" text-align="center" display-align="center" color="#0360A2">
						<fo:block>
							<xsl:text>Corredor</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-before="4pt" text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
					<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#DCDCDC" text-align="center" display-align="center" color="#0360A2">
						<fo:block>
							<xsl:text>Compañia</xsl:text>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>
	
	<xsl:template name="temp_da_salto_pag">
		<fo:block break-before="page"></fo:block>
	</xsl:template>
	
		<!-- RUTINA CODIGO BARRA -->
	<xsl:template name="dibujar_patron">
		<xsl:param name="patron"/>
		<xsl:param name="indice"/>
		<xsl:param name="dimension_x"/>
		<xsl:param name="dimension_y"/>
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
						<fo:leader leader-pattern="rule" rule-thickness="{$dimension_y}mm" rule-style="solid" leader-length="{$anchura_linea}mm"/>
					</xsl:when>
					<xsl:otherwise>
						<fo:leader leader-pattern="rule" rule-thickness="{$dimension_y}mm" rule-style="solid" color="white" leader-length="{$anchura_linea}mm"/>
						<!-- es un espacio -->
					</xsl:otherwise>
				</xsl:choose>
				<xsl:call-template name="dibujar_patron">
					<xsl:with-param name="patron" select="substring($patron, 2)"/>
					<xsl:with-param name="indice" select="$indice + 1"/>
					<xsl:with-param name="dimension_x" select="$dimension_x"/>
					<xsl:with-param name="dimension_y" select="$dimension_y"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
		
	<xsl:template name="dibujar_caracter">
		<xsl:param name="caracter"/>
		<xsl:param name="dimension_x"/>
		<xsl:param name="dimension_y"/>
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
					<xsl:with-param name="dimension_y" select="$dimension_y"/>
				</xsl:call-template>
				<fo:leader leader-pattern="rule" rule-thickness="{$dimension_y}mm" rule-style="solid" color="white" leader-length="{$dimension_x}mm"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<xsl:template name="dibujar_codigobarras_39">
		<xsl:param name="cadena"/>
		<xsl:param name="dimension_x"/>
		<xsl:param name="dimension_y"/>
		<xsl:choose>
			<xsl:when test="string-length($cadena) &gt; 0">
				<xsl:variable name="caracter_actual" select="substring($cadena, 1, 1)"/>
				<xsl:call-template name="dibujar_caracter">
					<xsl:with-param name="caracter" select="$caracter_actual"/>
					<xsl:with-param name="dimension_x" select="$dimension_x"/>
					<xsl:with-param name="dimension_y" select="$dimension_y"/>
				</xsl:call-template>
				<xsl:call-template name="dibujar_codigobarras_39">
					<xsl:with-param name="cadena" select="substring($cadena, 2)"/>
					<xsl:with-param name="dimension_x" select="$dimension_x"/>
					<xsl:with-param name="dimension_y" select="$dimension_y"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<xsl:template match="codigobarras-39">
		<xsl:param name="dimension_x" select="0.3"/>
		<xsl:param name="dimension_y" />
		<xsl:variable name="altura_cod">
			<xsl:choose>
				<xsl:when test="($dimension_y)"><xsl:value-of select="$dimension_y" /></xsl:when>
				<xsl:otherwise>10</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<fo:block line-height="{$altura_cod}mm">
			<xsl:call-template name="dibujar_codigobarras_39">
				<xsl:with-param name="cadena" select="concat('*',@valor,'*')"/>
				<xsl:with-param name="dimension_x" select="$dimension_x"/>
				<xsl:with-param name="dimension_y" select="$altura_cod"/>
			</xsl:call-template>
		</fo:block>
	</xsl:template>
	<!-- FIN RUTINA CODIGO BARRA -->

	<!-- IMPORTA EL XSL CON LOS TEMPLATES DE CERTIFICADO -->
	<!--xsl:include href="../comprobante/impresion_general_comp.xsl" /-->
    
    <xsl:template name="CERT_documento_completo">
		<fo:block>
			<!-- LOGOS CABECERA -->
			<fo:block padding-before="2pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block>
									<xsl:call-template name="CERT_datos_logos_cabecera"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!-- TITULOS -->
			<fo:block padding-before="1pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block>
									<xsl:call-template name="CERT_datos_titulos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!-- CONTRATANTE -->
			<fo:block padding-before="10pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="CERT_datos_contratante"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!-- A FAVOR-->
			<fo:block padding-before="10pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="CERT_datos_aFavor"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!-- PRIMAS -->
			<fo:block padding-before="10pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="CERT_datos_primas"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!-- FORMA DE PAGO -->
			<fo:block padding-before="10pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block>
									<xsl:call-template name="CERT_tituloFormaPago"/>
									<xsl:call-template name="CERT_datosPrimerPago"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>	
			
			<fo:block padding-before="10pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="CERT_datosFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>

			<!-- MATERIA ASEGURADA--> 
			<fo:block padding-before="10pt">
				<xsl:call-template name="CERT_tituloMateriaAsegurada"/>
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block>
									<xsl:choose>
										<xsl:when test="( Cotizacion/codigoProducto = 'BCINCE') or ( Cotizacion/codigoProducto = 'BCIHOG')">
											<xsl:call-template name="CERT_datos_materiaAseguradaIncendioHogar"/>
										</xsl:when>
										<xsl:when test="( Cotizacion/codigoProducto = 'BCIMULP3') or ( Cotizacion/codigoProducto = 'BCIPYM3') or ( Cotizacion/codigoProducto = 'VDEUPRO')">
											<xsl:call-template name="CERT_datos_materiaAseguradaMulti"/>
										</xsl:when>
										<xsl:when test="( Cotizacion/codigoProducto = 'BCIACOL') or ( Cotizacion/codigoProducto = 'BCIACAM')">
											<xsl:call-template name="CERT_datos_materiaAseguradaAuto"/>
										</xsl:when>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!-- CONDICIONES GENERALES -->
			<fo:block padding-before="10pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="CERT_datos_condicionesGenerales"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!-- VIGENCIA DEL SEGURO -->
			<fo:block padding-before="10pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="CERT_datos_vigenciaSeguro"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!-- FORMA DE DESPACHO DE POLIZA -->
			<fo:block padding-before="10pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="CERT_datos_despachoPoliza"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!-- Texto Normativo -->
			<fo:block padding-before="20pt" white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
				<xsl:text>Con la emisión del presente certificado de seguro, no se obtiene cobertura alguna al riesgo que se procura asegurar. La cobertura comenzará a regir únicamente a partir del momento en que esta solicitud de seguro sea aceptada por el asegurador y se inicie la vigencia de la póliza" (Circular Nª 1.390 S.V.S.). Además usted podrá tener las condiciones particulares y generales de su póliza, en su domicilio particular, comercial u otro designado, como también en su correo electrónico informado en este documento, con lo cual el suscrito se entenderá por recibido, comunicado y/o notificado de la información de su seguro. Sin perjuicio de lo anterior, el asegurado podrá siempre solicitar una copia de la misma en las  dependencias de la Compañía, debiendo la última hacer entrega de ella en el plazo máximo de cinco días.</xsl:text>
			</fo:block>
			<!-- FIRMAS -->
			<fo:block padding-before="20pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="CERT_firmas"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="CERT_datos_logos_cabecera">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-column column-width="proportional-column-width(50)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(10)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left">
								<fo:external-graphic scaling="uniform" height="15pt" width="60pt">
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/BciSeguros_verticalBPS.jpg')</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>						
						
						<fo:table-cell display-align="after">
							<fo:block color="#000000" font-size="14pt" text-align="center" font-weight="bold" >
								<xsl:text>Certificado de Seguro</xsl:text>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell display-align="before">
							<fo:block color="#000000" font-size="1pt" text-align="right" font-weight="bold">
									<xsl:apply-templates select="codigobarras-39" >
										<xsl:with-param name="dimension_y">5</xsl:with-param>
									</xsl:apply-templates>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell>
							<fo:block text-align="right">
								<fo:external-graphic  scaling="uniform" height="15pt" width="60pt">
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/LOGOBCI2BPS.gif')</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell>
							<fo:block>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell>
							<fo:block>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell vertical-align="top" display-align="before">
								<fo:block color="#000000" font-size="20pt" text-align="center" font-weight="bold">
								</fo:block>

								<fo:block color="#000000" font-size="6pt" text-align="center" font-weight="bold"> 
									<xsl:value-of  select="Cotizacion/numeroPropuesta"/> 
								</fo:block> 
						</fo:table-cell>

						<fo:table-cell>
							<fo:block>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="CERT_datos_titulos">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-column column-width="proportional-column-width(50)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(10)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell></fo:table-cell>
						<fo:table-cell display-align="before">
							<fo:block color="#000000" font-size="12pt" text-align="center" font-weight="normal">
								<xsl:text>Seguro </xsl:text> <xsl:value-of  select="Cotizacion/descripcionProducto"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell></fo:table-cell>
						<fo:table-cell></fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell></fo:table-cell>
						<fo:table-cell display-align="before">
							<fo:block color="#000000" font-size="10pt" text-align="center" font-weight="normal">
								<xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">
									<xsl:text>Póliza Nro.</xsl:text><xsl:value-of select="DatosPoliza/numeroPoliza"/><xsl:text>-</xsl:text><xsl:value-of select="DatosPoliza/digitoVerificadorPoliza"/>
									<xsl:text> - </xsl:text>
								</xsl:if>
								<xsl:text>Propuesta Nro.</xsl:text><xsl:value-of select="Cotizacion/numeroPropuesta"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell></fo:table-cell>
						<fo:table-cell></fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="CERT_datos_contratante">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="80%">
				<fo:table-column column-width="proportional-column-width(15)"/>
				<fo:table-column column-width="proportional-column-width(30)"/>
				<fo:table-column column-width="proportional-column-width(5)"/>
				<fo:table-column column-width="proportional-column-width(5)"/>
				<fo:table-column column-width="proportional-column-width(5)"/>
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="6">
							<fo:block text-align="left" color="#0360A2" font-size="12pt" font-weight="bold">
									<xsl:text>Contratante</xsl:text>
							</fo:block>
						</fo:table-cell>		
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:text>Nombre Completo</xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell number-columns-spanned="3">
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:value-of disable-output-escaping="no" select="contratante/nombres"/><xsl:text> </xsl:text>
								<xsl:value-of disable-output-escaping="no" select="contratante/apellidoPaterno"/><xsl:text> </xsl:text>
								<xsl:value-of disable-output-escaping="no" select="contratante/apellidoMaterno"/>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:text>Rut</xsl:text>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:value-of  select="contratante/rut"/><xsl:text>-</xsl:text><xsl:value-of  select="contratante/digitoVerificador"/>
							</fo:block>
						</fo:table-cell>
						
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:text>Email</xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell number-columns-spanned="5">
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:value-of disable-output-escaping="no" select="contratante/email"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="CERT_datos_aFavor">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="80%">
				<fo:table-column column-width="proportional-column-width(15)"/>
				<fo:table-column column-width="proportional-column-width(40)"/>
				<fo:table-column column-width="proportional-column-width(5)"/>
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="4">
							<fo:block text-align="left" color="#0360A2" font-size="12pt" font-weight="bold">
									<xsl:text>Asegurado Titular (a favor)</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:text>Nombre Completo</xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell>
						<xsl:choose>
							<xsl:when test="(Cotizacion/codigoProducto = 'BCIMULP3') or (Cotizacion/codigoProducto = 'VDEUPRO') or (Cotizacion/codigoProducto = 'BCIPYM3')">
								<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
									<xsl:value-of disable-output-escaping="no" select="contratante/nombres"/><xsl:text> </xsl:text>
									<xsl:value-of disable-output-escaping="no" select="contratante/apellidoPaterno"/><xsl:text> </xsl:text>
									<xsl:value-of disable-output-escaping="no" select="contratante/apellidoMaterno"/>
								</fo:block>
							</xsl:when>
							<xsl:otherwise>
								<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
									<xsl:value-of disable-output-escaping="no" select="aFavor/nombres"/><xsl:text> </xsl:text>
									<xsl:value-of disable-output-escaping="no" select="aFavor/apellidoPaterno"/><xsl:text> </xsl:text>
									<xsl:value-of disable-output-escaping="no" select="aFavor/apellidoMaterno"/>
								</fo:block>
							</xsl:otherwise>
						</xsl:choose>
						</fo:table-cell>
						
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:text>Rut</xsl:text>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell>
							<xsl:choose>
								<xsl:when test="(Cotizacion/codigoProducto = 'BCIMULP3') or (Cotizacion/codigoProducto = 'VDEUPRO') or (Cotizacion/codigoProducto = 'BCIPYM3')">
									<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
										<xsl:value-of select="contratante/rut"/><xsl:text>-</xsl:text><xsl:value-of  select="contratante/digitoVerificador"/>
									</fo:block>
								</xsl:when>
								<xsl:otherwise>
									<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
										<xsl:value-of  select="aFavor/rut"/><xsl:text>-</xsl:text><xsl:value-of  select="aFavor/digitoVerificador"/>
									</fo:block>
								</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
						
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:text>Fecha de Nacimiento</xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell>
						<xsl:choose>
							<xsl:when test="(Cotizacion/codigoProducto = 'BCIMULP3') or (Cotizacion/codigoProducto = 'VDEUPRO') or (Cotizacion/codigoProducto = 'BCIPYM3')">
								<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
									<xsl:value-of disable-output-escaping="no" select="contratante/fechaNacimiento"/>
								</fo:block>
							</xsl:when>
							<xsl:otherwise>
								<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
									<xsl:value-of disable-output-escaping="no" select="aFavor/fechaNacimiento"/>
								</fo:block>
							</xsl:otherwise>
						</xsl:choose>
						</fo:table-cell>
						
						<fo:table-cell>
							<fo:block>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell>
							<fo:block>
							</fo:block>
						</fo:table-cell>
						
					</fo:table-row>
					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="CERT_datos_primas">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="80%">
				<fo:table-column column-width="proportional-column-width(15)"/>
				<fo:table-column column-width="proportional-column-width(30)"/>
				<fo:table-column column-width="proportional-column-width(35)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="3">
							<fo:block text-align="left" color="#0360A2" font-size="12pt" font-weight="bold">
									<xsl:text>Primas</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal" text-decoration="underline">
								<xsl:text> Plan</xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal" text-decoration="underline">
								<xsl:text>Descripción</xsl:text>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell>
							<fo:block text-align="center" color="#0360A2" font-size="10pt" font-weight="normal" text-decoration="underline">
								<xsl:text>Prima Bruta Mensual UF</xsl:text>
							</fo:block>
						</fo:table-cell>
						
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:value-of disable-output-escaping="no" select="tarifa/codigo"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:value-of disable-output-escaping="no" select="tarifa/descripcion"/>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell>
							<fo:block text-align="center" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:value-of disable-output-escaping="no" select="tarifa/primaBrutaMensual"/>
							</fo:block>
						</fo:table-cell>
							
					</fo:table-row>

					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="CERT_tituloFormaPago">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block text-align="left" color="#0360A2" font-size="12pt" font-weight="bold">
									<xsl:text>Forma de Pago</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="CERT_datosPrimerPago">
		<fo:block span="none">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-column column-width="proportional-column-width(45)"/>
				<fo:table-column column-width="proportional-column-width(15)"/>
				<fo:table-column column-width="proportional-column-width(20)"/>
				
				<fo:table-body>
				<xsl:if test="( detallePago/indicadorPrimerosPagos = 'SI' )"> 
					<fo:table-row>
						<fo:table-cell number-columns-spanned="4" text-align="start" display-align="before">
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="bold" text-decoration="underline">
									<xsl:text>Pago Inicial:</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
								<xsl:text>Forma de Pago</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
								<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionPrimerPago"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				
					<xsl:if test="( detallePago/codigoPrimerPago = '1' )"> 
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
										<xsl:text>Nº Depósito :</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="detallePago/documentoPrimerPago"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
					</xsl:if>	
					<xsl:if test="( detallePago/codigoPrimerPago = '2' )"> 
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
										<xsl:text>Nº Depósito :</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="detallePago/documentoPrimerPago"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
					</xsl:if>
					<xsl:if test="( detallePago/codigoPrimerPago = '3' or detallePago/codigoPrimerPago = '10')"> 
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
										<xsl:text>Banco :</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoPrimerPago"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
										<xsl:text>Cta.Cte.BCI :</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="detallePago/documentoPrimerPago"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
					</xsl:if>				
					<xsl:if test="( detallePago/codigoPrimerPago = '4' )"> 
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
										<xsl:text>Tarjeta de Credito BCI:</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoPrimerPago"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
										<xsl:text>Nº Tarjeta de Credito :</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="detallePago/documentoPrimerPago"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
					</xsl:if>
					<xsl:if test="( detallePago/codigoPrimerPago = '5' )"> 
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
										<xsl:text>Tarjeta de Credito otro banco:</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoPrimerPago"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
										<xsl:text>Nº Tarjeta de Credito :</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="detallePago/documentoPrimerPago"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
					</xsl:if>
					<xsl:if test="( detallePago/codigoPrimerPago = '6' )"> 
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
										<xsl:text>Cta.Cte. otro banco:</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoPrimerPago"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
										<xsl:text>Nº Cta.Cte. :</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="detallePago/documentoPrimerPago"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
					</xsl:if>
					<xsl:if test="( detallePago/diaPagoPrimerPago > 0 )">
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
									<xsl:text>Día de Pago:</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" number-columns-spanned="3">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/diaPagoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:if>
				</xsl:if> 
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="CERT_datosFuturosPagos">
		<fo:block span="none">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-column column-width="proportional-column-width(45)"/>
				<fo:table-column column-width="proportional-column-width(15)"/>
				<fo:table-column column-width="proportional-column-width(20)"/>
				
				<fo:table-body>
				<xsl:if test="( detallePago/indicadorFuturosPagos = 'SI' )"> 
					<fo:table-row>
						<fo:table-cell number-columns-spanned="4" text-align="start" display-align="before">
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="bold" text-decoration="underline">
									<xsl:text>Futuros Pagos:</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
								<xsl:text>Forma de Pago</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
								<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionFuturosPagos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<xsl:if test="( detallePago/codigoFuturosPagos = '1' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
									<xsl:text>Nº Recibo :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:if>	
					<xsl:if test="( detallePago/codigoFuturosPagos = '2' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
									<xsl:text>Nº Cheque :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:if>
					<xsl:if test="( detallePago/codigoFuturosPagos = '3' or detallePago/codigoFuturosPagos = '10')"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
									<xsl:text>Banco :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
									<xsl:text>Cta.Cte.BCI :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:if>				
					<xsl:if test="( detallePago/codigoFuturosPagos = '4' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
									<xsl:text>Tarjeta de Credito BCI:</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
									<xsl:text>Nº Tarjeta de Credito :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:if>
					<xsl:if test="( detallePago/codigoFuturosPagos = '5' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
									<xsl:text>Tarjeta de Credito otro banco:</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
									<xsl:text>Nº Tarjeta de Credito :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:if>
					<xsl:if test="( detallePago/codigoFuturosPagos = '6' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
									<xsl:text>Cta.Cte. otro banco:</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
									<xsl:text>Nº Cta.Cte. :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:if>
					<xsl:if test="( detallePago/diaPagoFuturosPagos > 0 )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
									<xsl:text>Día de Pago:</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" number-columns-spanned="3">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/diaPagoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:if>
				</xsl:if> 
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="CERT_tituloMateriaAsegurada">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block text-align="left" color="#0360A2" font-size="12pt" font-weight="bold">
									<xsl:text>Materia Asegurada</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="CERT_datos_materiaAseguradaIncendioHogar">
		<fo:block span="none">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				
				<fo:table-body>	
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Dirección</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" number-columns-spanned="2" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/direccion"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text></xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Región</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionRegion"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Ciudad</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionCiudad"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Comuna</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionComuna"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:choose>
									<xsl:when test="( Cotizacion/codigoProducto = 'BCIHOG')">
										<xsl:text>Actividad</xsl:text>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text>Zona</xsl:text>
									</xsl:otherwise>
								</xsl:choose>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:choose>
									<xsl:when test="( Cotizacion/codigoProducto = 'BCINCE')">
										<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionZona"/>
									</xsl:when>
									<xsl:when test="( Cotizacion/codigoProducto = 'BCIHOG')">
										<xsl:text>Habitacional</xsl:text>
									</xsl:when>
								</xsl:choose>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Tipo de Construcción</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionTipoConstruccion"/>
							</fo:block>
						</fo:table-cell>
						<xsl:choose>
							<xsl:when test="( Cotizacion/codigoProducto = 'BCINCE')">
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Giro</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/giroEdificio"/>
									</fo:block>
								</fo:table-cell>
							</xsl:when>
							<xsl:when test="( Cotizacion/codigoProducto = 'BCIHOG')">
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Tipo de Vivienda</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionTipoVivienda"/>
									</fo:block>
								</fo:table-cell>
							</xsl:when>
						</xsl:choose>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Materia Asegurada</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
					<!-- 
COMBINA_MAT_ASE_INC 	1	Edificio
COMBINA_MAT_ASE_INC 	2	Contenido
COMBINA_MAT_ASE_INC 	3	Edificio y Contenido
COMBINA_MAT_ASE_INC 	4	Edificio y Mercaderías
COMBINA_MAT_ASE_INC 	5	Contenido y Mercaderías
COMBINA_MAT_ASE_INC 	6	Edificio, Contenido y Mercaderías
					 -->
								<xsl:choose>
									<xsl:when test="(materiaAsegurada/materiaAsegurada = '1')">EDIFICIO + CONTENIDO</xsl:when>
									<xsl:when test="(materiaAsegurada/materiaAsegurada = '2')">CONTENIDO</xsl:when>
									<xsl:when test="(materiaAsegurada/materiaAsegurada = '3')">EDIFICIO + CONTENIDO</xsl:when>
									<xsl:when test="(materiaAsegurada/materiaAsegurada = '4')">EDIFICIO + MERCADERÍAS</xsl:when>
									<xsl:when test="(materiaAsegurada/materiaAsegurada = '5')">CONTENIDO + MERCADERÍAS</xsl:when>
									<xsl:when test="(materiaAsegurada/materiaAsegurada = '6')">EDIFICIO + CONTENIDO + MERCADERÍAS</xsl:when>
								</xsl:choose>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Adicionales</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:variable name="segSismo">
									<xsl:choose>
										<xsl:when test="(Cotizacion/codigoProducto = 'BCINCE')"><xsl:value-of select="materiaAsegurada/coberturaSismo"/></xsl:when>
										<xsl:when test="(Cotizacion/codigoProducto = 'BCIHOG')"><xsl:value-of select="materiaAsegurada/cobeturaSismo"/></xsl:when>
									</xsl:choose>
								</xsl:variable>
								<xsl:variable name="segRobo">
									<xsl:choose>
										<xsl:when test="materiaAsegurada/coberturaRobo"><xsl:value-of select="materiaAsegurada/coberturaRobo" /></xsl:when>
										<xsl:otherwise>N</xsl:otherwise>
									</xsl:choose>
								</xsl:variable>
								<xsl:variable name="segAsistencia">
									<xsl:choose>
										<xsl:when test="materiaAsegurada/indicadorAsistencia"><xsl:value-of select="materiaAsegurada/indicadorAsistencia" /></xsl:when>
										<xsl:otherwise>N</xsl:otherwise>
									</xsl:choose>
								</xsl:variable>
								<xsl:variable name="segNinguno">
									<xsl:choose>
										<xsl:when test="(Cotizacion/codigoProducto = 'BCIHOG')">INCENDIO</xsl:when>
										<xsl:otherwise>NO</xsl:otherwise>
									</xsl:choose>
								</xsl:variable>
								<xsl:variable name="segBase">
									<xsl:choose>
										<xsl:when test="($segNinguno = 'NO')"></xsl:when>
										<xsl:otherwise><xsl:value-of select="$segNinguno"/> + </xsl:otherwise>
									</xsl:choose>
								</xsl:variable>
								<xsl:choose>
									<xsl:when test="($segSismo!= 'S') and ( $segRobo!= 'S') and ($segAsistencia!= 'S')"><xsl:value-of select="$segNinguno"/></xsl:when>
									<xsl:when test="($segSismo!= 'S') and ( $segRobo!= 'S') and ($segAsistencia = 'S')"><xsl:value-of select="$segBase"/>ASISTENCIA LEGAL</xsl:when>
									<xsl:when test="($segSismo!= 'S') and ( $segRobo = 'S') and ($segAsistencia!= 'S')"><xsl:value-of select="$segBase"/>ROBO</xsl:when>
									<xsl:when test="($segSismo!= 'S') and ( $segRobo = 'S') and ($segAsistencia = 'S')"><xsl:value-of select="$segBase"/>ROBO + ASISTENCIA LEGAL</xsl:when>
									<xsl:when test="($segSismo = 'S') and ( $segRobo!= 'S') and ($segAsistencia!= 'S')"><xsl:value-of select="$segBase"/>SISMO</xsl:when>
									<xsl:when test="($segSismo = 'S') and ( $segRobo!= 'S') and ($segAsistencia = 'S')"><xsl:value-of select="$segBase"/>SISMO + ASISTENCIA LEGAL</xsl:when>
									<xsl:when test="($segSismo = 'S') and ( $segRobo = 'S') and ($segAsistencia!= 'S')"><xsl:value-of select="$segBase"/>SISMO + ROBO</xsl:when>
									<xsl:when test="($segSismo = 'S') and ( $segRobo = 'S') and ($segAsistencia = 'S')"><xsl:value-of select="$segBase"/>SISMO + ROBO + ASISTENCIA LEGAL</xsl:when>
								</xsl:choose>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>		
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="CERT_datos_materiaAseguradaMulti">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(100)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" number-columns-spanned="3" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/materiaAsegurada"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>				
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="CERT_datos_materiaAseguradaAuto">
		<fo:block span="none">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Tipo Vehículo</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionTipoVehiculo"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Marca Vehículo</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionMarcaVehiculo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Modelo Vehículo</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionModeloVehiculo"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>Patente</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/patenteVehiculo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>				

					<xsl:if test="( materiaAsegurada/condicionInspeccion = '1')"> 
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Centro de Inspección</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="inspeccion/descripcionCentroInspeccion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Nombre Contacto</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="inspeccion/nombreContacto"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Fono Contacto</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="inspeccion/fonoContacto"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Año Vehículo</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/anoFabricacionVehiculo"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
					</xsl:if>
					
					<xsl:if test="( materiaAsegurada/condicionInspeccion = '2')">
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" padding-before="4pt" padding-after="2pt">
									<xsl:text>Motivo No Inspección</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
									<xsl:value-of disable-output-escaping="no" select="inspeccion/descripcionMotivoNoInspeccion"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Año Vehículo</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/anoFabricacionVehiculo"/>
									</fo:block>
								</fo:table-cell>
						</fo:table-row>
						<xsl:if test="( inspeccion/motivoNoInspeccion = '1')">  
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Nro de Factura</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="inspeccion/documentoNoInspeccion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Fecha de Factura</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="inspeccion/fechaNoInspeccion"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</xsl:if>
						<xsl:if test="( inspeccion/motivoNoInspeccion = '2' or inspeccion/motivoNoInspeccion = '3')">  
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Nro de Póliza</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="inspeccion/documentoNoInspeccion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Compania</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="inspeccion/descripcionCompaniaNoInspeccion"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Vigencia Hasta</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:value-of disable-output-escaping="no" select="inspeccion/fechaNoInspeccion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text></xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:text></xsl:text>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</xsl:if>
					</xsl:if>					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="CERT_datos_condicionesGenerales">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="80%">
				<fo:table-column column-width="proportional-column-width(80)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="12pt" font-weight="bold">
									<xsl:text>Condiciones Generales</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:choose>
									<xsl:when test="( Cotizacion/codigoProducto = 'BCINCE')">
										<xsl:text>Se deja expresa constancia que regirá la Cláusula inscritas en el registro de pólizas de la SVS, bajo el código POL 1 90 006.</xsl:text>
									</xsl:when>
									<xsl:when test="( Cotizacion/codigoProducto = 'BCIHOG')">
										<xsl:text>Se deja expresa constancia que regirá la Cláusula inscritas en el registro de pólizas de la SVS, bajo el código Titulo 1º / POL 1 91 058. </xsl:text>
									</xsl:when>
									<xsl:when test="( Cotizacion/codigoProducto = 'VDEUPRO')">
										<xsl:text>Se deja expresa constancia que regirá la Cláusula inscritas en el registro de pólizas de la SVS, bajo el código POL 3 97 014 y CAD 3 09 135 para Renta por Hospitalización; POL 3 03 057 y CAD 3 09 135 para Enfermedades Graves y POL 1 07 087 sección a) riesgo A y B y CAD 1 09 136 para Desempleo e Incapacidad Temporal.</xsl:text>
									</xsl:when>
									<xsl:when test="( Cotizacion/codigoProducto = 'BCIPYM3')">
										<xsl:text>Se deja expresa constancia que regirá la Cláusula inscritas en el registro de pólizas de la SVS, bajo el código POL 1 05 003 (Sección a, b, c, d, f, g, h y  j) y POL 1 92 026.</xsl:text>
									</xsl:when>
									<xsl:when test="( Cotizacion/codigoProducto = 'BCIMULP3')">
										<xsl:text>Se deja expresa constancia que regirá la Cláusula inscritas en el registro de pólizas de la SVS, bajo el código POL 1 05 003 (Sección a, b, c, d, f, g, h y  j).</xsl:text>
									</xsl:when>
									<xsl:when test="( Cotizacion/codigoProducto = 'BCIACOL') or ( Cotizacion/codigoProducto = 'BCIACAM')">
										<xsl:text>Se deja expresa constancia que regirá la Cláusula inscritas en el registro de pólizas de la SVS, bajo el código POL 1 98 022.</xsl:text>
									</xsl:when>
								</xsl:choose>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="CERT_datos_vigenciaSeguro">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="80%">
				<fo:table-column column-width="proportional-column-width(26)"/>
				<fo:table-column column-width="proportional-column-width(26)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="12pt" font-weight="bold">
									<xsl:text>Vigencia del Seguro</xsl:text>
							</fo:block>
						</fo:table-cell>		
						
						<fo:table-cell>
							<fo:block></fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:text>Desde 12:01 del día </xsl:text><xsl:value-of disable-output-escaping="no" select="Cotizacion/fechaInicioVigencia"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:text> Hasta las 12:00 del día </xsl:text><xsl:value-of disable-output-escaping="no" select="Cotizacion/fechaFinVigencia"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="CERT_datos_despachoPoliza">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="80%">
				<fo:table-column column-width="proportional-column-width(15)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="4">
							<fo:block text-align="left" color="#0360A2" font-size="12pt" font-weight="bold">
									<xsl:text>Forma de Despacho de Póliza</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:text>Envío de Póliza:</xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:value-of disable-output-escaping="no" select="detallePago/indicadorMail"/>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:text>Dirección Correo Electrónico:</xsl:text>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:value-of disable-output-escaping="no" select="detallePago/direccionMail"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="CERT_firmas">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(16)"/>
			<fo:table-column column-width="proportional-column-width(4)"/>
			<fo:table-column column-width="proportional-column-width(24)"/>
			<fo:table-column column-width="proportional-column-width(4)"/>
			<fo:table-column column-width="proportional-column-width(24)"/>
			<fo:table-column column-width="proportional-column-width(4)"/>
			<fo:table-column column-width="proportional-column-width(24)"/>
			<fo:table-body>
				<fo:table-row keep-with-next="always">
					<fo:table-cell text-align="center" display-align="center" color="#0360A2">
						<fo:block><xsl:value-of select="Cotizacion/fechaPropuesta"/></fo:block>
					</fo:table-cell>
					<fo:table-cell  text-align="center" display-align="center" color="#0360A2"><fo:block></fo:block></fo:table-cell>
					<fo:table-cell  text-align="center" display-align="center" color="#0360A2">
						<fo:block>
							<fo:external-graphic scaling="uniform" height="70pt" width="70pt">
								<xsl:attribute name="src"><xsl:value-of select="/DatosPropuesta/rutaHDAction" />?method=generaImagenHuella&amp;rut=<xsl:value-of disable-output-escaping="no" select="/DatosPropuesta/FigurasLegales/figuraLegal[@id='C']" />&amp;nro_prop=<xsl:value-of select="/DatosPropuesta/Cotizacion/numeroPropuesta" /></xsl:attribute>
							</fo:external-graphic>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell  text-align="center" display-align="center" color="#0360A2"><fo:block></fo:block></fo:table-cell>
					<fo:table-cell  text-align="center" display-align="center" color="#0360A2">
						<fo:block>
								<fo:external-graphic scaling="uniform" height="50pt" width="90pt"> 
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/firmas/FIR_COR2.gif')</xsl:attribute> 
							</fo:external-graphic>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell  text-align="center" display-align="center" color="#0360A2"><fo:block></fo:block></fo:table-cell>
					<fo:table-cell  text-align="center" display-align="center" color="#0360A2">
						<fo:block>
							<fo:external-graphic scaling="uniform" height="88pt" width="44pt"> 
								<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/firmas/fir_axa_mod.jpg')</xsl:attribute> 
							</fo:external-graphic>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next="always">
					<fo:table-cell padding-before="4pt" border-top-style="solid" border-top-width="1.0pt" border-top-color="#DCDCDC" text-align="center" display-align="center" color="#0360A2">
						<fo:block><xsl:text>Fecha</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell padding-before="4pt" text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
					<fo:table-cell>
						<fo:block><xsl:text></xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell padding-before="4pt" text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
					<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#DCDCDC" text-align="center" display-align="center" color="#0360A2">
						<fo:block>
							<xsl:text>Corredor</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-before="4pt" text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
					<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#DCDCDC" text-align="center" display-align="center" color="#0360A2">
						<fo:block>
							<xsl:text>Compañia</xsl:text>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>
<!-- INICIO - Procedimiento de Liquidación de Siniestros -->
	<xsl:template name="temp_anterior_a_procedLiqSiniestros">
        <fo:block span="none" padding-before="6pt">
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
			        <fo:table-row>
			            <fo:table-cell>
			                <fo:block white-space-collapse="true"  text-align="start" color="#FFFFFF" font-size="300.0pt"> . </fo:block>
			                <fo:block text-align="center" font-size="14pt" color="#4D6175">
			                Se incluye Anexo relativo a Procedimiento de Liquidación de Siniestros
			                </fo:block>
			            </fo:table-cell>
			        </fo:table-row>
			    </fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<xsl:template name="temp_procedLiqSiniestros">
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
                            <fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell padding="4.0pt" text-align="start" border-top-style="solid" border-after-style="solid" display-align="before" border-width="1.0pt" border-color="#DCDCDC" padding-left="5pt">
                                        <fo:block white-space-collapse="true"  text-align="center" color="#6B6765" font-size="13.0pt" font-weight="bold">
                                            <xsl:text>Procedimiento de Liquidación de Siniestros</xsl:text>
                                        </fo:block>
                                        <fo:block white-space-collapse="true"  text-align="center" color="#6B6765" font-size="13.0pt" font-weight="bold">
                                            <xsl:text>(Circular Nº 2.109 del 24.06.2013 de S. V.S.)</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                    </fo:table>
                </fo:block>    
                <fo:block span="none" padding-before="6pt">
					<fo:table table-layout="fixed" width="100%" border-style="solid" border-width="0.0pt" border-color="#FFFFFF">
						<fo:table-column column-width="proportional-column-width(22)" background-color="#FFFFFF"/>
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>1) OBJETO DE LA LIQUIDACIÓN</xsl:text>
									</fo:block>
								</fo:table-cell>
                            </fo:table-row>
                            <fo:table-row >
                                <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="40pt" padding-right="20pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>La liquidación tiene por fin establecer la ocurrencia de un siniestro, determinar si el siniestro está cubierto en la póliza contratada en una compañía de seguros determinada, y cuantificar el monto de la pérdida y de la indemnización a pagar.</xsl:text>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>	
                            <fo:table-row >
                                <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="40pt" padding-right="20pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>El procedimiento de liquidación está sometido a los principios de celeridad y economía procedimental, de objetividad y carácter técnico y de transparencia y acceso.</xsl:text>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
                            <fo:table-row>
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>2) FORMA DE EFECTUAR LA LIQUIDACIÓN</xsl:text>
									</fo:block>
								</fo:table-cell>
                            </fo:table-row>
                            <fo:table-row >
                                <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="40pt" padding-right="20pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>La liquidación puede efectuarla directamente la Compañía o encomendarla a un Liquidador de Seguros.  La decisión debe comunicarse al Asegurado dentro del plazo de tres días hábiles contados desde la fecha de la denuncia del siniestro.</xsl:text>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>	
                            <fo:table-row >
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>3) DERECHO DE OPOSICIÓN A LA LIQUIDACIÓN DIRECTA</xsl:text>
									</fo:block>
								</fo:table-cell>
                            </fo:table-row>
                            <fo:table-row >
                                <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="40pt" padding-right="20pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>En caso de liquidación directa por la Compañía, el Asegurado o beneficiario puede oponerse a ella, solicitándole por escrito que designe un Liquidador de Seguros, dentro del plazo de cinco días hábiles contados desde la notificación de la comunicación de la Compañía. La Compañía deberá designar al Liquidador en el plazo de dos días hábiles contados desde dicha oposición.</xsl:text>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
                            <fo:table-row >
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>4) INFORMACIÓN AL ASEGURADO DE GESTIONES A REALIZAR Y PETICIÓN DE ANTECEDENTES</xsl:text>
									</fo:block>
								</fo:table-cell>
                            </fo:table-row>
                            <fo:table-row >
                                <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="40pt" padding-right="20pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>El liquidador o la Compañía, deberá informar al Asegurado, por escrito, en forma suficiente y oportuna, al correo electrónico (informado en la denuncia del siniestro) o por carta certificada (al domicilio señalado en la denuncia de siniestro), de las gestiones que le corresponde realizar, solicitando de una sola vez, cuando las circunstancias  lo permitan, todos los antecedentes que requiere para liquidar el siniestro.</xsl:text>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
                            <fo:table-row >
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>5) PRE-INFORME DE LIQUIDACIÓN</xsl:text>
									</fo:block>
								</fo:table-cell>
                            </fo:table-row>
                            <fo:table-row >
                                <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="40pt" padding-right="20pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>En aquellos siniestros en que surgieren problemas y diferencias de criterios sobre sus causas, evaluación del riesgo o extensión de la cobertura, podrá el Liquidador, actuando de oficio o a petición del Asegurado, emitir un pre-informe de liquidación sobre la cobertura del siniestro y el monto de los daños producidos, el que deberá ponerse en conocimiento de los interesados.  El Asegurado o la Compañía podrán hacer observaciones por escrito al pre-informe dentro del plazo de cinco días hábiles desde su conocimiento.</xsl:text>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
                            <fo:table-row >
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>6) PLAZO DE LIQUIDACIÓN</xsl:text>
									</fo:block>
								</fo:table-cell>
                            </fo:table-row>
                            <fo:table-row >
                                <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="40pt" padding-right="20pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<fo:inline text-decoration="underline">Dentro del más breve plazo,</fo:inline><xsl:text> no pudiendo exceder de </xsl:text><fo:inline text-decoration="underline">45 días</fo:inline><xsl:text> corridos desde la fecha de denuncio,  a excepción de;</xsl:text>
                                    </fo:block>
                                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                        <xsl:text>a) Siniestros que correspondan a seguros individuales sobre riesgos del Primer Grupo cuya prima anual sea superior a 100 UF: </xsl:text><fo:inline text-decoration="underline">90 días</fo:inline><xsl:text> corridos desde fecha denuncio;</xsl:text>
									</fo:block>
                                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                        <xsl:text>b) Siniestros marítimos que afecten a los cascos o en caso de Avería Gruesa:  </xsl:text><fo:inline text-decoration="underline">180 días</fo:inline><xsl:text> corridos desde fecha denuncio;</xsl:text>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
                            <fo:table-row >
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>7) PRÓRROGA DEL PLAZO DE LIQUIDACIÓN</xsl:text>
									</fo:block>
								</fo:table-cell>
                            </fo:table-row>
                            <fo:table-row keep-with-next="always">
                                <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="40pt" padding-right="20pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Los plazos antes señalados podrán excepcionalmente siempre que las circunstancias lo ameriten, prorrogarse, sucesivamente por iguales períodos, informando los motivos que la fundamenten e indicando las gestiones concretas y específicas que se realizarán, lo que deberá comunicarse al Asegurado y a la Superintendencia, pudiendo esta última dejar sin efecto la ampliación, en casos calificados, y fijar un plazo para entrega del Informe de Liquidación. No podrá ser motivo de prórroga la solicitud de entrega de nuevos antecedentes cuyo requerimiento pudo preverse con anterioridad, salvo que se indiquen las razones que justifiquen la falta de requerimiento, ni podrán prorrogarse los siniestros en que no haya existido gestión alguna del liquidador, registrado o directo.</xsl:text>
                                    </fo:block>
								</fo:table-cell>
							</fo:table-row>
                            <fo:table-row >
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>8) INFORME FINAL DE LIQUIDACIÓN</xsl:text>
									</fo:block>
								</fo:table-cell>
                            </fo:table-row>
                            <fo:table-row keep-with-next="always">
                                <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="40pt" padding-right="20pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>El informe final de liquidación deberá remitirse al Asegurado y simultáneamente al Asegurador, cuando corresponda, y deberá contener necesariamente la transcripción íntegra de los artículos 26 al 27 el Reglamento de Auxiliares del Comercio de Seguros (D.S. de Hacienda Nº1.055, de 2012, Diario Oficial de 29 de diciembre de 2012).</xsl:text>
                                    </fo:block>
								</fo:table-cell>
							</fo:table-row>
                            <fo:table-row >
								<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>9) IMPUGNACIÓN INFORME DE LIQUIDACIÓN</xsl:text>
									</fo:block>
								</fo:table-cell>
                            </fo:table-row>
                            <fo:table-row >
                                <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="40pt" padding-right="20pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Recibido el Informe de Liquidación, la Compañía y el Asegurado dispondrán de un plazo de diez días hábiles para impugnarla.  En caso de liquidación directa por la Compañía, este derecho sólo lo tendrá el Asegurado. </xsl:text>
                                    </fo:block>
                                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
										<xsl:text>Impugnado el informe, el Liquidador o la compañía dispondrá de un plazo de seis (6) días hábiles para responder la impugnación.</xsl:text>
                                    </fo:block>
								</fo:table-cell>
							</fo:table-row>
                        </fo:table-body>
                    </fo:table>
				</fo:block>
    </xsl:template>
<!-- FIN - Procedimiento de Liquidación de Siniestros -->  
<!-- INICIO - Hoja Resumen -->
    <xsl:template name="temp_hoja_resumen">
                <fo:block padding-before="105pt">
					<fo:table table-layout="fixed" width="50%" >
						<fo:table-column column-width="proportional-column-width(8)" />
						<fo:table-column column-width="proportional-column-width(39)" />
						<fo:table-column column-width="proportional-column-width(38)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="white" font-size="9.0pt" font-weight="bold">
									DATOS DEL CONTRATANTE	
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>													
				</fo:block>				
				<fo:block span="none" padding-before="20pt" font-family="Helvetica">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(7)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-column column-width="proportional-column-width(63)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-body>
							<fo:table-row height = "14pt">
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									Nombre del Cliente
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="responsablePago/nombres"/>
                                    <xsl:text> </xsl:text><xsl:value-of disable-output-escaping="no" select="responsablePago/apellidoPaterno"/>
                                    <xsl:text> </xsl:text><xsl:value-of disable-output-escaping="no" select="responsablePago/apellidoMaterno"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(7)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-column column-width="proportional-column-width(63)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-body>
							<fo:table-row height="15pt">
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									Rut
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="responsablePago/rut"/>
                                    <xsl:text>-</xsl:text><xsl:value-of disable-output-escaping="no" select="responsablePago/digitoVerificador"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(22)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-column column-width="proportional-column-width(50)" />
						<fo:table-column column-width="proportional-column-width(13)" />
						<fo:table-body>
							<fo:table-row height="13pt">
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									Producto / Plan
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="Cotizacion/descripcionProducto"/> / 
										<xsl:value-of disable-output-escaping="no" select="tarifa/descripcion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
										
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(22)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-column column-width="proportional-column-width(50)" />
						<fo:table-column column-width="proportional-column-width(13)" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									Póliza / Propuesta
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
											<fo:block  text-align="left" font-size="9.0pt">
												Propuesta N° 
												<xsl:value-of select="Cotizacion/numeroPropuesta"/>
											</fo:block>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt" padding-before="2pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
										
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
                </fo:block>
				<fo:block span="none" padding-before="5pt">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(7)" />
						<fo:table-column column-width="proportional-column-width(30)" />
						<fo:table-column column-width="proportional-column-width(48)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-body>
							<fo:table-row height="11pt">
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									Materia Asegurada
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>					
				</fo:block>
                <fo:block span="none" padding-before="2pt">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(22)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-column column-width="proportional-column-width(50)" />
						<fo:table-column column-width="proportional-column-width(13)" />
						<fo:table-body>
							<fo:table-row height="14pt">
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									Año
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/anoFabricacionVehiculo"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
										
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(22)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-column column-width="proportional-column-width(50)" />
						<fo:table-column column-width="proportional-column-width(13)" />
						<fo:table-body>
							<fo:table-row height="15pt">
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									Marca
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionMarcaVehiculo"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
										
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(22)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-column column-width="proportional-column-width(50)" />
						<fo:table-column column-width="proportional-column-width(13)" />
						<fo:table-body>
							<fo:table-row height="13pt">
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									Modelo
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionModeloVehiculo"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
										
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(22)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-column column-width="proportional-column-width(50)" />
						<fo:table-column column-width="proportional-column-width(13)" />
						<fo:table-body>
							<fo:table-row height="15pt">
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									Patente
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/patenteVehiculo"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
										
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(22)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-column column-width="proportional-column-width(50)" />
						<fo:table-column column-width="proportional-column-width(13)" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="9.0pt">
									Número de motor
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/numeroMotorVehiculo"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
										
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block padding-before="23pt">
					<fo:table table-layout="fixed" width="50%" >
						<fo:table-column column-width="proportional-column-width(8)" />
						<fo:table-column column-width="proportional-column-width(39)" />
						<fo:table-column column-width="proportional-column-width(38)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="white" font-size="9.0pt" font-weight="bold">
									PRODUCTO CONTRATADO	
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>													
				</fo:block>
				<fo:block padding-before="5pt">
					<fo:table table-layout="fixed" width="50%" >
						<fo:table-column column-width="proportional-column-width(7.5)" />
						<fo:table-column column-width="proportional-column-width(39.5)" />
						<fo:table-column column-width="proportional-column-width(38)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left" display-align="left" color="black">
									<fo:block></fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#009A3E" font-size="8.0pt" font-weight="bold">
									PERÍODO DE COBERTURA	
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
										
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>													
				</fo:block>
				<fo:block span="none" padding-before="3pt">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(70)" />
						<fo:table-column column-width="proportional-column-width(16)" />
						<fo:table-column column-width="proportional-column-width(8)" />
						<fo:table-column column-width="proportional-column-width(6)" />						
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="white" font-size="8.0pt" font-weight="bold">
									DESDE
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="white" font-size="8.0pt" font-weight="bold">
									HASTA
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="false" text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold">
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>				
                <fo:block span="none" padding-before="7pt">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(7)" />
						<fo:table-column column-width="proportional-column-width(56)" />
						<fo:table-column column-width="proportional-column-width(18)" />
						<fo:table-column column-width="proportional-column-width(15)" />
						<fo:table-column column-width="proportional-column-width(4)" />						
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#575757" font-size="9pt">
									Vigencia Seguro
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="false" text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold">
										<xsl:text>Las 12:01 del dia
										</xsl:text>
										<xsl:value-of disable-output-escaping="no" select="Cotizacion/fechaInicioVigencia"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="false" text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold">
										<xsl:text>Las 12:00 del día
										</xsl:text>
										<xsl:value-of disable-output-escaping="no" select="Cotizacion/fechaFinVigencia"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="left" display-align="left" padding-left="0pt">
									<fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>

                <fo:block padding-before="7pt">
                    <fo:table table-layout="fixed" width="50%" >
                        <fo:table-column column-width="proportional-column-width(7.5)" />
                        <fo:table-column column-width="proportional-column-width(39.5)" />
                        <fo:table-column column-width="proportional-column-width(38)" />
                        <fo:table-column column-width="proportional-column-width(15)" />
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell text-align="left" display-align="left" color="black">
                                    <fo:block></fo:block>
                                </fo:table-cell>
                                <fo:table-cell text-align="left" display-align="left" padding-left="0pt">
                                    <fo:block white-space-collapse="true" text-align="left" color="#009A3E" font-size="8.0pt" font-weight="bold">
                                    COBERTURAS	
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell text-align="left" display-align="left" padding-left="0pt">
                                    <fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell text-align="left" display-align="left" padding-left="0pt">
                                    <fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
                                        
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>													
                </fo:block>
                <fo:block padding-before="3pt">
                        <fo:table table-layout="auto" width="90%">
                            <fo:table-column column-width="proportional-column-width(5)"/>
                            <fo:table-column column-width="proportional-column-width(35)"/>
                            <fo:table-column column-width="proportional-column-width(18)"/>
                            <fo:table-column column-width="proportional-column-width(15)"/>
                            <fo:table-column column-width="proportional-column-width(11)"/>
                            <fo:table-column column-width="proportional-column-width(5)"/>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell text-align="start" display-align="before" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="6.6pt" font-weight="bold">
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="6.6pt" font-weight="bold">
                                            <xsl:text>CONCEPTO</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>                                    
                                    <fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="6.6pt" font-weight="bold">
                                            <xsl:text>MONTO</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="6.6pt" font-weight="bold">
                                            <xsl:text>REGISTRO EN LA S.V.S</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="6.6pt" font-weight="bold">
                                            <xsl:text>DEDUCIBLE UF</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="6.6pt" font-weight="bold">
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
            
                            <xsl:if test="tablaCoberturasProductos/cobertura">
                                <xsl:for-each select="tablaCoberturasProductos/cobertura">
                                <fo:table-row>
                                    <fo:table-cell text-align="start" display-align="before" padding-left="8pt">
                                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="6.6pt" font-weight="bold">
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="6.6pt">
                                                        <xsl:value-of disable-output-escaping="no" select="texto"/>
                                            </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="6.6pt">
                                                        <xsl:value-of disable-output-escaping="no" select="monto"/>
                                            </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="6.6pt">
                                                        <xsl:value-of disable-output-escaping="no" select="codigoSVS"/>
                                            </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="6.6pt">
                                                        <xsl:value-of disable-output-escaping="no" select="deducible"/>
                                            </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" padding-left="8pt">
                                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="6.6pt" font-weight="bold">
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                </xsl:for-each>
                            </xsl:if>
                            <xsl:if test="not(tablaCoberturasProductos/cobertura)">
                                <xsl:variable name="count" select="'23'"/> 
                                <xsl:for-each select="(//*)[position()&lt;=$count]"> 
                                    <fo:table-row>
                                        <fo:table-cell text-align="start" display-align="before" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="6.6pt" font-weight="bold">
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="6.6pt">
                                                            &#160;
                                                </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="6.6pt">
                                                            &#160;
                                                </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="6.6pt">
                                                            &#160;
                                                </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="6.6pt">
                                                            &#160;
                                                </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="start" display-align="before" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="6.6pt" font-weight="bold">
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </xsl:for-each>
                            </xsl:if>
                            </fo:table-body>
                        </fo:table>
                </fo:block>
                
                <fo:block padding-before="12pt">
                    <fo:table table-layout="fixed" width="50%" >
                        <fo:table-column column-width="proportional-column-width(8)" />
                        <fo:table-column column-width="proportional-column-width(79)" />
                        <fo:table-column column-width="proportional-column-width(8)" />
                        <fo:table-column column-width="proportional-column-width(5)" />
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell text-align="left" display-align="left" color="black">
                                    <fo:block></fo:block>
                                </fo:table-cell>
                                <fo:table-cell text-align="left" display-align="left" padding-left="0pt">
                                    <fo:block white-space-collapse="true" text-align="left" color="white" font-size="9.0pt" font-weight="bold">
                                    PROCEDIMIENTO EN CASO DE SINIESTRO (Por favor corte y guarde en sus documentos)	
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell text-align="left" display-align="left" padding-left="0pt">
                                    <fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell text-align="left" display-align="left" padding-left="0pt">
                                    <fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold">
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>													
                </fo:block>
                
                <fo:block padding-before="3pt">
                    <fo:table table-layout="fixed" width="100%">
                        <fo:table-column column-width="proportional-column-width(7)" />
                        <fo:table-column column-width="proportional-column-width(12)" />
                        <fo:table-column column-width="proportional-column-width(53)" />
                        <fo:table-column column-width="proportional-column-width(13)" />
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell text-align="left" display-align="left" color="black">
                                    <fo:block></fo:block>
                                </fo:table-cell>
                                <fo:table-cell text-align="left" display-align="left" padding-left="0pt">
                                    <fo:block white-space-collapse="true" text-align="left" color="#575755" font-size="8.0pt">
                                    Póliza / Propuesta:
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell text-align="left" display-align="left" padding-left="0pt">
                                    <fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="8.0pt" font-weight="bold">
                                            <fo:block  text-align="left" font-size="8.0pt">
                                                Propuesta N° 
                                                <xsl:value-of select="Cotizacion/numeroPropuesta"/>
                                            </fo:block>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell text-align="left" display-align="left" padding-left="0pt" padding-before="2pt">
                                    <fo:block white-space-collapse="true" text-align="left" color="#0360A2" font-size="9.0pt" font-weight="bold" text-decoration="underline">
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>												
                </fo:block>
                
                <fo:block padding-before="6pt">
                    <fo:table table-layout="fixed" width="100%" >
                        <fo:table-column column-width="proportional-column-width(5)" />
                        <fo:table-column column-width="proportional-column-width(95)" />
                        <fo:table-body>
                            <fo:table-row>					
                                <fo:table-cell text-align="left" display-align="left" padding-left="0pt">
                                    <fo:block></fo:block>
                                </fo:table-cell>
                                <fo:table-cell text-align="justify" display-align="left" color="black">
                                    <fo:block white-space-collapse="false" text-align="left" color="white" font-size="6.5pt" >
                La denuncia o constancia a Carabineros debe ser
                inmediata, en la comisaría más cercana al lugar del
                accidente.
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>													
                </fo:block>
                
                <fo:block padding-before="2pt">
                    <fo:table table-layout="fixed" width="100%" >
                        <fo:table-column column-width="proportional-column-width(5)" />
                        <fo:table-column column-width="proportional-column-width(95)" />
                        <fo:table-body>
                            <fo:table-row>					
                                <fo:table-cell text-align="left" display-align="left" padding-left="0pt">
                                    <fo:block></fo:block>
                                </fo:table-cell>
                                <fo:table-cell text-align="justify" display-align="left" color="black">
                                    <fo:block white-space-collapse="false" text-align="left" color="white" font-size="6.5pt" >
                Contactarse con el Call Center de la compañía de seguros " BCI
                Seguros Generales S.A. " al 600 6000 292 o ingrese la informa-
                ción de la denuncia del siniestro en la página web bciseguros.cl,
                en un plazo máximo de 5 días por daños al vehículo y en forma
                inmediata por Robo. 
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>													
                </fo:block>
                
                <fo:block padding-before="-3pt">
                    <fo:table table-layout="fixed" width="100%" >
                        <fo:table-column column-width="proportional-column-width(5)" />
                        <fo:table-column column-width="proportional-column-width(95)" />
                        <fo:table-body>
                            <fo:table-row>					
                                <fo:table-cell text-align="left" display-align="left" padding-left="0pt">
                                    <fo:block></fo:block>
                                </fo:table-cell>
                                <fo:table-cell text-align="justify" display-align="left" color="black">
                                    <fo:block white-space-collapse="false" text-align="left" color="white" font-size="6.5pt" >
                Si el denuncio se realiza a través de Leasing, se debe considerar que el
                plazo máximo para presentar los formularios de la denuncia en la
                Compañía de Seguros es de 10 días, por daños al vehículo y en forma
                unmediata por Robo.
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>													
                </fo:block>
                
                <fo:block padding-before="23pt">
                    <fo:table table-layout="fixed" width="100%" >
                        <fo:table-column column-width="proportional-column-width(2)" />
                        <fo:table-column column-width="proportional-column-width(98)" />
                        <fo:table-body>
                            <fo:table-row>					
                                <fo:table-cell text-align="left" display-align="left" padding-left="0pt">
                                    <fo:block></fo:block>
                                </fo:table-cell>
                                <fo:table-cell text-align="justify" display-align="left" color="black">
                                    <fo:block white-space-collapse="false" text-align="left" color="#575757" font-size="6.5pt" >
                *Si el vehículo está pendiente de inspección, este sólo se encontrará cubierto con el deducible provisorio.
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>													
                </fo:block>
            
                
                <fo:block padding-before="290pt">
                </fo:block>
	</xsl:template>
<!-- FIN - Hoja Resumen -->
<!-- INICIO - USO ESPECIFICO -->
	<xsl:template name="temp_tituloUsoEspecifico">
			<fo:block span="none">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
								<fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
									<xsl:text>USO ESPECIFICO</xsl:text>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
    </xsl:template>
    <xsl:template name="temp_datosUsoEspecifico"> 
    <fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(11)"/>
			<fo:table-column column-width="proportional-column-width(39)"/>
			<fo:table-column column-width="proportional-column-width(20)"/>
			<fo:table-column column-width="proportional-column-width(20)"/>
			<fo:table-body>      
            <fo:table-row>
                    <fo:table-cell text-align="start" display-align="before">
                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
                            <xsl:value-of disable-output-escaping="no" select="x"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
                        <fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text>Particular</xsl:text>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
                        <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text>SI</xsl:text>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="start" display-align="before">
                        <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text></xsl:text>
                        </fo:block>
                    </fo:table-cell>
             </fo:table-row>
             <fo:table-row>       
                    <fo:table-cell text-align="start" display-align="before">
                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
                            <xsl:value-of disable-output-escaping="no" select="x"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
                        <fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text>Taxi basico</xsl:text>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
                        <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text>NO</xsl:text>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="start" display-align="before">
                        <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text></xsl:text>
                        </fo:block>
                    </fo:table-cell>
               </fo:table-row>
               <fo:table-row>     
                    <fo:table-cell text-align="start" display-align="before">
                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
                            <xsl:value-of disable-output-escaping="no" select="x"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
                        <fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text>Taxi colectivo</xsl:text>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
                        <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text>NO</xsl:text>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="start" display-align="before">
                        <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text></xsl:text>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row>    
                    <fo:table-cell text-align="start" display-align="before">
                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
                            <xsl:value-of disable-output-escaping="no" select="x"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
                        <fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text>Taxi ejecutivo</xsl:text>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
                        <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text>NO</xsl:text>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="start" display-align="before">
                        <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text></xsl:text>
                        </fo:block>
                    </fo:table-cell>  
                </fo:table-row>
                <fo:table-row>    
                    <fo:table-cell text-align="start" display-align="before">
                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
                            <xsl:value-of disable-output-escaping="no" select="x"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
                        <fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text>Transporte pasajeros</xsl:text>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
                        <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text>NO</xsl:text>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="start" display-align="before">
                        <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text></xsl:text>
                        </fo:block>
                    </fo:table-cell> 
                </fo:table-row>
                <fo:table-row>    
                    <fo:table-cell text-align="start" display-align="before">
                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
                            <xsl:value-of disable-output-escaping="no" select="x"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
                        <fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text>Transporte escolar</xsl:text>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
                        <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text>NO</xsl:text>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="start" display-align="before">
                        <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text></xsl:text>
                        </fo:block>
                    </fo:table-cell>
                 </fo:table-row>
                 <fo:table-row>   
                    <fo:table-cell text-align="start" display-align="before">
                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
                            <xsl:value-of disable-output-escaping="no" select="x"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
                        <fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text>Transporte materiales explosivos, corrosivos o combustibles</xsl:text>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
                        <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text>NO</xsl:text>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="start" display-align="before">
                        <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text></xsl:text>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row>    
                    <fo:table-cell text-align="start" display-align="before">
                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
                            <xsl:value-of disable-output-escaping="no" select="x"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
                        <fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text>Vehiculo de arriendo o rent a car</xsl:text>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
                        <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text>NO</xsl:text>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="start" display-align="before">
                        <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text></xsl:text>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row>    
                    <fo:table-cell text-align="start" display-align="before">
                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
                            <xsl:value-of disable-output-escaping="no" select="x"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
                        <fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text>Vehiculo de emergencia</xsl:text>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
                        <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text>NO</xsl:text>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="start" display-align="before">
                        <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text></xsl:text>
                        </fo:block>
                    </fo:table-cell>
                 </fo:table-row>
                 <fo:table-row>   
                    <fo:table-cell text-align="start" display-align="before">
                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
                            <xsl:value-of disable-output-escaping="no" select="x"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
                        <fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text>Otros</xsl:text>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
                        <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text>NO</xsl:text>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="start" display-align="before">
                        <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                            <xsl:text></xsl:text>
                        </fo:block>
                    </fo:table-cell>                                                                    
                </fo:table-row>
            </fo:table-body>
            </fo:table>
    </fo:block>
    </xsl:template> 
<!-- FIN - USO ESPECIFICO -->    
</xsl:stylesheet>
