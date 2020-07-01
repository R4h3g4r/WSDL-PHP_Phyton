<?xml version="1.0" encoding="ISO-8859-1"?>

<!DOCTYPE xml [<!ENTITY copy "&#169;"> <!ENTITY trade "&#8482;"> <!ENTITY deg "&#x00b0;"> <!ENTITY gt "&#62;"> <!ENTITY sup2 "&#x00b2;"> <!ENTITY frac14 "&#x00bc;"> <!ENTITY quot "&#34;"> <!ENTITY frac12 "&#x00bd;"> <!ENTITY euro "&#x20ac;"> <!ENTITY Omega "&#937;"> ]> <!-- Document generated with XSLfast v2.0 alpha -->
    
<xsl:stylesheet xmlns:fox="http://xml.apache.org/fop/extensions" xmlns:print="http://www.jcatalog.com/com.jcatalog.output.xslextensions.print.PrintElementFactory" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:saxon="http://icl.com/saxon" extension-element-prefixes="saxon print" >
<xsl:variable name="IMAGEEXT">gif</xsl:variable>
<xsl:template match="DatosPropuesta">
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
                    <!--<fo:region-after region-name="regionPieResto" extent="1.5cm"   precedence="true"/>-->
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
                         <fo:block  text-align="right" font-size="11pt" color="#4D6175">
                             PROPUESTA DE SEGURO Nro 
                                 <xsl:value-of select="Cotizacion/numeroPropuesta"/>
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
                        <fo:block>
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

    <fo:block padding-before="2pt">
        <fo:table table-layout="fixed" width="100%">
            <fo:table-column column-width="proportional-column-width(57)"/>
            <fo:table-body>
                <fo:table-row>
                    <fo:table-cell>
                        <fo:block >
                            <xsl:call-template name="temp_tituloActividadUso"/>
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
                            <xsl:call-template name="temp_datosActividadUso" />
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
                            <xsl:call-template name="temp_tituloColindes"/>
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
                            <xsl:call-template name="temp_datosColindes" />
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
                            <xsl:call-template name="temp_textoBasico"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
        </fo:table>
    </fo:block>    

	<xsl:if test="( materiaAsegurada/coberturaRobo = 'S' )">   
		<fo:block padding-before="2pt">
	         <fo:table table-layout="fixed" width="100%">
	             <fo:table-column column-width="proportional-column-width(57)"/>
	             <fo:table-body>
	                 <fo:table-row>
	                     <fo:table-cell>
	                         <fo:block >
	                             <xsl:call-template name="temp_tituloMedidasSeguridad"/>
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
	                             <xsl:call-template name="temp_datosMedidasSeguridad" />
	                         </fo:block>
	                     </fo:table-cell>
	                 </fo:table-row>
	             </fo:table-body>
	         </fo:table>
	     </fo:block>
     </xsl:if>
     
     <xsl:if test="( materiaAsegurada/cobeturaSismo = 'S' )">   
	     <fo:block padding-before="2pt">
	         <fo:table table-layout="fixed" width="100%">
	             <fo:table-column column-width="proportional-column-width(57)"/>
	             <fo:table-body>
	                 <fo:table-row>
	                     <fo:table-cell>
	                         <fo:block >
	                             <xsl:call-template name="temp_tituloTipoConstruccion"/>
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
	                             <xsl:call-template name="temp_datosTipoConstruccion" />
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
                        <fo:block>
                            <xsl:call-template name="temp_datosFactura" />
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
                            <xsl:call-template name="temp_datosFacturaDesc" />
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
                            <xsl:call-template name="temp_tituloDespachoPoliza"/>
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
                            <xsl:call-template name="temp_datosDespachoPoliza" />
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
                    <!-- *************************************************************************************************************** -->
                    <!-- ********************************************************************************* ***************************** -->
                    <!-- *************************************************************************************************************** -->
                    <!-- **************************************************** PROPUESTA DE SEGUROS ************************************* -->
                    <!-- *************************************************************************************************************** -->
                    <!-- *************************************************************************************************************** -->
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
				                            <xsl:call-template name="temp_tituloActividadUso"/>
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
				                            <xsl:call-template name="temp_datosActividadUso" />
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
				                            <xsl:call-template name="temp_tituloColindes"/>
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
				                            <xsl:call-template name="temp_datosColindes" />
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
                                <fo:external-graphic scaling="uniform" height="30pt" width="120pt">
                                    <xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/BciSeguros_verticalBPS.jpg')</xsl:attribute>
                                </fo:external-graphic>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell display-align="center">
                            <fo:block color="#CC0000" font-size="20pt" text-align="center" font-weight="bold">
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
                                    <xsl:text disable-output-escaping="no">WEBBCI</xsl:text>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row>
                            <fo:table-cell display-align="before" >
                                <fo:block color="#0360A2" font-size="11.0pt">Ejecutivo</fo:block>
                            </fo:table-cell>
                            <fo:table-cell display-align="before">
                                <fo:block color="#0360A2" font-size="11.0pt" font-weight="bold">
                                    <xsl:text disable-output-escaping="no">WEBBCI</xsl:text>
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
                <fo:table-row>
                    <fo:table-cell padding="4.0pt" text-align="start" border-top-style="solid" border-after-style="solid" display-align="before" border-width="1.0pt" border-color="#DCDCDC" padding-left="5pt">
                        <fo:block white-space-collapse="true"  text-align="center" color="#6B6765" font-size="13.0pt" font-weight="bold">
                            <xsl:text>PROPUESTA DE SEGURO Nro </xsl:text><xsl:value-of disable-output-escaping="no" select="Cotizacion/numeroPropuesta"/> 
                            <xsl:text> - Seguro </xsl:text><xsl:value-of disable-output-escaping="no" select="Cotizacion/descripcionProducto"/>
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
                            <xsl:text>Direcci�n Postal</xsl:text>
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
                            <xsl:text>Direcci�n Comercial</xsl:text>
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
                            <xsl:text>Direcci�n Postal</xsl:text>
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
                            <xsl:text>Direcci�n Comercial</xsl:text>
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
            <fo:table table-layout="fixed" width="100%" padding-before="2pt">
            <fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
                            <fo:block  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
                                <xsl:if test="( materiaAsegurada/materiaAsegurada = '1' )">
                                    <xsl:text>MATERIA ASEGURADA PARA EL RAMO MULTIRIESGO HOGAR - S�lo Edificio</xsl:text>            
                                </xsl:if>    
                                <xsl:if test="( materiaAsegurada/materiaAsegurada = '2' )">
                                        <xsl:text>MATERIA ASEGURADA PARA EL RAMO MULTIRIESGO HOGAR - S�lo Contenido</xsl:text>
                                </xsl:if>    
                                <xsl:if test="( materiaAsegurada/materiaAsegurada = '3' )">
                                        <xsl:text>MATERIA ASEGURADA PARA EL RAMO MULTIRIESGO HOGAR - Edificio + Contenido</xsl:text>
                                </xsl:if>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>
    
    <xsl:template name="temp_datosMateriaAsegurada">
        <!-- GENERATE TABLE START-->
        <fo:block span="none" padding-before="6pt">
                <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(25)" background-color="#F4F4F4"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)" background-color="#F4F4F4"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                <xsl:text disable-output-escaping="no">Direcci�n</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                <xsl:value-of disable-output-escaping="no" select="materiaAsegurada/direccion"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                <xsl:text>Regi�n</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                <xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionRegion"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                <xsl:text>Ciudad</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                <xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionCiudad"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                <xsl:text>Comuna</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                <xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionComuna"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                <xsl:text>Zona</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                <xsl:if test="( materiaAsegurada/zona = '2')">
                                    <xsl:text>Urbano</xsl:text>
                                </xsl:if>
                                <xsl:if test="( materiaAsegurada/zona = '1')">
                                    <xsl:text>Rural</xsl:text>
                                </xsl:if>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                <xsl:text>Tipo de Construcci�n</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                <xsl:if test="( materiaAsegurada/tipoConstruccion = '1')">
                                    <xsl:text>Solida</xsl:text>
                                </xsl:if>
                                <xsl:if test="( materiaAsegurada/tipoConstruccion = '2')">
                                    <xsl:text>Ligera</xsl:text>
                                </xsl:if>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>

                    <xsl:if test="( materiaAsegurada/materiaAsegurada = '1' )">    
                                <fo:table-row>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                            <xsl:text>Tipo de Vivienda</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                        
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                            <xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionTipoVivienda"/>                                            
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                            <xsl:text disable-output-escaping="no">Monto Asegurado Edificio (UF)</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                        
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                            <xsl:value-of disable-output-escaping="no" select="tarifa/montoAsegurado"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                            <xsl:text disable-output-escaping="no">Antig�edad de vivienda</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                            <xsl:if test="( materiaAsegurada/antiguedad = '2')">
												<xsl:text>Menor a 50 a�os</xsl:text>
					 					    </xsl:if>
										    <xsl:if test="( materiaAsegurada/antiguedad = '3')">
												<xsl:text>Entre 50 y 80 a�os</xsl:text>
										    </xsl:if>
					                  		<xsl:if test="( materiaAsegurada/antiguedad = '1')">
												<xsl:text>M�s de 80 a�os</xsl:text>
										    </xsl:if>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                           
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                            
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                        </xsl:if>    
    
                        <xsl:if test="( materiaAsegurada/materiaAsegurada = '2' )">
                                <fo:table-row>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                            <xsl:text>Tipo de Vivienda</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                        
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                            <xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionTipoVivienda"/>                                            
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                            <xsl:text disable-output-escaping="no">Monto Asegurado Contenido (UF)</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                        
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                            <xsl:value-of disable-output-escaping="no" select="tarifa/montoAseguradoContenido"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                               <fo:table-row>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                            <xsl:text disable-output-escaping="no">Antig�edad de vivienda</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                            <xsl:if test="( materiaAsegurada/antiguedad = '2')">
												<xsl:text>Menor a 50 a�os</xsl:text>
					 					    </xsl:if>
										    <xsl:if test="( materiaAsegurada/antiguedad = '3')">
												<xsl:text>Entre 50 y 80 a�os</xsl:text>
										    </xsl:if>
					                  		<xsl:if test="( materiaAsegurada/antiguedad = '1')">
												<xsl:text>M�s de 80 a�os</xsl:text>
										    </xsl:if>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                           
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                            
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </xsl:if>

                            <xsl:if test="( materiaAsegurada/materiaAsegurada = '3' )">
                                <fo:table-row>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                            <xsl:text>Tipo de Vivienda</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                            <xsl:value-of disable-output-escaping="no" select="materiaAsegurada/descripcionTipoVivienda"/>                                            
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                            <xsl:text disable-output-escaping="no">Monto Asegurado Edificio (UF)</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                            <xsl:value-of disable-output-escaping="no" select="tarifa/montoAsegurado"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>        
                                <fo:table-row>                                            
                                     <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                            <xsl:text disable-output-escaping="no">Antig�edad de vivienda</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                            <xsl:if test="( materiaAsegurada/antiguedad = '2')">
												<xsl:text>Menor a 50 a�os</xsl:text>
					 					    </xsl:if>
										    <xsl:if test="( materiaAsegurada/antiguedad = '3')">
												<xsl:text>Entre 50 y 80 a�os</xsl:text>
										    </xsl:if>
					                  		<xsl:if test="( materiaAsegurada/antiguedad = '1')">
												<xsl:text>M�s de 80 a�os</xsl:text>
										    </xsl:if>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                            <xsl:text disable-output-escaping="no">Monto Asegurado Contenido (UF)</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                            <xsl:value-of disable-output-escaping="no" select="tarifa/montoAseguradoContenido"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </xsl:if>
                                                                
                                <xsl:if test="( materiaAsegurada/cobeturaSismo = 'S' )">                                
                                
                                <fo:table-row>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                            <xsl:text disable-output-escaping="no">SISMO</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                            <xsl:text disable-output-escaping="no">SI</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                        
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                            <xsl:text disable-output-escaping="no">Monto Asegurado Sismo (UF)</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                        
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                            <xsl:value-of disable-output-escaping="no" select="tarifa/montoAseguradoSismo"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                        </fo:block>
                                    </fo:table-cell>

                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                            <xsl:text disable-output-escaping="no">Frecuencia de Uso</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                        
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                            <xsl:if test="( materiaAsegurada/usoVivienda = '2')">
												<xsl:text>Deshabitada menos de 30 d�as</xsl:text>
										    </xsl:if>
										    <xsl:if test="( materiaAsegurada/usoVivienda != '2')">
												<xsl:text>Deshabitada menos de 60 d�as</xsl:text>
										    </xsl:if>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                </xsl:if>

                                <xsl:if test="( materiaAsegurada/cobeturaSismo = 'N' )">                                
                                
                                <fo:table-row>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                            <xsl:text disable-output-escaping="no">SISMO</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                            <xsl:text disable-output-escaping="no">NO</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                        
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
											<xsl:text disable-output-escaping="no">Frecuencia de Uso</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                        
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                            <xsl:if test="( materiaAsegurada/usoVivienda = '2')">
												<xsl:text>Deshabitada menos de 30 d�as</xsl:text>												
										    </xsl:if>
										    <xsl:if test="( materiaAsegurada/usoVivienda != '2')">
												<xsl:text>Deshabitada menos de 60 d�as</xsl:text>
										    </xsl:if>
                                        </fo:block>
                                    </fo:table-cell>

                                </fo:table-row>
                                
                                </xsl:if>

                                <xsl:if test="( materiaAsegurada/coberturaRobo = 'S' )">                                
                                
                                <fo:table-row>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                            <xsl:text disable-output-escaping="no">ROBO</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                            <xsl:text disable-output-escaping="no">SI</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                        
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                            <xsl:text disable-output-escaping="no">Monto Asegurado Robo (UF)</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                        
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                            <xsl:value-of disable-output-escaping="no" select="tarifa/montoAseguradoRobo"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">

                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                            
                                        </fo:block>
                                    </fo:table-cell>
                        
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                            <xsl:text disable-output-escaping="no">Inter�s Asegurable</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                        
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                            <xsl:if test="( materiaAsegurada/interesAsegurable = '1')"> 
                                                 <xsl:text disable-output-escaping="no">Due�o o Propietario</xsl:text>
                                            </xsl:if>
                                            <xsl:if test="( materiaAsegurada/interesAsegurable = '2')"> 
                                                 <xsl:text disable-output-escaping="no">Arrendatario</xsl:text>
                                            </xsl:if>
                                            <xsl:if test="( materiaAsegurada/interesAsegurable = '3')"> 
                                                 <xsl:text disable-output-escaping="no">Usuario</xsl:text>
                                            </xsl:if>
                                            <xsl:if test="( materiaAsegurada/interesAsegurable = '4')"> 
                                                 <xsl:text disable-output-escaping="no">No hay inter�s</xsl:text>
                                            </xsl:if>
                                            <xsl:if test="( materiaAsegurada/interesAsegurable = '')"> 
                                                 <xsl:text disable-output-escaping="no">Due�o o Propietario</xsl:text>
                                            </xsl:if>
                                            <xsl:if test="( materiaAsegurada/interesAsegurable = 'null')"> 
                                                 <xsl:text disable-output-escaping="no">Due�o o Propietario</xsl:text>
                                            </xsl:if>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                </xsl:if>

                                <xsl:if test="( materiaAsegurada/coberturaRobo = 'N' )">                                
                                
                                <fo:table-row>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                            <xsl:text disable-output-escaping="no">ROBO</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                            <xsl:text disable-output-escaping="no">NO</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                        
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
											<xsl:text disable-output-escaping="no">Inter�s Asegurable</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                        
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
											<xsl:if test="( materiaAsegurada/interesAsegurable = '1')"> 
                                                 <xsl:text disable-output-escaping="no">Due�o o Propietario</xsl:text>
                                            </xsl:if>
                                            <xsl:if test="( materiaAsegurada/interesAsegurable = '2')"> 
                                                 <xsl:text disable-output-escaping="no">Arrendatario</xsl:text>
                                            </xsl:if>
                                            <xsl:if test="( materiaAsegurada/interesAsegurable = '3')"> 
                                                 <xsl:text disable-output-escaping="no">Usuario</xsl:text>
                                            </xsl:if>
                                            <xsl:if test="( materiaAsegurada/interesAsegurable = '4')"> 
                                                 <xsl:text disable-output-escaping="no">No hay inter�s</xsl:text>
                                            </xsl:if>
											<xsl:if test="( materiaAsegurada/interesAsegurable = '')"> 
											     <xsl:text disable-output-escaping="no">Due�o o Propietario</xsl:text>
											</xsl:if>
											<xsl:if test="( materiaAsegurada/interesAsegurable = 'null')"> 
                                                 <xsl:text disable-output-escaping="no">Due�o o Propietario</xsl:text>
                                            </xsl:if>
                                        </fo:block>
                                    </fo:table-cell>

                                </fo:table-row>
                                
                                </xsl:if>
                                
                                <fo:table-row>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                            <xsl:text disable-output-escaping="no">INCENDIO</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                            <xsl:text disable-output-escaping="no">SI</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                        
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
											<xsl:text disable-output-escaping="no">Siniestros en las �ltimas 48 horas</xsl:text>
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
										<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
											<xsl:text disable-output-escaping="no">NO</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

    
    <xsl:template name="temp_tituloActividadUso">
        <fo:block span="none">
            <fo:table table-layout="fixed" width="100%">
            <fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
                                <xsl:text>Actividad (Uso)</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>
    
    <xsl:template name="temp_datosActividadUso">
            <!-- GENERATE TABLE START-->
            <fo:block span="none" padding-before="2pt">
            <fo:table table-layout="fixed" width="100%">
            <fo:table-column column-width="proportional-column-width(50)" background-color="#F4F4F4"/>
            <fo:table-column column-width="proportional-column-width(50)"/>
            <fo:table-body>
            
            <fo:table-row>
                <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                        <xsl:text>Solo Habitacional</xsl:text>
                    </fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
						<xsl:if test="( materiaAsegurada/usoVivienda = '2')">
							<xsl:text>SI</xsl:text>
						</xsl:if>
						<xsl:if test="( materiaAsegurada/usoVivienda != '2')">
							<xsl:text>NO</xsl:text>
						</xsl:if>
					</fo:block>
				</fo:table-cell>
            </fo:table-row>
            
            <fo:table-row>
                <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                        <xsl:text>Vacacional / Recreacional</xsl:text>
                    </fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
						<xsl:if test="( materiaAsegurada/usoVivienda = '2')">
							<xsl:text>NO</xsl:text>
						</xsl:if>
						<xsl:if test="( materiaAsegurada/usoVivienda != '2')">
							<xsl:text>SI</xsl:text>
						</xsl:if>
					</fo:block>
				</fo:table-cell>
            </fo:table-row>
            
            <fo:table-row>
                <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                        <xsl:text>Habitacional y comercial</xsl:text>
                    </fo:block>
                </fo:table-cell>

                <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                        <xsl:text>NO</xsl:text>
                    </fo:block>
                </fo:table-cell>
            </fo:table-row>
            
            <fo:table-row>
                <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                        <xsl:text>Comercial</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                        
                                    <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                        <xsl:text>NO</xsl:text>
                    </fo:block>
                </fo:table-cell>
            </fo:table-row>
            
        </fo:table-body>
        </fo:table>
        </fo:block>
    </xsl:template>

    <xsl:template name="temp_tituloColindes">
        <fo:block span="none">
            <fo:table table-layout="fixed" width="100%">
            <fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
                                <xsl:text>Colindes</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>
    
     <xsl:template name="temp_datosColindes">
            <!-- GENERATE TABLE START-->
            <fo:block span="none" padding-before="2pt">
            <fo:table table-layout="fixed" width="100%">
            <fo:table-column column-width="proportional-column-width(50)" background-color="#F4F4F4"/>
            <fo:table-column column-width="proportional-column-width(50)"/>
            <fo:table-body>
            
            <fo:table-row>
                <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                        <xsl:text>Con edificio en construcci�n</xsl:text>
                    </fo:block>
                </fo:table-cell>

                <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                        <xsl:text>NO</xsl:text>
                    </fo:block>
                </fo:table-cell>
            </fo:table-row>
            
            <fo:table-row>
                <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                        <xsl:text>Con f�brica</xsl:text>
                    </fo:block>
                </fo:table-cell>

                <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                        <xsl:text>NO</xsl:text>
                    </fo:block>
                </fo:table-cell>
            </fo:table-row>
            
            <fo:table-row>
               <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                        <xsl:text>Con taller de soldadura</xsl:text>
                    </fo:block>
                </fo:table-cell>

                <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                        <xsl:text>NO</xsl:text>
                    </fo:block>
                </fo:table-cell>
            </fo:table-row>
            
            <fo:table-row>
                <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                        <xsl:text>Con alguna ubicaci�n que manipulen sustancias quimicas/inflamables o explosivas</xsl:text>
                    </fo:block>
                </fo:table-cell>

                <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                        <xsl:text>NO</xsl:text>
                    </fo:block>
                </fo:table-cell>
            </fo:table-row>
            
            <fo:table-row>
                <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                        <xsl:text>A 50 metros o menos de un curse de agua</xsl:text>
                    </fo:block>
                </fo:table-cell>

                <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                        <xsl:text>NO</xsl:text>
                    </fo:block>
                </fo:table-cell>
            </fo:table-row>
            
            <fo:table-row>
                <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                        <xsl:text>Otros</xsl:text>
                    </fo:block>
                </fo:table-cell>
                                            
                <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                        <xsl:text>SI</xsl:text>
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
            <fo:table-column column-width="proportional-column-width(10)"/>
            <fo:table-column column-width="proportional-column-width(30)"/>
             <fo:table-column column-width="proportional-column-width(20)"/>
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
                        <xsl:text>Descripci�n</xsl:text>
                    </fo:block>
                </fo:table-cell>
                
                <fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.1pt" border-color="#DCDCDC">
                    <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
                        <xsl:text>Monto Asegurado</xsl:text>
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
                        <xsl:text>Prima Bruta Anual</xsl:text>
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
                <fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="0.1pt" border-color="#DCDCDC">
                    <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt">
                        <xsl:text></xsl:text>
                    </fo:block>
                </fo:table-cell>
                
                <fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="0.1pt" border-color="#DCDCDC">
                    <fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
                        <xsl:text>UF</xsl:text>
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
                                <xsl:value-of disable-output-escaping="no" select="materiaAsegurada/montoTotalSeguro"/>
                            </fo:block>
                        </fo:table-cell>
                        
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

                        <fo:table-cell text-align="start" number-columns-spanned="2" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
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

                        <fo:table-cell text-align="start" number-columns-spanned="2" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
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

                        <fo:table-cell text-align="start" number-columns-spanned="2" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
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
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                            <xsl:value-of disable-output-escaping="no" select="codigoSVS"/>
                                </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </xsl:for-each>
            </xsl:for-each>
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
                            <xsl:text>Desde 12:00 del dia </xsl:text><xsl:value-of disable-output-escaping="no" select="Cotizacion/fechaInicioVigencia"/><xsl:text> Hasta las 12:00 del d�a </xsl:text><xsl:value-of disable-output-escaping="no" select="Cotizacion/fechaFinVigencia"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>
    
	<xsl:template name="temp_tituloMedidasSeguridad">
        <fo:block span="none">
            <fo:table table-layout="fixed" width="100%">
            <fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
                                <xsl:text>Medidas de seguridad (Exclusivo para robo)</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>

    <xsl:template name="temp_datosMedidasSeguridad">
        <!-- GENERATE TABLE START-->
        <fo:block span="none" padding-before="6pt">
                <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(85)"/>
                <fo:table-column column-width="proportional-column-width(15)"/>
                
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                <xsl:text disable-output-escaping="no">1. Chapas de seguridad en todas las puertas:</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                <xsl:text>SI</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                <xsl:text disable-output-escaping="no">2. Rejas de protecci�n en todas las puertas y ventanas con cristales:</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                <xsl:if test="( materiaAsegurada/indicadorReja = '1')"> 
                                    <xsl:text>SI</xsl:text>
                                </xsl:if>
                                <xsl:if test="( materiaAsegurada/indicadorReja = '2')"> 
                                    <xsl:text>NO</xsl:text>
                                </xsl:if>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                <xsl:text disable-output-escaping="no">3. Alarma central conectada a un servicio de alarma en todas la puertas y ventanas:</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                <xsl:if test="( materiaAsegurada/indicadorAlarma = '1')"> 
                                    <xsl:text>SI</xsl:text>
                                </xsl:if>
                                <xsl:if test="( materiaAsegurada/indicadorAlarma = '2')"> 
                                    <xsl:text>NO</xsl:text>
                                </xsl:if>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                <xsl:text disable-output-escaping="no">4. Esta situada en condominio o edificio, ambos con vigilancia permanente:</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                <xsl:if test="( materiaAsegurada/indicadorVigilancia = '1')"> 
                                    <xsl:text>SI</xsl:text>
                                </xsl:if>
                                <xsl:if test="( materiaAsegurada/indicadorVigilancia = '2')"> 
                                    <xsl:text>NO</xsl:text>
                                </xsl:if>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                <xsl:text disable-output-escaping="no">5. Departamento en piso 3 o superior</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                <xsl:if test="( materiaAsegurada/indicadorPiso = '1')"> 
                                    <xsl:text>SI</xsl:text>
                                </xsl:if>
                                <xsl:if test="( materiaAsegurada/indicadorPiso = '2')"> 
                                    <xsl:text>NO</xsl:text>
                                </xsl:if>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
                 </fo:table>
           </fo:block>
     </xsl:template>

    <xsl:template name="temp_tituloTipoConstruccion">
        <fo:block span="none">
            <fo:table table-layout="fixed" width="100%">
            <fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="1.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
                                <xsl:text>Tipo de Construcci�n (Exclusivo para sismo)</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>

    <xsl:template name="temp_datosTipoConstruccion">
        <!-- GENERATE TABLE START-->
        <fo:block span="none" padding-before="6pt">
                <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(85)"/>
                <fo:table-column column-width="proportional-column-width(15)"/>
                
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                <xsl:text disable-output-escaping="no">1. Construcci�n parcial o total de adobe y tabiqueria de adobillo:</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                <xsl:text>NO</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                <xsl:text disable-output-escaping="no">2. Construcci�n no tiene adobe y tabiqueria de adobillo:</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                <xsl:text>SI</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
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
                        <fo:table-cell border-after-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="16pt" text-align="start" color="#0360A2">
                            <fo:block white-space-collapse="true"  text-align="start" color="#000000" font-size="12.0pt" font-weight="bold">
                                <xsl:text>DEDUCIBLE</xsl:text>
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
            <fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
            <fo:table-body>
               <fo:table-row>
                    <fo:table-cell border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt" text-align="start" color="#0360A2">
                        <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt">
                            <xsl:text>Deducibles indicados en las Coberturas del Plan</xsl:text>
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
                            <xsl:text>Direcci�n Postal</xsl:text>
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
                            <xsl:text>Direcci�n Comercial</xsl:text>
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
                                    <xsl:text>N� Recibo :</xsl:text>
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
                                    <xsl:text>N� Cheque :</xsl:text>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
                                <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                    <xsl:value-of disable-output-escaping="no" select="detallePago/documentoPrimerPago"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                </xsl:if>
                <xsl:if test="( detallePago/codigoPrimerPago = '3' )"> 
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
                                    <xsl:text>N� Tarjeta de Credito :</xsl:text>
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
                                    <xsl:text>N� Tarjeta de Credito :</xsl:text>
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
                                    <xsl:text>N� Cta.Cte. :</xsl:text>
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
                                    <xsl:text>N� Recibo :</xsl:text>
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
                                    <xsl:text>N� Cheque :</xsl:text>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" background-color="#FFFFFF"  padding-before="4pt" padding-after="2pt">
                                <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                    <xsl:value-of disable-output-escaping="no" select="detallePago/documentoFuturosPagos"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                </xsl:if>
                <xsl:if test="( detallePago/codigoFuturosPagos = '3' )"> 
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
                                    <xsl:text>N� Tarjeta de Credito :</xsl:text>
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
                                    <xsl:text>N� Tarjeta de Credito :</xsl:text>
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
                                    <xsl:text>N� Cta.Cte. :</xsl:text>
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
        <!-- GENERATE TABLE START-->
        <fo:block span="none" padding-before="6pt">
	                <fo:table table-layout="fixed" width="100%">
	                <fo:table-column column-width="proportional-column-width(25)"/>
	                <fo:table-column column-width="proportional-column-width(25)"/>
                
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                <xsl:text disable-output-escaping="no">Envio de Factura</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                <xsl:text>NO</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                <xsl:text disable-output-escaping="no">Direcci�n</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
                 </fo:table>
           </fo:block>
     </xsl:template>
     
     <xsl:template name="temp_datosFacturaDesc">
        <!-- GENERATE TABLE START-->
        <fo:block span="none" padding-before="6pt">
                    <fo:table table-layout="fixed" width="100%">
                    <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                <xsl:text disable-output-escaping="no">En caso afirmativo, el responsable del pago identificado anteriormente declara ser contribuyente de IVA.</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
                 </fo:table>
           </fo:block>
     </xsl:template>
     
     <xsl:template name="temp_tituloDespachoPoliza">
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
    
    <xsl:template name="temp_datosDespachoPoliza">
        <!-- GENERATE TABLE START-->
        <fo:block span="none" padding-before="6pt">
                    <fo:table table-layout="fixed" width="100%">
                    <fo:table-column column-width="proportional-column-width(25)"/>
                    <fo:table-column column-width="proportional-column-width(25)"/>
                
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                <xsl:text disable-output-escaping="no">Envio de P�liza</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                <xsl:text>SI</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                <xsl:text disable-output-escaping="no">Direcci�n Correo Electronica</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                <xsl:text disable-output-escaping="no">ccollad@bci.cl</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
                 </fo:table>
           </fo:block>
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

    <xsl:template name="temp_terminos_cortos">
        <xsl:for-each select="adicional/texto">
            <xsl:if test="(condicion = 'TERM_CORTOS')">
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




    <xsl:template name="temp_mandatoPAC">
        <xsl:for-each select="adicional/texto">
            <xsl:if test="(condicion = 'MANDATO_PAC' and (../../detallePago/codigoFuturosPagos = '3' or ../../detallePago/codigoFuturosPagos = '6'))">
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
                                        <xsl:text>N� Cta. Corriente</xsl:text>
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
                            <!-- SECCION COMPA�IA -->
                            <fo:table-row>
                                <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                        <xsl:text>Propuesta N�</xsl:text>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
                                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                        : <xsl:value-of disable-output-escaping="no" select="../../Cotizacion/numeroPropuesta"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                                    <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                        <xsl:text>Compa��a</xsl:text>
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
                
				<!--<fo:block padding-before="20pt" text-align="center">
                        <fo:table table-layout="fixed" width="100%">
                        <fo:table-column column-width="proportional-column-width(1)"/>
                        <fo:table-column column-width="8cm"/>
                        <fo:table-column column-width="proportional-column-width(1)"/>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell height="20pt" column-number="2" border-bottom-style="solid" border-bottom-width="1.0pt" border-bottom-color="#DCDCDC">
                                        <fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell column-number="2"  text-align="center" display-align="center" padding-before="4pt">
                                        <fo:block white-space-collapse="true" color="#0360A2" font-size="11.0pt">
                                        Firma del Titular de la Cuenta Corriente</fo:block>
                                        <fo:block white-space-collapse="true" color="#0360A2" font-size="11.0pt">
                                            En <xsl:value-of disable-output-escaping="no" select="../../Cotizacion/descripcionSucursal"/>
                                             a <xsl:value-of disable-output-escaping="no" select="../../Cotizacion/fechaInicioVigencia"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
					</fo:block> -->
                
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
                                    <fo:inline>IDENTIFICACION DEL TITULAR TARJETA DE CR�DITO</fo:inline>
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
                                <xsl:text>N� Tarjeta</xsl:text>
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
                    <!-- SECCION COMPA�IA -->
                    <fo:table-row>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                    <xsl:text>Propuesta N�</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
                                : <xsl:value-of disable-output-escaping="no" select="../../Cotizacion/numeroPropuesta"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
                            <fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
                                <xsl:text>Compa��a</xsl:text>
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
                        
				<!--<fo:block padding-before="18pt" text-align="center">
                    <fo:table table-layout="fixed" width="100%">
                        <fo:table-column column-width="proportional-column-width(1)"/>
                        <fo:table-column column-width="8cm"/>
                        <fo:table-column column-width="proportional-column-width(1)"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell height="25pt" column-number="2" border-bottom-style="solid" border-bottom-width="1.0pt" border-bottom-color="#DCDCDC">
                                    <fo:block>
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell column-number="2"  text-align="center" display-align="center" padding-before="4pt" color="#0360A2">
                                    <fo:block>Firma del Titular de la Tarjeta de Cr�dito</fo:block>
                                    <fo:block>
                                        En <xsl:value-of disable-output-escaping="no" select="../../Cotizacion/descripcionSucursal"/>
                                         a <xsl:value-of disable-output-escaping="no" select="../../Cotizacion/fechaInicioVigencia"/>
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
				</fo:block>-->
                
            </xsl:if>
        </xsl:for-each>
    </xsl:template>






