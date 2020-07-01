<?xml version="1.0" encoding="iso-8859-1"?>
<!-- <== version: 2006/10/25 12:00 ==> -->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
  <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
      <xsl:decimal-format name="rut" grouping-separator='.' />
  <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
  <xsl:template match="PerfilClientePersonaJuridica">
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
                      <fo:block padding-top="2mm" padding-bottom="5mm" text-align="center" font-weight="bold" font-size="17pt" color="#000000">Perfil de Cliente Personas Juridicas</fo:block>
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
            <fo:block font-family="Times" text-align="left" font-size="9pt">
            <!--INICIO Cuadro Texto Informativo, cliente y firma-->
            
            <!--  INICIO DATOS BANCA CLIENTE -->
	                <fo:block>
	                  <fo:table table-layout="fixed" width="100%">
	                    <fo:table-column column-width="proportional-column-width(30)"/>
	                    <fo:table-column column-width="proportional-column-width(35)"/>
	                    <fo:table-column column-width="proportional-column-width(35)"/>
	                    <fo:table-body>
	                      <fo:table-row>
	                        <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
	                          <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Estado</fo:block>
	                        </fo:table-cell>
	                        <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
	                          <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Fecha de cambio de estado</fo:block>
	                        </fo:table-cell>
	                        <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
	                          <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Fecha de recepci�n</fo:block>
	                        </fo:table-cell>
	                      </fo:table-row>
	                      <fo:table-row>
	                        <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                          <fo:block><xsl:value-of select="folio/Folio/estado"/></fo:block>
	                        </fo:table-cell>
	                        <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                          <fo:block><xsl:value-of select="folio/Folio/fechaEstado"/></fo:block>
	                        </fo:table-cell>
	                        <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                          <fo:block><xsl:value-of select="folio/Folio/fechaRecepcion"/></fo:block>
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
              <!--  INICIO I. ANTECEDENTES DEL CLIENTE -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1" font-size="13pt">I. Antecedentes Del Cliente</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              
							<fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Raz�n Social</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="razonSocial"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Nombre de Fantas�a</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="nombreFantasia"/><fo:leader leader-pattern="space" leader-length="1mm" /></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(33)"/>
                <fo:table-column column-width="proportional-column-width(33)"/>
                <fo:table-column column-width="proportional-column-width(34)"/>
                <fo:table-body>
                	<fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">RUT</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Notar�a</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Fecha Escritura de Constituci�n</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="rut"/>-<xsl:value-of select="dv"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="notaria"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="fechaEscritura"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Direcci�n</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="direccion/Direccion/direccion"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(40)"/>
                <fo:table-body>
                	<fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Comuna</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Ciudad</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">E-mail</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="direccion/Direccion/comuna"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="direccion/Direccion/ciudad"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="direccion/Direccion/email"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                	<fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Nombre Gerente Contacto </fo:block>
                    </fo:table-cell>  
                  </fo:table-row>
                 </fo:table-body>
              </fo:table>
              
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                	<fo:table-row>
                     <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="gerente/PerfilClientePersonaNatural/nombre"/><fo:leader leader-pattern="space" leader-length="1mm" /></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                 </fo:table-body>
              </fo:table>
              
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(40)"/>
                <fo:table-body>
                	<fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Tel�fono</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Tel�fono Celular</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">E-Mail</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="gerente/PerfilClientePersonaNatural/direccion/Direccion/telefono"/><fo:leader leader-pattern="space" leader-length="1mm" /></fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="gerente/PerfilClientePersonaNatural/direccion/Direccion/telefonoCelular"/><fo:leader leader-pattern="space" leader-length="1mm" /></fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="gerente/PerfilClientePersonaNatural/direccion/Direccion/email"/><fo:leader leader-pattern="space" leader-length="1mm" /></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <xsl:for-each select='representantesLegales/PerfilClientePersonaNatural'>
	              <fo:table table-layout="fixed" width="100%">
	                <fo:table-column column-width="proportional-column-width(100)"/>
	                <fo:table-body>
	                  <fo:table-row>
	                    <fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
	                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Nombre Representante Legal </fo:block>
	                    </fo:table-cell>
	                  </fo:table-row>
	                </fo:table-body>
	              </fo:table>
	              
	              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(40)"/>
                <fo:table-body>
                	<fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Apellido Paterno</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Apellido Materno</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Nombres</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="apellidoPaterno"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="apellidoMaterno"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="nombre"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Rut</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Tel�fono</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Email</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="rut"/>-<xsl:value-of select="dv"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="direccion/Direccion/telefono"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="direccion/Direccion/email"/></fo:block>
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
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Fecha de Nacimiento</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Nacionalidad</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="fechaNacimiento"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="nacionalidad"/></fo:block>
                    </fo:table-cell>
                   </fo:table-row>
                </fo:table-body>
                </fo:table>
                
                <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(40)"/>
                <fo:table-body>
                	<fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Cliente Bci </fo:block>
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
                      <fo:block><xsl:if test="clienteBci = 'true'">SI</xsl:if><xsl:if test="clienteBci = 'false'">NO</xsl:if></fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="oficinaBci"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="banca"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
                </fo:table>
                
                <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Cargo que Ocupa en la Empresa </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="cargo"/><fo:leader leader-pattern="space" leader-length="1mm" /></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
                </fo:table>
                
                
              </xsl:for-each>
              
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Socios con una participacion sobre un 10% de la sociedad que trabajan o han trabajado</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">en funciones oficiales en algun Poder del Estado o en las FFAA y de Orden </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:if test="personasAltaExposicionPublica != ''">SI</xsl:if><xsl:if test="personasAltaExposicionPublica = ''">NO</xsl:if></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <xsl:if test="personasAltaExposicionPublica != ''">
              <fo:table table-layout="fixed" width="100%">
	        <fo:table-column column-width="proportional-column-width(100)"/>
	           
                <fo:table-body>
                  <fo:table-row>
		       <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
			 <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Nombres de las Personas, Organismo, Cargo y Fecha de Servicio.</fo:block>
		       </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(20)"/>
                <fo:table-column column-width="proportional-column-width(20)"/>
                <fo:table-body>
                	<fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Nombre</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Organismo</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Cargo</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Fecha de Servicio </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <xsl:for-each select='personasAltaExposicionPublica/PersonaAltaExposicionPublica'>
	                  <fo:table-row>
	                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                      <fo:block><xsl:value-of select="nombre"/></fo:block>
	                    </fo:table-cell>
	                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                      <fo:block><xsl:value-of select="organismo"/></fo:block>
	                    </fo:table-cell>
	                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                      <fo:block><xsl:value-of select="cargo"/></fo:block>
	                    </fo:table-cell>
	                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                      <fo:block><xsl:value-of select="fechaServicio"/></fo:block>
	                    </fo:table-cell>
	                  </fo:table-row>
	                </xsl:for-each>
	                <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              </xsl:if>
             <!--  FIN I. ANTECEDENTES DEL CLIENTE -->
             
             <!--  INICIO II. ANTECEDENTES PROPIEDAD -->
             	<fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1" font-size="13pt">II. Antecedentes de la Propiedad de la Sociedad</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              
             	<fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(20)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Nombre o Raz�n social del Socio o Accionista</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">RUT</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Porcentaje de Participaci�n </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <xsl:if test="socios = ''">
			<fo:table-row>
			    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
			      <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
			    </fo:table-cell>
			    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
			      <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
			    </fo:table-cell>
			    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
			      <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
			    </fo:table-cell>
	                  </fo:table-row>
		  </xsl:if>
                  <xsl:for-each select='socios/Sociedad'>
	                  <fo:table-row>
	                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                      <fo:block><xsl:value-of select="nombre"/></fo:block>
	                    </fo:table-cell>
	                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                      <fo:block><xsl:value-of select="rut"/>-<xsl:value-of select="dv"/></fo:block>
	                    </fo:table-cell>
	                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                      <fo:block><xsl:value-of select="porcentajeParticipacion"/>%</fo:block>
	                    </fo:table-cell>
	                  </fo:table-row>
	                </xsl:for-each>
	                <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
             <!--  FIN II. ANTECEDENTES PROPIEDAD -->
             
             <!--  INICIO III. ANTECEDENTES COMERCIALES -->
							<fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell  text-align="left"  padding-top="2mm" padding-left="3mm"  border-top="0.25pt solid #5885AC"  border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1" line-height="5mm" font-size="13pt"><fo:leader leader-pattern="space" leader-length="1mm" />III. Antecedentes Comerciales</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
									
									<fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Descripci�n de Actividades Comerciales del Cliente</fo:block>
                    </fo:table-cell>
                  </fo:table-row>

                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm"  border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block> <xsl:value-of select="descripcionActividadesComerciales"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Principales Clientes </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  
                  <xsl:if test="principalesClientes = ''">
		     <fo:table-row>
                       <fo:table-cell  text-align="left" padding-top="2mm" padding-left="8mm"  border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                       </fo:table-cell>
                     </fo:table-row>
                  </xsl:if>
                  <xsl:for-each select='principalesClientes/String'>
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="2mm" padding-left="8mm"  border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block> <xsl:value-of select="."/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  </xsl:for-each>
                  
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Principales Proveedores </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  
                  <xsl:if test="principalesProveedores = ''">
		     <fo:table-row>
			 <fo:table-cell  text-align="left" padding-top="2mm" padding-left="8mm"  border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
			  <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
			 </fo:table-cell>
		       </fo:table-row>
                  </xsl:if>
                  <xsl:for-each select='principalesProveedores/String'>
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="2mm" padding-left="8mm"  border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block> <xsl:value-of select="."/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  </xsl:for-each>
                  
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC">
                    </fo:table-cell>
                  </fo:table-row>
                  
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table table-layout="fixed" width="60%">
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(40)"/>
                <fo:table-body>
									<fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Compras Anuales M$</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                      <xsl:choose>
			  <xsl:when test="comprasAnuales > 0">
					  $<xsl:value-of select='format-number(comprasAnuales, "#","decimal")' />
			  </xsl:when>								  				 																	  
			  <xsl:otherwise>							
					<fo:leader leader-pattern="space" leader-length="1mm"/>	
			  </xsl:otherwise>
			</xsl:choose>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Ventas Anuales M$</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
			<xsl:choose>
			  <xsl:when test="ventasAnuales > 0">
					  $<xsl:value-of select='format-number(ventasAnuales, "#","decimal")' />
			  </xsl:when>								  				 																	  
			  <xsl:otherwise>							
					<fo:leader leader-pattern="space" leader-length="1mm"/>	
			  </xsl:otherwise>
			</xsl:choose>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
                    </fo:table-cell>
                  </fo:table-row>
                 </fo:table-body>
              </fo:table>
              
              <!--  FIN III. ANTECEDENTES COMERCIALES -->
             
             <!--  INICIO IV. PROPOSITO CUENTA CORRIENTE -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell  text-align="left"  padding-top="2mm" padding-left="3mm"  border-top="0.25pt solid #5885AC"  border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1" line-height="5mm" font-size="13pt"><fo:leader leader-pattern="space" leader-length="1mm" />IV. Prop�sito de la Cuenta Corriente Solicitada </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
									<fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm"  border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block> <xsl:value-of select="propositoCuenta"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
									<fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!--  FIN IV. PROPOSITO CUENTA CORRIENTE -->
             
             <!--  INICIO V. DEUDAS BANCARIAS-->
             	<fo:block>
             	<fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1" font-size="13pt">V. Deudas / Referencias Bancarias </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              </fo:block>
             
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(20)"/>
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(20)"/>
                <fo:table-body>
                	<fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Banco</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">N� Cuenta Corriente </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Tipo Deuda</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Monto Deuda M$</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <xsl:if test="deudasBancariasComerciales = ''">
                  	<fo:table-row>
			    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
			      <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
			    </fo:table-cell>
			    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
			      <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
			    </fo:table-cell>
			    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
			      <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
			    </fo:table-cell>
			    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
			      <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
			    </fo:table-cell>
	                  </fo:table-row>
                  </xsl:if>
                  <xsl:for-each select='deudasBancariasComerciales/DeudaBancariaComercial'>
	                  <fo:table-row>
	                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                      <fo:block><xsl:value-of select="banco"/></fo:block>
	                    </fo:table-cell>
	                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                      <fo:block><xsl:value-of select="cuentaCorriente"/></fo:block>
	                    </fo:table-cell>
	                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                      <fo:block><xsl:value-of select="tipoDeuda"/></fo:block>
	                    </fo:table-cell>
	                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                      <fo:block>
	                       <xsl:choose>
				  <xsl:when test="montoDeuda > 0">
						  $<xsl:value-of select='format-number(montoDeuda, "#","decimal")' />
				  </xsl:when>								  				 																	  
				  <xsl:otherwise>							
						<fo:leader leader-pattern="space" leader-length="1mm"/>	
				  </xsl:otherwise>
	      			</xsl:choose>
	                      </fo:block>
	                    </fo:table-cell>
	                  </fo:table-row>
	                </xsl:for-each>
	                <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
             <!--  FIN V. DEUDAS BANCARIAS-->
             
             <!--  INICIO VI. RELACION BANCO-->
             	<fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1" font-size="13pt">VI. Relaci�n con el Banco</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
             
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(45)"/>
                <fo:table-column column-width="proportional-column-width(5)"/>
                <fo:table-column column-width="proportional-column-width(45)"/>
                <fo:table-column column-width="proportional-column-width(5)"/>
                <fo:table-body>
                	<fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                    <fo:block>Cliente Actual</fo:block>
	                  </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt"><xsl:if test="clienteBci = 'true'">X</xsl:if></fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                      <fo:block>Cliente Nuevo</fo:block>
	                  </fo:table-cell>
	                  <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt"><xsl:if test="clienteNuevo = 'true'">X</xsl:if></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-body>
                	<fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Fecha Inicio Relaci�n</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                      <fo:block><xsl:value-of select="fechaInicioRelacion"/></fo:block>
	                  </fo:table-cell>
	                 </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-body>
                	<fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Productos Vigentes</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(45)"/>
                <fo:table-column column-width="proportional-column-width(5)"/>
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-body>
                	<xsl:for-each select='productosVigentes/Producto'>
	                	<fo:table-row>
	                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                      <fo:block><xsl:value-of select="descripcion"/></fo:block>
	                    </fo:table-cell>
	                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
	                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt"><xsl:if test="solicitado = 'true'">X</xsl:if></fo:block>
	                    </fo:table-cell>
	                  </fo:table-row>
                  </xsl:for-each>
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
             <!--  FIN VI. RELACION BANCO-->
             
             <!--  INICIO VII. ANTECEDENTES ECONOMICOS-->
             	<fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1" font-size="13pt">VII. Antecedentes Econ�micos - Financieros</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              
             	<fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                	<fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Marcar los Antecedentes Recibidos del Cliente Seg�n Corresponda </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(95)"/>
                <fo:table-column column-width="proportional-column-width(5)"/>
                <fo:table-body>
                	<fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>Balance �ltimos 2 A�os</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt"><xsl:if test="balanceUltimosAnyos = 'true'">X</xsl:if></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>�ltima Declaraci�n Impuesto a la Renta</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt"><xsl:if test="ultimaDeclaracion = 'true'">X</xsl:if></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>12 �ltimos IVAS </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt"><xsl:if test="ultimosIvas = 'true'">X</xsl:if></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>Detalle de Activos </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt"><xsl:if test="detalleActivos = 'true'">X</xsl:if></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>Detalle de Pasivos</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt"><xsl:if test="detallePasivos = 'true'">X</xsl:if></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>Flujo de Caja </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt"><xsl:if test="flujoCaja = 'true'">X</xsl:if></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>FECU</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt"><xsl:if test="fecu = 'true'">X</xsl:if></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
             <!--  FIN VII. ANTECEDENTES ECONOMICOS-->
             
             <!--  INICIO VIII. PARTICIPACION SOCIEDADES-->
             	<fo:block>
             	<fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1" font-size="13pt">VIII. Participaci�n en Sociedades (Mayor a un 2%)</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              </fo:block>
              
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(20)"/>
                <fo:table-column column-width="proportional-column-width(10)"/>
                <fo:table-column column-width="proportional-column-width(40)"/>
                <fo:table-body>
                	<fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Nombre</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">RUT</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Porcentaje</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Actividad</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <xsl:if test="sociedadesParticipa = ''">
			<fo:table-row>
			    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
			      <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
			    </fo:table-cell>
			    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
			      <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
			    </fo:table-cell>
			    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
			      <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
			    </fo:table-cell>
			    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
			      <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
			    </fo:table-cell>
	                  </fo:table-row>
	      	</xsl:if>
                  <xsl:for-each select='sociedadesParticipa/Sociedad'>
	                  <fo:table-row>
	                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                      <fo:block><xsl:value-of select="nombre"/></fo:block>
	                    </fo:table-cell>
	                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                      <fo:block><xsl:value-of select="rut"/>-<xsl:value-of select="dv"/></fo:block>
	                    </fo:table-cell>
	                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                      <fo:block><xsl:value-of select="porcentajeParticipacion"/>%</fo:block>
	                    </fo:table-cell>
	                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                      <fo:block><xsl:value-of select="actividad"/></fo:block>
	                    </fo:table-cell>
	                  </fo:table-row>
	                </xsl:for-each>
	                <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
             <!--  FIN VIII. PARTICIPACION SOCIEDADES-->
             
             <!-- INICIO VI. DEUDAS / REFERENCIAS BANCARIAS Y COMERCIALES  -->
	                   <fo:table table-layout="fixed" width="100%">
	                     <fo:table-column column-width="proportional-column-width(100)"/>
	                     <fo:table-body>
	     
	                       <fo:table-row>
	                         <fo:table-cell  text-align="left"  padding-top="2mm" padding-left="3mm" border-bottom="0.25pt solid #5885AC"   border-top="0.25pt solid #5885AC"  border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	                           <fo:block font-weight="bold" color="#70A0C1" line-height="5mm" font-size="13pt"><fo:leader leader-pattern="space" leader-length="1mm" />IX. Antecedentes Tributarios</fo:block>
	                         </fo:table-cell>
	                       </fo:table-row>
	     
	     
	     
	                     </fo:table-body>
	                   </fo:table>
	                  <!-- FIN VI. DEUDAS / REFERENCIAS BANCARIAS Y COMERCIALES  -->
	     
	     
	                   <!-- INICIO MOTIVO RETIRO -->
	                   <fo:table table-layout="fixed" width="100%">
	                     <fo:table-column column-width="proportional-column-width(100)"/>
	     
	                     <fo:table-body>
	                       <fo:table-row>
	                         <fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
	                           <fo:block font-weight="bold" color="#5885AC" font-size="8pt" text-align="center" >Declaraciones Mensuales PPM �ltimos 6 Meses </fo:block>
	                         </fo:table-cell>
	                       </fo:table-row>
	     
	     
	                     </fo:table-body>
	                   </fo:table>
	                   <!-- FIN MOTIVO RETIRO -->
	     
	     
	     
	     
	                 <!--  INICIO -->
	                 <fo:block>
	                   <fo:table table-layout="fixed" width="100%">
	     		<fo:table-column column-width="proportional-column-width(15)"/>
	                     <fo:table-column column-width="proportional-column-width(15)"/>
	     				<fo:table-column column-width="proportional-column-width(15)"/>
	     				<fo:table-column column-width="proportional-column-width(15)"/>
	     				<fo:table-column column-width="proportional-column-width(15)"/>
	     				<fo:table-column column-width="proportional-column-width(15)"/>
	     				<fo:table-column column-width="proportional-column-width(15)"/>				
	                     <fo:table-body>
	     
	     			 <fo:table-row>
	     			 
	     			 
	     						<fo:table-cell>                      
	                            <fo:block>
	     						  
	     							 <fo:table table-layout="fixed" width="100%">
	     								<fo:table-column column-width="proportional-column-width(10)"/>		
	     								<fo:table-body>
	     								  <fo:table-row>
	     									<fo:table-cell text-align="left" padding-top="2mm" padding-bottom="0.5mm"  padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
	     									  <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Mes</fo:block>
	     									</fo:table-cell>	
	     								  </fo:table-row>
	     								  <fo:table-row>
	     									<fo:table-cell text-align="left" padding-top="2mm" padding-bottom="0.5mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
	     									  <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Monto M$</fo:block>
	     									</fo:table-cell>		
	     								  </fo:table-row>
	     								 </fo:table-body>
	     							  </fo:table>	
	     									  
	     						  </fo:block>
	                         </fo:table-cell>
	                                            	<xsl:if test="antecedentesTributarios = ''">
	     						<fo:table-cell>
	     						  <fo:block>
	     						  
	     							 <fo:table table-layout="fixed" width="100%">
	     								<fo:table-column column-width="proportional-column-width(10)"/>		
	     								<fo:table-body>
	     								  <fo:table-row>
	     									<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	     									  <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	     									</fo:table-cell>				
	     								  </fo:table-row>
	     								  <fo:table-row>
	     									<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	     									  <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	     									</fo:table-cell>				
	     								  </fo:table-row>
	     								 </fo:table-body>
	     							  </fo:table>
	     						 </fo:block>
	     						</fo:table-cell>
	     						<fo:table-cell>
	     						  <fo:block>
	     							  <fo:table table-layout="fixed" width="100%">
	     								<fo:table-column column-width="proportional-column-width(10)"/>		
	     								<fo:table-body>
	     								  <fo:table-row>
	     									<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	     									  <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	     									</fo:table-cell>				
	     								  </fo:table-row>
	     								  <fo:table-row>
	     									<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	     									  <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	     									</fo:table-cell>				
	     								  </fo:table-row>
	     								 </fo:table-body>
	     							  </fo:table>
	     						  </fo:block>
	     						</fo:table-cell>
	     						<fo:table-cell>
	     						  <fo:block>	  
	     							  <fo:table table-layout="fixed" width="100%">
	     								<fo:table-column column-width="proportional-column-width(10)"/>		
	     								<fo:table-body>
	     								  <fo:table-row>
	     									<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	     									  <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	     									</fo:table-cell>				
	     								  </fo:table-row>
	     								  <fo:table-row>
	     									<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	     									  <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	     									</fo:table-cell>				
	     								  </fo:table-row>
	     								 </fo:table-body>
	     							  </fo:table>
	     						  </fo:block>
	     						</fo:table-cell>
	     						<fo:table-cell>
	     						  <fo:block>	  
	     							  <fo:table table-layout="fixed" width="100%">
	     								<fo:table-column column-width="proportional-column-width(10)"/>		
	     								<fo:table-body>
	     								  <fo:table-row>
	     									<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	     									  <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	     									</fo:table-cell>				
	     								  </fo:table-row>
	     								  <fo:table-row>
	     									<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	     									  <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	     									</fo:table-cell>				
	     								  </fo:table-row>
	     								 </fo:table-body>
	     							  </fo:table>
	     						  </fo:block>
	     						</fo:table-cell>
	     						<fo:table-cell>
	     						  <fo:block>	  
	     							  <fo:table table-layout="fixed" width="100%">
	     								<fo:table-column column-width="proportional-column-width(10)"/>		
	     								<fo:table-body>
	     								  <fo:table-row>
	     									<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	     									  <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	     									</fo:table-cell>				
	     								  </fo:table-row>
	     								  <fo:table-row>
	     									<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	     									  <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	     									</fo:table-cell>				
	     								  </fo:table-row>
	     								 </fo:table-body>
	     							  </fo:table>
	     						  </fo:block>
	     						</fo:table-cell>
	     						<fo:table-cell>
	     						  <fo:block>	  
	     							  <fo:table table-layout="fixed" width="100%">
	     								<fo:table-column column-width="proportional-column-width(10)"/>		
	     								<fo:table-body>
	     								  <fo:table-row>
	     									<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	     									  <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	     									</fo:table-cell>				
	     								  </fo:table-row>
	     								  <fo:table-row>
	     									<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	     									  <fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	     									</fo:table-cell>				
	     								  </fo:table-row>
	     								 </fo:table-body>
	     							  </fo:table>
	     						  </fo:block>
	     						</fo:table-cell>
	                         			</xsl:if>		 
	     					<xsl:for-each select="antecedentesTributarios/AntecedenteTributario">
	     						<fo:table-cell>
	     						  <fo:block>
	     						  
	     							 <fo:table table-layout="fixed" width="100%">
	     								<fo:table-column column-width="proportional-column-width(10)"/>		
	     								<fo:table-body>
	     								  <fo:table-row>
	     									<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	     									  <fo:block><xsl:value-of select="mes"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	     									</fo:table-cell>				
	     								  </fo:table-row>
	     								  <fo:table-row>
	     									<fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
	     									  <fo:block>
	     									  	<xsl:choose>
	     												  <xsl:when test="monto != 0">
	     														$<xsl:value-of select='format-number(monto, "#","decimal")' />
	     														<fo:leader leader-pattern="space" leader-length="1mm"/>
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
	     									  
	     						  </fo:block>
	     						</fo:table-cell>
	                         </xsl:for-each>
	                  </fo:table-row>        
	                  
	                  
	                                 </fo:table-body>
	                   </fo:table>
	                 </fo:block>
            <!--  FIN-->
             <!--  INICIO -->
            <fo:block>
              <fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(15)"/>
                <fo:table-column column-width="proportional-column-width(15)"/>
				<fo:table-column column-width="proportional-column-width(15)"/>
				<fo:table-column column-width="proportional-column-width(15)"/>
				<fo:table-column column-width="proportional-column-width(15)"/>
				<fo:table-column column-width="proportional-column-width(15)"/>
				<fo:table-column column-width="proportional-column-width(15)"/>	
                <fo:table-body>

                  <fo:table-row>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-bottom="0.5mm" padding-left="3mm" border-top="0.1pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.1pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Promedio M$</fo:block>
                    </fo:table-cell>

                    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.1pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.1pt solid #5885AC" border-right="0.1pt solid #5885AC">
                      <fo:block>
                      	<xsl:choose>
												  <xsl:when test="promedioAntecedentesTributarios != 0">
														$<xsl:value-of select='format-number(promedioAntecedentesTributarios, "#","decimal")' />
														<fo:leader leader-pattern="space" leader-length="1mm"/>
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
            </fo:block>
            <!--  FIN-->

						<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
						
               
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                	<fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">�ltima Declaraci�n Impuesto a la Renta </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:block>
		    <fo:table table-layout="fixed" width="100%">
		      <fo:table-column column-width="proportional-column-width(10)"/>
		      <fo:table-column column-width="proportional-column-width(20)"/>
		      <fo:table-column column-width="proportional-column-width(15)"/>
		      <fo:table-column column-width="proportional-column-width(20)"/>
		      <fo:table-column column-width="proportional-column-width(15)"/>
		      <fo:table-column column-width="proportional-column-width(20)"/>


		      <fo:table-body>

			<fo:table-row>

			  <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
			    <fo:block font-weight="bold" color="#5885AC" font-size="8pt">A�o</fo:block>
			  </fo:table-cell>

			  <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
			    <fo:block>
				   <xsl:choose>
				  <xsl:when test="anyoUltimaDeclaracion != 0">
						<xsl:value-of select='format-number(anyoUltimaDeclaracion, "#","decimal")' />
						<fo:leader leader-pattern="space" leader-length="1mm"/>
				  </xsl:when>			
				  <xsl:otherwise>							
						<fo:leader leader-pattern="space" leader-length="1mm"/>	
				  </xsl:otherwise>
			  </xsl:choose>
			    </fo:block>
			  </fo:table-cell>




			  <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
			    <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Devoluci�n</fo:block>
			  </fo:table-cell>

			  <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
			      <fo:block>
			       <xsl:choose>
												  <xsl:when test="montoUltimaDeclaracion != 0">
														$<xsl:value-of select='format-number(montoUltimaDeclaracion, "#","decimal")' />
														<fo:leader leader-pattern="space" leader-length="1mm"/>
												  </xsl:when>			
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											  </xsl:choose>
			      </fo:block>
			  </fo:table-cell>


			  <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
			    <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Pago M$</fo:block>
			  </fo:table-cell>

			  <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
			      <fo:block>

			       <xsl:choose>
												  <xsl:when test="pagoUltimaDeclaracion != 0">
														$<xsl:value-of select='format-number(pagoUltimaDeclaracion, "#","decimal")' />
														<fo:leader leader-pattern="space" leader-length="1mm"/>
												  </xsl:when>			
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											  </xsl:choose>
											  </fo:block>
			  </fo:table-cell>

			</fo:table-row>


			<fo:table-row>
			  <fo:table-cell  text-align="left" padding-top="5mm" padding-left="3mm">
			  </fo:table-cell>
			</fo:table-row>

		      </fo:table-body>
		    </fo:table>
            </fo:block>
             <!--  FIN IX. ANTECEDENTES TRIBUTARIOS-->
             
             <!-- INICIO X. VOLUMENES ESPERADOS (MOVIMIENTOS MENSUALES). -->
              <fo:block break-before="page">
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
									<fo:table-row>
                    <fo:table-cell  text-align="left"  padding-top="2mm" padding-left="3mm" border-bottom="0.25pt solid #5885AC"   border-top="0.25pt solid #5885AC"  border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1" line-height="5mm" font-size="13pt"><fo:leader leader-pattern="space" leader-length="1mm" />X. Vol�menes Esperados (Movimientos Mensuales).</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
								</fo:table-body>
              </fo:table>
              </fo:block>
              <fo:block keep-with-previous="always">
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
	                            <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Monto $<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
	                          </fo:table-cell>
	      
	                          <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
	                            <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Promedio Mensual $<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
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
	      			<fo:block font-weight="bold" color="#5885AC" font-size="8pt">
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
             <!-- FIN X. VOLUMENES ESPERADOS (MOVIMIENTOS MENSUALES  -->
             
					</fo:block>
					  </fo:block>
        </fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>
</xsl:stylesheet>