<?xml version="1.0" encoding="iso-8859-1"?>
<!-- <== version: 2006/10/25 12:00 ==> -->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
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
                      <fo:block padding-top="2mm" padding-bottom="5mm" text-align="center" font-weight="bold" font-size="17pt" color="#000000">Anexo Perfil de Cliente Personas Naturales</fo:block>
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
                                <fo:block>Banco de Crédito e Inversiones</fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                              <fo:table-cell padding-left="2mm">
                                <fo:block>R.U.T 97.006.000-6</fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                              <fo:table-cell padding-left="2mm" padding-bottom="1mm">
                                <fo:block>Avda. El Golf N°125 - Las Condes</fo:block>
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
                                            <fo:block>Página</fo:block>
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
        <fo:block font-family="Times" text-align="left" font-size="9pt">
            <!--INICIO Cuadro Texto Informativo, cliente y firma-->
            <!--  INICIO DATOS BANCA CLIENTE -->
            <fo:block font-family="Times" text-align="left" font-size="9pt">
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block color="#5885AC" >Código Oficina</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="codigoOficinaBci"/></fo:block>
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
              <!--  INICIO I. LISTAS -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1" font-size="13pt">I. Cliente figura en Listas</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Cliente Figura en Lista OFAC</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Cliente Figura en Listas Negativas</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="ofac"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="listanegativa"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!--  FIN I. LISTAS -->
              
              <!--  INICIO II. ACTIVIDAD -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1" font-size="13pt">II. Caracteristicas de la Actividad del Cliente </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Marcar actividad riesgosa del cliente si la hay</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
               </fo:table-body>
              </fo:table>
              
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(5)"/>
                <fo:table-column column-width="proportional-column-width(95)"/>
                <fo:table-body>
                  <xsl:if test="actividadesRiesgosas = ''">
                  	<fo:table-row>
			    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
			      <fo:block font-weight="bold" color="#5885AC" font-size="8pt"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
			    </fo:table-cell>
			    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
			      <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
			    </fo:table-cell>
                  </fo:table-row>
                  </xsl:if>
                  <xsl:for-each select='actividadesRiesgosas/ActividadRiesgosa'>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt"><xsl:if test="seleccionado = 'true'">X</xsl:if></fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="descripcion"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  </xsl:for-each>
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
                    </fo:table-cell>
                  </fo:table-row>
               </fo:table-body>
              </fo:table>
              <!--  FIN II. ACTIVIDAD -->
              
              <!--  INICIO III. PAISES RIESGOSOS -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1" font-size="13pt">III. ¿Cliente realiza negocios con paises riesgosos ? </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">(Paraisos Finacieros)</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="realizaNegociosParaisosFinacieros"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!--  FIN III. PAISES RIESGOSOS -->
							
							<!--  INICIO IV. VISITAS AL CLIENTE -->
              <fo:table table-layout="fixed" width="100%"  break-before="page">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1" font-size="13pt">IV. Visitas al Cliente</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(20)"/>
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(20)"/>
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Fecha de Visita </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="visita/Visita/fechaVisita"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Contacto</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="visita/Visita/contacto"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              
  
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(20)"/>
                <fo:table-column column-width="proportional-column-width(80)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Motivo Visita</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="visita/Visita/motivo"/></fo:block>
                    </fo:table-cell>
                   </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!--  FIN IV. VISITAS AL CLIENTE -->
                            
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(75)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Persona que efectuó la Visita </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="visita/Visita/efectuadaPor"/></fo:block>
                    </fo:table-cell>
                   </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(20)"/>
                <fo:table-column column-width="proportional-column-width(80)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Cargo</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="visita/Visita/cargo"/></fo:block>
                    </fo:table-cell>
                   </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!--  FIN IV. VISITAS AL CLIENTE -->

					 </fo:block>
</fo:block>
        </fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>
</xsl:stylesheet>