<!-- *********************************************************FIRMAS FINALES **************************************************** -->
<xsl:template name="temp_firmas">
    <fo:table table-layout="fixed" width="100%">
        <fo:table-column column-width="proportional-column-width(15)"/><!--SOLO -->
        <fo:table-column column-width="proportional-column-width(35)"/><!--Fecha propuesta -->
        <fo:table-column column-width="proportional-column-width(5)"/><!--SOLO -->
        <fo:table-column column-width="proportional-column-width(35)"/><!--Propuesta -->
        <fo:table-column column-width="proportional-column-width(15)"/><!--SOLO -->
        <!--fo:table-column column-width="proportional-column-width(24)"/--><!--Firma -->
        <!--fo:table-column column-width="proportional-column-width(4)"/--><!--SOLO -->
        <!--fo:table-column column-width="proportional-column-width(12)"/--><!--SOLO -->

        <fo:table-body>
            <fo:table-row keep-with-next="always" >
                <fo:table-cell text-align="center" display-align="center" color="#0360A2">
                    <fo:block></fo:block><!--SOLO 20 -->
                </fo:table-cell>
                <fo:table-cell text-align="center" display-align="center" color="#0360A2">
                    <fo:block><xsl:value-of select="Cotizacion/fechaPropuesta"/></fo:block><!--Fecha propuesta 35 -->
                </fo:table-cell>
                <fo:table-cell  text-align="center" display-align="center" color="#0360A2">
                    <fo:block></fo:block><!--SOLO 4 -->
                </fo:table-cell>
                <fo:table-cell  text-align="center" display-align="center" color="#0360A2">
                    <fo:block>
                    <fo:external-graphic scaling="uniform" height="50pt" width="90pt"> 
                        <xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/firmas/FIR_COR2.gif')</xsl:attribute><!--firma 35 --> 
                    </fo:external-graphic>
                    </fo:block>
                </fo:table-cell>
                <fo:table-cell  text-align="center" display-align="center" color="#0360A2">
                    <fo:block></fo:block><!--SOLO 10 -->
                </fo:table-cell>
            </fo:table-row>
            <fo:table-row keep-with-next="always">
                <fo:table-cell text-align="center" display-align="center" color="#0360A2">
                    <fo:block></fo:block><!--SOLO 20  -->
                </fo:table-cell>
                <fo:table-cell padding-before="4pt" border-top-style="solid" border-top-width="1.0pt" border-top-color="#DCDCDC" text-align="center" display-align="center" color="#0360A2">
                    <fo:block><xsl:text>Fecha</xsl:text></fo:block><!--Fecha propuesta 35 -->
                </fo:table-cell>
                <fo:table-cell padding-before="4pt" text-align="center" display-align="center">
                    <fo:block></fo:block><!--SOLO 4 -->
                </fo:table-cell>
                <fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#DCDCDC" text-align="center" display-align="center" color="#0360A2">
                    <fo:block>
                        <xsl:text>Corredor</xsl:text><!--Firma 35 -->
                    </fo:block>
                </fo:table-cell>
                <fo:table-cell padding-before="4pt" text-align="center" display-align="center">
                    <fo:block></fo:block><!--SOLO 10 -->
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
</xsl:stylesheet>