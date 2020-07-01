<?xml version="1.0" encoding="iso-8859-1"?>
<!-- <== version: 2006/10/25 12:00 ==> -->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
  <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
  <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
  <xsl:template match="PerfilClientePersonaNatural">
    <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
      <fo:layout-master-set>
        <fo:simple-page-master master-name="cpc" page-width="215.9mm" page-height="279.4mm" margin-top="5mm" margin-bottom="5mm" margin-left="20mm" margin-right="20mm">
          <fo:region-body margin-top="41mm" margin-bottom="45mm"/>
          <fo:region-before extent="90mm"/>
          <fo:region-after extent="40mm"/>
        </fo:simple-page-master>
      </fo:layout-master-set>
      <fo:page-sequence master-reference="cpc">
        <fo:static-content flow-name="xsl-region-before">
          <fo:block font-family="Times" text-align="left" font-size="9pt" line-height="4mm">
            <!--INICIO Imagen, Titulo y datos banco-->
            <!--<fo:block space-before="5mm"> -->
            <fo:block space-before="2mm">
              <!--<fo:table table-layout="fixed" width="219.4mm"> -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(60)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block padding-top="2mm" padding-bottom="5mm" text-align="center" font-weight="bold" font-size="17pt" color="#000000">Compliance Perfil de Cliente Personas Naturales</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(60)"/>
                <fo:table-column column-width="proportional-column-width(40)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block>
                        <xsl:variable name="filename">
                          <xsl:value-of disable-output-escaping="no" select="imagenPath"/>
                        </xsl:variable>
                        <fo:external-graphic src="{$filename}/logoBci.gif"/>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block text-align="right">
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block space-before="0mm">
                        <fo:table table-layout="fixed" width="50mm">
                          <fo:table-column column-width="proportional-column-width(100)"/>
                          <fo:table-body>
                            <fo:table-row>
                              <fo:table-cell padding-left="2mm" padding-top="1mm">
                                <fo:block>Banco de Cr�dito e Inversiones</fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                              <fo:table-cell padding-left="2mm">
                                <fo:block>R.U.T 97.006.000-6</fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                              <fo:table-cell padding-left="2mm" padding-bottom="1mm">
                                <fo:block>Avda. El Golf N�125 - Las Condes</fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                          </fo:table-body>
                        </fo:table>
                      </fo:block>
                    </fo:table-cell>

                    <fo:table-cell>
                      <!--INICIO Datos Cliente y encabezado de reporte-->
                        <fo:block space-before="0mm" font-size="12pt">
                          <fo:table table-layout="fixed" width="100%">
                            <fo:table-column column-width="proportional-column-width(100)"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell>
                                  <fo:block font-size="10pt">
                                    <fo:table table-layout="fixed" width="100%">
                                      <fo:table-column column-width="proportional-column-width(25)"/>
                                      <fo:table-column column-width="proportional-column-width(5)"/>
                                      <fo:table-column column-width="proportional-column-width(34)"/>
                                      <fo:table-column column-width="proportional-column-width(34)"/>
                                      <fo:table-body>
                                        <fo:table-row>
                                          <fo:table-cell padding-top="0.5mm" padding-bottom="0.5mm" padding-left="3mm" border-left="0.25pt solid #5885AC" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC">
                                            <fo:block>P�gina</fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell padding-top="0.5mm" padding-bottom="0.5mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                                            <fo:block>
                                              <fo:page-number/>
                                            </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell padding-top="0.5mm" padding-bottom="0.5mm" padding-left="3mm" border-left="0.25pt solid #5885AC" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC">
                                            <fo:block>Folio</fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell padding-top="0.5mm" padding-bottom="0.5mm" padding-right="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" text-align="right">
                                            <fo:block>
                                              <xsl:value-of select="folio/Folio/caiFolio"/><xsl:value-of select="folio/Folio/iicFolio"/>
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
                        <!--FIN Datos Cliente y encabezado de reporte-->
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
            </fo:block>
            <!--FIN Imagen, Titulo y datos banco-->

          </fo:block>
        </fo:static-content>

        <fo:flow flow-name="xsl-region-body">
        <fo:block font-family="Times" text-align="left" font-size="9pt" line-height="4mm">
            <!--INICIO Cuadro Texto Informativo, cliente y firma-->
            <!--  INICIO DATOS BANCA CLIENTE -->
            <fo:block>
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(33)"/>
                <fo:table-column column-width="proportional-column-width(33)"/>
                <fo:table-column column-width="proportional-column-width(34)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">C�digo Oficina</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Oficina</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Banca</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="codigoOficinaBci"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="oficinaBci"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="banca"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
            </fo:block>
            <!--  FIN DATOS BANCA CLIENTE -->

            <fo:block>
              <!--  INICIO I. ANTECEDENTES PERSONALES -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1" font-size="13pt">  I. Antecedentes Personales </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table table-layout="fixed" width="100%">
	                      <fo:table-column column-width="proportional-column-width(100)"/>
	                      <fo:table-body>
	                        <fo:table-row>
	                          <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
	                            <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Trabaja o ha Trabajado en funciones oficiales en alg�n Poder del Estado o en las FFAA y de Orden</fo:block>
	                          </fo:table-cell>
	                        </fo:table-row>
	      
	                        <fo:table-row>
	                          <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                            <fo:block ><fo:leader leader-pattern="space" leader-length="1mm"/>
	                              <xsl:value-of select="indicadorPersonaAltaExposicionPublica"/>
	                            </fo:block>
	                          </fo:table-cell>
	                        </fo:table-row>
	                      </fo:table-body>
	                    </fo:table>
	                    <!--  FIN IDENTIFICACION -->
	      
	                    <!--  INICIO ORGANISMO, CARGO Y FECHA DE SERVICIO  -->
	                    <xsl:if test="personaAltaExposicionPublica != ''">
	                    <fo:table table-layout="fixed" width="100%">
	                      <fo:table-column column-width="proportional-column-width(35)"/>
	                      <fo:table-column column-width="proportional-column-width(35)"/>
	                      <fo:table-column column-width="proportional-column-width(30)"/>
	                      <fo:table-body>
	                        <fo:table-row>
	                          <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
	                            <fo:block font-weight="bold" color="#5885AC" font-size="8pt" line-height="4.5mm">Organismo</fo:block>
	                          </fo:table-cell>
	                          <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
	                            <fo:block font-weight="bold" color="#5885AC" font-size="8pt" line-height="4.5mm">Cargo</fo:block>
	                          </fo:table-cell>
	                          <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
	                            <fo:block font-weight="bold" color="#5885AC" font-size="8pt" line-height="4.5mm">Fecha de Servicio </fo:block>
	                          </fo:table-cell>                    
	                        </fo:table-row>
	                        <fo:table-row>
	                          <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                            <fo:block line-height="4.5mm">					
	      						<xsl:choose>
	      							  <xsl:when test="personaAltaExposicionPublica/PersonaAltaExposicionPublica/organismo != ''">
	      									<xsl:value-of select="personaAltaExposicionPublica/PersonaAltaExposicionPublica/organismo"/>
	      							  </xsl:when>																			  
	      							  <xsl:otherwise>	
	      								  <fo:leader leader-pattern="space" leader-length="1mm"/>							   
	      							  </xsl:otherwise>
	      						</xsl:choose>								
	                            </fo:block>
	                          </fo:table-cell>
	       <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                            <fo:block line-height="4.5mm">					
	      						<xsl:choose>
	      							  <xsl:when test="personaAltaExposicionPublica/PersonaAltaExposicionPublica/cargo != ''">
	      									<xsl:value-of select="personaAltaExposicionPublica/PersonaAltaExposicionPublica/cargo"/>
	      							  </xsl:when>																			  
	      							  <xsl:otherwise>								
	      								  <fo:leader leader-pattern="space" leader-length="1mm"/>   
	      							  </xsl:otherwise>
	      						</xsl:choose>								
	                            </fo:block>
	                          </fo:table-cell>
	       <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                            <fo:block line-height="4.5mm">					
	      						<xsl:choose>
	      							  <xsl:when test="personaAltaExposicionPublica/PersonaAltaExposicionPublica/fechaServicio != ''">
	      									<xsl:value-of select="personaAltaExposicionPublica/PersonaAltaExposicionPublica/fechaServicio"/><fo:leader leader-pattern="space" leader-length="1mm"/>
	      							  </xsl:when>																			  
	      							  <xsl:otherwise>	
	      								  <fo:leader leader-pattern="space" leader-length="1mm"/>							   
	      							  </xsl:otherwise>
	      						</xsl:choose>								
	                            </fo:block>
	                          </fo:table-cell>                                        
	                        </fo:table-row>
	                      </fo:table-body>
	                    </fo:table>
             </xsl:if>
              
             <fo:table table-layout="fixed" width="100%">
	                     <fo:table-column column-width="proportional-column-width(100)"/>
	                     <fo:table-body>
	                       <fo:table-row>
	                         <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
	                           <fo:block font-weight="bold" color="#5885AC" font-size="8pt" line-height="4.5mm">Es familiar de personas que ocupan o han ocupado cargos en alg�n Poder del Estado o en las FFAA y de Orden</fo:block>
	                         </fo:table-cell>
	                       </fo:table-row>
	     
	                       <fo:table-row>
	                         <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                           <fo:block ><fo:leader leader-pattern="space" leader-length="1mm"/>
	                             <xsl:value-of select="indicadorFamiliaresPersonaAltaExposicionPublica"/>
	                           </fo:block>
	                         </fo:table-cell>
	                       </fo:table-row>
	     
	                     </fo:table-body>
	                   </fo:table>
	                 <!--  FIN ES FAMILIAR DE PERSONAS QUE OCUPAN O HAN OCUPADO CARGOS EN ALG�N PODER DEL ESTADO O EN LAS FFAA Y DE ORDEN(*)  -->
	     
	                   <!--  INICIO NOMBRE, PARENTESCO, ORGANISMO, CARGO Y FECHA DE SERVICIO   -->
		              <xsl:if test="familiaresPaep != ''">
		              <fo:table table-layout="fixed" width="100%">
		                <fo:table-column column-width="proportional-column-width(24)"/>
		                <fo:table-column column-width="proportional-column-width(20)"/>
		                <fo:table-column column-width="proportional-column-width(24)"/>
		                <fo:table-column column-width="proportional-column-width(20)"/>
		                <fo:table-column column-width="proportional-column-width(12)"/>
		                <fo:table-body>
		                  <fo:table-row>
		                    <fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
		                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt" line-height="4.5mm">Nombre</fo:block>
		                    </fo:table-cell>
		                    <fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
		                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt" line-height="4.5mm">Parentesco</fo:block>
		                    </fo:table-cell>
		                    <fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
		                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt" line-height="4.5mm">Organismo</fo:block>
		                    </fo:table-cell>
		                    <fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
		                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt" line-height="4.5mm">Cargo</fo:block>
		                    </fo:table-cell>
		                    <fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
		                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt" line-height="4.5mm">Fecha Contrataci�n</fo:block>
		                    </fo:table-cell>                                                                                
		                  </fo:table-row>
						  <xsl:for-each select='familiaresPaep/PersonaAltaExposicionPublica'>
		                  <fo:table-row>
		                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
		                      <fo:block line-height="4.5mm">
		                      <xsl:if test="nombre != ''">
								  <xsl:value-of select="nombre"/>
		                      </xsl:if>
		                      <fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
		                    </fo:table-cell>
		                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
		                      <fo:block line-height="4.5mm">
		                      <xsl:if test="relacion != ''">
								  <xsl:value-of select="relacion"/>
		                      </xsl:if>                     
		                      <fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
		                    </fo:table-cell>
		                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
		                      <fo:block line-height="4.5mm">
		                      <xsl:if test="organismo != ''">
								  <xsl:value-of select="organismo"/>
		                      </xsl:if>
		                      <fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
		                    </fo:table-cell>
		                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
		                      <fo:block line-height="4.5mm">
		                      <xsl:if test="cargo != ''">
								  <xsl:value-of select="cargo"/>
		                      </xsl:if>
		                      <fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
		                    </fo:table-cell>
		                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
		                      <fo:block line-height="4.5mm">
		                      <xsl:if test="fechaServicio != ''">
								  <xsl:value-of select="fechaServicio"/>
		                      </xsl:if>                   
		                      <fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
		                    </fo:table-cell>                                                                                
		                  </fo:table-row>
						  </xsl:for-each>
		                </fo:table-body>
		              </fo:table>
		              </xsl:if>
		            <!--  FIN NOMBRE, PARENTESCO, ORGANISMO, CARGO Y FECHA DE SERVICIO  -->
              <!--  FIN I. ANTECEDENTES PERSONALES -->
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <!--  INICIO II. ACTIVIDADES COMERCIALES Y NEGOCIOS DEL CLIENTE -->
							<fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell  text-align="left"  padding-top="2mm" padding-left="3mm"  border-top="0.25pt solid #5885AC"  border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1" line-height="5mm" font-size="13pt"><fo:leader leader-pattern="space" leader-length="1mm" />II. Descripci�n de Actividades Comerciales y Negocios del Cliente </fo:block>
                    </fo:table-cell>
                  </fo:table-row>


                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm"  border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block line-height="5mm"> <xsl:value-of select="descripcionActividadesComerciales"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
									<fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!--  FIN II. ACTIVIDADES COMERCIALES Y NEGOCIOS DEL CLIENTE -->
              
              <!--  INICIO III. PROPOSITO CUENTA CORRIENTE -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell  text-align="left"  padding-top="2mm" padding-left="3mm"  border-top="0.25pt solid #5885AC"  border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1" line-height="5mm" font-size="13pt"><fo:leader leader-pattern="space" leader-length="1mm" />III. Prop�sito de la Cuenta Corriente Solicitada </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
									<fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm"  border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block line-height="5mm"> <xsl:value-of select="propositoCuenta"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
									<fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!--  FIN III. PROPOSITO CUENTA CORRIENTE -->

              <!-- INICIO IV. ANTECEDENTES TRIBUTARIOS. -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell  text-align="left"  padding-top="2mm" padding-left="3mm" border-bottom="0.25pt solid #5885AC"   border-top="0.25pt solid #5885AC"  border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1" line-height="5mm" font-size="13pt"><fo:leader leader-pattern="space" leader-length="1mm" />IV. Antecedentes Tributarios </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>             
            
              <fo:table table-layout="fixed" width="100%">
	                      <fo:table-column column-width="proportional-column-width(100)"/>	      	     
	                      <fo:table-body>	      
	                        <fo:table-row>	      
	                          <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
	                            <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Declaraciones mensuales PPM �ltimos 6 meses<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	                          </fo:table-cell>	      	   
	                        </fo:table-row>
	                      </fo:table-body>
	          </fo:table>
	          <fo:table table-layout="fixed" width="100%">
	                      <fo:table-column column-width="proportional-column-width(33)"/>
	                      <fo:table-column column-width="proportional-column-width(33)"/>
	                      <fo:table-column column-width="proportional-column-width(33)"/>	      	     
	                      <fo:table-body>	      
	                        <fo:table-row>	      
	                          <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
	                            <fo:block font-weight="bold" color="#5885AC" font-size="8pt">N� Mes<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	                          </fo:table-cell>	 
	                          <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
	                            <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Mes<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	                          </fo:table-cell>
	                          <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
	                            <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Monto M$<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	                          </fo:table-cell>     	   
	                        </fo:table-row>
	                      </fo:table-body>
	          </fo:table>
	      	      	      	     
	      	<xsl:if test="antecedentesTributarios = ''">
	      		<fo:table table-layout="fixed" width="100%">
	      			<fo:table-column column-width="proportional-column-width(33)"/>
	      			<fo:table-column column-width="proportional-column-width(33)"/>
	      			<fo:table-column column-width="proportional-column-width(33)"/>
	      		  <fo:table-body>
	      		   <fo:table-row>
	      		    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	      		      <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	      		    </fo:table-cell>
	      		    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	      		    		      <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	      		    </fo:table-cell>
	      		    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	      		    		      <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	      		    </fo:table-cell>
	      		   </fo:table-row>
	      		  </fo:table-body>
	            </fo:table>
	      	</xsl:if>
	              <xsl:for-each select='antecedentesTributarios/AntecedenteTributario'>	      
	                    <fo:table table-layout="fixed" width="100%">
	                      <fo:table-column column-width="proportional-column-width(33)"/>
	                      <fo:table-column column-width="proportional-column-width(33)"/>
	                      <fo:table-column column-width="proportional-column-width(33)"/>	      	     
	                      <fo:table-body>	      	     
	                        <fo:table-row>	      
	                          <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">

     						  <xsl:when test="numMes > 0">
							      <fo:block>
                                      <xsl:value-of select="numMes"/>	                           
     						      </fo:block>
							  </xsl:when>								  				 																	  
							  <xsl:otherwise>							
									<fo:leader leader-pattern="space" leader-length="1mm"/>	
							  </xsl:otherwise>
							  
	                          </fo:table-cell>	      
	                          <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                            <fo:block>
	                            <xsl:choose>
									  <xsl:when test="mes != ''">
										  <fo:block>
	                                         <xsl:value-of select="mes"/>	                           
	      						          </fo:block>
									  </xsl:when>								  				 																	  
									  <xsl:otherwise>							
											<fo:leader leader-pattern="space" leader-length="1mm"/>	
									  </xsl:otherwise>
	      						</xsl:choose>
	      						</fo:block>
	                           </fo:table-cell>
	      
	                          <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                            <fo:block>
	                            <xsl:choose>
									  <xsl:when test="monto > 0">
											  $<xsl:value-of select='format-number(monto, "#","decimal")' />
									  </xsl:when>								  				 																	  
									  <xsl:otherwise>							
											<fo:leader leader-pattern="space" leader-length="1mm"/>	
									  </xsl:otherwise>
							    </xsl:choose>
							    </fo:block>
	                          </fo:table-cell>	
	                                	    	      
	                        </fo:table-row>
	                      </fo:table-body>
	                    </fo:table>
	                    <!-- FIN   -->
        </xsl:for-each>  
                    
                    <fo:table table-layout="fixed" width="100%">
                      <fo:table-column column-width="proportional-column-width(33)"/>
                      <fo:table-column column-width="proportional-column-width(33)"/>   
                      <fo:table-column column-width="proportional-column-width(33)"/>  	     
                      <fo:table-body>	      	     
                        <fo:table-row>	      
                          <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">    						  
						      <fo:block>
                                   <fo:block font-weight="bold" color="#5885AC" font-size="10pt">Promedio M$<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>	                           
    						  </fo:block>								  				 																	  						      														
                          </fo:table-cell>	      
                          <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4" font-weight="bold">
                            <fo:block>
                            <xsl:choose>
								  <xsl:when test="promedioAntecedentesTributarios > 0">
									  <fo:block>
                                         <xsl:value-of select="promedioAntecedentesTributarios"/>	                           
      						          </fo:block>
								  </xsl:when>								  				 																	  
								  <xsl:otherwise>							
										<fo:leader leader-pattern="space" leader-length="1mm"/>	
								  </xsl:otherwise>
      						</xsl:choose>
      						</fo:block>
                           </fo:table-cell>  
                           
                           <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">    						  
						      <fo:block>
                                   <fo:leader leader-pattern="space" leader-length="1mm"/>	                           
    						  </fo:block>								  				 																	  						      														
                          </fo:table-cell>	
                                 	    	      
                        </fo:table-row>
                      </fo:table-body>
                    </fo:table>                        
                    
              <fo:block ><fo:leader leader-pattern="space" leader-length="20cm"/></fo:block>
              
              <fo:table table-layout="fixed" width="100%">
	                      <fo:table-column column-width="proportional-column-width(100)"/>	      	     
	                      <fo:table-body>	      
	                        <fo:table-row>	      
	                          <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
	                            <fo:block font-weight="bold" color="#5885AC" font-size="8pt">�ltima Declaraci�n Impuesto a la Renta<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	                          </fo:table-cell>	      	   
	                        </fo:table-row>
	                      </fo:table-body>
	          </fo:table>              

                    <fo:table table-layout="fixed" width="100%">
                      <fo:table-column column-width="proportional-column-width(16)"/>
                      <fo:table-column column-width="proportional-column-width(16)"/>
                      <fo:table-column column-width="proportional-column-width(16)"/>
                      <fo:table-column column-width="proportional-column-width(16)"/>
                      <fo:table-column column-width="proportional-column-width(16)"/>
                      <fo:table-column column-width="proportional-column-width(16)"/>	      	     
                      <fo:table-body>	      	     
                        <fo:table-row>	      
                          <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">    						  
						      <fo:block>
                                   <fo:block font-weight="bold" color="#5885AC" font-size="8pt">A�o<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>	                           
    						  </fo:block>								  				 																	  						      														
                          </fo:table-cell>	      
                          <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                            <fo:block>
                            <xsl:choose>
								  <xsl:when test="anyoUltimaDeclaracion > 0">
									  <fo:block>
                                         <xsl:value-of select="anyoUltimaDeclaracion"/>	                           
      						          </fo:block>
								  </xsl:when>								  				 																	  
								  <xsl:otherwise>							
										<fo:leader leader-pattern="space" leader-length="1mm"/>	
								  </xsl:otherwise>
      						</xsl:choose>
      						</fo:block>
                           </fo:table-cell>
                                                      
                          <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">    						  
						      <fo:block>
                                   <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Devoluci�n<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>	                           
    						  </fo:block>								  				 																	  						      														
                          </fo:table-cell>	      
                          <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                            <fo:block>
                            <xsl:choose>
								  <xsl:when test="montoUltimaDeclaracion > 0">
										  $<xsl:value-of select='format-number(montoUltimaDeclaracion, "#","decimal")' />
								  </xsl:when>								  				 																	  
								  <xsl:otherwise>							
										<fo:leader leader-pattern="space" leader-length="1mm"/>	
								  </xsl:otherwise>
						    </xsl:choose>
						    </fo:block>
                          </fo:table-cell>	
                          
                          <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">    						  
						      <fo:block>
                                   <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Pago M$<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>	                           
    						  </fo:block>								  				 																	  						      														
                          </fo:table-cell>	      
                          <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                            <fo:block>
                            <xsl:choose>
								  <xsl:when test="pagoUltimaDeclaracion > 0">
										  $<xsl:value-of select='format-number(pagoUltimaDeclaracion, "#","decimal")' />
								  </xsl:when>								  				 																	  
								  <xsl:otherwise>							
										<fo:leader leader-pattern="space" leader-length="1mm"/>	
								  </xsl:otherwise>
						    </xsl:choose>
						    </fo:block>
                          </fo:table-cell>	                          
                                	    	      
                        </fo:table-row>
                      </fo:table-body>
                    </fo:table>                            
              <!-- FIN IV. VOLUMENES ESPERADOS (MOVIMIENTOS MENSUALES  -->
              
              <fo:block ><fo:leader leader-pattern="space" leader-length="20cm"/></fo:block>
                            
              <!-- INICIO V. VOLUMENES ESPERADOS (MOVIMIENTOS MENSUALES). -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell  text-align="left"  padding-top="2mm" padding-left="3mm" border-bottom="0.25pt solid #5885AC"   border-top="0.25pt solid #5885AC"  border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1" line-height="5mm" font-size="13pt"><fo:leader leader-pattern="space" leader-length="1mm" />V. Vol�menes Esperados (Movimientos Mensuales)</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
             <!-- FIN V. VOLUMENES ESPERADOS (MOVIMIENTOS MENSUALES  -->

              <!-- INICIO  Inscripci�n DOMINIO VIGENTE, GRAV�MENES SOBRE BIEN RA�Z-->
              <fo:table table-layout="fixed" width="100%">
	                      <fo:table-column column-width="proportional-column-width(40)"/>
	                      <fo:table-column column-width="proportional-column-width(20)"/>
	                      <fo:table-column column-width="proportional-column-width(20)"/>
	                      <fo:table-column column-width="proportional-column-width(20)"/>	      	      
	                      <fo:table-body>	      
	                        <fo:table-row>	      
	                          <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
	                            <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Producto / Concepto<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	                          </fo:table-cell>
	      
	                          <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
	                            <fo:block font-weight="bold" color="#5885AC" font-size="8pt">N� Operaciones<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	                          </fo:table-cell>
	      
	                          <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
	                            <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Monto M$<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	                          </fo:table-cell>
	      
	                          <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
	                            <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Promedio Mensual M$<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	                          </fo:table-cell>
	      
	                        </fo:table-row>
	                      </fo:table-body>
	                    </fo:table>
	                    <!-- FIN Inscripci�n DOMINIO VIGENTE, GRAV�MENES SOBRE BIEN RA�Z-->
	      	      	      	      
	      	<xsl:if test="volumenesEsperados = ''">
	      		<fo:table table-layout="fixed" width="100%">
	      			<fo:table-column column-width="proportional-column-width(40)"/>
	      			<fo:table-column column-width="proportional-column-width(20)"/>
	      			<fo:table-column column-width="proportional-column-width(20)"/>
	      			<fo:table-column column-width="proportional-column-width(20)"/>
	      		  <fo:table-body>
	      		   <fo:table-row>
	      		    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	      		      <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	      		    </fo:table-cell>
	      		    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	      		    		      <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	      		    </fo:table-cell>
	      		    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	      		    		      <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	      		    </fo:table-cell>
	      		    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	      		    		      <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	      		    </fo:table-cell>
	      		   </fo:table-row>
	      		  </fo:table-body>
	                    </fo:table>
	      	</xsl:if>
	              <xsl:for-each select='volumenesEsperados/VolumenEsperado'>
	      
	                    <fo:table table-layout="fixed" width="100%">
	                      <fo:table-column column-width="proportional-column-width(40)"/>
	                      <fo:table-column column-width="proportional-column-width(20)"/>
	                      <fo:table-column column-width="proportional-column-width(20)"/>
	                      <fo:table-column column-width="proportional-column-width(20)"/>
	      	      
	                      <fo:table-body>	      	      
	                        <fo:table-row>	      
	                          <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
	                            <fo:block>
	                            <xsl:value-of select="descripcion"/>
	      											</fo:block>
	                          </fo:table-cell>
	      
	                          <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                            <fo:block>
	                            <xsl:choose>
	      													  <xsl:when test="nroOperaciones > 0">
	      															  <xsl:value-of select='format-number(nroOperaciones, "#","decimal")' />
	      													  </xsl:when>								  				 																	  
	      													  <xsl:otherwise>							
	      															<fo:leader leader-pattern="space" leader-length="1mm"/>	
	      													  </xsl:otherwise>
	      											</xsl:choose>
	      											</fo:block>
	                           </fo:table-cell>
	      
	                          <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                            <fo:block>
	                            <xsl:choose>
	      													  <xsl:when test="monto > 0">
	      															  $<xsl:value-of select='format-number(monto, "#","decimal")' />
	      													  </xsl:when>								  				 																	  
	      													  <xsl:otherwise>							
	      															<fo:leader leader-pattern="space" leader-length="1mm"/>	
	      													  </xsl:otherwise>
	      											</xsl:choose>
	      											</fo:block>
	                          </fo:table-cell>
	      	      
	                          <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                            <fo:block>
	                            <xsl:choose>
	      													  <xsl:when test="promedioMensual > 0">
	      															  $<xsl:value-of select='format-number(promedioMensual, "#","decimal")' />
	      													  </xsl:when>								  				 																	  
	      													  <xsl:otherwise>							
	      															<fo:leader leader-pattern="space" leader-length="1mm"/>	
	      													  </xsl:otherwise>
	      											</xsl:choose>
	      											</fo:block>
	                          </fo:table-cell>	      
	                        </fo:table-row>	      	      	      	      
	                      </fo:table-body>
	                    </fo:table>
	                    <!-- FIN   -->
        </xsl:for-each>             
	</fo:block>
	 </fo:block>
        </fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>
</xsl:stylesheet>