<?xml version="1.0" encoding="ISO-8859-1"?>

<!DOCTYPE xml [<!ENTITY copy "&#169;"> <!ENTITY trade "&#8482;"> <!ENTITY deg "&#x00b0;"> <!ENTITY gt "&#62;"> <!ENTITY sup2 "&#x00b2;"> <!ENTITY frac14 "&#x00bc;"> <!ENTITY quot "&#34;"> <!ENTITY frac12 "&#x00bd;"> <!ENTITY euro "&#x20ac;"> <!ENTITY Omega "&#937;"> ]> <!-- Document generated with XSLfast v2.0 alpha -->
	
<xsl:stylesheet xmlns:fox="http://xml.apache.org/fop/extensions" xmlns:print="http://www.jcatalog.com/com.jcatalog.output.xslextensions.print.PrintElementFactory" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:saxon="http://icl.com/saxon" extension-element-prefixes="saxon print" >
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
	
	<fo:block padding-before="2pt">
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
	
	<fo:block padding-before="2pt">
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

	<fo:block padding-before="2pt">
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
							<xsl:call-template name="temp_tituloConductorHabitual"/>
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
						<fo:block>
							<xsl:call-template name="temp_datosConductorHabitual" />
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

	<fo:block padding-before="2pt">
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

	<fo:block padding-before="2pt">
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

	<fo:block padding-before="2pt">
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
	
	<fo:block padding-before="2pt">
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
	
	<fo:block padding-before="2pt">
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
	 
	<fo:block padding-before="2pt">
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
	
	<fo:block padding-before="2pt">
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
	 
	<fo:block padding-before="2pt">
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
							<xsl:call-template name="temp_tituloCondiciones"/>
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
							<xsl:call-template name="temp_datosCondiciones"/>
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
							<xsl:call-template name="temp_tituloInformacion"/>
							<xsl:call-template name="temp_datosInformacion"/>
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
	
	
	<xsl:if test="( tipoVigencia = 'T' )"> 
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
							<xsl:call-template name="temp_tituloTerminoCorto"/>
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
									<xsl:call-template name="temp_terminoCorto"/>
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
							<xsl:call-template name="temp_tituloCondicionRegalo"/>
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
									<xsl:call-template name="temp_condicionRegalo"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
		</fo:block>	
	</xsl:if>
	
	
	
						

							<fo:block id="last-page"/> <!-- Para idenrificar la ultima pagina -->
							
						</fo:block>
					</fo:flow>
	
				</fo:page-sequence>
				
				
	

		</fo:root>
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
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/BciSeguros_vertical.jpg')</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>						
						
						<fo:table-cell display-align="before">
							<fo:block color="#000000" font-size="5pt" text-align="center" font-weight="bold">
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell display-align="before">
							<fo:block color="#000000" font-size="20pt" text-align="right" font-weight="bold">
									<xsl:apply-templates select="codigobarras-39" /> 
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell>
							<fo:block text-align="right">
								<fo:external-graphic  scaling="uniform" height="58pt" width="174px">
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/LOGOBCI2.gif')</xsl:attribute>
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
	</xsl:template>
	<xsl:template name="temp_datos_ejecutivo">
		<fo:block span="none">			
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(10)"/>
					<fo:table-column column-width="proportional-column-width(90)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell display-align="before">
								<fo:block color="#006666" font-size="11.0pt">Sucursal</fo:block>
							</fo:table-cell>
							<fo:table-cell display-align="before">
								<fo:block color="#006666" font-size="11.0pt">
									<xsl:value-of disable-output-escaping="no" select="nombreSucursal"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell display-align="before" >
								<fo:block color="#006666" font-size="11.0pt">Ejecutivo</fo:block>
							</fo:table-cell>
							<fo:table-cell display-align="before">
								<fo:block color="#006666" font-size="11.0pt">
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
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#000000"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell padding="2.0pt" text-align="start" border-style="solid" display-align="before" border-width="1.0pt" border-color="#000000" background-color="#336699" padding-left="5pt">
						<fo:block white-space-collapse="true"  text-align="center" color="#FFFFFF" font-size="13.0pt" font-weight="bold">
							<xsl:text>PROPUESTA DE SEGURO Nro </xsl:text><xsl:value-of disable-output-escaping="no" select="nroPropuesta"/> 
							<xsl:if test="( codigoProducto = 'BCIASG' )"> 						
									<xsl:text> - PRODUCTO Vehiculos Motorizados </xsl:text>
							</xsl:if>
							<xsl:if test="( codigoProducto = 'BCIACOL' )"> 						
									<xsl:text> - PRODUCTO Vehiculos Motorizados Colaboradores </xsl:text>
							</xsl:if>
							<xsl:if test="( codigoProducto = 'BCIACAM' )"> 						
									<xsl:text> - PRODUCTO Vehiculos Motorizados</xsl:text>
							</xsl:if>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_tituloContratante">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
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
							<xsl:text>Apellido Paterno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:value-of disable-output-escaping="no" select="APContratante"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Materno</xsl:text>
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
							<xsl:text>Dirección Postal</xsl:text>
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
	
	<xsl:template name="temp_tituloAFavor">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>A FAVOR</xsl:text>
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
							<xsl:value-of disable-output-escaping="no" select="rutAFavor"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Nombres</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:value-of disable-output-escaping="no" select="nombresAFavor"/>
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
							<xsl:value-of disable-output-escaping="no" select="APAFavor"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Apellido Materno</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:value-of disable-output-escaping="no" select="AMAFavor"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Dirección Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:value-of disable-output-escaping="no" select="direccionComercialAFavor"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Ciudad Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:value-of disable-output-escaping="no" select="ciudadComercialAFavor"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Comuna Comercial</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:value-of disable-output-escaping="no" select="comunaComercialAFavor"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Dirección Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:value-of disable-output-escaping="no" select="direccionPostalAFavor"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Ciudad Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:value-of disable-output-escaping="no" select="ciudadPostalAFavor"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Comuna Postal</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:value-of disable-output-escaping="no" select="comunaPostalAFavor"/>
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
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
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
				<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Tipo Vehiculo</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="tipoVehiculo"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Marca Vehiculo</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="marcaVehiculo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
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
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Color</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="colorVehiculo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>N° Motor</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
								<xsl:value-of disable-output-escaping="no" select="nroMotorVehiculo"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>N° Chasis</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
								<xsl:value-of disable-output-escaping="no" select="nroChasisVehiculo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Patente</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
								<xsl:value-of disable-output-escaping="no" select="patenteVehiculo"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Año de Fabricación</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
								<xsl:value-of disable-output-escaping="no" select="anoVehiculo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Uso Vehículo</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
								<xsl:value-of disable-output-escaping="no" select="usoVehiculo"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Valor Comercial</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
								<xsl:value-of disable-output-escaping="no" select="valorComercialVehiculo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
									<xsl:text>Región Conductor Habitual</xsl:text>
								</fo:block>
							</fo:table-cell>						
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
									<xsl:value-of disable-output-escaping="no" select="regionConductorHabitual"/>
								</fo:block>
							</fo:table-cell>
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
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Inspeccion</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
								<xsl:value-of disable-output-escaping="no" select="inspeccion"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					
					<xsl:if test="( inspeccion = 'SI' and centroInspeccion != '')"> 
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
										<xsl:text>Centro de Inspeccion</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
										<xsl:value-of disable-output-escaping="no" select="centroInspeccion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
										<xsl:text>Direccion Centro de Inspeccion</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
										<xsl:value-of disable-output-escaping="no" select="direccionInspeccion"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
										<xsl:text>Ciudad Inspeccion</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
										<xsl:value-of disable-output-escaping="no" select="ciudadInspeccion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
										<xsl:text>Telefono Centro de Inspeccion</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
										<xsl:value-of disable-output-escaping="no" select="telefonoInspeccion"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
										<xsl:text>Horario de Atencion</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
										<xsl:value-of disable-output-escaping="no" select="horarioInspeccion"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
					</xsl:if>			
							
					<xsl:if test="( inspeccion = 'NO' and nroFactura != '' )">  
					
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
										<xsl:text>Nro de Factura</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
										<xsl:value-of disable-output-escaping="no" select="nroFactura"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
										<xsl:text>Fecha de Factura</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
										<xsl:value-of disable-output-escaping="no" select="fechaFactura"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>			
					</xsl:if>
					
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
										<xsl:text>Nombre Contacto Cliente</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
										<xsl:value-of disable-output-escaping="no" select="nombreContacto"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
										<xsl:text>Telefono de Contacto Cliente</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt" >
										<xsl:value-of disable-output-escaping="no" select="telefonoContacto"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>			

				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
		<xsl:template name="temp_tituloConductorHabitual">
			<fo:block span="none">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
								<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
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
								<xsl:value-of disable-output-escaping="no" select="rutConductorHabitual"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Nombres</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="nombresConductorHabitual"/>
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
								<xsl:value-of disable-output-escaping="no" select="APConductorHabitual"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Apellido Materno</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="AMConductorHabitual"/>
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
								<xsl:value-of disable-output-escaping="no" select="nacimientoConductorHabitual"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Estado Civil</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="estadoCivilConductorHabitual"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Sexo</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="sexoConductorHabitual"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Dirección Postal</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="direccionPostalConductorHabitual"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Ciudad Postal</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="ciudadPostalConductorHabitual"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Comuna Postal</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="comunaPostalConductorHabitual"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:text>Teléfono</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="telefonoConductorHabitual"/>
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
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>PRIMAS</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_datosPrimas">
		<fo:block span="none">
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
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
			<xsl:for-each select="coberturaDetalle/cobertura">
				<fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
								<xsl:value-of disable-output-escaping="no" select="nombreCobertura"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</xsl:for-each>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>


	<xsl:template name="temp_tituloDeducibles">
		<fo:block span="none">
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
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
			   <fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:value-of disable-output-escaping="no" select="deducible"/>
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
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
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
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
			   <fo:table-row>
					<fo:table-cell text-align="start" display-align="before">
						<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
							<xsl:text>Desde 12:01 del día </xsl:text><xsl:value-of disable-output-escaping="no" select="fechaPropuesta"/><xsl:text> Hasta las 12:00 del día </xsl:text><xsl:value-of disable-output-escaping="no" select="fechaFinPropuesta"/>
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
		<fo:block span="none">
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
		<fo:block span="none">
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
								<xsl:value-of disable-output-escaping="no" select="fechaPropuesta"/>
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
		<fo:block span="none">
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
		<fo:block span="none">
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
								<xsl:text>Cant.Cuotas restantes :</xsl:text>
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
		<fo:block span="none">
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
		<fo:block span="none">
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
	
	
	
	
	

	
	<xsl:template name="temp_tituloCondiciones">
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
	
	
	
	<xsl:template name="temp_datosCondiciones">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
						<fo:block padding-before="0pt" font-size="11.0pt">SI EL VEHÍCULO REQUIERE INSPECCIÓN, EL CONTRATANTE DISPONE DE 10 DÍAS CORRIDOS PARA INSPECCIONAR EL VEHÍCULO. VENCIDO EL PLAZO SIN INSPECCIÓN, EXPIRARÁ AUTOMATICAMENTE LA VIGENCIA Y VALIDEZ DE LA PRESENTE PROPUESTA.</fo:block>
						<xsl:if test="(planesCobertura/plan/planElegido = 'SG42' or planesCobertura/plan/planElegido = 'SG43' or planesCobertura/plan/planElegido = 'SG44' or planesCobertura/plan/planElegido = 'SG45' or
									   planesCobertura/plan/planElegido = 'SG46' or planesCobertura/plan/planElegido = 'SG47' or planesCobertura/plan/planElegido = 'SG48')">
											<fo:block padding-before="0pt" font-size="11.0pt"  font-weight="bold">EXCLUSIONES</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">ESTE SEGURO NO CUBRE:</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">Vehículos con más de 15 años de antigüedad, Vehículos de 3 o menos ruedas, Vehículos de arriendo o rent a car, Vehículos de turismo, Vehículos de locomoción colectiva o taxis, vehículos del Cuerpo de Bomberos,</fo:block> 
											<fo:block padding-before="0pt" font-size="11.0pt">ambulancias y policiales, Vehículos de Escuela de Conductores, Vehículos sin placa única nacional, excepto Vehículos nuevos, Vehículos internados con franquicia aduanera y que no correspondan a versiones</fo:block> 
											<fo:block padding-before="0pt" font-size="11.0pt">vendidas en Chile por representantes de la marca debida mente autorizados. Vehículos hechizos., Vehículos que transporten material explosivo, corrosivo o combustible.</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">En el caso de Vehículos descapotables, se excluyen las coberturas de robo, hurto o uso no autorizado, robo de accesorios y cualquier daño a la capota, Para el adicional de Robo de accesorios y para el Robo</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">de partes y piezas, se excluyen expresamente (aún si se encuentran individualizados en inspección o póliza), equipos radiotransmisores, detectores de radar, celulares, parrillas, carpas, cordeles, tapas de</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">ruedas no apernadas y cualquier otro accesorio que no pertenezca adherido permanentemente al vehículo, Para radios desmontables: Se cubren las radios con panel desmontable, siempre y cuando, el denuncio</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">del siniestro, se entregue dicho panel a la Cía.,se excluyen pintados y/o adhesivos en general de logos de empresa y/o propagandas, Se consideran cubiertos los accesorios no desmontables  instalados  al</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">vehículo por el fabricante y/o por el distribuidor al momento de la primera venta del vehículo nuevo.</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">No serán cubiertos bajo el adicional de Robo de Accesorios, las radios y compact disc desmontables no fijados al  vehículo,  los televisores, los radares, los equipos de radio transmisión o de telefonía</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">celular, los porta-ski, porta-bicicleta, porta-láser y las  tapas  y  conos  de ruedas no apernadas, aún cuando ellos estén identificados en esta  póliza.</fo:block>          
											<!-- <fo:block padding-before="0pt" font-size="11.0pt">Para la emisión de la  presente  propuesta ha sido determinada la declaración formulada por el contratante, respecto de otros seguros contratados que hayan amparado al vehículo individualizado anteriormente</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">y a quien sea el conductor habitual de éste.</fo:block> -->
											<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold">INDEMNIZACIÓN CERO KILÓMETRO</fo:block>                                
											<fo:block padding-before="0pt" font-size="11.0pt">- Rige para vehículos que cumplan con las siguientes características a  la fecha de ocurrencia del siniestro:</fo:block>                          
										  	<fo:block padding-before="0pt" font-size="11.0pt">1. Tener menos de 12 meses de antigüedad contados desde la fecha  de facturación.</fo:block>                                              
										  	<fo:block padding-before="0pt" font-size="11.0pt">2. Ser primera venta.</fo:block>                                       
											<fo:block padding-before="0pt" font-size="11.0pt">- En caso de Pérdida Total o Robo del vehículo asegurado,  se indemnizará al asegurado en dinero o especie, a elección de la Compañía, el valor de un vehículo de la misma marca, modelo y versión cero</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">kilómetro, sin aplicar depreciación por uso.</fo:block>                  
										  	<fo:block padding-before="0pt" font-size="11.0pt">De no existir el mismo vehículo en plaza, la Compañía indemnizará en dinero o especie, un vehículo equivalente.</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold">RESPONSABILIDAD CIVIL</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">No obstante lo indicado en el detalle de coberturas rige límite único y combinado de UF500 en toda y  cada pérdida  para las coberturas de Responsabilidad Civil Daño Emergente, Responsabilidad Civil</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">Daño Moral y Responsabilidad Civil Lucro Cesante.</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold">CONDICIONES PARTICULARES</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">- Se cubre la Muerte Accidental (Plan A) o la  Incapacidad  Permanente Total (Plan B) única y exclusivamente al conductor del   vehículo asegurado, por un monto de UF100 por evento</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">- Se cubre los gastos médicos y hospitalarios, hasta UF20 por ocupante  del vehículo asegurado, con un límite de UF80. En caso que el asegurado tuviese  beneficios de alguna  institución de Salud </fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">Estatal o Privada y/o Bienestar, deberá hacer uso de ellos prioritariamente.</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">- En el caso de la situación prevista en la letra a) del artículo 7 de  las Condiciones Generales de la póliza, el límite máximo para  reparaciones fuera de la ciudad del domicilio registrado en la</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">presente póliza y sin autorización previa de la Compañía es de UF20.</fo:block>
										<!-- 	<fo:block padding-before="0pt" font-size="11.0pt">- En el caso de la situación prevista en la letra a) del artículo 7 de  las Condiciones Generales de la póliza, el límite máximo para  reparaciones fuera de la ciudad del domicilio registrado en la</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">presente póliza y sin autorización previa de la Compañía es de UF20.</fo:block> -->
											<xsl:if test="( conduccionExclusiva = 'SI' )">					
												<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold">CLÁUSULA CONDUCCIÓN EXCLUSIVA</fo:block>
												<fo:block padding-before="0pt" font-size="11.0pt">Rige un deducible obligatorio de  UF10 en toda y cada pérdida, el que se sumará a cualquier otro  deducible existente, en caso de siniestros donde el conductor del vehículo asegurado sea</fo:block>
												<fo:block padding-before="0pt" font-size="11.0pt">menor de 30 años.</fo:block>
											</xsl:if>
											<xsl:if test="( deducible = '3 UF' )">
												<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold">DEDUCIBLE INTELIGENTE</fo:block>
												<fo:block padding-before="0pt" font-size="11.0pt">-   El deducible establecido, no se aplicará cuando exista un tercero claramente identificado y definitivamente culpable.</fo:block>
												<fo:block padding-before="0pt" font-size="11.0pt">-   El tercero se entenderá claramente identificado cuando se conozca el Rut, nombre, la dirección y el teléfono del conductor, la patente, marca, y el color del vehículo del tercero</fo:block>
												<fo:block padding-before="0pt" font-size="11.0pt">-   El tercero se entenderá definitivamente culpable, para los efectos de aplicar el "Deducible Inteligente", solamente en los siguientes casos:</fo:block>
												<fo:block padding-before="0pt" font-size="11.0pt">-   Tercero se declara culpable</fo:block>
												<fo:block padding-before="0pt" font-size="11.0pt">-   El tercero no respeta letrero Pare o Ceda el Paso.</fo:block>
												<fo:block padding-before="0pt" font-size="11.0pt">-   El tercero choca por atrás.</fo:block>
												<fo:block padding-before="0pt" font-size="11.0pt">-   Es condición obligatoria, que la identificación del tercero, como las situaciones descritas en el punto anterior, queden claramente especificadas en el Parte Policial y en la</fo:block>
												<fo:block padding-before="0pt" font-size="11.0pt">    denuncia a la compañía.</fo:block>
												<fo:block padding-before="0pt" font-size="11.0pt">-   El deducible inteligente solo se aplica  a pólizas que sean contratadas con deducible voluntario de hasta UF5.</fo:block>
												<fo:block padding-before="0pt" font-size="11.0pt">CUANDO NO SE DEN ESTAS CONDICIONES, SE APLICARA EL DEDUCIBLE ESTIPULADO.</fo:block>
											</xsl:if>
											<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold">MANDATO:</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">El contratante acepta que la compañía renueva automáticamente, tácita y sucesivamente por periodos anuales a partir del vencimiento a la póliza que da origen la presente propuesta, salvo voluntad</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">contraria manifestada por escrito por el contratante, mediante carta certificada o fax dirigido a BCI Seguros Generales SA. o a BCl Corredores de Seguros SA., con 30 días de anticipación a la fecha</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">de término primitivo o de cualquiera de sus prorrogas, Asimismo, autoriza a BCI  Corredores de Seguros SA., para que suscriba todos los documentos que sean necesarios para la emisión de la póliza</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">de seguro, sus futuras renovaciones y eventuales modificaciones.</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">El Seguro ofrecido es intermediado por BCl corredores de Seguros S.A. y la compañía que cubre el riesgo es BCI Seguros Generales SA.</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">El proponente ha tomado conocimiento del derecho a decidir sobre la contratación de los seguros y a la libre elección de intermediario y compañía aseguradora.</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">Con la emisión de la presente propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La cobertura comenzará a regir únicamente a partir del momento en que esta propuesta sea</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">aceptada por el asegurador y se inicie la vigencia de la póliza. (Circular M°1.390 S.V.S.).</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">Para la emisión de la  presente  propuesta ha sido determinada la declaración formulada por el contratante, respecto de otros seguros contratados que hayan amparado al vehículo individualizado</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">anteriormente y a quien sea el conductor habitual de éste.</fo:block>
											<fo:block padding-before="0pt" font-size="11.0pt">Todas las menciones de esta  propuesta  formarán parte integrante de las Condiciones Particulares de la póliza.</fo:block>

						</xsl:if>
						<xsl:if test="(planesCobertura/plan/planElegido != 'SG42' and planesCobertura/plan/planElegido != 'SG43' and planesCobertura/plan/planElegido != 'SG44' and planesCobertura/plan/planElegido != 'SG45' and
								       planesCobertura/plan/planElegido != 'SG46' and planesCobertura/plan/planElegido != 'SG47' and planesCobertura/plan/planElegido != 'SG48')">
						
								<fo:block padding-before="0pt" font-size="11.0pt">ES REQUISITO UNA VEZ OCURRIDO UN SINIESTRO DEJAR CONSTANCIA INMEDIATA EN LA UNIDAD POLICIAL MÁS CERCANA Y DENUNCIAR ÉSTE A LA COMPAÑÍA DENTRO DE 10 DÍAS</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold">EXCLUSIONES</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">ESTE SEGURO NO CUBRE:</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">Vehículos con más de 15 años de antigüedad para Cobertura Daños Materiales, cobertura Pérdida Total y Responsabilidad Civil, Vehículos de 3 o menos ruedas. Vehículos de</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">arriendo o rent a car. Vehículos de turismo. Vehículos de locomoción colectiva o taxis. Vehículos del Cuerpo de Bomberos, ambulancias y policiales. Vehículos de Escuela de Conductores.</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">Vehículos sin placa única nacional, excepto Vehículos nuevos. Vehículos internados con franquicia aduanera y que no correspondan a versiones vendidas en Chile por representantes de la marca debida mente</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">autorizados. Vehículos hechizos. Vehículos que transporten material explosivo, corrosivo o combustible.  Vehículos con capota de lona u otro material no rígido. (Cobertura Pérdida Total y Responsabilidad Civil.)</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">Cobertura Daños Materiales:</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">En el caso de Vehículos descapotables, se excluyen las coberturas de  robo, hurto o uso no autorizado, robo de accesorios y cualquier daño a la capota.</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">Se consideran cubiertos los accesorios no desmontables  instalados  al vehículo por el fabricante y/o por el distribuidor al momento de la primera venta del vehículo nuevo.</fo:block>
								<!-- <fo:block padding-before="0pt" font-size="11.0pt">Para la emisión del presente certificado ha sido determinada la declaración formulada por el contratante, respecto de otros seguros contratados que hayan amparado al vehículo individualizado anteriormente y a</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt"> quien sea el conductor habitual de éste.</fo:block> -->
								<fo:block padding-before="0pt" font-size="11.0pt">Todas las menciones de este certificado formarán parte integra de las Condiciones Particulares de la póliza.</fo:block>
							<xsl:if test="( tipoVigencia != 'T' )"> 	
								<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold">MANDATO</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">El contratante acepta que la compañía renueva automáticamente, tácita y sucesivamente  por periodos iguales el seguro a que da origen esta propuesta, salvo voluntad contraria manifestada por escrito por el </fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">contratante, mediante carta certificada o fax dirigido a BCI Seguros Generales S.A. o a BCI Corredores de Seguros S.A., con 30 días de anticipación a la fecha de término primitivo o de cualquiera de sus</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">prorrogas. Asimismo, autoriza a BCI Corredores de Seguros S.A., para que suscriba todos los documentos que sean necesarios para la emisión  de la póliza de seguro, sus futuras renovaciones y </fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">eventuales modificaciones.</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">El Seguro ofrecido es intermediado por BCI corredores de Seguros S.A. y la compañía que cubre el riesgo es BCI Seguros Generales S.A.</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">El proponente ha tomado conocimiento del derecho a decidir sobre la contratación de los seguros y a la libre elección de intermediario y compañía aseguradora.</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">Con la emisión de la presente propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La cobertura comenzará a regir únicamente a partir del momento en que esta propuesta sea</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">aceptada por el asegurador y se inicie la vigencia de la póliza. (Circular Mº1.390 S.V.S.).</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">Para la emisión de la  presente  propuesta ha sido determinada la declaración formulada por el contratante, respecto de otros seguros contratados que hayan amparado al vehículo individualizado</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">anteriormente y a quien sea el conductor habitual de éste.</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">Todas las menciones de esta propuesta formarán parte integrante de las Condiciones Particulares de la póliza.</fo:block>	
							</xsl:if>
							<xsl:if test="( tipoVigencia = 'T' )"> 	
								<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold">MANDATO</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">El contratante acepta que la compañía renueva automáticamente, tácita y sucesivamente  por periodos anuales a partir del vencimiento a la póliza que da origen la presente propuesta, salvo voluntad contraria manifestada</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">por escrito por el contratante, mediante carta certificada o fax dirigido a BCI Seguros Generales S.A. o a BCI Corredores de Seguros S.A., con 30 días de anticipación a la fecha de término primitivo o de cualquiera de sus</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">prorrogas. Asimismo, autoriza a BCI Corredores de Seguros S.A., para que suscriba todos los documentos que sean necesarios para la emisión  de la póliza de seguro, sus futuras renovaciones y </fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">eventuales modificaciones.</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">El Seguro ofrecido es intermediado por BCI corredores de Seguros S.A. y la compañía que cubre el riesgo es BCI Seguros Generales S.A.</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">El proponente ha tomado conocimiento del derecho a decidir sobre la contratación de los seguros y a la libre elección de intermediario y compañía aseguradora.</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">Con la emisión de la presente propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La cobertura comenzará a regir únicamente a partir del momento en que esta propuesta sea</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">aceptada por el asegurador y se inicie la vigencia de la póliza. (Circular Mº1.390 S.V.S.).</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">Para la emisión de la  presente  propuesta ha sido determinada la declaración formulada por el contratante, respecto de otros seguros contratados que hayan amparado al vehículo individualizado</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">anteriormente y a quien sea el conductor habitual de éste.</fo:block>
								<fo:block padding-before="0pt" font-size="11.0pt">Todas las menciones de esta propuesta formarán parte integrante de las Condiciones Particulares de la póliza.</fo:block>	
							</xsl:if>
					</xsl:if>
					
					</fo:table-cell>
					
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
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
												: <xsl:text>BCI Seguros Generales S.A.</xsl:text>
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
										<fo:table-cell number-columns-spanned="4" display-align="center" text-align="justify" border-style="solid"  border-width="1.0pt" color="#006666" font-size="10pt" padding-left="5pt" padding-right="5pt" border-color="#000000" background-color="#f0f0f0">

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
										<fo:table-cell number-columns-spanned="3" padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
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
												: <xsl:text>BCI Seguros Generales S.A.</xsl:text>
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
				<xsl:if test="(planesCobertura/plan/planElegido != 'SG42' and planesCobertura/plan/planElegido != 'SG43' and planesCobertura/plan/planElegido != 'SG44' and planesCobertura/plan/planElegido != 'SG45' and
							   planesCobertura/plan/planElegido != 'SG46' and planesCobertura/plan/planElegido != 'SG47' and planesCobertura/plan/planElegido != 'SG48' and planesCobertura/plan/planElegido != 'SG49' and
							   planesCobertura/plan/planElegido != 'SG50' and planesCobertura/plan/planElegido != 'SG51' and planesCobertura/plan/planElegido != 'SG52' and planesCobertura/plan/planElegido != 'SG53')">  
					<fo:block padding-before="0pt" font-size="11.0pt">Bci Corredores de Seguros S.A., Rut: 78.951.950-1, en mi calidad de Corredor de Seguros y en cumplimiento a la	    </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">ley, informo que durante el año calendario anterior intermedié contratos de seguros con las siguientes       </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">compañías de seguros:                                                                                                           </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">En Seguros Generales, el 73,16% en Bci Seguros Generales S.A., el 11,94% con Compañía de Seguros                      </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Generales Cardif S.A., el 3,98% con Chilena Consolidada Seguros Generales S.A., el 3,52% con Royal and Sun            </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Alliance Seguros S.A., el 1,91% con Liberty Compañía de Seguros Generales S.A., el 1,46% con Aseguradora              </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Magallanes S.A., el 1,42% con Compañía de Seguros Generales Penta-Security S.A., el 1,03% con Cia. De                 </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Seguros Generales Consorcio Nacional de Seguros S.A. y otras 1,58%.  En Seguros de Vida, el 65,79% con Bci            </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Seguros Vida S.A., el 26,47% con Compañía de Seguros de Vida Cardif S.A., el 2,09 % con La Interamericana             </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Compañía de Seg de Vida S.A., el 1,47% con Bice Vida Compañía de Seguros S.A., el 1,22% con Chilena                   </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Consolidada Seguros de Vida S.A., el 1,14% con MetLife Chile Seguros de Vida S.A. y otras 1,82%.  En Renta            </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Vitalicia, el 33,70% con Principal Compañía de Seguros de Vida Chile S.A., el 29,31% con MetLife Chile Seguros        </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">de Vida S.A., el 9,51% con Compañía de Seg. de Vida Consorcio Nacional de Seguros S.A., el 7,74% con                  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Euroamérica Seguros de Vida S.A., el 6,05% con Penta Vida Compañía de Seguros de Vida S.A., el 4,80% con Bci          </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Seguros Vida S.A., el 4,11% con Chilena Consolidada Seguros de Vida S.A. y otras 4,78%.  Para responder del           </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">correcto y cabal cumplimiento de todas mis obligaciones emanadas de la actividad de Corredor de Seguros y en          </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">especial, de los perjuicios que pueda ocasionar a los asegurados que contraten seguros por mi intermedio, se ha       </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">emitido Póliza de Responsabilidad  Civil  N° 483036-9 en Bci Seguros Generales S.A. y Póliza de Garantía              </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">N°552592-6 en Bci Seguros Generales S.A.                                                                              </fo:block>
				</xsl:if>
				<xsl:if test="(planesCobertura/plan/planElegido = 'SG42' or planesCobertura/plan/planElegido = 'SG43' or planesCobertura/plan/planElegido = 'SG44' or planesCobertura/plan/planElegido = 'SG45' or
							   planesCobertura/plan/planElegido = 'SG46' or planesCobertura/plan/planElegido = 'SG47' or planesCobertura/plan/planElegido = 'SG48' or planesCobertura/plan/planElegido = 'SG49' or
							   planesCobertura/plan/planElegido = 'SG50' or planesCobertura/plan/planElegido = 'SG51' or planesCobertura/plan/planElegido = 'SG52' or planesCobertura/plan/planElegido = 'SG53')">
				
					<fo:block padding-before="0pt" font-size="11.0pt">BCI Corredores de Seguros S.A., Rut 78.951.950-1, en mi calidad de Corredor de seguros y en cumplimiento a la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">ley, informo que durante el año calendario anterior intermedié contratos de seguros con las siguientes     </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Compañías de Seguros.                                                                                                          </fo:block>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
					<fo:block padding-before="0pt" font-size="11.0pt">En Seguros Generales, el 76,37% en BCI Seguros Generales SA , el 11,50% con la Compañía de seguros       </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">generales Cardif  SA , el 3,62% con Royal Sunalliance Seguros SA, el 2,09% con Liberty Cia. de Seguros        </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Generales SA , el 1,70% con Aseguradora Magallanes SA , , el 1,52% con C.S.G Penta Security S.A ,        </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">el 1,42%  MAPFRE Seguros generales , el 1,16% con Consorcio Nacional  de seguros Generales S.A. y     </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">otras 0,61%. En Seguros de Vida,el 60,96% con BCI seguros de Vida S.A., el 29,37% con la Compañía de        </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">seguros de vida Cardif  S.A., el 3,86% con la Chilena Consolidada Seguros de Vida SA, el 2,53% en la      </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Interamericana Cía. de Seguros de Vida S.A., el 1,08% con Euroamerica Vida SA  y otras 2,19%. En Renta          </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Vitalicia, el 30,91% con MetLife Chile  Seguros de vida SA, 15,03% con Euroamerica Seg. de Vida SA,  el            </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">14,78% con ING  Seg. de Vida, el 10,35% con C.S.V Consorcio nacional de seguros S.A., el 8,85% con Principal      </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Cía. de seguros  de Vida Chile S.A.,  el 7,27% con Vida Corp Seguros de Vida S.A., el 5,08% con Bci seguros      </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Vida, y otras  7,73%.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Para responder del correcto y cabal cumplimiento de todas mis obligaciones emanadas de la actividad de    </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Corredor de seguros y en especial de los perjuicios que pueda ocasionar a los asegurados que contraten       </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">seguros por mi intermedio se ha emitido Póliza de Responsabilidad  Civil  N° 4245882 en Consorcio   </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Nacional de Seguros Generales y Póliza de Garantía N° 10005712 en Consorcio Nacional de Seguros Generales. </fo:block>
				</xsl:if>
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
	<xsl:template name="temp_tituloCondicionRegalo">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>CONDICIONES DEL REGALO</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	
	
	
	<xsl:template name="temp_condicionRegalo">
	<fo:block span="none">
		<fo:table table-layout="fixed" width="100%">
		<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
		<fo:table-body>
			<fo:table-row>
				<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
					<fo:block padding-before="0pt" font-size="11.0pt">- La promoción será válida solo para vehículos de uso particular, de acuerdo a como se establece en las bases de la campaña.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">- Para poder cobrar su regalo, usted deberá, con su número de póliza, llamar al teléfono 436 72 39 o enviar un email a extsdelpoz@bci.cl.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">- Se deja constancia que los regalos serán otorgados exclusivamente por cuenta y responsabilidad de la empresa Incentivos y Promociones Limitada.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">-	El regalo no es reembolsable, parcial ni totalmente, ni susceptible de cambio después de su entrega y cada participante tendrá derecho a un regalo por cada vehículo que asegure de acuerdo con esta promoción.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">-	Adicionalmente el regalo cuenta con la garantía del fabricante y del distribuidor del mismo, por lo que cualquier defecto deberá hacerse efectivo ante el fabricante o distribuidor oficial, sin que competa a BCI Seguros Generales S.A ni al intermediario BCI Corredores de Seguros S.A,  responsabilidad alguna en el funcionamiento o calidad del regalo entregado.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">- Caducará el derecho a obtener el regalo, en los siguientes casos:</fo:block>					
					<fo:block padding-before="0pt" text-align="start">
							<fo:table table-layout="fixed" width="50%">
							<fo:table-column column-width="proportional-column-width(5)"/>
							<fo:table-column column-width="proportional-column-width(95)"/>
								<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text></xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>- Si el participante no otorga las facilidades necesarias para su entrega, entendiéndose que se efectuarán sólo dos intentos de entrega al domicilio indicado por el participante.</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text></xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>- Si los datos proporcionados por el participante en la propuesta son falsos o inexactos.</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text></xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>- En cualquier caso caducará el derecho a obtener el regalo si éste no ha sido recibido ni exigido por el cliente hasta el cierre de la campaña.</xsl:text>
										</fo:block>
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
	
	<xsl:template name="temp_tituloTerminoCorto">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>TERMINOS CORTOS Y MANDATO ESPECIAL</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	
	<xsl:template name="temp_terminoCorto">
	<fo:block span="none">
	<fo:table table-layout="fixed" width="100%">
	<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
		<fo:table-body>
			<fo:table-row>
				<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
					<fo:block padding-before="0pt" font-size="11.0pt" font-weight="bold">Términos cortos:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Las partes contratantes convienen expresamente que para los efectos de esta póliza se entenderá que el asegurado le pone término unilateral al contrato de seguro en los siguientes casos:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt"></fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">1.- Terminación anticipada del seguro en virtud de lo señalado en el artículo 27 inciso primero de las Condiciones Generales de la POL 1 98 022.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">2.- Enajenación del vehículo asegurado.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">3.- Cierre de cuenta corriente.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">4.- Cierre de tarjeta de crédito.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">5.- Termino del mandato PAT o PAC.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">6.- Resolución de contrato por no pago de prima.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt"></fo:block>
					
					<xsl:if test="(planesCobertura/plan/planElegido != 'SG42' and planesCobertura/plan/planElegido != 'SG43' and planesCobertura/plan/planElegido != 'SG44' and planesCobertura/plan/planElegido != 'SG45' and
					planesCobertura/plan/planElegido != 'SG46' and planesCobertura/plan/planElegido != 'SG47' and planesCobertura/plan/planElegido != 'SG48')">
							<fo:block padding-before="20pt" font-size="11.0pt">En caso de ocurrencia de cualesquiera de los casos señalados precedentemente, la compañía podrá aplicar la tarifa para seguros por términos cortos siguiente:</fo:block>
					</xsl:if>

					<xsl:if test="(planesCobertura/plan/planElegido = 'SG42' or planesCobertura/plan/planElegido = 'SG43' or planesCobertura/plan/planElegido = 'SG44' or planesCobertura/plan/planElegido = 'SG45' or
					planesCobertura/plan/planElegido = 'SG46' or planesCobertura/plan/planElegido = 'SG47' or planesCobertura/plan/planElegido = 'SG48')">
							<fo:block padding-before="20pt" font-size="11.0pt">En caso de ocurrencia de cualquiera de los casos señalados precedentemente, la compañía podrá aplicar la tarifa para seguros por términos cortos siguiente:</fo:block>
					</xsl:if>

					<fo:block padding-before="20pt" text-align="center">
							<fo:table table-layout="fixed" width="50%">
							<fo:table-column column-width="proportional-column-width(15)"/>
							<fo:table-column column-width="proportional-column-width(15)"/>
								<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>Por mes o fracción</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>% sobre prima Trianual</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>Mes 1 al 12</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>50%</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>Mes 13 al 18</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>70%</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>Mes 19 al 24</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>80%</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>Mes 25 al 36</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
											<xsl:text>100%</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
					<fo:block padding-before="20pt" font-size="11.0pt">En caso de  pérdida total de la materia asegurada, robo o hurto, se aplicará la cancelación proporcional de la prima.</fo:block>
					
					
					<xsl:if test="(planesCobertura/plan/planElegido != 'SG42' and planesCobertura/plan/planElegido != 'SG43' and planesCobertura/plan/planElegido != 'SG44' and planesCobertura/plan/planElegido != 'SG45' and
								   planesCobertura/plan/planElegido != 'SG46' and planesCobertura/plan/planElegido != 'SG47' and planesCobertura/plan/planElegido != 'SG48')">
										<fo:block padding-before="20pt" font-size="11.0pt" font-weight="bold">Mandato:</fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">Con el objeto de facilitar el cobro antes aludido, por el presente instrumento otorgo mandato gratuito e irrevocable al Banco de Crédito e Inversiones, en adelante el mandatario, para que </fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">cargue o debite mi(s) cuenta(s) corriente(s), cuenta(s)  vista, cuenta(s) de ahorro, tarjeta(s) de crédito u otras que técnicamente lo permitieren, para cobrar las sumas adeudadas </fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">provenientes de la aplicación de la tarifa por términos cortos de acuerdo a la tabla indicada.</fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt"></fo:block>
										<fo:block padding-before="20pt" font-size="11.0pt">Por tratarse de un mandato cuya ejecución interesa a un tercero, la autorización otorgada, no puede ser revocada al arbitrio del asegurado.</fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt"></fo:block>
										<fo:block padding-before="20pt" font-size="11.0pt">Libero expresamente al mandatario de la obligación de rendir cuenta.</fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt"></fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt"></fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt"></fo:block>
					</xsl:if>
					
					<xsl:if test="(planesCobertura/plan/planElegido = 'SG42' or planesCobertura/plan/planElegido = 'SG43' or planesCobertura/plan/planElegido = 'SG44' or planesCobertura/plan/planElegido = 'SG45' or
								   planesCobertura/plan/planElegido = 'SG46' or planesCobertura/plan/planElegido = 'SG47' or planesCobertura/plan/planElegido = 'SG48')">
			
										<fo:block padding-before="20pt" font-size="11.0pt" font-weight="bold">Mandato</fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">Conforme al artículo 27 de las Condiciones Generales de la póliza, depositadas en la Superintendencia de Valores y Seguros bajo el código POL 1 98 022, el asegurado podrá poner término al </fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">presente seguro en cualquier momento mediante comunicación escrita al asegurador.</fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">En caso de cancelación de la póliza por voluntad del asegurado o por no pago de la prima, la Compañía cobrará adicionalmente a la prima  consumida un porcentaje sobre la prima no consumida</fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">de acuerdo a la tabla de términos cortos indicada a continuación.</fo:block>
										<fo:block padding-before="20pt" text-align="center">
												<fo:table table-layout="fixed" width="50%">
												<fo:table-column column-width="proportional-column-width(15)"/>
												<fo:table-column column-width="proportional-column-width(15)"/>
													<fo:table-body>
													<fo:table-row>
														<fo:table-cell text-align="start" display-align="before">
															<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
																<xsl:text>Por mes o fracción</xsl:text>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell text-align="start" display-align="before">
															<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
																<xsl:text>% sobre prima Trianual</xsl:text>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell text-align="start" display-align="before">
															<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
																<xsl:text>Mes 1 al 12</xsl:text>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell text-align="start" display-align="before">
															<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
																<xsl:text>50%</xsl:text>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell text-align="start" display-align="before">
															<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
																<xsl:text>Mes 13 al 18</xsl:text>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell text-align="start" display-align="before">
															<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
																<xsl:text>70%</xsl:text>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell text-align="start" display-align="before">
															<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
																<xsl:text>Mes 19 al 24</xsl:text>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell text-align="start" display-align="before">
															<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
																<xsl:text>80%</xsl:text>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell text-align="start" display-align="before">
															<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
																<xsl:text>Mes 25 al 36</xsl:text>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell text-align="start" display-align="before">
															<fo:block white-space-collapse="true"  text-align="start" font-size="11.0pt">
																<xsl:text>100%</xsl:text>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													</fo:table-body>
												</fo:table>
										</fo:block>
										<fo:block padding-before="20pt" font-size="11.0pt">En caso de aplicación de la tabla de Términos Cortos señalada, faculto expresamente a BCI Seguros Generales para cargar en mi cuenta corriente, línea de crédito o tarjeta de crédito las</fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">sumas adeudadas por este concepto, como así también para aplicar a su pago cualquier crédito a mi favor que exista en el Banco de Crédito e Inversiones, ya sean saldos en mi cuenta corriente,</fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">tarjeta de crédito, cuenta vista, depósitos a la vista, depósitos a plazo, valores en custodia, fondos mutuos en BCI Administradora de Fondos Mutuos S.A. etc.</fo:block>
										<fo:block padding-before="0pt" font-size="11.0pt">El cliente declara aceptar todas las condiciones definidas en este mandato.</fo:block>					
					
					</xsl:if>
					
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
									
									
									<xsl:if test="(planesCobertura/plan/planElegido != 'SG42' and planesCobertura/plan/planElegido != 'SG43' and planesCobertura/plan/planElegido != 'SG44' and planesCobertura/plan/planElegido != 'SG45' and
												   planesCobertura/plan/planElegido != 'SG46' and planesCobertura/plan/planElegido != 'SG47' and planesCobertura/plan/planElegido != 'SG48')">
														<fo:block>Firma del Asegurado</fo:block>
									</xsl:if>
									<xsl:if test="(planesCobertura/plan/planElegido = 'SG42' or planesCobertura/plan/planElegido = 'SG43' or planesCobertura/plan/planElegido = 'SG44' or planesCobertura/plan/planElegido = 'SG45' or
												   planesCobertura/plan/planElegido = 'SG46' or planesCobertura/plan/planElegido = 'SG47' or planesCobertura/plan/planElegido = 'SG48')">
														<fo:block>Firma Cliente</fo:block>
									</xsl:if>										
											
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
	

</xsl:stylesheet>
