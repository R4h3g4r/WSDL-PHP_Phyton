<?xml version="1.0" encoding="iso-8859-1"?>
<!-- <== version: 2006/10/25 12:00 ==> -->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
  <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
      <xsl:decimal-format name="rut" grouping-separator='.' />
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
                      <fo:block padding-top="2mm" padding-bottom="5mm" text-align="center" font-weight="bold" font-size="17pt" color="#000000">Perfil del Cliente Personas Naturales</fo:block>
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
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Fecha de recepción</fo:block>
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
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Código Oficina</fo:block>
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
                      <fo:block font-weight="bold" color="#70A0C1" font-size="13pt">I. Antecedentes Personales</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!--  FIN I. ANTECEDENTES PERSONALES -->



               <!--  INICIO, APELLIDO PATERNO, APELLIDO MATERNO, NOMBRES -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Nombre del Cliente</fo:block>
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
                    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="apellidoMaterno"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="nombre"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
               <!--  INICIO, APELLIDO PATERNO, APELLIDO MATERNO, NOMBRES -->



               <!--  INICIO, RUT, SEXO -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(80)"/>
                <fo:table-column column-width="proportional-column-width(20)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">RUT</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Sexo</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                      <xsl:value-of select='format-number(rut, "#","rut")' />-<xsl:value-of select="dv"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                       <xsl:value-of select="sexo"/>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
               <!--  FIN, RUT, SEXO -->


               <!--  INICIO, FECHA DE NACIMIENTO, NACIONALIDAD -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(20)"/>
                <fo:table-column column-width="proportional-column-width(80)"/>
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
                    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="nacionalidad"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!--  FIN, FECHA DE NACIMIENTO, NACIONALIDAD -->



              <!--  INICIO, DOMICILIO CLIENTE -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Domicilio Cliente</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="direccion/Direccion/direccion"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
             <!--  FIN, DOMICILIO CLIENTE -->


              <!-- INICIO  I. ANTECEDENTES PERSONALES   COMUNA, CIUDAD -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Comuna</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Ciudad</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="direccion/Direccion/comuna"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="direccion/Direccion/ciudad"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
            <!-- FIN  I. ANTECEDENTES PERSONALES   COMUNA, CIUDAD -->


            <!-- INICIO  I. ANTECEDENTES PERSONALES   TIEMPO DOMICILIO ACTUAL, TIEMPO DOMICILIO ANTERIOR, AÑOS,  -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Tiempo Domicilio Actual</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Tiempo Domicilio Anterior</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                      
                      <xsl:choose>
												  <xsl:when test="direccion/Direccion/anosDomActual != 0">
														<xsl:value-of select="direccion/Direccion/anosDomActual"/> Año(s)
												  </xsl:when>			
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											</xsl:choose>
											<xsl:choose>
												  <xsl:when test="direccion/Direccion/mesesDomActual != 0">
														<xsl:value-of select="direccion/Direccion/mesesDomActual"/> Mes(es)
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
							  <xsl:when test="direccion/Direccion/anosDomAnterior != 0">
									<xsl:value-of select="direccion/Direccion/anosDomAnterior"/> Año(s)
							  </xsl:when>	
							 <xsl:otherwise>							
									<fo:leader leader-pattern="space" leader-length="1mm"/>	
							  </xsl:otherwise>		
					    </xsl:choose>
					    <xsl:choose>
							  <xsl:when test="direccion/Direccion/mesesDomAnterior != 0">
									<xsl:value-of select="direccion/Direccion/mesesDomAnterior"/> Mes(es)
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
            <!-- FIN  I. ANTECEDENTES PERSONALES   TIEMPO DOMICILIO ACTUAL, TIEMPO DOMICILIO ANTERIOR, AÑOS,  -->




            <!-- INICIO  I. ANTECEDENTES PERSONALES   PROPIA/ARRENDADA/OTRA  -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Propia/Arrendada/Otra</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
						 <xsl:choose>
							  <xsl:when test="direccion/Direccion/tipoPropiedad != ''">
									<xsl:value-of select="direccion/Direccion/tipoPropiedad"/>
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
           <!-- FIN  I. ANTECEDENTES PERSONALES   PROPIA/ARRENDADA/OTRA  -->



           <!-- INICIO  I. ANTECEDENTES PERSONALES, TÉLEFONO/TÉLEFONO CELULAR/E-MAIL  -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(33)"/>
                <fo:table-column column-width="proportional-column-width(33)"/>
                <fo:table-column column-width="proportional-column-width(34)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Teléfono Particular</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Teléfono Celular</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">E-Mail</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="direccion/Direccion/telefono"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="direccion/Direccion/telefonoCelular"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="direccion/Direccion/email"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
           <!-- FIN  I. ANTECEDENTES PERSONALES, TÉLEFONO/TÉLEFONO CELULAR/E-MAIL  -->



           <!-- INICIO  I. ANTECEDENTES PERSONALES, ESTADO CIVIL/RÉGIMEN CONYUGAL/Nº CARGAS FAMILIARES/Nº HIJOS DEPENDIENTES -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Estado Civil</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Régimen Conyugal</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Nº Cargas Familiares</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Nº Hijos Dependientes</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="estadoCivil"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="regimenConyugal"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="cargasFamiliares"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="hijosDependientes"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
							<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Trabaja o ha Trabajado en funciones oficiales en algún Poder del Estado o en las FFAA y de Orden</fo:block>
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
            <!--  FIN ORGANISMO, CARGO Y FECHA DE SERVICIO  -->
						<fo:block break-before="page"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <!--  INICIO ES FAMILIAR DE PERSONAS QUE OCUPAN O HAN OCUPADO CARGOS EN ALGÚN PODER DEL ESTADO O EN LAS FFAA Y DE ORDEN(*)  -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt" line-height="4.5mm">Es familiar de personas que ocupan o han ocupado cargos en algún Poder del Estado o en las FFAA y de Orden</fo:block>
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
            <!--  FIN ES FAMILIAR DE PERSONAS QUE OCUPAN O HAN OCUPADO CARGOS EN ALGÚN PODER DEL ESTADO O EN LAS FFAA Y DE ORDEN(*)  -->

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
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt" line-height="4.5mm">Fecha Contratación</fo:block>
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

							<fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <!--  INICIO NOMBRE  -->
              <xsl:if test="conyuge != ''">
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt" line-height="4.5mm">Nombre Cónyuge </fo:block>
                    </fo:table-cell>
                  </fo:table-row>

                </fo:table-body>
              </fo:table>
            <!--  FIN NOMBRE  -->





              <!--  INICIO NOMBRE CONGUYE , APELLIDO PATERNO, APELLIDO MATERNO, NOMBRE   -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(33)"/>
                <fo:table-column column-width="proportional-column-width(33)"/>
                <fo:table-column column-width="proportional-column-width(34)"/>
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
                      <fo:block><xsl:value-of select="conyuge/PerfilClientePersonaNatural/apellidoPaterno"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="conyuge/PerfilClientePersonaNatural/apellidoMaterno"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="conyuge/PerfilClientePersonaNatural/nombre"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                  </fo:table-row>

                </fo:table-body>
              </fo:table>
              <!--  FIN NOMBRE CONGUYE , APELLIDO PATERNO, APELLIDO MATERNO, NOMBRE   -->






              <!--  INICIO CLIENTEBCI, OFICINA   -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-body>

                  <fo:table-row>
                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Cliente Bci </fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Oficina</fo:block>
                      </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block >
                      <fo:leader leader-pattern="space" leader-length="1mm"/>
                        <xsl:if test="conyuge/PerfilClientePersonaNatural/clienteBci = 'true'">SI</xsl:if>
                        <xsl:if test="conyuge/PerfilClientePersonaNatural/clienteBci = 'false'">NO</xsl:if>
                      </fo:block>
                    </fo:table-cell>

                    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="conyuge/PerfilClientePersonaNatural/oficinaBci"/></fo:block>
                    </fo:table-cell>

                  </fo:table-row>

                </fo:table-body>
              </fo:table>
              <!--  FIN CLIENTEBCI, OFICINA   -->





              <!--  INICIO RUT, BANCA , EMAIL  -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(33)"/>
                <fo:table-column column-width="proportional-column-width(33)"/>
                <fo:table-column column-width="proportional-column-width(34)"/>
                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Rut</fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Banca</fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Email</fo:block>
                    </fo:table-cell>


                  </fo:table-row>

                  <fo:table-row>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                      <xsl:value-of select='format-number(conyuge/PerfilClientePersonaNatural/rut, "#","rut")' />-<xsl:value-of select="conyuge/PerfilClientePersonaNatural/dv"/></fo:block>
                    </fo:table-cell>

                    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="conyuge/PerfilClientePersonaNatural/banca"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="conyuge/PerfilClientePersonaNatural/direccion/Direccion/email"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                  </fo:table-row>

                </fo:table-body>
              </fo:table>
              <!--  FIN  RUT, BANCA , EMAIL-->




              <!--  INICIO RUT, BANCA , EMAIL  -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-column column-width="proportional-column-width(50)"/>

                <fo:table-body>

                  <fo:table-row>
                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Fecha de Nacimiento (dia/mes/año) </fo:block>
                      </fo:table-cell>
                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Nacionalidad</fo:block>
                      </fo:table-cell>
                  </fo:table-row>




                  <fo:table-row>
                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="conyuge/PerfilClientePersonaNatural/fechaNacimiento"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                      </fo:table-cell>
                      <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="conyuge/PerfilClientePersonaNatural/nacionalidad"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                      </fo:table-cell>
                  </fo:table-row>



                </fo:table-body>
              </fo:table>
              </xsl:if>
              <!--  FIN  RUT, BANCA , EMAIL-->

            </fo:block>
            <!--FIN Cuadro Texto Informativo, cliente y firma-->


            <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>






              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1"  font-size="13pt">II. Antecedentes Educacionales</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>



            <!--  INICIO DATOS BANCA CLIENTE -->
            <fo:block>
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Cliente  </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Cónyuge</fo:block>
                    </fo:table-cell>

                  </fo:table-row>

                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Nivel Educacional  </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Nivel Educacional</fo:block>
                    </fo:table-cell>
                  </fo:table-row>

                </fo:table-body>
              </fo:table>
            </fo:block>
            <!--  FIN DATOS BANCA CLIENTE -->


            <fo:block>


            <!--  INICIO NIVEL EDUCACIONAL -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-column column-width="proportional-column-width(50)"/>

                <fo:table-body>

                  <fo:table-row>



                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="nivelEducacional"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>






                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="conyuge/PerfilClientePersonaNatural/nivelEducacional"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>




                  </fo:table-row>

                </fo:table-body>
              </fo:table>
              <!--  FIN  NIVEL EDUCACIONAL  -->



            </fo:block>


            <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>




              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell  text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1"  font-size="13pt">III. Antecedentes Laborales</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>


            <!--  INICIO Cliente  -->
            <fo:block>
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Cliente  </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Cónyuge</fo:block>
                    </fo:table-cell>

                  </fo:table-row>

                </fo:table-body>
              </fo:table>
            </fo:block>
            <!--  FIN DATOS BANCA CLIENTE -->


            <!--  INICIO BASICA -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(45)"/>
                <fo:table-column column-width="proportional-column-width(5)"/>
                <fo:table-column column-width="proportional-column-width(45)"/>
                <fo:table-column column-width="proportional-column-width(5)"/>

                <fo:table-body>

                  <fo:table-row>



                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>Dependiente</fo:block>
                    </fo:table-cell>


                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">
                         <xsl:if test="tipoActividad = 'DEP'">X</xsl:if>
                      </fo:block>
                    </fo:table-cell>





                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>Dependiente</fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">
                        <xsl:if test="conyuge/PerfilClientePersonaNatural/tipoActividad = 'DEP'">X</xsl:if>
                      </fo:block>
                    </fo:table-cell>


                  </fo:table-row>

                </fo:table-body>
              </fo:table>
              <!--  FIN BASICA -->

            <!--  INICIO BASICA -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(45)"/>
                <fo:table-column column-width="proportional-column-width(5)"/>
                <fo:table-column column-width="proportional-column-width(45)"/>
                <fo:table-column column-width="proportional-column-width(5)"/>

                <fo:table-body>

                  <fo:table-row>



                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>Independiente</fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">
                        <xsl:if test="tipoActividad = 'IND'">X</xsl:if>
                      </fo:block>
                    </fo:table-cell>





                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>Independiente</fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">
                        <xsl:if test="conyuge/PerfilClientePersonaNatural/tipoActividad = 'IND'">X</xsl:if>
                      </fo:block>
                    </fo:table-cell>

                  </fo:table-row>

                </fo:table-body>
              </fo:table>
              <!--  FIN BASICA -->
            <!--  INICIO BASICA -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(45)"/>
                <fo:table-column column-width="proportional-column-width(5)"/>
                <fo:table-column column-width="proportional-column-width(45)"/>
                <fo:table-column column-width="proportional-column-width(5)"/>

                <fo:table-body>

                  <fo:table-row>



                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>Estudiante, Jubilado(a), Otros </fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">
                        <xsl:if test="tipoActividad = 'OTR'">X</xsl:if>
                      </fo:block>
                    </fo:table-cell>





                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>Estudiante, Jubilado(a), Otros </fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">
                        <xsl:if test="conyuge/PerfilClientePersonaNatural/tipoActividad = 'OTR'">X</xsl:if>
                      </fo:block>
                    </fo:table-cell>

                  </fo:table-row>

                </fo:table-body>
              </fo:table>
              <!--  FIN BASICA -->

              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Profesión</fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Profesión</fo:block>
                    </fo:table-cell>
                  </fo:table-row>

                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                      	<xsl:choose>
							  <xsl:when test="profesion != ''">
									<xsl:value-of select="profesion"/>
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
							  <xsl:when test="conyuge/PerfilClientePersonaNatural/profesion != ''">
									<xsl:value-of select="conyuge/PerfilClientePersonaNatural/profesion"/>
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


              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Razón Social del Empleador </fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Razón Social del Empleador </fo:block>
                    </fo:table-cell>
                  </fo:table-row>

                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="empleador/PerfilClientePersonaJuridica/razonSocial"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="conyuge/PerfilClientePersonaNatural/empleador/PerfilClientePersonaJuridica/razonSocial"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
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
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Rut del Empleador  </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Rut del Empleador </fo:block>
                    </fo:table-cell>
                  </fo:table-row>

                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                      	<xsl:choose>
							  <xsl:when test="empleador/PerfilClientePersonaJuridica/rut > 0">
									 <xsl:value-of select='format-number(empleador/PerfilClientePersonaJuridica/rut, "#","rut")' />-<xsl:value-of select="empleador/PerfilClientePersonaJuridica/dv"/>
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
							  <xsl:when test="conyuge/PerfilClientePersonaNatural/empleador/PerfilClientePersonaJuridica/rut > 0">
                      <xsl:value-of select='format-number(conyuge/PerfilClientePersonaNatural/empleador/PerfilClientePersonaJuridica/rut, "#","rut")' />- <xsl:value-of select="conyuge/PerfilClientePersonaNatural/empleador/PerfilClientePersonaJuridica/dv"/>
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




              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Cargo que Desempeña</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Cargo que Desempeña</fo:block>
                    </fo:table-cell>
                  </fo:table-row>

                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                          <xsl:value-of select="cargo"/>
                          <fo:leader leader-pattern="space" leader-length="1mm"/>	
                      </fo:block>
                    </fo:table-cell>

                    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                          <xsl:value-of select="conyuge/PerfilClientePersonaNatural/cargo"/>
                          <fo:leader leader-pattern="space" leader-length="1mm"/>	
                      </fo:block>
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
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Antiguedad en la Empresa </fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Antiguedad en la Empresa </fo:block>
                    </fo:table-cell>
                  </fo:table-row>

                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                       <fo:block>
                       <xsl:choose>
												  <xsl:when test="anyosAntiguedad != 0">
														<xsl:value-of select="anyosAntiguedad"/> Año(s)
												  </xsl:when>			
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											</xsl:choose>
											<xsl:choose>
												  <xsl:when test="mesesAntiguedad != 0">
														<xsl:value-of select="mesesAntiguedad"/> Mes(es)
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
												  <xsl:when test="conyuge/PerfilClientePersonaNatural/anyosAntiguedad != 0">
														<xsl:value-of select="conyuge/PerfilClientePersonaNatural/anyosAntiguedad"/> Año(s)
												  </xsl:when>			
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											</xsl:choose>
											<xsl:choose>
												  <xsl:when test="conyuge/PerfilClientePersonaNatural/mesesAntiguedad != 0">
														<xsl:value-of select="conyuge/PerfilClientePersonaNatural/mesesAntiguedad"/> Mes(es)
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

							<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <!-- INICIO EMPLEADOR ANTERIOR  -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Empleador Anterior </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!-- FIN EMPLEADOR ANTERIOR  -->





              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>

                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Empleador </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Fecha Retiro</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Empleador </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Fecha Retiro</fo:block>
                    </fo:table-cell>
                  </fo:table-row>

                </fo:table-body>
              </fo:table>




              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>

                <fo:table-body>


                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                          <fo:block>
                            <xsl:value-of select="empleadorAnterior"/>
                            <fo:leader leader-pattern="space" leader-length="1mm"/>
                          </fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                          <fo:block>
                            <xsl:value-of select="fechaRetiro"/>
                            <fo:leader leader-pattern="space" leader-length="1mm"/>
                          </fo:block>
                    </fo:table-cell>


                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                          <fo:block><xsl:value-of select="conyuge/PerfilClientePersonaNatural/empleadorAnterior"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>


                    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                          <fo:block><xsl:value-of select="conyuge/PerfilClientePersonaNatural/fechaRetiro"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>


                </fo:table-body>
              </fo:table>



              <!-- INICIO MOTIVO RETIRO -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-column column-width="proportional-column-width(50)"/>

                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Motivo Retiro  </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Motivo Retiro </fo:block>
                    </fo:table-cell>
                  </fo:table-row>

                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                          <fo:block><xsl:value-of select="motivoRetiro"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                          <fo:block><xsl:value-of select="conyuge/PerfilClientePersonaNatural/motivoRetiro"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!-- FIN MOTIVO RETIRO -->

							<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <!-- INICIO ACTIVIDAD DE LA EMPRESA -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-column column-width="proportional-column-width(50)"/>

                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Actividad de la Empresa  </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Actividad de la Empresa</fo:block>
                    </fo:table-cell>
                  </fo:table-row>

                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                          <fo:block><xsl:value-of select="empleador/PerfilClientePersonaJuridica/actividad"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                          <fo:block><xsl:value-of select="conyuge/PerfilClientePersonaNatural/empleador/PerfilClientePersonaJuridica/actividad"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>


                </fo:table-body>
              </fo:table>
              <!-- FIN ACTIVIDAD DE LA EMPRESA -->



              <!-- INICIO DIRECCIÓN -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-column column-width="proportional-column-width(50)"/>

                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Dirección</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Dirección</fo:block>
                    </fo:table-cell>
                  </fo:table-row>

                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                          <fo:block><xsl:value-of select="empleador/PerfilClientePersonaJuridica/direccion/Direccion/direccion"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                          <fo:block><xsl:value-of select="conyuge/PerfilClientePersonaNatural/empleador/PerfilClientePersonaJuridica/direccion/Direccion/direccion"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>

                </fo:table-body>
              </fo:table>
              <!-- FIN DIRECCIÓN -->




              <!-- INICIO COMUNA, CIUDAD -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>

                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Comuna </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Ciudad</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Comuna </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Ciudad</fo:block>
                    </fo:table-cell>
                  </fo:table-row>

                </fo:table-body>
              </fo:table>


              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>

                <fo:table-body>


                  <fo:table-row>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                          <fo:block><xsl:value-of select="empleador/PerfilClientePersonaJuridica/direccion/Direccion/comuna"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                          <fo:block><xsl:value-of select="empleador/PerfilClientePersonaJuridica/direccion/Direccion/ciudad"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                          <fo:block><xsl:value-of select="conyuge/PerfilClientePersonaNatural/empleador/PerfilClientePersonaJuridica/direccion/Direccion/comuna"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                          <fo:block><xsl:value-of select="conyuge/PerfilClientePersonaNatural/empleador/PerfilClientePersonaJuridica/direccion/Direccion/ciudad"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                  </fo:table-row>


                </fo:table-body>
              </fo:table>

             <!-- INICIO COMUNA, CIUDAD -->


              <!-- INICIO TELÉFONO COMERCIAL  -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-column column-width="proportional-column-width(50)"/>

                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Teléfono Comercial </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Teléfono Comercial </fo:block>
                    </fo:table-cell>
                  </fo:table-row>

                  <fo:table-row>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                          <fo:block><xsl:value-of select="empleador/PerfilClientePersonaJuridica/direccion/Direccion/telefono"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                          <fo:block><xsl:value-of select="conyuge/PerfilClientePersonaNatural/empleador/PerfilClientePersonaJuridica/direccion/Direccion/telefono"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                  </fo:table-row>

                </fo:table-body>
              </fo:table>
              <!-- FIN TELÉFONO COMERCIAL  -->
								
								<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <!-- INICIO EN CASO DE EMERGENCIA COMUNICARSE CON  -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.35pt solid #5885AC" border-bottom="0.1pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">En caso de emergencia comunicarse con </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!-- FIN EN CASO DE EMERGENCIA COMUNICARSE CON   -->




              <!-- INICIO NOMBRE, TELÉFONO, TELÉFONO CELULAR -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(40)"/>
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(30)"/>

                <fo:table-body>

                  <fo:table-row>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.1pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Nombre </fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Teléfono</fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Teléfono Celular  </fo:block>
                    </fo:table-cell>

                  </fo:table-row>

                </fo:table-body>
              </fo:table>


              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(40)"/>
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(30)"/>

                <fo:table-body>


                  <fo:table-row>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                          <fo:block><xsl:value-of select="emergenciaNombre"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                          <fo:block><xsl:value-of select="emergenciaTelefono"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                          <fo:block><xsl:value-of select="emergenciaTelefonoCelular"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                  </fo:table-row>


                </fo:table-body>
              </fo:table>





              <!-- INICIO IV. DESCRIPCIÓN DE ACTIVIDADES COMERCIALES Y NEGOCIOS DEL CLIENTE  -->
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell  text-align="left"  padding-top="2mm" padding-left="3mm"  border-top="0.25pt solid #5885AC"  border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1" line-height="5mm" font-size="13pt"><fo:leader leader-pattern="space" leader-length="1mm" />IV. Descripción de Actividades Comerciales y Negocios del Cliente </fo:block>
                    </fo:table-cell>
                  </fo:table-row>


                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                          <fo:block><xsl:value-of select="descripcionActividadesComerciales"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>

                </fo:table-body>
              </fo:table>
              <!-- FIN IV. DESCRIPCIÓN DE ACTIVIDADES COMERCIALES Y NEGOCIOS DEL CLIENTE  -->





              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>



              <!-- INICIO V. PROPOSITO DE LA CUENTA CORRIENTE SOLICITADA  -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell  text-align="left"  padding-top="2mm" padding-left="3mm"  border-top="0.25pt solid #5885AC"  border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1" line-height="5mm" font-size="13pt"><fo:leader leader-pattern="space" leader-length="1mm" />V. Propósito de la Cuenta Corriente Solicitada </fo:block>
                    </fo:table-cell>
                  </fo:table-row>


                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                          <fo:block><xsl:value-of select="propositoCuenta"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>

                </fo:table-body>
              </fo:table>
             <!-- FIN V. PROPOSITO DE LA CUENTA CORRIENTE SOLICITADA  -->



              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>



              <!-- INICIO VI. DEUDAS / REFERENCIAS BANCARIAS Y COMERCIALES  -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell  text-align="left"  padding-top="2mm" padding-left="3mm" border-bottom="0.25pt solid #5885AC"   border-top="0.25pt solid #5885AC"  border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1" line-height="5mm" font-size="13pt"><fo:leader leader-pattern="space" leader-length="1mm" />VI. Deudas / Referencias Bancarias y Comerciales  </fo:block>
                    </fo:table-cell>
                  </fo:table-row>

                </fo:table-body>
              </fo:table>
             <!-- FIN VI. DEUDAS / REFERENCIAS BANCARIAS Y COMERCIALES  -->



              <!-- INICIO BANCO - CASA COMERCIAL, N° CUENTA CORRIENTE,  TIPO DEUDA,  MONTO DEUDA M$  -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>

                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Banco - Casa Comercial </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">N° Cuenta Corriente </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Tipo Deuda  </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Monto Deuda M$</fo:block>
                    </fo:table-cell>
                  </fo:table-row>

                </fo:table-body>
              </fo:table>


              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>

                <fo:table-body>
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
                          <fo:block>
                          	<xsl:choose>
				  <xsl:when test="banco != ''">
						<xsl:value-of select="banco"/><fo:leader leader-pattern="space" leader-length="1mm"/>
				  </xsl:when>			
				  <xsl:otherwise>							
						<fo:leader leader-pattern="space" leader-length="1mm"/>	
				  </xsl:otherwise>
				</xsl:choose>
                          </fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                          <fo:block>
			                            	<xsl:choose>
			  				  <xsl:when test="cuentaCorriente != ''">
			  						<xsl:value-of select="cuentaCorriente"/><fo:leader leader-pattern="space" leader-length="1mm"/>
			  				  </xsl:when>			
			  				  <xsl:otherwise>							
			  						<fo:leader leader-pattern="space" leader-length="1mm"/>	
			  				  </xsl:otherwise>
			  				</xsl:choose>
                          </fo:block>
                    </fo:table-cell>


                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                          <fo:block>
			  			                            	<xsl:choose>
			  			  				  <xsl:when test="tipoDeuda != ''">
			  			  						<xsl:value-of select="tipoDeuda"/><fo:leader leader-pattern="space" leader-length="1mm"/>
			  			  				  </xsl:when>			
			  			  				  <xsl:otherwise>							
			  			  						<fo:leader leader-pattern="space" leader-length="1mm"/>	
			  			  				  </xsl:otherwise>
			  			  				</xsl:choose>
                          </fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                          <fo:block>
                          		<xsl:choose>
															  <xsl:when test="montoDeuda != 0">
																	$<xsl:value-of select='format-number(montoDeuda, "#","decimal")' /><fo:leader leader-pattern="space" leader-length="1mm"/>
															  </xsl:when>			
															  <xsl:otherwise>							
																	<fo:leader leader-pattern="space" leader-length="1mm"/>	
															  </xsl:otherwise>
															</xsl:choose>
                           </fo:block>
                    </fo:table-cell>

                  </fo:table-row>



             <!-- FIN BANCO - CASA COMERCIAL, N° CUENTA CORRIENTE,  TIPO DEUDA,  MONTO DEUDA M$  -->
        </xsl:for-each>


                </fo:table-body>
              </fo:table>




              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <!-- INICIO VII. RELACIÓN CON EL BANCO. -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell  text-align="left"  padding-top="2mm" padding-left="3mm" border-bottom="0.25pt solid #5885AC"   border-top="0.25pt solid #5885AC"  border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1" line-height="5mm" font-size="13pt"><fo:leader leader-pattern="space" leader-length="1mm" />VII. Relación con el Banco</fo:block>
                    </fo:table-cell>
                  </fo:table-row>

                </fo:table-body>
              </fo:table>
             <!-- FIN VII. RELACIÓN CON EL BANCO.  -->



              <!-- INICIO CLIENTE ACTUAL,CLIENTE NUEVO, CONVENIO EMPRESA  -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(27)"/>
                <fo:table-column column-width="proportional-column-width(6)"/>
                <fo:table-column column-width="proportional-column-width(27)"/>
                <fo:table-column column-width="proportional-column-width(6)"/>
                <fo:table-column column-width="proportional-column-width(27)"/>
                <fo:table-column column-width="proportional-column-width(7)"/>

                <fo:table-body>

                  <fo:table-row>



                      <fo:table-cell  text-align="left" border-top="0.25pt solid #5885AC" padding-top="2mm" padding-left="3mm"  border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block line-height="5mm"> Cliente Actual<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block color="#5885AC" font-size="8pt">
                          <fo:leader leader-pattern="space" leader-length="1mm"/>
                          <xsl:if test="clienteBci = 'true'">X</xsl:if>
                        </fo:block>
                      </fo:table-cell>



                      <fo:table-cell  text-align="left" border-top="0.25pt solid #5885AC" padding-top="2mm" padding-left="3mm"  border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block line-height="5mm"> Cliente Nuevo<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                      </fo:table-cell>


                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">
                          <fo:leader leader-pattern="space" leader-length="1mm"/>
                          <xsl:if test="clienteNuevo = 'true'">X</xsl:if>
                        </fo:block>
                      </fo:table-cell>



                      <fo:table-cell  text-align="left" border-top="0.25pt solid #5885AC" padding-top="2mm" padding-left="3mm"  border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block line-height="5mm">Convenio Empresa<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                      </fo:table-cell>


                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">
                          <fo:leader leader-pattern="space" leader-length="1mm"/>
                          <xsl:if test="clienteConvenio = 'true'">X</xsl:if>
                        </fo:block>
                      </fo:table-cell>


                  </fo:table-row>

                </fo:table-body>
              </fo:table>

              <!-- FIN CLIENTE ACTUAL,CLIENTE NUEVO, CONVENIO EMPRESA  -->





              <!-- INICIO FECHA INICIO RELACIÓN -->

              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(35)"/>
                <fo:table-column column-width="proportional-column-width(15)"/>
                <fo:table-column column-width="proportional-column-width(35)"/>
                <fo:table-column column-width="proportional-column-width(15)"/>


                <fo:table-body>

                  <fo:table-row>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt" line-height="4.5mm">Fecha Inicio Relacion </fo:block>
                    </fo:table-cell>

                      <fo:table-cell  text-align="left" border-top="0.25pt solid #5885AC" padding-top="2mm" padding-left="3mm"  border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block line-height="4.5mm">
                             <xsl:value-of select="fechaInicioRelacion"/><fo:leader leader-pattern="space" leader-length="1mm"/>
                        </fo:block>
                      </fo:table-cell>

                  </fo:table-row>


                </fo:table-body>
              </fo:table>
              <!-- FINFECHA INICIO RELACIÓN   -->

             <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>



              <!-- INICIO PRODUCTOS VIGENTES-->

              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                


                <fo:table-body>

                  <fo:table-row>
                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Productos Vigentes</fo:block>
                      </fo:table-cell>
                  </fo:table-row>


                </fo:table-body>
              </fo:table>
              <!-- FINFECHA PRODUCTOS VIGENTES  -->




              <!-- INICIO DEPOSITO A PLAZO  -->

              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(90)"/>
                <fo:table-column column-width="proportional-column-width(10)"/>
                

                <fo:table-body>
                  <xsl:if test="productosVigentes = ''">
		    <fo:table-row>
		      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
			<fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
		      </fo:table-cell>
		      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
					<fo:block><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
		      </fo:table-cell>
		    </fo:table-row>
		  </xsl:if>

				<xsl:for-each select='productosVigentes/Producto'>
				
                  <fo:table-row>


                    <fo:table-cell  text-align="left" border-top="0.25pt solid #5885AC" padding-top="2mm" padding-left="3mm"  border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block><xsl:value-of select="descripcion"/><fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>


                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">
                          <fo:leader leader-pattern="space" leader-length="1mm"/>
                          <xsl:if test="solicitado = 'true'">X</xsl:if>
                      </fo:block>
                    </fo:table-cell>

				

                  </fo:table-row>

				</xsl:for-each>

                </fo:table-body>
              </fo:table>
              <!-- FIN DEPOSITO A PLAZO    -->




              <fo:block break-before="page"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <!-- INICIO VI. DEUDAS / REFERENCIAS BANCARIAS Y COMERCIALES  -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell  text-align="left"  padding-top="2mm" padding-left="3mm" border-bottom="0.25pt solid #5885AC"   border-top="0.25pt solid #5885AC"  border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1" line-height="5mm" font-size="13pt"><fo:leader leader-pattern="space" leader-length="1mm" />VIII. Ingresos Líquidos</fo:block>
                    </fo:table-cell>
                  </fo:table-row>



                </fo:table-body>
              </fo:table>
             <!-- FIN VI. DEUDAS / REFERENCIAS BANCARIAS Y COMERCIALES  -->



              <!-- INICIO MOTIVO RETIRO -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-column column-width="proportional-column-width(50)"/>

                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Ingresos M$</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Egresos M$</fo:block>
                    </fo:table-cell>
                  </fo:table-row>


                </fo:table-body>
              </fo:table>
              <!-- FIN MOTIVO RETIRO -->







              <!-- INICIO MOTIVO RETIRO -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>

                <fo:table-body>

                  <fo:table-row>
                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Renta Fija </fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
                        <xsl:choose>
												  <xsl:when test="ingresoRentaFija != 0">
														$<xsl:value-of select='format-number(ingresoRentaFija, "#","decimal")' />
														<fo:leader leader-pattern="space" leader-length="1mm"/>
												  </xsl:when>			
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											  </xsl:choose>
                        </fo:block>
                      </fo:table-cell>


                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Dividendo y/o Arriendo </fo:block>
                      </fo:table-cell>


                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
                         <xsl:choose>
												  <xsl:when test="egresoDividendoArriendo != 0">
														$<xsl:value-of select='format-number(egresoDividendoArriendo, "#","decimal")' />
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
                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Renta Variable  </fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
                         <xsl:choose>
												  <xsl:when test="ingresoRentaVariable != 0">
														$<xsl:value-of select='format-number(ingresoRentaVariable, "#","decimal")' />
														<fo:leader leader-pattern="space" leader-length="1mm"/>
												  </xsl:when>			
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											  </xsl:choose>
                        </fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Casas Comerciales </fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
                         <xsl:choose>
												  <xsl:when test="egresoCasasComerciales != 0">
														$<xsl:value-of select='format-number(egresoCasasComerciales, "#","decimal")' />
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
                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Renta Cónyuge</fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
                         <xsl:choose>
												  <xsl:when test="ingresoRentaConyuge != 0">
														$<xsl:value-of select='format-number(ingresoRentaConyuge, "#","decimal")' />
														<fo:leader leader-pattern="space" leader-length="1mm"/>
												  </xsl:when>			
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											  </xsl:choose>
                        </fo:block>
                      </fo:table-cell>


                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Educación</fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
                         <xsl:choose>
												  <xsl:when test="egresoEducacion != 0">
														$<xsl:value-of select='format-number(egresoEducacion, "#","decimal")' />
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
                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Otros Ingresos </fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
                         <xsl:choose>
												  <xsl:when test="ingresoOtrosIngresos != 0">
														$<xsl:value-of select='format-number(ingresoOtrosIngresos, "#","decimal")' />
														<fo:leader leader-pattern="space" leader-length="1mm"/>
												  </xsl:when>			
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											  </xsl:choose>
                        </fo:block>
                      </fo:table-cell>


                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Otras Deudas </fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
                         <xsl:choose>
												  <xsl:when test="egresoOtrosEgresos != 0">
														$<xsl:value-of select='format-number(egresoOtrosEgresos, "#","decimal")' />
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
                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">TOTAL INGRESOS  </fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
                         <xsl:choose>
												  <xsl:when test="totalIngresos != 0">
														$<xsl:value-of select='format-number(totalIngresos, "#","decimal")' />
														<fo:leader leader-pattern="space" leader-length="1mm"/>
												  </xsl:when>			
												  <xsl:otherwise>							
														<fo:leader leader-pattern="space" leader-length="1mm"/>	
												  </xsl:otherwise>
											  </xsl:choose>
											  </fo:block>
                      </fo:table-cell>



                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">TOTAL EGRESOS</fo:block>
                      </fo:table-cell>


                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
                         <xsl:choose>
												  <xsl:when test="totalEgresos != 0">
														$<xsl:value-of select='format-number(totalEgresos, "#","decimal")' />
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
                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">INGRESOS LIQUIDOS </fo:block>
                      </fo:table-cell>


                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
                         <xsl:choose>
												  <xsl:when test="ingresosLiquidos != 0">
														$<xsl:value-of select='format-number(ingresosLiquidos, "#","decimal")' />
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
              <!-- FIN MOTIVO RETIRO -->



              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

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
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt" text-align="center" >Declaraciones Mensuales PPM Últimos 6 Meses </fo:block>
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
						
              <!-- INICIO MOTIVO RETIRO -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>

                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt" text-align="center" >Última Declaración Impuesto a la Renta </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!-- FIN MOTIVO RETIRO -->



            <!--  INICIO -->
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
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Año</fo:block>
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
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Devolución</fo:block>
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
            <!--  FIN-->








              <fo:block break-before="page"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <!-- INICIO X. PATRIMONIO.  -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell  text-align="left"  padding-top="2mm" padding-left="3mm" border-bottom="0.25pt solid #5885AC"   border-top="0.25pt solid #5885AC"  border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1" line-height="5mm" font-size="13pt"><fo:leader leader-pattern="space" leader-length="1mm" />X. Patrimonio</fo:block>
                    </fo:table-cell>
                  </fo:table-row>



                </fo:table-body>
              </fo:table>
             <!-- FIN  X. PATRIMONIO.  -->



              <!-- INICIO MOTIVO RETIRO -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-column column-width="proportional-column-width(50)"/>

                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt" text-align="center" >Activos ($)</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt" text-align="center" >Pasivos ($)</fo:block>
                    </fo:table-cell>
                  </fo:table-row>


                </fo:table-body>
              </fo:table>
              <!-- FIN MOTIVO RETIRO -->







              <!-- INICIO MOTIVO RETIRO -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>

                <fo:table-body>

                  <fo:table-row>
                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Depósitos a Plazo </fo:block>
                      </fo:table-cell>


                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
						 <xsl:choose>
							  <xsl:when test="patrimonio/Patrimonio/depositoPlazo != 0">
									$<xsl:value-of select='format-number(patrimonio/Patrimonio/depositoPlazo, "#","decimal")' />
							  </xsl:when>								  				 																	  
							  <xsl:otherwise>							
									<fo:leader leader-pattern="space" leader-length="1mm"/>	
							  </xsl:otherwise>
						</xsl:choose>	                                                
                        </fo:block>
                      </fo:table-cell>


                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Deudas C. Comerc. </fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
						 <xsl:choose>
							  <xsl:when test="patrimonio/Patrimonio/deudasCasasComerciales > 0">
									 $<xsl:value-of select='format-number(patrimonio/Patrimonio/deudasCasasComerciales, "#","decimal")' />
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
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Fondos Mutuos</fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
						 <xsl:choose>
							  <xsl:when test="patrimonio/Patrimonio/fondosMutuos > 0">
									 $<xsl:value-of select='format-number(patrimonio/Patrimonio/fondosMutuos, "#","decimal")' />
							  </xsl:when>								  				 																	  
							  <xsl:otherwise>							
									<fo:leader leader-pattern="space" leader-length="1mm"/>	
							  </xsl:otherwise>
						</xsl:choose>	                              
                        </fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Deudas con Bancos </fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
						 <xsl:choose>
							  <xsl:when test="patrimonio/Patrimonio/deudasconBancos > 0">
									 $<xsl:value-of select='format-number(patrimonio/Patrimonio/deudasconBancos, "#","decimal")' />
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
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Acciones y Bonos</fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
						 <xsl:choose>
							  <xsl:when test="patrimonio/Patrimonio/accionesBonos > 0">
									 $<xsl:value-of select='format-number(patrimonio/Patrimonio/accionesBonos, "#","decimal")' />
							  </xsl:when>								  				 																	  
							  <xsl:otherwise>							
									<fo:leader leader-pattern="space" leader-length="1mm"/>	
							  </xsl:otherwise>
						</xsl:choose>	                           
                        </fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Deudas Hipotecarias</fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
						 <xsl:choose>
							  <xsl:when test="patrimonio/Patrimonio/deudasHipotecarias > 0">
									 $<xsl:value-of select='format-number(patrimonio/Patrimonio/deudasHipotecarias, "#","decimal")' />
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
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Activos en Leasing </fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
						 <xsl:choose>
							  <xsl:when test="patrimonio/Patrimonio/leasing > 0">
									 $<xsl:value-of select='format-number(patrimonio/Patrimonio/leasing, "#","decimal")' />
							  </xsl:when>								  				 																	  
							  <xsl:otherwise>							
									<fo:leader leader-pattern="space" leader-length="1mm"/>	
							  </xsl:otherwise>
						</xsl:choose>                        
                        </fo:block>
                      </fo:table-cell>


                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Deudas Leasing </fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
						 <xsl:choose>
							  <xsl:when test="patrimonio/Patrimonio/deudasLeasing > 0">
									 $<xsl:value-of select='format-number(patrimonio/Patrimonio/deudasLeasing, "#","decimal")' />
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
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Bienes Raíces</fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
						 <xsl:choose>
							  <xsl:when test="patrimonio/Patrimonio/activosBienesRaices > 0">
									  $<xsl:value-of select='format-number(patrimonio/Patrimonio/activosBienesRaices, "#","decimal")' />
							  </xsl:when>								  				 																	  
							  <xsl:otherwise>							
									<fo:leader leader-pattern="space" leader-length="1mm"/>	
							  </xsl:otherwise>
						</xsl:choose>                            
                        </fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Otras Deudas </fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
						 <xsl:choose>
							  <xsl:when test="patrimonio/Patrimonio/otrasDeudas > 0">
									   $<xsl:value-of select='format-number(patrimonio/Patrimonio/otrasDeudas, "#","decimal")' />
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
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Vehículos </fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
						 <xsl:choose>
							  <xsl:when test="patrimonio/Patrimonio/activosVehiculos > 0">
									   $<xsl:value-of select='format-number(patrimonio/Patrimonio/activosVehiculos, "#","decimal")' />
							  </xsl:when>								  				 																	  
							  <xsl:otherwise>							
									<fo:leader leader-pattern="space" leader-length="1mm"/>	
							  </xsl:otherwise>
						</xsl:choose>                           
                        </fo:block>
                      </fo:table-cell>


                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt"></fo:block>
                      </fo:table-cell>
                      <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block></fo:block>
                      </fo:table-cell>
                  </fo:table-row>



                  <fo:table-row>
                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Particip. en Sociedades </fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
						 <xsl:choose>
							  <xsl:when test="patrimonio/Patrimonio/participacionSociedades > 0">
									   $<xsl:value-of select='format-number(patrimonio/Patrimonio/participacionSociedades, "#","decimal")' />
							  </xsl:when>								  				 																	  
							  <xsl:otherwise>							
									<fo:leader leader-pattern="space" leader-length="1mm"/>	
							  </xsl:otherwise>
						</xsl:choose>                          
                        </fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt"></fo:block>
                      </fo:table-cell>
                      <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block></fo:block>
                      </fo:table-cell>
                  </fo:table-row>

                  <fo:table-row>
                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Otros Activos </fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
						 <xsl:choose>
							  <xsl:when test="patrimonio/Patrimonio/otrosActivos > 0">
									   $<xsl:value-of select='format-number(patrimonio/Patrimonio/otrosActivos, "#","decimal")' />
							  </xsl:when>								  				 																	  
							  <xsl:otherwise>							
									<fo:leader leader-pattern="space" leader-length="1mm"/>	
							  </xsl:otherwise>
						</xsl:choose>                              
                        </fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt"></fo:block>
                      </fo:table-cell>
                      <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block></fo:block>
                      </fo:table-cell>
                  </fo:table-row>

                  <fo:table-row>
                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Inv. en el Extranjero </fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
						 <xsl:choose>
							  <xsl:when test="patrimonio/Patrimonio/inversionesExtranjero > 0">
									   $<xsl:value-of select='format-number(patrimonio/Patrimonio/inversionesExtranjero, "#","decimal")' />
							  </xsl:when>								  				 																	  
							  <xsl:otherwise>							
									<fo:leader leader-pattern="space" leader-length="1mm"/>	
							  </xsl:otherwise>
						</xsl:choose>                         
                        </fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt"></fo:block>
                      </fo:table-cell>
                      <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block></fo:block>
                      </fo:table-cell>
                  </fo:table-row>

                  <fo:table-row>
                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">TOTAL ACTIVOS</fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
						 <xsl:choose>
							  <xsl:when test="patrimonio/Patrimonio/totalActivos > 0">
									   $<xsl:value-of select='format-number(patrimonio/Patrimonio/totalActivos, "#","decimal")' />
							  </xsl:when>								  				 																	  
							  <xsl:otherwise>							
									<fo:leader leader-pattern="space" leader-length="1mm"/>	
							  </xsl:otherwise>
						</xsl:choose>                        
                        </fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                        <fo:block font-weight="bold" color="#5885AC" font-size="8pt">TOTAL PASIVOS</fo:block>
                      </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
						 <xsl:choose>
							  <xsl:when test="patrimonio/Patrimonio/totalPasivos > 0">
									  $<xsl:value-of select='format-number(patrimonio/Patrimonio/totalPasivos, "#","decimal")' />
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
              <!-- FIN MOTIVO RETIRO -->



              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <!-- INICIO MOTIVO RETIRO -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-column column-width="proportional-column-width(50)"/>
                
                <fo:table-body>
                  <fo:table-row>
                    
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt" text-align="center" >TOTAL PATRIMONIO</fo:block>
                    </fo:table-cell>

                      <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                        <fo:block>
						 <xsl:choose>
							  <xsl:when test="patrimonio/Patrimonio/totalPatrimonio > 0">
									  $<xsl:value-of select='format-number(patrimonio/Patrimonio/totalPatrimonio, "#","decimal")' />
							  </xsl:when>								  				 																	  
							  <xsl:otherwise>							
									<fo:leader leader-pattern="space" leader-length="1mm"/>	
							  </xsl:otherwise>
						</xsl:choose>                         
                        </fo:block>
                      </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm"  >
                      <fo:block ></fo:block>
                    </fo:table-cell>

                  </fo:table-row>


                </fo:table-body>
              </fo:table>
              <!-- FIN MOTIVO RETIRO -->






              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <!-- INICIO DETALLE PATRIMONIO..  -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell  text-align="left"  padding-top="2mm" padding-left="3mm" border-bottom="0.25pt solid #5885AC"   border-top="0.25pt solid #5885AC"  border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1" line-height="5mm" font-size="13pt"><fo:leader leader-pattern="space" leader-length="1mm" />Detalle Patrimonio</fo:block>
                    </fo:table-cell>
                  </fo:table-row>



                </fo:table-body>
              </fo:table>
             <!-- FIN  DETALLE PATRIMONIO.  -->


              <!-- INICIO 1. BIENES RAICES.  -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">1. BIENES RAICES</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!-- FIN 1. BIENES RAICES.  -->



       <xsl:for-each select='patrimonio/Patrimonio/bienesRaices/BienRaiz'>
       <xsl:variable name="cur" select='position()' />
       <!-- INICIO  -->
       

              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Bien Raiz <xsl:value-of select="$cur" />

					 <fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!-- FIN   -->




              <!-- INICIO  -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>

                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt" text-align="center">Ubicación (Calle, N°, Depto)  </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt" text-align="center">Comuna</fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt" text-align="center">Ciudad</fo:block>
                    </fo:table-cell>
                  </fo:table-row>

                </fo:table-body>
              </fo:table>


              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(50)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>

                <fo:table-body>


                  <fo:table-row>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                        <xsl:value-of select="direccion/Direccion/direccion"/>
                        <fo:leader leader-pattern="space" leader-length="1mm"/>
                      </fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                        <xsl:value-of select="direccion/Direccion/comuna"/>
                        <fo:leader leader-pattern="space" leader-length="1mm"/>
                      </fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                        <xsl:value-of select="direccion/Direccion/ciudad"/>
                        <fo:leader leader-pattern="space" leader-length="1mm"/>
                      </fo:block>
                    </fo:table-cell>

                  </fo:table-row>


                </fo:table-body>
              </fo:table>
              <!-- FIN   -->




              <!-- INICIO  -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(20)"/>
                <fo:table-column column-width="proportional-column-width(40)"/>
                <fo:table-column column-width="proportional-column-width(49)"/>

                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt" text-align="center">ROL N° </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt" text-align="center">Avalúo Fiscal </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt" text-align="center">Valor Comercial </fo:block>
                    </fo:table-cell>
                  </fo:table-row>

                </fo:table-body>
              </fo:table>



              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(20)"/>
                <fo:table-column column-width="proportional-column-width(40)"/>
                <fo:table-column column-width="proportional-column-width(49)"/>

                <fo:table-body>

                  <fo:table-row>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                        <xsl:value-of select="rol"/>
                        <fo:leader leader-pattern="space" leader-length="1mm"/>
                      </fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                       <fo:block>
	                      <xsl:choose>
													  <xsl:when test="avaluoFiscal > 0">
															  $<xsl:value-of select='format-number(avaluoFiscal, "#","decimal")' />
													  </xsl:when>								  				 																	  
													  <xsl:otherwise>							
															<fo:leader leader-pattern="space" leader-length="1mm"/>	
													  </xsl:otherwise>
												</xsl:choose>
											 </fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                        <xsl:choose>
													  <xsl:when test="valorComercial > 0">
															  $<xsl:value-of select='format-number(valorComercial, "#","decimal")' />
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

							<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>


              <!-- INICIO TÍTULO BIEN RAÍZ DECLARADO.  -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Título Bien Raíz Declarado</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!-- FIN TÍTULO BIEN RAÍZ DECLARADO.  -->

              <!-- INICIO  Inscripción DOMINIO VIGENTE, GRAVÁMENES SOBRE BIEN RAÍZ-->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>

                <fo:table-body>

                  <fo:table-row>

                    <fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Inscripción Dominio Vigente<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>



                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!-- FIN Inscripción DOMINIO VIGENTE, GRAVÁMENES SOBRE BIEN RAÍZ-->


              <!-- INICIO  Inscripción DOMINIO VIGENTE, GRAVÁMENES SOBRE BIEN RAÍZ-->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-body>

                  <fo:table-row>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Fojas<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>
										
										<fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Nº<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>
                    
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Año<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Conservador<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>


                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!-- FIN Inscripción DOMINIO VIGENTE, GRAVÁMENES SOBRE BIEN RAÍZ-->


			  <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>
                <fo:table-column column-width="proportional-column-width(25)"/>

                <fo:table-body>


                  <fo:table-row>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                        <xsl:value-of select="tituloFojas"/>
                        <fo:leader leader-pattern="space" leader-length="1mm"/>
                      </fo:block>
                    </fo:table-cell>
                    
                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                      <xsl:choose>
			  <xsl:when test="tituloNumero > 0">
			    <xsl:value-of select='format-number(tituloNumero, "#","decimal")' />
			  </xsl:when>								  				 																	  
			  <xsl:otherwise>							
			     <fo:leader leader-pattern="space" leader-length="1mm"/>	
			  </xsl:otherwise>
			</xsl:choose>
		      </fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                      	<xsl:choose>
			  <xsl:when test="tituloAnyo > 0">
			    <xsl:value-of select='format-number(tituloAnyo, "#","decimal")' />
			  </xsl:when>								  				 																	  
			  <xsl:otherwise>							
			     <fo:leader leader-pattern="space" leader-length="1mm"/>	
			  </xsl:otherwise>
			</xsl:choose>
                      </fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                        <xsl:value-of select="tituloConservador"/>
                        <fo:leader leader-pattern="space" leader-length="1mm"/>
                      </fo:block>
                    </fo:table-cell>


                  </fo:table-row>


                </fo:table-body>
              </fo:table>
              <!-- FIN   -->


              <!-- INICIO  Inscripción DOMINIO VIGENTE, GRAVÁMENES SOBRE BIEN RAÍZ-->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>

                <fo:table-body>

                  <fo:table-row>
                 
                    <fo:table-cell text-align="center" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Gravámenes Sobre Bien Raíz<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>



                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!-- FIN Inscripción DOMINIO VIGENTE, GRAVÁMENES SOBRE BIEN RAÍZ-->


              <!-- INICIO  Inscripción DOMINIO VIGENTE, GRAVÁMENES SOBRE BIEN RAÍZ-->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(35)"/>
                <fo:table-column column-width="proportional-column-width(35)"/>
                <fo:table-body>

                  <fo:table-row>
                 
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">A Favor de <fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Deuda Primitiva M$<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Saldo Actual M$<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>



                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!-- FIN Inscripción DOMINIO VIGENTE, GRAVÁMENES SOBRE BIEN RAÍZ-->

							


              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(35)"/>
                <fo:table-column column-width="proportional-column-width(35)"/>

                <fo:table-body>


                  <fo:table-row>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                        <xsl:value-of select="gravamenAfavorde"/>
                        <fo:leader leader-pattern="space" leader-length="1mm"/>
                      </fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                        <xsl:choose>
													  <xsl:when test="gravamenDeudaPrimitiva > 0">
															  $<xsl:value-of select='format-number(gravamenDeudaPrimitiva, "#","decimal")' />
													  </xsl:when>								  				 																	  
													  <xsl:otherwise>							
															<fo:leader leader-pattern="space" leader-length="1mm"/>	
													  </xsl:otherwise>
												</xsl:choose>
                      </fo:block>
                    </fo:table-cell>


                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                        <xsl:choose>
													  <xsl:when test="gravamenSaldoActual > 0">
															  $<xsl:value-of select='format-number(gravamenSaldoActual, "#","decimal")' />
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
          <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

         </xsl:for-each>








	      <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <!-- INICIO  2. VEHICULOS. -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">2. VEHICULOS</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!-- FIN TÍTULO BIEN RAÍZ DECLARADO.  -->



       <xsl:for-each select='patrimonio/Patrimonio/vehiculos/Vehiculo'>
		<xsl:variable name="cur" select='position()' />
          	<!-- INICIO VEHICULO 1 .-->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>

                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Vehículo  <xsl:value-of select="$cur" />

<xsl:value-of select="patrimonio/Patrimonio/vehiculos/Vehiculo" /><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!-- FIN VEHICULO 2 .-->




              <!-- INICIO  Inscripción DOMINIO VIGENTE, GRAVÁMENES SOBRE BIEN RAÍZ-->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(20)"/>
                <fo:table-column column-width="proportional-column-width(20)"/>

                <fo:table-body>

                  <fo:table-row>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Marca y Modelo <fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Tipo de Vehiculo <fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Año<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Patente<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>


                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!-- FIN Inscripción DOMINIO VIGENTE, GRAVÁMENES SOBRE BIEN RAÍZ-->





              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(20)"/>
                <fo:table-column column-width="proportional-column-width(20)"/>

                <fo:table-body>


                  <fo:table-row>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                        <xsl:value-of select="marcaModelo"/>
                        <fo:leader leader-pattern="space" leader-length="1mm"/>
                      </fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                        <xsl:value-of select="tipoVehiculo"/>
                        <fo:leader leader-pattern="space" leader-length="1mm"/>
                      </fo:block>
                    </fo:table-cell>


                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                        <xsl:value-of select="anyo"/>
                        <fo:leader leader-pattern="space" leader-length="1mm"/>
                      </fo:block>
                    </fo:table-cell>


                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                        <xsl:value-of select="patente"/>
                        <fo:leader leader-pattern="space" leader-length="1mm"/>
                      </fo:block>
                    </fo:table-cell>


                  </fo:table-row>


                </fo:table-body>
              </fo:table>
              <!-- FIN   -->

              <!-- INICIO VERIFICACIÓN INSCRIPCIÓNVEHICULOS MOTORIZADOS -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>

                <fo:table-body>
                  <fo:table-row>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt" text-align="center" >Verificación InscripciónVehiculos Motorizados<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>


                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!-- FIN VERIFICACIÓN INSCRIPCIÓNVEHICULOS MOTORIZADOS.-->



              <!-- INICIO VERIFICACIÓN INSCRIPCIÓNVEHICULOS MOTORIZADOS -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>

                <fo:table-body>
                  <fo:table-row>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                        <xsl:value-of select="verificacionInscripcion"/>
                        <fo:leader leader-pattern="space" leader-length="1mm"/>
                      </fo:block>
                    </fo:table-cell>


                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!-- FIN VERIFICACIÓN INSCRIPCIÓNVEHICULOS MOTORIZADOS.-->

							<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>



              <!-- INICIO GRAVÁMENES SOBRE EL VEHICULO  .-->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>

                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Gravámenes Sobre el Vehiculo <fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!-- FIN  GRAVÁMENES SOBRE EL VEHICULO  .-->






              <!-- INICIO  Inscripción DOMINIO VIGENTE, GRAVÁMENES SOBRE BIEN RAÍZ-->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(40)"/>
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(30)"/>


                <fo:table-body>

                  <fo:table-row>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">A Favor de <fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Deuda Primitiva M$ <fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Saldo Actual M$<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>




                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!-- FIN Inscripción DOMINIO VIGENTE, GRAVÁMENES SOBRE BIEN RAÍZ-->





              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(40)"/>
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(30)"/>

                <fo:table-body>


                  <fo:table-row>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                        <xsl:value-of select="gravamenAfavorde"/>
                        <fo:leader leader-pattern="space" leader-length="1mm"/>
                      </fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                        <xsl:choose>
													  <xsl:when test="gravamenDeudaPrimitiva > 0">
															  $<xsl:value-of select='format-number(gravamenDeudaPrimitiva, "#","decimal")' />
													  </xsl:when>								  				 																	  
													  <xsl:otherwise>							
															<fo:leader leader-pattern="space" leader-length="1mm"/>	
													  </xsl:otherwise>
												</xsl:choose>
                      </fo:block>
                   </fo:table-cell>

                   <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                        <xsl:choose>
													  <xsl:when test="gravamenSaldoActual > 0">
															  $<xsl:value-of select='format-number(gravamenSaldoActual, "#","decimal")' />
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

          <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
         </xsl:for-each>


              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

			<!-- INICIO  3. PARTICIPACION EN SOCIEDADES. -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">3. PARTICIPACION EN SOCIEDADES</fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!-- FIN  INICIO  3. PARTICIPACION EN SOCIEDADES.  -->
              
              <!-- INICIO  Inscripción DOMINIO VIGENTE, GRAVÁMENES SOBRE BIEN RAÍZ-->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(20)"/>
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(20)"/>
               


                <fo:table-body>

                  <fo:table-row>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Nombre o Razón Social <fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">RUT <fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Tipo de Relación <fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">% Participación<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>
                    
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!-- FIN Inscripción DOMINIO VIGENTE, GRAVÁMENES SOBRE BIEN RAÍZ-->



       <xsl:if test="patrimonio/Patrimonio/sociedades = ''">
       	   <fo:table table-layout="fixed" width="100%">
		   <fo:table-column column-width="proportional-column-width(30)"/>
		   <fo:table-column column-width="proportional-column-width(20)"/>
		   <fo:table-column column-width="proportional-column-width(30)"/>
		   <fo:table-column column-width="proportional-column-width(20)"/>
		   
           
		   <fo:table-body>
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
		  </fo:table-body>
           </fo:table> 
       </xsl:if>
       <xsl:for-each select='patrimonio/Patrimonio/sociedades/Sociedad'>
       <xsl:variable name="cur" select='position()' />
        <!--<xsl:variable name="soc" select="patrimonio/Patrimonio/sociedades/Sociedad/finesLucro" />-->

            
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(20)"/>
                <fo:table-column column-width="proportional-column-width(30)"/>
                <fo:table-column column-width="proportional-column-width(20)"/>
                

                <fo:table-body>


                  <fo:table-row>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
						 <xsl:value-of select="$cur" />.- <xsl:value-of select="nombre"/>
                        <fo:leader leader-pattern="space" leader-length="1mm"/>
                      </fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                        <xsl:value-of select='format-number(rut, "#","rut")' />-<xsl:value-of select="dv"/>
                        <fo:leader leader-pattern="space" leader-length="1mm"/>
                      </fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                        <xsl:value-of select="tipoRelacion"/>
                        <fo:leader leader-pattern="space" leader-length="1mm"/>
                      </fo:block>
                    </fo:table-cell>


                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                        <xsl:value-of select="porcentajeParticipacion"/>%
                        <fo:leader leader-pattern="space" leader-length="1mm"/>
                      </fo:block>
                    </fo:table-cell>
                    
                  </fo:table-row>
		</fo:table-body>
              </fo:table>
              <!-- FIN   -->
        </xsl:for-each>

              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>


              <!--GRAVÁMENES SOBRE EL VEHICULO  .-->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>

                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">4. OTROS BIENES (Acciones, Bonos, Depósitos a Plazo, etc.) <fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!-- FIN  GRAVÁMENES SOBRE EL VEHICULO  .-->






              <!-- INICIO  Inscripción DOMINIO VIGENTE, GRAVÁMENES SOBRE BIEN RAÍZ-->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(70)"/>
                <fo:table-column column-width="proportional-column-width(30)"/>


                <fo:table-body>

                  <fo:table-row>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Detalle Otros Bienes <fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>

                    <fo:table-cell text-align="left" padding-top="1mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC" background-color="#C5D7E4">
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">Monto M$ <fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                    </fo:table-cell>


                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <!-- FIN Inscripción DOMINIO VIGENTE, GRAVÁMENES SOBRE BIEN RAÍZ-->
	<xsl:if test="patrimonio/Patrimonio/otrosBienes = ''">
		<fo:table table-layout="fixed" width="100%">
		<fo:table-column column-width="proportional-column-width(70)"/>
		<fo:table-column column-width="proportional-column-width(30)"/>

		<fo:table-body>


		  <fo:table-row>

		    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
		      <fo:block>
			<fo:leader leader-pattern="space" leader-length="1mm"/>
		      </fo:block>
		    </fo:table-cell>

		    <fo:table-cell padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
		      <fo:block>
			<fo:leader leader-pattern="space" leader-length="1mm"/>
		      </fo:block>
		   </fo:table-cell>

		  </fo:table-row>


		</fo:table-body>
	      </fo:table>
	</xsl:if>

       <xsl:for-each select='patrimonio/Patrimonio/otrosBienes/OtroBien'>
		   <xsl:variable name="cur" select='position()' />
        <!--<xsl:variable name="soc" select="patrimonio/Patrimonio/sociedades/Sociedad/finesLucro" />-->

            <!--<xsl:if test="finesLucro = 'false'"> -->

              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(70)"/>
                <fo:table-column column-width="proportional-column-width(30)"/>

                <fo:table-body>


                  <fo:table-row>

                    <fo:table-cell text-align="left" padding-top="2mm" padding-left="3mm" border-top="0.25pt solid #5885AC" border-bottom="0.25pt solid #5885AC" border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block>
                        <xsl:value-of select="$cur" />.- <xsl:value-of select="descripcion"/>
                        <fo:leader leader-pattern="space" leader-length="1mm"/>
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


             <!-- </xsl:if> -->
        </xsl:for-each>




              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <!-- INICIO XI. VOLUMENES ESPERADOS (MOVIMIENTOS MENSUALES). -->
              <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="proportional-column-width(100)"/>
                <fo:table-body>

                  <fo:table-row>
                    <fo:table-cell  text-align="left"  padding-top="2mm" padding-left="3mm" border-bottom="0.25pt solid #5885AC"   border-top="0.25pt solid #5885AC"  border-left="0.25pt solid #5885AC" border-right="0.25pt solid #5885AC">
                      <fo:block font-weight="bold" color="#70A0C1" line-height="5mm" font-size="13pt"><fo:leader leader-pattern="space" leader-length="1mm" />XI. Volúmenes Esperados (Movimientos Mensuales)</fo:block>
                    </fo:table-cell>
                  </fo:table-row>



                </fo:table-body>
              </fo:table>
             <!-- FIN XI. VOLUMENES ESPERADOS (MOVIMIENTOS MENSUALES  -->






              <!-- INICIO  Inscripción DOMINIO VIGENTE, GRAVÁMENES SOBRE BIEN RAÍZ-->
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
                      <fo:block font-weight="bold" color="#5885AC" font-size="8pt">N° Operaciones<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
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
              <!-- FIN Inscripción DOMINIO VIGENTE, GRAVÁMENES SOBRE BIEN RAÍZ-->




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
        </fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>
</xsl:stylesheet>
