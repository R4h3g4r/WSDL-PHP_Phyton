<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="1.0">
  <xsl:template match="perfilcliente">
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
  <fo:layout-master-set>
    <fo:simple-page-master 
	margin-right="1.5cm"
	margin-left="1.5cm"
	margin-bottom="1cm"
	margin-top="1cm"
	page-width="21.7cm"
	page-height="31.7cm"
	master-name="first">
      <fo:region-body margin-top="1cm" margin-bottom="1.5cm"/>
      <fo:region-before extent="1cm"/>
      <fo:region-after extent="1.5cm"/>
    </fo:simple-page-master>
  </fo:layout-master-set>
  <fo:page-sequence master-reference="first">
    <fo:flow flow-name="xsl-region-body">
      <fo:table>
        <fo:table-column/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell>
              <fo:block font-size="13pt" font-weight="bold" text-align="center">PERFIL DEL CLIENTE </fo:block>
            </fo:table-cell>
          </fo:table-row>
          <fo:table-row>
            <fo:table-cell>
              <fo:block font-size="11pt" font-weight="bold" text-align="center">(Personas Naturales) </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--separador 1mm-->
      <fo:table>
        <fo:table-column column-width="100%"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="0.1cm">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="4.5cm"/>
        <fo:table-column />
        <fo:table-column column-width="8cm"/>
        <fo:table-body>
          <fo:table-row>
            <!--izquierda-->
            <fo:table-cell>
              <fo:block>
                <fo:table>
                  <fo:table-column column-width="2.5cm"/>
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
                        <fo:block font-size="10pt" margin-left="3pt" padding-top="1pt" padding-bottom="1pt">C�digo Oficina </fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select="codigoOficina"/> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
            <!--espacio-->
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <!--derecha-->
            <fo:table-cell>
              <fo:block>
                <fo:table>
                  <fo:table-column />
                  <fo:table-column column-width="6cm"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
                        <fo:block font-size="10pt" margin-left="3pt" padding-top="1pt" padding-bottom="1pt"> Folio N� </fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select="folio"/> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
            <!--espacio-->
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--separador 1mm-->
      <fo:table>
        <fo:table-column column-width="100%"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--ofician banca-->
      <fo:table>
        <fo:table-column column-width="6cm"/>
        <fo:table-column column-width="0.1cm"/>
        <fo:table-column column-width="6cm"/>
        <fo:table-column/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell>
              <fo:block>
                <fo:table>
                  <fo:table-column column-width="1.5cm"/>
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-style="solid" border-width="0.5pt" border-color="#0071bc">
                        <fo:block font-size="10pt" margin-left="3pt" padding-top="1pt" padding-bottom="1pt">Oficina </fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-style="solid" border-width="0.5pt" border-color="#0071bc" background-color="#c7d5ee">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select="nombreOficina"/> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
            <!--separador medio-->
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <fo:table-cell >
              <fo:block>
                <fo:table>
                  <fo:table-column column-width="1.5cm"/>
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-style="solid" border-width="0.5pt" border-color="#0071bc">
                        <fo:block font-size="10pt" margin-left="3pt" padding-top="1pt" padding-bottom="1pt">Banca</fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-style="solid" border-width="0.5pt" border-color="#0071bc" background-color="#c7d5ee">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select="banca"/> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block font-size="10pt"> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--separador 2mm-->
      <fo:table>
        <fo:table-column column-width="100%"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="0.2cm">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!-- TITULO PRINCIPAL descripcion-->
      <fo:table>
        <fo:table-column column-width="9cm"/>
        <fo:table-column />
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#005089" border-width="0.5pt" border-style="solid" background-color="#005089">
              <fo:block text-align="left" color="#FFFFFF" font-size="11pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="0.5pt" >I. ANTECEDENTES PERSONALES</fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block color="#005089">
                <fo:leader leader-pattern="rule"
                  leader-length="9.5cm"
                  rule-thickness="1pt"
                  rule-style="dotted"/>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--TITULO PRINCIPAL descripcion FIN-->
      <!--separador 1mm-->
      <fo:table>
        <fo:table-column column-width="100%"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--TITULO SECUNDARIO-->
      <fo:table>
        <fo:table-column column-width="4.8cm"/>
        <fo:table-column />
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
              <fo:block text-align="left" font-size="11pt"  margin-left="5pt" padding-top="2pt" padding-bottom="2pt" font-weight="bold"> NOMBRE DEL CLIENTE</fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--FIN TITULO SECUNDARIO-->
      <!--separador 1mm-->
      <fo:table>
        <fo:table-column column-width="100%"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--apellidos nombres-->
      <fo:table>
        <fo:table-column column-width="5.5cm"/>
        <fo:table-column column-width="0.1cm"/>
        <fo:table-column column-width="5.5cm"/>
        <fo:table-column column-width="0.1cm"/>
        <fo:table-column/>
        <fo:table-body>
          <fo:table-row>
            <!--paterno-->
            <fo:table-cell>
              <fo:block>
                <fo:table>
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt">Apellido Paterno </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select="apellidoPaterno"/> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
            <!--ESPACIO-->
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <!--materno-->
            <fo:table-cell>
              <fo:block>
                <fo:table>
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt">Apellido Materno </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select="apellidoMaterno"/> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
            <!--ESPACIO-->
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <!--nombres-->
            <fo:table-cell>
              <fo:block>
                <fo:table>
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt">Nombres </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select="nombres"/> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--separador 1mm-->
      <fo:table>
        <fo:table-column column-width="100%"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--RUT-->
      <fo:table>
        <fo:table-column column-width="5cm"/>
        <fo:table-column/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell>
              <fo:block>
                <fo:table>
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt">RUT </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select="rut"/> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--separador 1mm-->
      <fo:table>
        <fo:table-column column-width="100%"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--Fecha de Nacimiento Nacionalidad-->
      <fo:table background="transparent" width="100%">
        <!--columnas-->
        <fo:table-column column-width="4cm"/>
        <fo:table-column column-width="0.3cm"/>
        <fo:table-column column-width="7cm"/>
        <fo:table-column column-width="0.3cm"/>
        <fo:table-column column-width="4.5cm"/>
        <fo:table-column column-width="0.3cm"/>
        <fo:table-column/>
        <fo:table-body>
          <fo:table-row>
            <!--columna1 sexo-->
            <fo:table-cell >
              <fo:block>
                <fo:table background="transparent" width="100%" border-width="0.5pt" border-color="#0071bc">
                  <fo:table-column/>
                  <fo:table-body>
                    <!--paterno celda-->
                    <fo:table-row>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" padding-start="1pt" padding-end="1pt" padding-before="1pt" padding-after="1pt">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt">Sexo</fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <!--paterno celda fin-->
                    <!--espacio vacio-->
                    <fo:table-row>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" padding-start="1pt" padding-end="1pt" padding-before="1pt" padding-after="1pt">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt" background-color="#c7d5ee"> &#160;<xsl:value-of select="sexo"/> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <!--espacio vacio fin-->
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
            <!--entre-columnas-->
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <!--fin entrecolumnas-->
            <!--columna fecha nacimiento-->
            <fo:table-cell >
              <fo:block>
                <fo:table background="transparent" width="100%" border-width="0.5pt" border-color="#0071bc">
                  <fo:table-column/>
                  <fo:table-body>
                    <!--paterno celda-->
                    <fo:table-row>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" padding-start="1pt" padding-end="1pt" padding-before="1pt" padding-after="1pt">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt">Fecha de Nacimiento</fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <!--paterno celda fin-->
                    <!--espacio vacio-->
                    <fo:table-row>
                      <fo:table-cell>
                        <fo:block>
                          <!--separaciones-->
                          <fo:table background="transparent" width="100%">
                            <!--columnas-->
                            <fo:table-column column-width="1.3cm"/>
                            <fo:table-column />
                            <fo:table-column column-width="1.3cm"/>
                            <fo:table-body>
                              <fo:table-row>
                                <!--columna1-->
                                <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select='substring(fechaNacimiento, 1,2)'/> </fo:block>
                                </fo:table-cell>
                                <!--columna2-->
                                <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select='substring(fechaNacimiento, 4,2)'/> </fo:block>
                                </fo:table-cell>
                                <!--fin entrecolumnas-->
                                <!--columna3-->
                                <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" background-color="#c7d5ee">
                                  <fo:block  font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select='substring(fechaNacimiento, 7,4)'/> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--fin separaciones-->
                        </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell>
                        <fo:table background="transparent" width="100%">
                          <!--columnas-->
                          <fo:table-column column-width="1.3cm"/>
                          <fo:table-column />
                          <fo:table-column column-width="1.3cm"/>
                          <fo:table-body>
                            <fo:table-row>
                              <!--columna1-->
                              <fo:table-cell>
                                <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt">d�a</fo:block>
                              </fo:table-cell>
                              <!--columna2-->
                              <fo:table-cell>
                                <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt">mes</fo:block>
                              </fo:table-cell>
                              <!--fin entrecolumnas-->
                              <!--columna3-->
                              <fo:table-cell>
                                <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt">a�o</fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                          </fo:table-body>
                        </fo:table>
                      </fo:table-cell>
                    </fo:table-row>
                    <!--espacio vacio fin-->
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
            <!--entre-columnas-->
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <!--fin entrecolumnas-->
            <!--columna2 nacionalidad-->
            <fo:table-cell >
              <fo:block>
                <fo:table background="transparent" width="100%" border-width="0.5pt">
                  <fo:table-column/>
                  <fo:table-body>
                    <!--paterno celda-->
                    <fo:table-row>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" padding-start="1pt" padding-end="1pt" padding-before="1pt" padding-after="1pt">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt">Nacionalidad</fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <!--paterno celda fin-->
                    <!--espacio vacio-->
                    <fo:table-row>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" padding-start="1pt" padding-end="1pt" padding-before="1pt" padding-after="1pt" background-color="#c7d5ee">
                        <fo:block text-align="center" font-size="10pt"> &#160;<xsl:value-of select="nacionalidad"/> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <!--espacio vacio fin-->
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
            <!--entre-columnas-->
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <!--fin entrecolumnas-->
            <!--columna3-->
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--Fecha de Nacimiento Nacionalidad fin-->
      <!--separador 1mm-->
      <fo:table>
        <fo:table-column column-width="100%"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="0.1cm">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--domicilio cliente-->
      <fo:table>
        <fo:table-column column-width="4cm"/>
        <fo:table-column/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-style="solid" border-width="0.5pt" border-color="#0071bc">
              <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt">Domicilio Cliente </fo:block>
            </fo:table-cell>
            <fo:table-cell border-style="solid" border-width="0.5pt" border-color="#0071bc">
              <!--diviciones calle mes ano-->
              <fo:block>
                <fo:table>
                  <fo:table-column/>
                  <fo:table-column column-width="2cm"/>
                  <fo:table-column column-width="3cm"/>
                  <fo:table-body>
                    <fo:table-row>
                      
                      <fo:table-cell background-color="#c7d5ee" border-style="solid" border-width="0.5pt" border-color="#0071bc">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select="calle"/> </fo:block>
                      </fo:table-cell>          
                      
                      <fo:table-cell background-color="#c7d5ee" border-style="solid" border-width="0.5pt" border-color="#0071bc">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select="numero"/> </fo:block>
                      </fo:table-cell>
                      
                      <fo:table-cell background-color="#c7d5ee" border-style="solid" border-width="0.5pt" border-color="#0071bc">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> &#160; <xsl:value-of select="departamento"/> </fo:block>
                      </fo:table-cell>
                      
                      
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
              <!--fin diviciones-->
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--domicilio cliente calle n� depto.-->
      <fo:table>
        <fo:table-column/>
        <fo:table-column column-width="5.5cm"/>
        <fo:table-column column-width="2cm"/>
        <fo:table-column column-width="3cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block font-size="10pt" padding-top="1pt" padding-bottom="1pt">Calle</fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block font-size="10pt" padding-top="1pt" padding-bottom="1pt">N�</fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block font-size="10pt" padding-top="1pt" padding-bottom="1pt">Depto.</fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--separador 1mm-->
      <fo:table>
        <fo:table-column column-width="100%"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="0.1cm">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--comuna ciudad-->
      <fo:table>
        <fo:table-column column-width="9cm"/>
        <fo:table-column column-width="0.7cm"/>
        <fo:table-column column-width="9cm"/>
        <fo:table-column/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell>
              <fo:block>
                <!--comuna-->
                <fo:table>
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt">Comuna </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select="comuna"/> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
                <!--sep-->
                <fo:table>
                  <fo:table-column column-width="100%"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell padding-bottom="8pt">
                        <fo:block> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
                <fo:table>
                  <fo:table-column/>
                  <fo:table-column column-width="1cm"/>
                  <fo:table-column column-width="1.5cm"/>
		  <fo:table-column column-width="1cm"/>
		  <fo:table-column column-width="1.5cm"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> Tiempo domicilio actual </fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select="tiempoDomicilioActualMeses"/> </fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> Meses </fo:block>
                      </fo:table-cell>
		       <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select="tiempoDomicilioActualAnios"/> </fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> A�os </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block>
                <!--comuna-->
                <fo:table>
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt">Ciudad </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select="ciudad"/> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
                <!--sep-->
                <fo:table>
                  <fo:table-column column-width="100%"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell padding-bottom="8pt">
                        <fo:block> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
                <fo:table>
                  <fo:table-column/>
                   <fo:table-column column-width="1cm"/>
                  <fo:table-column column-width="1.5cm"/>
		  <fo:table-column column-width="1cm"/>
		  <fo:table-column column-width="1.5cm"/>
                  <fo:table-body>
                     <fo:table-row>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
                        <fo:block font-size="9pt" text-align="center" padding-top="1pt" padding-bottom="1pt">Tiempo domicilio anterior</fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select="tiempoDomicilioAnteriorMeses"/> </fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> Meses </fo:block>
                      </fo:table-cell>
		       <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select="tiempoDomicilioAnteriorAnios"/> </fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> A�os </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--separador 1mm-->
      <fo:table>
        <fo:table-column column-width="100%"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="8pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--propia arrendada otra-->
      <fo:table>
        <fo:table-column column-width="2cm"/>
        <fo:table-column column-width="1.2cm"/>
        <fo:table-column column-width="2.5cm"/>
        <fo:table-column column-width="1.2cm"/>
        <fo:table-column column-width="3.5cm"/>
        <fo:table-column/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
              <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt">Propia </fo:block>
            </fo:table-cell>
            <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
	    <xsl:if test="tipoDomicilio='p'">
              <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> X </fo:block>
	    </xsl:if>
            </fo:table-cell>
            <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
              <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt">Arrendada </fo:block>
            </fo:table-cell>
            <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
	     <xsl:if test="tipoDomicilio='a'">
              <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> X </fo:block>
	     </xsl:if>
            </fo:table-cell>
            <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
              <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt">Otra (Especificar) </fo:block>
            </fo:table-cell>
            <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
	    <xsl:if test="tipoDomicilio='o'">
              <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select="especificarTipoDomicilio"/> </fo:block>
	    </xsl:if>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--separador 1mm-->
      <fo:table>
        <fo:table-column column-width="100%"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--Telefonos-->
      <fo:table>
        <fo:table-column column-width="5.5cm"/>
        <fo:table-column column-width="0.1cm"/>
        <fo:table-column column-width="5.5cm"/>
        <fo:table-column column-width="0.1cm"/>
        <fo:table-column/>
        <fo:table-body>
          <fo:table-row>
            <!--paterno-->
            <fo:table-cell>
              <fo:block>
                <fo:table>
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt">Tel�fono Particular </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select="telefonoParticular"/> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
            <!--ESPACIO-->
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <!--materno-->
            <fo:table-cell>
              <fo:block>
                <fo:table>
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt">N�mero T�lefono Celular </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select="telefonoCelular"/> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
            <!--ESPACIO-->
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <!--nombres-->
            <fo:table-cell>
              <fo:block>
                <fo:table>
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt">E-mail </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc"  background-color="#c7d5ee">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select="email"/> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--separador 1mm-->
      <fo:table>
        <fo:table-column column-width="100%"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--estado civil-->
      <fo:table>
        <fo:table-column column-width="14cm"/>
        <fo:table-column/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell>
              <fo:block>
                <fo:table>
                  <fo:table-column/>
                  <fo:table-column column-width="1.7cm"/>
                  <fo:table-column column-width="1.2cm"/>
                  <fo:table-column column-width="6cm"/>
                  <fo:table-column column-width="1.2cm"/>
                  <fo:table-body>
                      <fo:table-row>


                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
                        <fo:block font-size="10pt" text-align="center" padding-bottom="1pt" padding-top="1pt">Estado Civil</fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
                        <fo:block font-size="10pt" text-align="center" padding-bottom="1pt" padding-top="1pt">Casado</fo:block>
                      </fo:table-cell>

                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
<xsl:if test="estadoCivil='casado'">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> X </fo:block>
</xsl:if>
                      </fo:table-cell>



                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
                        <fo:block font-size="10pt" text-align="center" padding-bottom="1pt" padding-top="1pt"> Soltero / Viudo / Divorciado</fo:block>
                      </fo:table-cell>

                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc"  background-color="#c7d5ee">
<xsl:if test="estadoCivil='soltero' or estadoCivil='viudo' or estadoCivil='divorciado'">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> X </fo:block>
</xsl:if>
                      </fo:table-cell>


</fo:table-row>

                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--separador 1mm-->
      <fo:table>
        <fo:table-column column-width="100%"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--regimen conyugal-->
      <fo:table>
        <fo:table-column/>
        <fo:table-column column-width="3cm"/>
        <fo:table-column column-width="0.9cm"/>
        <fo:table-column column-width="3.8cm"/>
        <fo:table-column column-width="0.9cm"/>
        <fo:table-column column-width="4.8cm"/>
        <fo:table-column column-width="0.9cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-width="0.5pt" border-style="solid" padding-bottom="0.1cm" padding-top="0.1cm" border-color="#0071bc">
              <fo:block font-size="10pt" text-align="center">R�gimen Conyugal </fo:block>
            </fo:table-cell>
            <fo:table-cell border-width="0.5pt" border-style="solid" padding-bottom="0.1cm" padding-top="0.1cm" border-color="#0071bc">
              <fo:block font-size="10pt" text-align="center">Sociedad Conyugal </fo:block>
            </fo:table-cell>
            <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
	    <xsl:if test="regimenConyugal='Sociedad'">
              <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> X </fo:block>
	    </xsl:if>
            </fo:table-cell>
            <fo:table-cell border-width="0.5pt" border-style="solid" padding-bottom="0.1cm" padding-top="0.1cm" border-color="#0071bc">
              <fo:block font-size="10pt" text-align="center">Separaci�n de Bienes </fo:block>
            </fo:table-cell>
            <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
	      <xsl:if test="regimenConyugal='Separacion'">
              <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> X </fo:block>
	   </xsl:if>
            </fo:table-cell>
            <fo:table-cell border-width="0.5pt" border-style="solid" padding-bottom="0.1cm" padding-top="0.1cm" border-color="#0071bc">
              <fo:block font-size="10pt" text-align="center">Participaci�n en los Gananciales </fo:block>
            </fo:table-cell>
            <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
	    <xsl:if test="regimenConyugal='Participacion'">
              <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> X </fo:block>
	    </xsl:if>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--separador 1mm-->
      <fo:table>
        <fo:table-column column-width="100%"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--N� cargas-->
      <fo:table>
        <fo:table-column column-width="14cm"/>
        <fo:table-column/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell>
              <fo:block>
                <fo:table>
                  <fo:table-column/>
                  <fo:table-column column-width="1.2cm"/>
                  <fo:table-column column-width="6cm"/>
                  <fo:table-column column-width="1.2cm"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt">N� Cargas Familiares</fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc"  background-color="#c7d5ee">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select="numCargas"/> </fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt">N� hijos dependientes</fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc"  background-color="#c7d5ee">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select="numHijos"/> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--separador 1mm-->
      <fo:table>
        <fo:table-column column-width="100%"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--trabaja o a trabajado-->
      <fo:table>
        <fo:table-column/>
        <fo:table-column column-width="0.9cm" />
        <fo:table-column column-width="0.9cm" />
        <fo:table-column column-width="0.9cm" />
        <fo:table-column column-width="0.9cm" />
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" padding-left="0.5cm" padding-top="0.2cm" padding-bottom="0.2cm">
              <fo:block font-size="10pt" text-align="left">Trabaja o ha trabajado en funciones oficiales en alg�n Poder del Estado o en las FF AA y de Orden(*) </fo:block>
            </fo:table-cell>
            <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
              <fo:block font-size="10pt" text-align="center" vertical-align="bottom" padding-top="0.4cm">SI </fo:block>
            </fo:table-cell>
            <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
	    <xsl:if test="cargoEstado/trabajaEnEstado='true'">
              <fo:block font-size="10pt" text-align="center" vertical-align="bottom" padding-top="0.4cm"> X </fo:block>
	    </xsl:if>
            </fo:table-cell>
            <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
              <fo:block font-size="10pt" text-align="center" padding-top="0.4cm">NO </fo:block>
            </fo:table-cell>
            <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
	    <xsl:if test="cargoEstado/trabajaEnEstado='false'">
              <fo:block font-size="10pt" text-align="center" vertical-align="bottom" padding-top="0.4cm"> X </fo:block>
	    </xsl:if>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--separador 1mm-->
      <fo:table>
        <fo:table-column column-width="100%"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--si su respuesta organismo-->
      <fo:table>
        <fo:table-column/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-style="solid" border-width="0.5pt" border-color="#0071bc">
              <fo:block font-size="10pt" text-align="center" padding-bottom="0.1cm" padding-top="0.1cm">Si su respuesta es afirmativa, indicar organismo, cargo y fecha de servicio </fo:block>
            </fo:table-cell>
          </fo:table-row>
          <fo:table-row>
            <fo:table-cell border-style="solid" border-width="0.5pt" border-color="#0071bc" background-color="#c7d5ee">
	    <xsl:if test="cargoEstado/trabajaEnEstado='true'">
	    <xsl:for-each select="cargoEstado">
              <fo:block font-size="10pt" text-align="center" padding-bottom="1.5pt" padding-top="1.5pt" border-style="solid" border-width="0.5pt" border-color="#0071bc"> &#160;<xsl:value-of select="organismo"/> &#160;&#160;&#160;&#160; &#160;<xsl:value-of select="cargoOcupado"/> &#160;&#160;&#160;&#160; &#160;<xsl:value-of select="fechaServicio"/> </fo:block>
	      </xsl:for-each>
	    </xsl:if>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--separador 1mm-->
      <fo:table>
        <fo:table-column column-width="100%"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--es familiar de personas-->
      <fo:table>
        <fo:table-column/>
        <fo:table-column column-width="0.9cm" />
        <fo:table-column column-width="0.9cm" />
        <fo:table-column column-width="0.9cm" />
        <fo:table-column column-width="0.9cm" />
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" padding-left="0.5cm" padding-top="0.2cm" padding-bottom="0.2cm">
              <fo:block font-size="10pt" text-align="left">Es familiar de personas que ocupan o han ocupado cargos en alg�n Poder del Estado o en las FF AA y de Orden(*) </fo:block>
            </fo:table-cell>
            <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
              <fo:block font-size="10pt" text-align="center" vertical-align="bottom" padding-top="0.4cm">SI </fo:block>
            </fo:table-cell>
            <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
	    <xsl:if test="cargo/esFamiliarDePersonasDelEstado='true'">
              <fo:block font-size="10pt" text-align="center" vertical-align="bottom" padding-top="0.4cm"> X </fo:block>
	    </xsl:if>
            </fo:table-cell>
            <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
              <fo:block font-size="10pt" text-align="center" padding-top="0.4cm">NO </fo:block>
            </fo:table-cell>
            <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
	    <xsl:if test="cargo/esFamiliarDePersonasDelEstado='false'">
              <fo:block font-size="10pt" text-align="center" vertical-align="bottom" padding-top="0.4cm"> X </fo:block>
	    </xsl:if>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--separador 1mm-->
      <fo:table>
        <fo:table-column column-width="100%"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--si su respuesta-->
      <fo:table>
        <fo:table-column/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-style="solid" border-width="0.5pt" border-color="#0071bc">
              <fo:block font-size="10pt" text-align="center" padding-bottom="0.1cm" padding-top="0.1cm">Si su respuesta es afirmativa, indicar nombre, parentesco, cargo ocupado y organismo </fo:block>
            </fo:table-cell>
          </fo:table-row>
          <fo:table-row>
            <fo:table-cell border-style="solid" border-width="0.5pt" border-color="#0071bc" background-color="#c7d5ee">
	    <xsl:if test="cargo/esFamiliarDePersonasDelEstado='true'">
	    <xsl:for-each select="cargo">
              <fo:block font-size="10pt" text-align="center" padding-bottom="1.5pt" padding-top="1.5pt" border-style="solid" border-width="0.5pt" border-color="#0071bc"> &#160;<xsl:value-of select="nombrePariente"/> &#160;&#160;&#160; &#160;<xsl:value-of select="parentesco"/> &#160;&#160;&#160; &#160;<xsl:value-of select="cargoOcupadoPariente"/> &#160;&#160;&#160; &#160;<xsl:value-of select="organismoPariente"/></fo:block>
	      </xsl:for-each>
	    </xsl:if>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--separador 1mm-->
      <fo:table>
        <fo:table-column column-width="100%"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="8pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--texto inf-->
      <fo:table>
        <fo:table-column column-width="0.5cm"/>
        <fo:table-column/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell>
              <fo:block font-size="8pt">(*) </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block font-size="8pt" padding-bottom="2pt" text-align="justify">� Poder Ejecutivo: Presidente, ex-Presidentes, Candidatos Presidenciales, Ministros, ex-Ministros,
                Subsecretarios, Intendentes, Gobernadores, Alcaldes y Consejales. </fo:block>
              <fo:block font-size="8pt" padding-bottom="2pt" text-align="justify">� Poder Legislativo: Senadores y Diputados. </fo:block>
              <fo:block font-size="8pt" padding-bottom="2pt" text-align="justify">� Poder Judicial: Ministros de la Corte Suprema y Fiscal Nacional. </fo:block>
              <fo:block font-size="8pt" padding-bottom="2pt" text-align="justify">� Fuerzas Armadas y de Orden: Generales, Almirantes, Coroneles, Director de Investigaciones y ex altos
                mandos de las Fuerzas Armadas, Carabineros e Investigaciones. </fo:block>
              <fo:block font-size="8pt" padding-bottom="2pt" text-align="justify">� Presidente y ex-Presidente del Consejo de Defensa del Estado (CODEFE), Director o ex-Director de la
                Unidad de An�lisis Financiero (UAF), Dirigentes Pol�ticos y ex-Dirigentes Pol�ticos. </fo:block>
              <fo:block font-size="8pt" padding-bottom="2pt" text-align="justify">� Altos ejecutivos de empresas p�blicas, como Directores y Gerentes (Ej. Corfo, Enap, Codelco, etc.). </fo:block>
              <fo:block font-size="8pt" padding-bottom="2pt" text-align="justify">� Sociedades o entidades que hayan sido creadas por personas que ostentan la calidad de PAEPs y que
                tengan una participaci�n m�nima de un 10% de la propiedad. </fo:block>
              <fo:block font-size="8pt" padding-bottom="4pt" text-align="justify">� Familiares inmediatos de las personas definidas anteriormente (padres, hermanos, c�nyuges, hijos) hasta
                2� grado de afinidad y consanguinidad(cu�ados, primos, t�os, sobrinos, suegros). </fo:block>
              <fo:block font-size="8pt" text-align="justify">Nota: En el caso de PAEPs, se deber� considerar el ejercicio de la funci�n por un per�odo de a lo menos
                12  a�os a la fecha de la solicitud del producto. Con todo, para personajes nacionales o internacionales
                de alta figuraci�n p�blica, cuestionados negativamente, no regir� la limitaci�n de 12 a�os. </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
<!--*************************************************************************
    *									
    *        salto de hoja completa si es que esta termina
    *
    *************************************************************************
-->

  </fo:flow>
      </fo:page-sequence>


       <fo:page-sequence master-reference="first">
        <fo:static-content flow-name="xsl-region-before">
          <fo:block line-height="14pt" font-size="10pt"
    text-align="end"></fo:block>
        </fo:static-content>
        <fo:static-content flow-name="xsl-region-after">
          <fo:block line-height="14pt" font-size="10pt"
    text-align="end"></fo:block>
        </fo:static-content>
        <fo:flow flow-name="xsl-region-body">
         

      <fo:table>
        <fo:table-column column-width="4.2cm"/>
        <fo:table-column />
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
              <fo:block text-align="left" font-size="11pt"  margin-left="5pt" padding-top="2pt" padding-bottom="2pt" font-weight="bold"> NOMBRE CONYUGE </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="16cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table background="transparent">
        <fo:table-column column-width="5.4cm"/>
        <fo:table-column column-width="0.2cm"/>
        <fo:table-column/>
        <fo:table-column column-width="0.2cm"/>
        <fo:table-column column-width="5.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell >
              <fo:block>
                <fo:table background="transparent" width="100%" border-left-width="2pt" border-right-width="2pt" border-top-width="2pt" border-bottom-width="2pt">
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" padding-start="1pt" padding-end="1pt" padding-before="1pt" padding-after="1pt">
                        <fo:block text-align="center" font-size="10pt">Apellido Paterno</fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" padding-start="1pt" padding-end="1pt" padding-before="1pt" padding-after="1pt" background-color="#c7d5ee">
                        <fo:block font-size="10pt" text-align="center"> &#160;<xsl:value-of select="apellidoPaternoConyuge"/> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <fo:table-cell >
              <fo:block>
                <fo:table background="transparent" width="100%" border-left-width="2pt" border-right-width="2pt" border-top-width="2pt" border-bottom-width="2pt">
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" padding-start="1pt" padding-end="1pt" padding-before="1pt" padding-after="1pt">
                        <fo:block text-align="center" font-size="10pt">Apellido Materno</fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" padding-start="1pt" padding-end="1pt" padding-before="1pt" padding-after="1pt" background-color="#c7d5ee">
                        <fo:block text-align="center" font-size="10pt"> &#160;<xsl:value-of select="apellidoMaternoConyuge"/> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <fo:table-cell >
              <fo:block>
                <fo:table background="transparent" width="100%" border-left-width="2pt" border-right-width="2pt" border-top-width="2pt" border-bottom-width="2pt">
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" padding-start="1pt" padding-end="1pt" padding-before="1pt" padding-after="1pt">
                        <fo:block text-align="center" font-size="10pt">Nombres</fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" padding-start="1pt" padding-end="1pt" padding-before="1pt" padding-after="1pt" background-color="#c7d5ee">
                        <fo:block text-align="center" font-size="10pt"> &#160;<xsl:value-of select="nombresConyuge"/> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="16cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="7cm"/>
        <fo:table-column column-width="0.3cm"/>
        <fo:table-column/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell>
              <fo:block>
                <fo:table>
                  <fo:table-column/>
                  <fo:table-column column-width="0.6cm"/>
                  <fo:table-column column-width="1.2cm"/>
                  <fo:table-column column-width="0.6cm"/>
                  <fo:table-column column-width="1.2cm"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt">
                        <fo:block font-size="10pt" text-align="center" font-weight="bold" padding-top="1pt" padding-bottom="1pt">Cliente Bci </fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> Si </fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" background-color="#c7d5ee">
		      <xsl:if test="esClienteBCIConyuge='true'">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> X </fo:block>
		      </xsl:if>
                      </fo:table-cell>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> No </fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" background-color="#c7d5ee">
		      <xsl:if test="esClienteBCIConyuge='false'">
                        <fo:block text-align="center" font-size="10pt" padding-top="1pt" padding-bottom="1pt"> X </fo:block>
		      </xsl:if>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block>
                <fo:table>
                  <fo:table-column/>
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt">
                        <fo:block font-size="10pt" text-align="center" font-weight="bold" padding-top="1pt" padding-bottom="1pt">Oficina </fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" background-color="#c7d5ee">
                        <fo:block padding-top="1pt" font-size="10pt" text-align="center" padding-bottom="1pt"> &#160;<xsl:value-of select="oficina"/> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="16cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table background="transparent" width="100%">
        <!--columnas-->
        <fo:table-column column-width="4.9cm"/>
        <fo:table-column column-width="0.3cm"/>
        <fo:table-column column-width="3.9cm"/>
        <fo:table-column column-width="0.3cm"/>
        <fo:table-column/>
        <fo:table-body>
          <fo:table-row>
            <!--columna1-->
            <fo:table-cell >
              <fo:block>
                <fo:table background="transparent" width="100%" border-left-width="2pt" border-right-width="2pt" border-top-width="2pt" border-bottom-width="2pt">
                  <fo:table-column/>
                  <fo:table-body>
                    <!--paterno celda-->
                    <fo:table-row>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt">
                        <fo:block text-align="center" font-size="10pt" padding-bottom="1pt" padding-top="1pt">RUT</fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <!--paterno celda fin-->
                    <!--espacio vacio-->
                    <fo:table-row>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" background-color="#c7d5ee">
                        <fo:block font-size="10pt" text-align="center" padding-bottom="1pt" padding-top="1pt"> &#160;<xsl:value-of select="rutConyuge"/> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <!--espacio vacio fin-->
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
            <!--entre-columnas-->
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <!--fin entrecolumnas-->
            <!--columna2-->
            <fo:table-cell >
              <fo:block>
                <fo:table background="transparent" width="100%" border-left-width="2pt" border-right-width="2pt" border-top-width="2pt" border-bottom-width="2pt">
                  <fo:table-column/>
                  <fo:table-body>
                    <!--paterno celda-->
                    <fo:table-row>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" padding-start="1pt" padding-end="1pt" padding-before="1pt" padding-after="1pt">
                        <fo:block text-align="center" font-size="10pt">Banca</fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <!--paterno celda fin-->
                    <!--espacio vacio-->
                    <fo:table-row>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" padding-start="1pt" padding-end="1pt" padding-before="1pt" padding-after="1pt" background-color="#c7d5ee">
                        <fo:block font-size="10pt" text-align="center"> &#160;<xsl:value-of select="bancaConyuge"/> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <!--espacio vacio fin-->
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
            <!--entre-columnas-->
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <!--fin entrecolumnas-->
            <!--columna3-->
            <fo:table-cell >
              <fo:block>
                <fo:table background="transparent" width="100%" border-left-width="2pt" border-right-width="2pt" border-top-width="2pt" border-bottom-width="2pt">
                  <fo:table-column/>
                  <fo:table-body>
                    <!--paterno celda-->
                    <fo:table-row>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" padding-start="1pt" padding-end="1pt" padding-before="1pt" padding-after="1pt">
                        <fo:block text-align="center" font-size="10pt">E-mail</fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <!--paterno celda fin-->
                    <!--espacio vacio-->
                    <fo:table-row>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" padding-start="1pt" padding-end="1pt" padding-before="1pt" padding-after="1pt" background-color="#c7d5ee">
                        <fo:block font-size="10pt" text-align="center"> &#160;<xsl:value-of select="emailConyuge"/> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <!--espacio vacio fin-->
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="16cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table background="transparent" width="100%">
        <!--columnas-->
        <fo:table-column column-width="6.6cm"/>
        <fo:table-column column-width="0.3cm"/>
        <fo:table-column column-width="5.5cm"/>
        <fo:table-column/>
        <fo:table-body>
          <fo:table-row>
            <!--columna1-->
            <fo:table-cell >
              <fo:block>
                <fo:table background="transparent" width="100%" border-left-width="2pt" border-right-width="2pt" border-top-width="2pt" border-bottom-width="2pt">
                  <fo:table-column/>
                  <fo:table-body>
                    <!--paterno celda-->
                    <fo:table-row>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" padding-start="1pt" padding-end="1pt" padding-before="1pt" padding-after="1pt">
                        <fo:block text-align="center" font-size="10pt">Fecha de Nacimiento</fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <!--paterno celda fin-->
                    <!--espacio vacio-->
                    <fo:table-row>
                      <fo:table-cell>
                        <fo:block>
                          <!--separaciones-->
                          <fo:table background="transparent" width="100%">
                            <!--columnas-->
                            <fo:table-column column-width="1.3cm"/>
                            <fo:table-column />
                            <fo:table-column column-width="1.3cm"/>
                            <fo:table-body>
                              <fo:table-row>
                                <!--columna1-->
                                <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center"> &#160;<xsl:value-of select='substring(fechaNacimientoConyuge, 1,2)'/></fo:block>
                                </fo:table-cell>
                                <!--columna2-->
                                <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center"> &#160;<xsl:value-of select='substring(fechaNacimientoConyuge, 4,2)'/> </fo:block>
                                </fo:table-cell>
                                <!--fin entrecolumnas-->
                                <!--columna3-->
                                <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center"> &#160;<xsl:value-of select='substring(fechaNacimientoConyuge, 7,4)'/> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--fin separaciones-->
                        </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell>
                        <fo:table background="transparent" width="100%">
                          <!--columnas-->
                          <fo:table-column column-width="1.3cm"/>
                          <fo:table-column />
                          <fo:table-column column-width="1.3cm"/>
                          <fo:table-body>
                            <fo:table-row>
                              <!--columna1-->
                              <fo:table-cell>
                                <fo:block font-size="10pt" text-align="center">d�a</fo:block>
                              </fo:table-cell>
                              <!--columna2-->
                              <fo:table-cell>
                                <fo:block font-size="10pt" text-align="center">mes</fo:block>
                              </fo:table-cell>
                              <!--fin entrecolumnas-->
                              <!--columna3-->
                              <fo:table-cell>
                                <fo:block font-size="10pt" text-align="center">a�o</fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                          </fo:table-body>
                        </fo:table>
                      </fo:table-cell>
                    </fo:table-row>
                    <!--espacio vacio fin-->
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
            <!--entre-columnas-->
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <!--fin entrecolumnas-->
            <!--columna2-->
            <fo:table-cell >
              <fo:block>
                <fo:table background="transparent" width="100%" border-left-width="2pt" border-right-width="2pt" border-top-width="2pt" border-bottom-width="2pt">
                  <fo:table-column/>
                  <fo:table-body>
                    <!--paterno celda-->
                    <fo:table-row>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" padding-start="1pt" padding-end="1pt" padding-before="1pt" padding-after="1pt">
                        <fo:block text-align="center" font-size="10pt">Nacionalidad</fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <!--paterno celda fin-->
                    <!--espacio vacio-->
                    <fo:table-row>
                      <fo:table-cell border-style="solid" border-color="#0071bc" border-width="0.5pt" padding-start="1pt" padding-end="1pt" padding-before="1pt" padding-after="1pt" background-color="#c7d5ee">
                        <fo:block font-size="10pt" text-align="center"> &#160;<xsl:value-of select="nacionalidadConyuge"/> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <!--espacio vacio fin-->
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
            <!--entre-columnas-->
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <!--fin entrecolumnas-->
            <!--columna3-->
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="16cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="9.3cm"/>
        <fo:table-column column-width="9.1cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#005089" border-width="0.5pt" border-style="solid" background-color="#005089">
              <fo:block text-align="left" color="#FFFFFF" font-size="12pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="2pt" > II. ANTECENTES EDUCACIONALES </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block color="#005089">
                <fo:leader leader-pattern="rule"
                   leader-length="9.1cm"
                   rule-thickness="1pt"
                   rule-style="dotted"/>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--TITULO PRINCIPAL educacionales FIN-->
      <!--BLOQUE VACIO-->
      <fo:table>
        <fo:table-column column-width="16cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--BLOQUE VACIO FIN-->
      <!--DOS COLUMNAS-->
      <fo:table>
        <fo:table-column column-width="8.3cm"/>
        <fo:table-column />
        <fo:table-column column-width="8.3cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell >
              <fo:block>
                <fo:table>
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell>
                        <fo:block>
                          <!--TITULO SECUNDARIO-->
                          <fo:table>
                            <fo:table-column column-width="2.3cm"/>
                            <fo:table-column />
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
                                  <fo:block text-align="left" font-size="12pt"  margin-left="5pt" padding-top="2pt" padding-bottom="1pt" font-weight="bold"> CLIENTE</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--FIN TITULO SECUNDARIO-->
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="0.2cm">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!-- TITULO PRINCIPAL educacionales-->
                          <fo:table>
                            <fo:table-column/>
                            <fo:table-column column-width="4cm"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" >
                                  <fo:block text-align="left" font-size="10pt" font-weight="normal" margin-left="5pt" padding-top="2pt" padding-bottom="1pt" font-stretch="condensed">Nivel Educacional</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block color="#005089">
                                    <fo:leader leader-pattern="rule"
                                      leader-length="4cm"
                                      rule-thickness="1pt"
                                      rule-style="solid"/>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--TITULO PRINCIPAL educacionales FIN-->
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="0.1cm">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke1-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-column column-width="1.3cm"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                                  <fo:block font-size="10pt">B�sico</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
				<xsl:if test="nivelEducacional='Basico'">
                                  <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> X </fo:block>
				</xsl:if>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="0.1cm">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke2-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-column column-width="1.3cm"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                                  <fo:block font-size="10pt">Medio</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
				<xsl:if test="nivelEducacional='Medio'">
                                  <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> X </fo:block>
				</xsl:if>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="0.1cm">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke3-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-column column-width="1.3cm"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                                  <fo:block font-size="10pt">T�cnico</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
				<xsl:if test="nivelEducacional='Tecnico'">
                                  <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> X </fo:block>
				</xsl:if>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="0.1cm">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke4-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-column column-width="1.3cm"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                                  <fo:block font-size="10pt">Universitario incompleto</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
				<xsl:if test="nivelEducacional='Universitario_incompleto'">
                                  <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> X </fo:block>
				</xsl:if>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="0.1cm">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke5-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-column column-width="1.3cm"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                                  <fo:block font-size="10pt">Universitario completo</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
				<xsl:if test="nivelEducacional='Universitario_completo'">
                                  <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> X </fo:block>
				</xsl:if> 
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="0.1cm">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke6-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-column column-width="1.3cm"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                                  <fo:block font-size="10pt">Post Grado</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
				<xsl:if test="nivelEducacional='Post_grado'">
                                  <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> X </fo:block>
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
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> &#160; </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block>
                <!--TITULO SECUNDARIO-->
                <fo:table>
                  <fo:table-column column-width="2.6cm"/>
                  <fo:table-column />
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="left" font-size="12pt"  margin-left="5pt" padding-top="2pt" padding-bottom="0.5pt" font-weight="bold">CONYUGE</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
                <!--FIN TITULO SECUNDARIO-->
                <!--separador-->
                <fo:table>
                  <fo:table-column column-width="100%"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell padding-bottom="0.2cm">
                        <fo:block> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
                <!-- TITULO PRINCIPAL educacionales-->
                <fo:table>
                  <fo:table-column/>
                  <fo:table-column column-width="4cm"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" >
                        <fo:block text-align="left" font-size="10pt" font-weight="normal" margin-left="5pt" padding-top="2pt" padding-bottom="1pt" font-stretch="condensed">Nivel Educacional</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block color="#005089">
                          <fo:leader leader-pattern="rule"
                            leader-length="4cm"
                            rule-thickness="1pt"
                            rule-style="solid"/>
                        </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
                <!--TITULO PRINCIPAL educacionales FIN-->
                <!--separador-->
                <fo:table>
                  <fo:table-column column-width="100%"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell padding-bottom="0.1cm">
                        <fo:block> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
                <!--bloke1-->
                <fo:table>
                  <fo:table-column />
                  <fo:table-column column-width="1.3cm"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                        <fo:block font-size="10pt">B�sico</fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
		      <xsl:if test="nivelEducacionalConyuge='Basico'">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> X </fo:block>
		      </xsl:if>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
                <!--separador-->
                <fo:table>
                  <fo:table-column column-width="100%"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell padding-bottom="0.1cm">
                        <fo:block> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
                <!--bloke2-->
                <fo:table>
                  <fo:table-column />
                  <fo:table-column column-width="1.3cm"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                        <fo:block font-size="10pt">Medio</fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
		      <xsl:if test="nivelEducacionalConyuge='Medio'">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> X </fo:block>
		      </xsl:if>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
                <!--separador-->
                <fo:table>
                  <fo:table-column column-width="100%"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell padding-bottom="0.1cm">
                        <fo:block> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
                <!--bloke3-->
                <fo:table>
                  <fo:table-column />
                  <fo:table-column column-width="1.3cm"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                        <fo:block font-size="10pt">T�cnico</fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
		      <xsl:if test="nivelEducacionalConyuge='Tecnico'">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> X </fo:block>
		      </xsl:if>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
                <!--separador-->
                <fo:table>
                  <fo:table-column column-width="100%"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell padding-bottom="0.1cm">
                        <fo:block> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
                <!--bloke4-->
                <fo:table>
                  <fo:table-column />
                  <fo:table-column column-width="1.3cm"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                        <fo:block font-size="10pt">Universitario incompleto</fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
                      <xsl:if test="nivelEducacionalConyuge='Universitario_incompleto'">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> X </fo:block>
		      </xsl:if>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
                <!--separador-->
                <fo:table>
                  <fo:table-column column-width="100%"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell padding-bottom="0.1cm">
                        <fo:block> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
                <!--bloke5-->
                <fo:table>
                  <fo:table-column />
                  <fo:table-column column-width="1.3cm"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                        <fo:block font-size="10pt">Universitario completo</fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
                      <xsl:if test="nivelEducacionalConyuge='Universitario_completo'">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> X </fo:block>
		      </xsl:if>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
                <!--separador-->
                <fo:table>
                  <fo:table-column column-width="100%"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell padding-bottom="0.1cm">
                        <fo:block> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
                <!--bloke6-->
                <fo:table>
                  <fo:table-column />
                  <fo:table-column column-width="1.3cm"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                        <fo:block font-size="10pt">Post Grado</fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
                      <xsl:if test="nivelEducacionalConyuge='Post_grado'">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> X </fo:block>
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
      <!--FIN DOS COLUMNAS-->
      <!--BLOQUE VACIO-->
      <fo:table>
        <fo:table-column column-width="16cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--BLOQUE VACIO FIN-->
      <!-- TITULO PRINCIPAL LABORALES-->
      <fo:table>
        <fo:table-column column-width="9.3cm"/>
        <fo:table-column column-width="9.1cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#005089" border-width="0.5pt" border-style="solid" background-color="#005089">
              <fo:block text-align="left" color="#FFFFFF" font-size="12pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="1pt" > III. ANTECENTES LABORALES</fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block color="#005089">
                <fo:leader leader-pattern="rule"
                  leader-length="9.1cm"
                  rule-thickness="1pt"
                  rule-style="dotted"/>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--TITULO PRINCIPAL LABORALES FIN-->
      <!--BLOQUE VACIO-->
      <fo:table>
        <fo:table-column column-width="16cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--BLOQUE VACIO FIN-->
      <!--DOS COLUMNAS-->
      <fo:table>
        <fo:table-column column-width="8.3cm"/>
        <fo:table-column />
        <fo:table-column column-width="8.3cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell >
              <fo:block>
                <fo:table>
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell>
                        <fo:block>
                          <!--TITULO SECUNDARIO-->
                          <fo:table>
                            <fo:table-column column-width="2.3cm"/>
                            <fo:table-column />
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
                                  <fo:block text-align="left" font-size="12pt"  margin-left="5pt" padding-top="2pt" padding-bottom="1pt" font-weight="bold"> CLIENTE</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--FIN TITULO SECUNDARIO-->
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="5pt">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke1-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-column column-width="1.3cm"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="2pt" padding-bottom="1pt">
                                  <fo:block font-size="10pt" text-align="left">Dependiente</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
				<xsl:if test="actividad='dependiente'">
                                  <fo:block font-size="10pt" text-align="center" padding-top="2pt"> X </fo:block>
				</xsl:if>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="5pt">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke2-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-column column-width="1.3cm"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="2pt" padding-bottom="1pt">
                                  <fo:block font-size="10pt" text-align="left" padding-top="1pt" padding-bottom="1pt">Independiente</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
				<xsl:if test="actividad='independiente'">
                                  <fo:block font-size="10pt" text-align="center" padding-top="2pt"> X </fo:block>
				</xsl:if>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="5pt">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke3-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-column column-width="1.3cm"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="2pt" padding-bottom="1pt">
                                  <fo:block font-size="9pt" text-align="left" padding-top="1pt" padding-bottom="1pt">Estudiante, Jubilado(a), otros. (Especificar)</fo:block>
                                </fo:table-cell> 
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
				<xsl:if test="actividad='otros' or actividad='estudiante' or actividad='jubilado'">
                                  <fo:block font-size="9pt" text-align="center" padding-top="2pt"> X </fo:block>
				</xsl:if>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <fo:table>
                            <fo:table-column />
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
				<xsl:if test="actividad='otros'">
                                  <fo:block font-size="10pt" text-align="center"> &#160;<xsl:value-of select="otraActividad"/> </fo:block>
				</xsl:if>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="5pt">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke4-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                                  <fo:block font-size="10pt" text-align="center">Profesi�n</fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center"> &#160;<xsl:value-of select="profesion"/> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="5pt">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke5-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                                  <fo:block font-size="10pt" text-align="center">Raz�n Social Empleador</fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center"> &#160;<xsl:value-of select="razonSocialEmpleador"/> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="5pt">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke6-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                                  <fo:block font-size="10pt" text-align="center">RUT del Empleador</fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center"> &#160;<xsl:value-of select="rutEmpleador"/> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="5pt">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke7-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                                  <fo:block font-size="10pt" text-align="center">Cargo que desempe�a</fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center"> &#160;<xsl:value-of select="cargoDesempenia"/> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="5pt">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke8-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-column column-width="3cm"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                                  <fo:block font-size="10pt">Antig�edad en la empresa</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
				
                                  <fo:block font-size="10pt" text-align="center" padding-top="0.05cm"> &#160;<xsl:value-of select="antiguedadEmpresaAnios"/> A�os &#160; <xsl:value-of select="antiguedadEmpresaMeses"/> Meses </fo:block>

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
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> &#160; </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block>
                <!--TITULO SECUNDARIO-->
                <fo:table>
                  <fo:table-column column-width="2.6cm"/>
                  <fo:table-column />
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="left" font-size="12pt"  margin-left="5pt" padding-top="2pt" padding-bottom="0.5pt" font-weight="bold">CONYUGE</fo:block>
                      </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--FIN TITULO SECUNDARIO-->
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="5pt">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke1-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-column column-width="1.3cm"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="2pt" padding-bottom="1pt">
                                  <fo:block font-size="10pt" text-align="left">Dependiente</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
				<xsl:if test="actividadConyuge='dependiente'">
                                  <fo:block font-size="10pt" text-align="center" padding-top="2pt"> X </fo:block>
				</xsl:if>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="5pt">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke2-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-column column-width="1.3cm"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="2pt" padding-bottom="1pt">
                                  <fo:block font-size="10pt" text-align="left" padding-top="1pt" padding-bottom="1pt">Independiente</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
				<xsl:if test="actividadConyuge='independiente'">
                                  <fo:block font-size="10pt" text-align="center" padding-top="2pt"> X </fo:block>
				</xsl:if>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="5pt">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke3-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-column column-width="1.3cm"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="2pt" padding-bottom="1pt">
                                  <fo:block font-size="9pt" text-align="left" padding-top="1pt" padding-bottom="1pt">Estudiante, Jubilado(a), otros. (Especificar)</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
				<xsl:if test="actividadConyuge='otros' or actividadConyuge='estudiante' or actividadConyuge='jubilado'">
                                  <fo:block font-size="9pt" text-align="center" padding-top="2pt"> X </fo:block>
				</xsl:if>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <fo:table>
                            <fo:table-column />
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
				<xsl:if test="actividadConyuge='otros'">
                                  <fo:block font-size="10pt" text-align="center"> &#160;<xsl:value-of select="otraActividadConyuge"/>; </fo:block>
				  </xsl:if>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="5pt">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke4-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                                  <fo:block font-size="10pt" text-align="center">Profesi�n</fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center"> &#160;<xsl:value-of select="profesionConyuge"/> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="5pt">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke5-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                                  <fo:block font-size="10pt" text-align="center">Raz�n Social Empleador</fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center"> &#160;<xsl:value-of select="razonSocialEmpleadorConyuge"/> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="5pt">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke6-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                                  <fo:block font-size="10pt" text-align="center">RUT del Empleador</fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center"> &#160;<xsl:value-of select="rutEmpleadorConyuge"/> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="5pt">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke7-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                                  <fo:block font-size="10pt" text-align="center">Cargo que desempe�a</fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center"> &#160;<xsl:value-of select="cargoDesempeniaConyuge"/> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="5pt">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke8-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-column column-width="3cm"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                        <fo:block font-size="10pt">Antig�edad en la empresa</fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">          
                                  <fo:block font-size="10pt" text-align="center" padding-top="0.05cm"> &#160;<xsl:value-of select="antiguedadEmpresaAniosConyuge"/> A�os &#160; <xsl:value-of select="antiguedadEmpresaMesesConyuge"/> Meses</fo:block>		  
	                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--FIN DOS COLUMNAS-->
      <fo:table>
        <fo:table-column column-width="100%"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="10pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--antiguedad-->
      <fo:table>
        <fo:table-column />
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-top="0.05cm">
              <fo:block font-size="10pt" text-align="center">Si antig�edad es menor a un a�o, completar datos de empleador anterior</fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--fin antiguedad-->
      <fo:table>
        <fo:table-column column-width="100%"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="0.2cm">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--DOS COLUMNAS empleador-->
      <fo:table>
        <fo:table-column column-width="8.3cm"/>
        <fo:table-column />
        <fo:table-column column-width="8.3cm"/>
        <fo:table-body>
          <fo:table-row>
            <!--izquierda-->
            <fo:table-cell >
              <fo:block>
                <fo:table>
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell>
                        <fo:block>
                          <!--bloke1-->
                          <fo:table>
                            <fo:table-column column-width="2.7cm"/>
                            <fo:table-column/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                                  <fo:block font-size="10pt">Empleador</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center" padding-top="0.05cm"> &#160;<xsl:value-of select="empleadorAnterior"/> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                                  <fo:block font-size="10pt">Fecha retiro</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center" padding-top="0.05cm"> &#160;<xsl:value-of select="fechaRetiro"/> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                                  <fo:block font-size="10pt">Motivo retiro</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center" padding-top="0.05cm"> &#160;<xsl:value-of select="motivoRetiro"/> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <fo:table>
                            <fo:table-column />
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
                                  <fo:block font-size="10pt">&#160; </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="5pt">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke4-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-top="0.05cm">
                                  <fo:block font-size="10pt" text-align="center">Actividad de la empresa</fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center"> &#160;<xsl:value-of select="actividadEmpresa"/></fo:block>
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
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> &#160; </fo:block>
            </fo:table-cell>
            <!--derecha-->
            <fo:table-cell >
              <fo:block>
                <fo:table>
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell>
                        <fo:block>
                          <!--bloke1-->
                          <fo:table>
                            <fo:table-column column-width="2.7cm"/>
                            <fo:table-column/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                                  <fo:block font-size="10pt">Empleador</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center" padding-top="0.05cm"> &#160;<xsl:value-of select="empleadorAnteriorConyuge"/> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                                  <fo:block font-size="10pt">Fecha retiro</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center" padding-top="0.05cm"> &#160;<xsl:value-of select="fechaRetiroConyuge"/> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                                  <fo:block font-size="10pt">Motivo retiro</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center" padding-top="0.05cm"> &#160;<xsl:value-of select="motivoRetiroConyuge"/> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <fo:table>
                            <fo:table-column />
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
                                  <fo:block font-size="10pt">&#160; </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="5pt">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke4-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-top="0.05cm">
                                  <fo:block font-size="10pt" text-align="center">Actividad de la empresa</fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center"> &#160;<xsl:value-of select="actividadEmpresaConyuge"/></fo:block>
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
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="120pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>

  </fo:flow>
      </fo:page-sequence>

   
          <fo:page-sequence master-reference="first">
        <fo:static-content flow-name="xsl-region-before">
          <fo:block line-height="14pt" font-size="10pt"
    text-align="end"></fo:block>
        </fo:static-content>
        <fo:static-content flow-name="xsl-region-after">
          <fo:block line-height="14pt" font-size="10pt"
    text-align="end"></fo:block>
        </fo:static-content>
        <fo:flow flow-name="xsl-region-body">

      <fo:table>
        <fo:table-column column-width="9.2cm"/>
        <fo:table-column />
        <fo:table-column column-width="9.2cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell >
              <fo:block>
                <fo:table>
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell>
                        <fo:block>
                          <!--direccion-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-top="2pt" padding-bottom="1pt">
                                  <fo:block font-size="10pt" text-align="center">Direcci�n</fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center" padding-top="2pt" padding-bottom="1pt"> &#160;<xsl:value-of select="direccionEmpresa"/> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="18.4cm"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="5pt">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--Comuna ciudad-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell>
                                  <fo:block font-size="10pt" text-align="center">
                                    <fo:table>
                                      <fo:table-column column-width="4.6cm"/>
                                      <fo:table-column/>
                                      <fo:table-column column-width="4.5cm"/>
                                      <fo:table-body>
                                        <fo:table-row>
                                          <!--izquierda chika-->
                                          <fo:table-cell>
                                            <fo:block text-align="center">
                                              <fo:table>
                                                <fo:table-column/>
                                                <fo:table-body>
                                                  <fo:table-row>
                                                    <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" padding-top="2pt" padding-bottom="1pt">
                                                      <fo:block>Comuna </fo:block>
                                                    </fo:table-cell>
                                                  </fo:table-row>
                                                  <fo:table-row>
                                                    <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
                                                       <fo:block font-size="10pt" text-align="center" padding-top="2pt" padding-bottom="1pt"> &#160;<xsl:value-of select="comunaEmpresa"/> </fo:block>
                                                    </fo:table-cell>
                                                  </fo:table-row>
                                                </fo:table-body>
                                              </fo:table>
                                            </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell>
                                            <fo:block> </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell>
                                            <fo:block text-align="center">
                                              <fo:table>
                                                <fo:table-column/>
                                                <fo:table-body>
                                                  <fo:table-row>
                                                    <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" padding-top="2pt" padding-bottom="1pt">
                                                      <fo:block>Ciudad </fo:block>
                                                    </fo:table-cell>
                                                  </fo:table-row>
                                                  <fo:table-row>
                                                    <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
                                                      <fo:block font-size="10pt" text-align="center" padding-top="2pt" padding-bottom="1pt"> &#160;<xsl:value-of select="ciudadEmpresa"/> </fo:block>
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
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="18.4cm"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="5pt">
                                  <fo:block> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--telefono-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-top="2pt" padding-bottom="1pt">
                                  <fo:block font-size="10pt" text-align="center">Tel�fono Comercial</fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center" padding-top="2pt" padding-bottom="1pt"> &#160;<xsl:value-of select="telefonoEmpresa"/> </fo:block>
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
            </fo:table-cell>
            <!--separador central-->
            <fo:table-cell>
              <fo:block></fo:block>
            </fo:table-cell>
            <fo:table-cell >
              <fo:block>
                <fo:table>
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell>
                        <fo:block>
                          <!--direccion-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-top="2pt" padding-bottom="1pt">
                                  <fo:block font-size="10pt" text-align="center">Direcci�n</fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center" padding-top="2pt" padding-bottom="1pt"> &#160;<xsl:value-of select="direccionEmpresaConyuge"/> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="18.4cm"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="5pt">
                                  <fo:block></fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--Comuna ciudad-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell>
                                  <fo:block font-size="10pt" text-align="center">
                                    <fo:table>
                                      <fo:table-column column-width="4.6cm"/>
                                      <fo:table-column/>
                                      <fo:table-column column-width="4.5cm"/>
                                      <fo:table-body>
                                        <fo:table-row>
                                          <!--izquierda chika-->
                                          <fo:table-cell>
                                            <fo:block text-align="center">
                                              <fo:table>
                                                <fo:table-column/>
                                                <fo:table-body>
                                                  <fo:table-row>
                                                    <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" padding-top="2pt" padding-bottom="1pt">
                                                      <fo:block>Comuna</fo:block>
                                                    </fo:table-cell>
                                                  </fo:table-row>
                                                  <fo:table-row>
                                                    <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
                                                      <fo:block font-size="10pt" text-align="center" padding-top="2pt" padding-bottom="1pt"> &#160;<xsl:value-of select="comunaEmpresaConyuge"/> </fo:block>
                                                    </fo:table-cell>
                                                  </fo:table-row>
                                                </fo:table-body>
                                              </fo:table>
                                            </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell>
                                            <fo:block></fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell>
                                            <fo:block text-align="center">
                                              <fo:table>
                                                <fo:table-column/>
                                                <fo:table-body>
                                                  <fo:table-row>
                                                    <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" padding-top="2pt" padding-bottom="1pt">
                                                      <fo:block>Ciudad</fo:block>
                                                    </fo:table-cell>
                                                  </fo:table-row>
                                                  <fo:table-row>
                                                    <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
                                                      <fo:block font-size="10pt" text-align="center" padding-top="2pt" padding-bottom="1pt"> &#160;<xsl:value-of select="ciudadEmpresaConyuge"/> </fo:block>
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
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--separador-->
                          <fo:table>
                            <fo:table-column column-width="18.4"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="5pt">
                                  <fo:block></fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--telefono-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-top="2pt" padding-bottom="1pt">
                                  <fo:block font-size="10pt" text-align="center"> Tel�fono Comercial </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center" padding-top="2pt" padding-bottom="1pt"> &#160;<xsl:value-of select="telefonoEmpresaConyuge"/> </fo:block>
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
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--FIN DOS COLUMNAS-->
      <!--separador largo 2MM-->
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block></fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--emergencia-->
      <fo:table>
        <fo:table-column />
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-top="0.05cm">
              <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> En caso de emergencia comunicarse con </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--fila nombre-->
      <fo:table>
        <fo:table-column column-width="1.7cm"/>
        <fo:table-column />
        <fo:table-column column-width="2.2cm"/>
        <fo:table-column column-width="4.0cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-top="0.05cm">
              <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt">Nombre</fo:block>
            </fo:table-cell>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-top="0.05cm" background-color="#c7d5ee">
              <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select="nombreEmergencia"/> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-top="0.05cm">
              <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt">Tel�fono</fo:block>
            </fo:table-cell>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-top="0.05cm" background-color="#c7d5ee">
              <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select="telefonoTrabajoEmergencia"/> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--fila celu-->
      <fo:table>
        <fo:table-column />
        <fo:table-column column-width="3.0cm"/>
        <fo:table-column column-width="4.0cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-top="0.05cm" background-color="#c7d5ee">
              <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt">&#160;</fo:block>
            </fo:table-cell>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-top="0.05cm">
              <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt">Tel�fono Celular</fo:block>
            </fo:table-cell>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-top="0.05cm" background-color="#c7d5ee">
              <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select="telefonoParticularEmergencia"/> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--fin emergencia-->
      <!--sep_2mm-->
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block></fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!-- TITULO PRINCIPAL descripcion-->
      <fo:table>
        <fo:table-column column-width="15.7cm"/>
        <fo:table-column column-width="2.7cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#005089" border-width="0.5pt" border-style="solid" background-color="#005089">
              <fo:block text-align="left" color="#FFFFFF" font-size="11pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="0.5pt" >IV. DESCRIPCION DE ACTIVIDADES COMERCIALES Y NEGOCIOS DEL CLIENTE</fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block color="#005089">
                <fo:leader leader-pattern="rule"
                  leader-length="2.7cm"
                  rule-thickness="1pt"
                  rule-style="dotted"/>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--TITULO PRINCIPAL descripcion FIN-->
      <!--sep_1mm-->
      <fo:table>
        <fo:table-column column-width="18.2cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="8pt">
              <fo:block></fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--4_lineas-->
      <fo:table>
        <fo:table-column/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#0071bc" border-style="solid" border-width="0.5pt" background-color="#c7d5ee">
              <fo:block font-size="10pt" text-align="left" padding-top="1pt" padding-bottom="1pt">&#160;<xsl:value-of select="descripcionActividadComercial"/>&#160;</fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>


      <!--sep_2mm-->
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="8pt">
              <fo:block></fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!-- TITULO PRINCIPAL descripcion-->
      <fo:table>
        <fo:table-column column-width="11cm"/>
        <fo:table-column />
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#005089" border-width="0.5pt" border-style="solid" background-color="#005089">
              <fo:block text-align="left" color="#FFFFFF" font-size="11pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="0.5pt" >V. PROPOSITO DE LA CUENTA CORRIENTE SOLICITADA</fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block color="#005089">
                <fo:leader leader-pattern="rule"
                  leader-length="8.4cm"
                  rule-thickness="1pt"
                  rule-style="dotted"/>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--TITULO PRINCIPAL descripcion FIN-->
      <!--sep_1mm-->
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="8pt">
              <fo:block></fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--3_lineas-->
      <fo:table>
        <fo:table-column/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#0071bc" border-style="solid" border-width="0.5pt" background-color="#c7d5ee">
              <fo:block font-size="10pt" text-align="left" padding-top="1pt" padding-bottom="1pt">&#160;<xsl:value-of select="propositoCuentaSolicitada"/>&#160;</fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--sep_2mm-->
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="8pt">
              <fo:block></fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!-- TITULO PRINCIPAL descripcion-->
      <fo:table>
        <fo:table-column column-width="12cm"/>
        <fo:table-column />
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#005089" border-width="0.5pt" border-style="solid" background-color="#005089">
              <fo:block text-align="left" color="#FFFFFF" font-size="11pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="0.5pt" >VI. DEUDAS/REFERENCIAS BANCARIAS Y COMERCIALES</fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block color="#005089">
                <fo:leader leader-pattern="rule"
                  leader-length="7.4cm"
                  rule-thickness="1pt"
                  rule-style="dotted"/>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--TITULO PRINCIPAL descripcion FIN-->
      <fo:table>
        <fo:table-column column-width="16cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block></fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!-- titulos deudas-->
      <fo:table>
        <fo:table-column column-width="4.3cm"/>
        <fo:table-column column-width="4.3cm"/>
        <fo:table-column column-width="4.3cm"/>
        <fo:table-column/>
        <fo:table-body>
          <fo:table-row border-width="0.5pt" border-style="solid">
            <fo:table-cell padding-top="2pt" padding-bottom="2pt">
              <fo:block text-align="center" font-size="10pt">Banco - Casa Comercial</fo:block>
            </fo:table-cell>
            <fo:table-cell padding-top="2pt" padding-bottom="2pt">
              <fo:block text-align="center" font-size="10pt">N� Cuenta Corriente</fo:block>
            </fo:table-cell>
            <fo:table-cell padding-top="2pt" padding-bottom="2pt">
              <fo:block text-align="center" font-size="10pt">Tipo Deuda</fo:block>
            </fo:table-cell>
            <fo:table-cell padding-top="2pt" padding-bottom="2pt">
              <fo:block text-align="center" font-size="10pt">Monto Deuda M$</fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--5_lineas-->
      <fo:table>
        <fo:table-column column-width="4.3cm"/>
        <fo:table-column column-width="4.3cm"/>
        <fo:table-column column-width="4.3cm"/>
        <fo:table-column/>
        <fo:table-body>
<xsl:for-each select="deuda">
          <fo:table-row>
            <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
              <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt">&#160;<xsl:value-of select="bancoCasaComercialDeuda"/></fo:block>
            </fo:table-cell>
            <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
              <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt">&#160;<xsl:value-of select="tipoDeuda"/></fo:block>
            </fo:table-cell>
            <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
              <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt">&#160;<xsl:value-of select="cuentaCorriente"/></fo:block>
            </fo:table-cell>
            <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
              <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt">&#160; <xsl:value-of select="translate(format-number(montoDeuda, '###,###'),'.,',',.')" /> </fo:block>
            </fo:table-cell>
          </fo:table-row>
</xsl:for-each>
        </fo:table-body>
      </fo:table>
      <!--sep_2mm-->
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="8pt">
              <fo:block></fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!-- TITULO PRINCIPAL descripcion-->
      <fo:table>
        <fo:table-column column-width="8cm"/>
        <fo:table-column />
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#005089" border-width="0.5pt" border-style="solid" background-color="#005089">
              <fo:block text-align="left" color="#FFFFFF" font-size="11pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="0.5pt" >VII. RELACION CON EL BANCO</fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block color="#005089">
                <fo:leader leader-pattern="rule"
                  leader-length="11.4cm"
                  rule-thickness="1pt"
                  rule-style="dotted"/>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--TITULO PRINCIPAL descripcion FIN-->
      <!--sep_1mm-->
      <fo:table>
        <fo:table-column column-width="100%"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block></fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!-- 3campo 6 columnas-->
      <fo:table>
        <fo:table-column column-width="15cm"/>
        <fo:table-column/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell>
              <fo:block>
                <fo:table>
                  <fo:table-column column-width="4cm"/>
                  <fo:table-column column-width="1.2cm"/>
                  <fo:table-column column-width="3.8cm"/>
                  <fo:table-column column-width="1.2cm"/>
                  <fo:table-column/>
                  <fo:table-column column-width="1.2cm"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt">Cliente actual</fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
		      <xsl:if test="tipoCliente='Actual'">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> X </fo:block>
		      </xsl:if>
                      </fo:table-cell>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt">Cliente nuevo</fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
		      <xsl:if test="tipoCliente='Nuevo'">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> X </fo:block>
		      </xsl:if>
                      </fo:table-cell>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt">Convenio empresa</fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
		       <xsl:if test="tipoCliente='Convenio'">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> X </fo:block>
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
      <!--sep_1mm-->
      <fo:table>
        <fo:table-column column-width="100%"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block></fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!-- 3campo 6 columnas-->
      <fo:table>
        <fo:table-column column-width="9cm"/>
        <fo:table-column/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell>
              <fo:block>
                <fo:table>
                  <fo:table-column column-width="4.5cm"/>
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt">Fecha Inicio Relaci�n</fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-width="0.5pt" border-style="solid" border-color="#0071bc" background-color="#c7d5ee">
                        <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> &#160;<xsl:value-of select="fechaInicioRelacion"/> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--sep_2mm-->
      <fo:table>
        <fo:table-column column-width="100%"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="0.2cm">
              <fo:block></fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--DOS COLUMNAS empleador-->
      <fo:table>
        <fo:table-column column-width="11cm"/>
        <fo:table-column />
        <fo:table-body>
          <fo:table-row>
            <!--izquierda-->
            <fo:table-cell >
              <fo:block>
                <fo:table>
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell>
                        <fo:block>
                          <!--TITULO TABLA-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
                                  <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt">Productos Vigentes</fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke1 LISTADO-->
                          <fo:table>
                            <fo:table-column column-width="9.2cm"/>
                            <fo:table-column/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="2pt">
                                  <fo:block font-size="10pt" padding-top="1pt" padding-bottom="1pt">Cuentas Corrientes</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
				<xsl:if test="productosVigentes='Cuenta_corriente'">
                                  <fo:block font-size="10pt" text-align="center" padding-top="2pt" padding-bottom="1pt"> X </fo:block>
				</xsl:if>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="2pt">
                                  <fo:block font-size="10pt" padding-top="1pt" padding-bottom="1pt">Cuenta Bci Chequera Electr�nica (Cuenta Prima)</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
				<xsl:if test="productosVigentes='Electronica'">
                                  <fo:block font-size="10pt" text-align="center" padding-top="2pt" padding-bottom="1pt"> X </fo:block>
				</xsl:if>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="2pt">
                                  <fo:block font-size="10pt" padding-top="1pt" padding-bottom="1pt">Cr�ditos</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
				<xsl:if test="productosVigentes='Creditos'">
                                  <fo:block font-size="10pt" text-align="center" padding-top="2pt" padding-bottom="1pt"> X </fo:block>
				</xsl:if>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="2pt">
                                  <fo:block font-size="10pt" padding-top="1pt" padding-bottom="1pt">Inversiones</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
				<xsl:if test="productosVigentes='Inversiones'">
                                  <fo:block font-size="10pt" text-align="center" padding-top="2pt" padding-bottom="1pt"> X </fo:block>
				</xsl:if>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="2pt">
                                  <fo:block font-size="10pt" padding-top="1pt" padding-bottom="1pt">Otros</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
				<xsl:if test="productosVigentes='Otros'">
                                  <fo:block font-size="10pt" text-align="center" padding-top="2pt" padding-bottom="1pt"> X </fo:block>
				</xsl:if>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--separador 0.1cm-->
                          <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell padding-bottom="0.1cm">
                                  <fo:block></fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke4-->
                        </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block>&#160;</fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--FIN DOS COLUMNAS empleador-->
      <!--sep_2mm-->
      <fo:table>
        <fo:table-column column-width="100%"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="0.2cm">
              <fo:block></fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!-- TITULO PRINCIPAL INGRESOS LIQUIDOS-->
      <fo:table>
        <fo:table-column column-width="6cm"/>
        <fo:table-column column-width="12.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#005089" border-width="0.5pt" border-style="solid" background-color="#005089">
              <fo:block text-align="left" color="#FFFFFF" font-size="11pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="0.5pt">VIII. INGRESOS LIQUIDOS</fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block color="#005089">
                <fo:leader leader-pattern="rule"
                  leader-length="12.4cm"
                  rule-thickness="1pt"
                  rule-style="dotted"/>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--TITULO PRINCIPAL INGRESOS LIQUIDOS FIN-->
      <!--sep_1mm-->
      <fo:table>
        <fo:table-column column-width="100%"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="8pt">
              <fo:block></fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!--DOS COLUMNAS-->
      <fo:table>
        <fo:table-column column-width="9.2cm"/>
        <fo:table-column />
        <fo:table-column column-width="9.2cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell >
              <fo:block>
                <fo:table>
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell>
                        <fo:block>
                          <!--direccion-->
                          <!--TITULO TABLA-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
                                  <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt">Ingresos M$</fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke1 LISTADO-->
                          <fo:table>
                            <fo:table-column column-width="4.5cm"/>
                            <fo:table-column/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm">
                                  <fo:block font-size="10pt" padding-top="2pt" padding-bottom="1pt">Renta Fija</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center" padding-top="4pt"> &#160;<xsl:value-of select="translate(format-number(rentaFija, '###,###'),'.,',',.')" /> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm">
                                  <fo:block font-size="10pt" padding-top="2pt" padding-bottom="1pt">Renta Variable</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center" padding-top="4pt"> &#160;<xsl:value-of select="translate(format-number(rentaVariable, '###,###'),'.,',',.')" /> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm">
                                  <fo:block font-size="10pt" padding-top="2pt">Renta C�nyuge</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center" padding-top="4pt"> &#160;<xsl:value-of select="translate(format-number(rentaConyuge, '###,###'),'.,',',.')" /> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm">
                                  <fo:block font-size="10pt" padding-top="2pt">Otros Ingresos</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center" padding-top="4pt"> &#160;<xsl:value-of select="translate(format-number(otrosIngresos, '###,###'),'.,',',.')" /> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm">
                                  <fo:block font-size="10pt" padding-top="2pt">TOTAL INGRESOS</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center" padding-top="4pt"> &#160;<xsl:value-of select="translate(format-number(ingresosTotales, '###,###'),'.,',',.')" /> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm">
                                  <fo:block font-size="10pt" padding-top="1pt" padding-bottom="1pt"> INGRESOS LIQUIDOS </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center" padding-top="4pt"> &#160;<xsl:value-of select="translate(format-number(ingresosLiquidos, '###,###'),'.,',',.')" /> </fo:block>
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
            </fo:table-cell>
            <!--separador central-->
            <fo:table-cell>
              <fo:block text-align="center"></fo:block>
            </fo:table-cell>
            <fo:table-cell >
              <fo:block>
                <fo:table>
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell>
                        <fo:block>
                          <!--direccion-->
                          <!--TITULO TABLA-->
                          <fo:table>
                            <fo:table-column />
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
                                  <fo:block font-size="10pt" text-align="center" padding-top="1pt" padding-bottom="1pt"> Egresos M$ </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                          <!--bloke1 LISTADO-->
                          <fo:table>
                            <fo:table-column column-width="4.5cm"/>
                            <fo:table-column/>
                            <fo:table-body>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm">
                                  <fo:block font-size="10pt" padding-top="2pt"> Dividendo y/o Arriendo </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center" padding-top="4pt"> &#160;<xsl:value-of select="translate(format-number(dividendosOArriendo, '###,###'),'.,',',.')" /> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm">
                                  <fo:block font-size="10pt" padding-top="2pt"> Casas Comerciales </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center" padding-top="4pt"> &#160;<xsl:value-of select="translate(format-number(casasComerciales, '###,###'),'.,',',.')" /> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm">
                                  <fo:block font-size="10pt" padding-top="2pt"> Educaci�n </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center" padding-top="4pt"> &#160;<xsl:value-of select="translate(format-number(educacion, '###,###'),'.,',',.')" /> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm">
                                  <fo:block font-size="10pt" padding-top="2pt"> Otras Deudas </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center" padding-top="4pt"> &#160;<xsl:value-of select="translate(format-number(otrasDeudas, '###,###'),'.,',',.')" /> </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" padding-left="0.4cm" padding-top="0.05cm">
                                  <fo:block font-size="10pt" padding-top="2pt">TOTAL EGRESOS</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid" background-color="#c7d5ee">
                                  <fo:block font-size="10pt" text-align="center" padding-top="4pt"> &#160;<xsl:value-of select="translate(format-number(egresosTotales, '###,###'),'.,',',.')" /> </fo:block>
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
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>

  </fo:flow>
      </fo:page-sequence>

                <fo:page-sequence master-reference="first">
        <fo:static-content flow-name="xsl-region-before">
          <fo:block line-height="14pt" font-size="10pt"
    text-align="end"></fo:block>
        </fo:static-content>
        <fo:static-content flow-name="xsl-region-after">
          <fo:block line-height="14pt" font-size="10pt"
    text-align="end"></fo:block>
        </fo:static-content>
        <fo:flow flow-name="xsl-region-body">

      <fo:table>
        <fo:table-column column-width="16cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="10pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="7cm"/>
        <fo:table-column column-width="11.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#005089" border-width="0.5pt" border-style="dotted" background-color="#005089">
              <fo:block text-align="left" color="#FFFFFF" font-size="11pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="0.5pt" > IX. ANTECENTES TRIBUTARIOS </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block color="#005089">
                <fo:leader leader-pattern="rule"
                   leader-length="11.4cm"
                   rule-thickness="1pt"
                   rule-style="dotted"/>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="10pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="15cm"/>
        <fo:table-column column-width="3.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Declaraciones mensuales PPM ultimos 6 meses </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Promedio M$ </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="3cm"/>
        <fo:table-column column-width="2cm"/>
        <fo:table-column column-width="2cm"/>
        <fo:table-column column-width="2cm"/>
        <fo:table-column column-width="2cm"/>
        <fo:table-column column-width="2cm"/>
        <fo:table-column column-width="2cm"/>
        <fo:table-column column-width="3.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="left" font-size="10pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Mes </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="left" font-size="10pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="left" font-size="10pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="left" font-size="10pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="left" font-size="9pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="left" font-size="10pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="left" font-size="10pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="left" font-size="10pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> </fo:block>
            </fo:table-cell>
          </fo:table-row>
          <fo:table-row>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="left" font-size="10pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Monto M$ </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="left" font-size="10pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="left" font-size="10pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="left" font-size="10pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="left" font-size="10pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="left" font-size="10pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="left" font-size="10pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="left" font-size="10pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="10pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="center" font-size="10pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Ultima declaracion Impuesto a la Renta </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="3cm"/>
        <fo:table-column column-width="3.1cm"/>
        <fo:table-column column-width="3.1cm"/>
        <fo:table-column column-width="3.1cm"/>
        <fo:table-column column-width="3.1cm"/>
        <fo:table-column column-width="3cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-style="dashed" border-width="0.5pt" border-color="#0071bc">
              <fo:block text-align="left" font-size="10pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> A�o </fo:block>
            </fo:table-cell>
            <fo:table-cell border-style="dashed" border-width="0.5pt" border-color="#0071bc" background-color="#c7d5ee">
              <fo:block text-align="left" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="ultimaDeclaracionImpuestoRenta"/> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-style="dashed" border-width="0.5pt" border-color="#0071bc">
              <fo:block text-align="left" font-size="10pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Devolucion </fo:block>
            </fo:table-cell>
            <fo:table-cell border-style="dashed" border-width="0.5pt" border-color="#0071bc" background-color="#c7d5ee">
              <fo:block text-align="left" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="translate(format-number(devolucionRenta, '###,###'),'.,',',.')" /> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-style="dashed" border-width="0.5pt" border-color="#0071bc">
              <fo:block text-align="left" font-size="10pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Pago M$ </fo:block>
            </fo:table-cell>
            <fo:table-cell border-style="dashed" border-width="0.5pt" border-color="#0071bc" background-color="#c7d5ee">
              <fo:block text-align="left" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="translate(format-number(pagoImpuestoRenta, '###,###'),'.,',',.')" /> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="15pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="4cm"/>
        <fo:table-column column-width="14.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#005089" border-width="0.5pt" border-style="dotted" background-color="#005089">
              <fo:block text-align="left" color="#FFFFFF" font-size="11pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="0.5pt" > X. PATRIMONIO </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block color="#005089">
                <fo:leader leader-pattern="rule"
                   leader-length="14.4cm"
                   rule-thickness="1pt"
                   rule-style="dotted"/>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="10pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="9cm"/>
        <fo:table-column column-width="0.4cm"/>
        <fo:table-column column-width="9cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell>
              <fo:block text-align="center" font-size="10pt" font-weight="bold" padding-top="2pt" padding-bottom="2pt" border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid"> Activos ($) </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block text-align="left" font-size="10pt" font-weight="bold" padding-top="2pt" padding-bottom="2pt"> </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block text-align="center" font-size="10pt" font-weight="bold" padding-top="2pt" padding-bottom="2pt" border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid"> Pasivos ($) </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="9cm"/>
        <fo:table-column column-width="0.4cm"/>
        <fo:table-column column-width="9cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell>
              <fo:block>
                <fo:table>
                  <fo:table-column column-width="5cm"/>
                  <fo:table-column column-width="4cm"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="left" font-size="10pt" padding-top="2pt" padding-bottom="2pt">&#160;&#160; Dep�sitos a Plazo </fo:block>
                      </fo:table-cell>
                      <fo:table-cell background-color="#c7d5ee" border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="translate(format-number(depositoPlazo, '###,###'),'.,',',.')" /> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="left" font-size="10pt" padding-top="2pt" padding-bottom="2pt">&#160;&#160; Fondos Mutuos </fo:block>
                      </fo:table-cell>
                      <fo:table-cell background-color="#c7d5ee" border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="translate(format-number(fondosMutuos, '###,###'),'.,',',.')" /> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="left" font-size="10pt" padding-top="2pt" padding-bottom="2pt">&#160;&#160; Acciones en Leasing </fo:block>
                      </fo:table-cell>
                      <fo:table-cell background-color="#c7d5ee" border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid"> &#160;<xsl:value-of select="translate(format-number(actionsEnLeasing, '###,###'),'.,',',.')" /> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="left" font-size="10pt" padding-top="2pt" padding-bottom="2pt">&#160;&#160; Bienes Ra�ces </fo:block>
                      </fo:table-cell>
                      <fo:table-cell background-color="#c7d5ee" border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt" > &#160;<xsl:value-of select="translate(format-number(bienesRaices, '###,###'),'.,',',.')" /> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="left" font-size="10pt" padding-top="2pt">&#160;&#160; Veh�culos </fo:block>
                      </fo:table-cell>
                      <fo:table-cell background-color="#c7d5ee" border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="translate(format-number(vehiculos, '###,###'),'.,',',.')" /> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="left" font-size="10pt" padding-top="2pt" padding-bottom="2pt">&#160;&#160; Participaci�n en Sociedades </fo:block>
                      </fo:table-cell>
                      <fo:table-cell background-color="#c7d5ee" border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt"> &#160;<xsl:value-of select="translate(format-number(participacionSociedades, '###,###'),'.,',',.')" /> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="left" font-size="10pt" padding-top="2pt" padding-bottom="2pt">&#160;&#160; Otros Activos </fo:block>
                      </fo:table-cell>
                      <fo:table-cell background-color="#c7d5ee" border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="translate(format-number(otrosActivos, '###,###'),'.,',',.')" /> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="left" font-size="10pt" padding-top="2pt" padding-bottom="2pt">&#160;&#160; Inversiones en el Extranjero </fo:block>
                      </fo:table-cell>
                      <fo:table-cell background-color="#c7d5ee" border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="translate(format-number(inversionesExtranjero, '###,###'),'.,',',.')" /> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="left" font-size="10pt" padding-top="2pt" padding-bottom="2pt">&#160;&#160; TOTAL ACTIVOS </fo:block>
                      </fo:table-cell>
                      <fo:table-cell background-color="#c7d5ee" border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt"> <xsl:value-of select="translate(format-number(totalActivos, '###,###'),'.,',',.')" /> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
            <!--Espacio entremedio para las dos grandes celdas-->
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <!--segunda tabla-->
            <fo:table-cell>
              <fo:block>
                <fo:table>
                  <fo:table-column column-width="5cm"/>
                  <fo:table-column column-width="4cm"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="left" font-size="10pt" padding-top="2pt" padding-bottom="2pt">&#160;&#160; Deudas Casas Comerciales </fo:block>
                      </fo:table-cell>
                      <fo:table-cell background-color="#c7d5ee" border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="translate(format-number(deudasCasasComerciales, '###,###'),'.,',',.')" /> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid"> 
                        <fo:block text-align="left" font-size="10pt" padding-top="2pt" padding-bottom="2pt">&#160;&#160; Deudas con Bancos </fo:block>
                      </fo:table-cell>
                      <fo:table-cell background-color="#c7d5ee" border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="translate(format-number(deudasBancos, '###,###'),'.,',',.')" /> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="left" font-size="10pt" padding-top="2pt" padding-bottom="2pt">&#160;&#160; Deudas Hipotecarias </fo:block>
                      </fo:table-cell>
                      <fo:table-cell background-color="#c7d5ee" border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="translate(format-number(deudasHipotecarias, '###,###'),'.,',',.')" /> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="left" font-size="10pt" padding-top="2pt" padding-bottom="2pt">&#160;&#160; Deudas Leasing </fo:block>
                      </fo:table-cell>
                      <fo:table-cell background-color="#c7d5ee" border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="translate(format-number(deudasLeasing, '###,###'),'.,',',.')" /> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="left" font-size="10pt" padding-top="2pt" padding-bottom="2pt">&#160;&#160; Otras Deudas (especificar) </fo:block>
                      </fo:table-cell>
                      <fo:table-cell background-color="#c7d5ee" border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="translate(format-number(otrasDeudasPatrimonio, '###,###'),'.,',',.')" /> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="left" font-size="10pt" padding-top="2pt" padding-bottom="2pt">&#160;&#160; </fo:block>
                      </fo:table-cell>
                      <fo:table-cell background-color="#c7d5ee" border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt"> &#160; </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="left" font-size="10pt" padding-top="2pt" padding-bottom="2pt">&#160;&#160; </fo:block>
                      </fo:table-cell>
                      <fo:table-cell background-color="#c7d5ee" border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt"> &#160; </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="left" font-size="10pt" padding-top="2pt" padding-bottom="2pt">&#160;&#160; </fo:block>
                      </fo:table-cell>
                      <fo:table-cell background-color="#c7d5ee" border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt"> &#160; </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="left" font-size="10pt" padding-top="2pt" padding-bottom="2pt">&#160;&#160; TOTAL PASIVOS </fo:block>
                      </fo:table-cell>
                      <fo:table-cell background-color="#c7d5ee" border-color="#0071bc" border-width="0.5pt" border-style="solid">
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="translate(format-number(totalPasivo, '###,###'),'.,',',.')" /> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="10pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="5cm"/>
        <fo:table-column column-width="4.4cm"/>
        <fo:table-column column-width="4cm"/>
        <fo:table-column column-width="5cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell>
              <fo:block></fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block text-align="left" font-size="10pt" font-weight="bold" padding-top="2pt" padding-left="3pt" padding-bottom="2pt" border-color="#0071bc" border-width="0.5pt" border-style="dotted"> TOTAL PATRIMONIO </fo:block>
            </fo:table-cell>
            <fo:table-cell background-color="#c7d5ee">
              <fo:block text-align="center" font-size="10pt" font-weight="bold" padding-top="2pt" padding-bottom="2pt" border-color="#0071bc" border-width="0.5pt" border-style="dotted"> <xsl:value-of select="translate(format-number(ingresoPatrimonio, '###,###'),'.,',',.')" /> </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="10pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="0.4cm"/>
        <fo:table-column column-width="6cm"/>
        <fo:table-column column-width="12cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-color="#005089" border-width="0.5pt" border-style="dotted" background-color="#005089">
              <fo:block text-align="left" color="#FFFFFF" font-size="10pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> DETALLE PATRIMONIO </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block color="#005089">
                <fo:leader leader-pattern="rule"
                   leader-length="12cm"
                   rule-thickness="1pt"
                   rule-style="dotted"/>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="10pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="4cm"/>
        <fo:table-column column-width="9cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="dotted">
              <fo:block text-align="left" font-size="10pt"  margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> 1.  BIENES  RAICES </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="16cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="10pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <xsl:for-each select="bienRaiz">
      <fo:table>
        <fo:table-column column-width="2.5cm"/>
        <fo:table-column column-width="13.5cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="dotted">
              <fo:block text-align="center" font-size="10pt"  margin-left="5pt" padding-top="2pt" padding-bottom="2pt">Bien ra�z&#160;&#160;<xsl:value-of select="indiceBienRaiz"/> </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="10cm"/>
        <fo:table-column column-width="4cm"/>
        <fo:table-column column-width="4.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Ubicaci�n (Calle, N�, Depto.) </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Comuna </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Ciudad </fo:block>
            </fo:table-cell>
          </fo:table-row>
          <fo:table-row>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="dotted" background-color="#c7d5ee">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="ubicacionBienRaiz"/> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="dotted" background-color="#c7d5ee">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="comunaBienRaiz"/> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="dotted" background-color="#c7d5ee">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="ciudadBienRaiz"/> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="7pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="5cm"/>
        <fo:table-column column-width="5cm"/>
        <fo:table-column column-width="4cm"/>
        <fo:table-column column-width="4.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Rol N� </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Aval�o Fiscal </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Valor Comercial </fo:block>
            </fo:table-cell>
          </fo:table-row>
          <fo:table-row>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="dotted" background-color="#c7d5ee">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="rolBienRaiz"/> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="dotted" background-color="#c7d5ee">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="translate(format-number(avaluoFiscal, '###,###'),'.,',',.')" /> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="dotted" background-color="#c7d5ee">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="translate(format-number(valorComercial, '###,###'),'.,',',.')" /> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="10pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="5cm"/>
        <fo:table-column column-width="11cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="dotted">
              <fo:block text-align="center" font-size="10pt"  margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Titulo bien ra�z declarado : </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="10pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="9cm"/>
        <fo:table-column column-width="0.4cm"/>
        <fo:table-column column-width="9cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell>
              <fo:block text-align="center" font-size="10pt" font-weight="bold" padding-top="2pt" padding-bottom="2pt" border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid"> Inscripci�n dominio vigente </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block text-align="left" font-size="10pt" font-weight="bold" padding-top="2pt" padding-bottom="2pt"> </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block text-align="center" font-size="10pt" font-weight="bold" padding-top="2pt" padding-bottom="2pt" border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid"> Grav�menes sobre bien ra�z </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="9cm"/>
        <fo:table-column column-width="0.4cm"/>
        <fo:table-column column-width="9cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell>
              <fo:block>
                <fo:table>
                  <fo:table-column column-width="2cm"/>
                  <fo:table-column column-width="2cm"/>
                  <fo:table-column column-width="2cm"/>
                  <fo:table-column column-width="3cm"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell>
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt" border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid"> Fojas </fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid"> N� </fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" > A�o </fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" > Conservador </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" background-color="#c7d5ee">
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="fojas"/> </fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" background-color="#c7d5ee">
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="numeroBienRaiz"/> </fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" background-color="#c7d5ee">
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="anioBienRaiz"/> </fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" background-color="#c7d5ee">
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="conservador"/> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
            <!--Espacio entremedio para las dos grandes celdas-->
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
            <!--segunda tabla-->
            <fo:table-cell>
              <fo:block>
                <fo:table>
                  <fo:table-column column-width="2cm"/>
                  <fo:table-column column-width="4cm"/>
                  <fo:table-column column-width="3cm"/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell>
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt" border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid"> A favor de </fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" > Deuda Primitiva M$ </fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid"> Saldo Actual M$ </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" background-color="#c7d5ee">
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="gravamenBienRaiz"/> </fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" background-color="#c7d5ee">
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="translate(format-number(deudaPrimitivaBienRaiz, '###,###'),'.,',',.')" /> </fo:block>
                      </fo:table-cell>
                      <fo:table-cell border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" background-color="#c7d5ee">
                        <fo:block text-align="center" font-size="10pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="translate(format-number(saldoActualBienRaiz, '###,###'),'.,',',.')" /> </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="16cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="10pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      
 </xsl:for-each>
     
     
      

                
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="10pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>

      </fo:flow>
      </fo:page-sequence>
     
    
                <fo:page-sequence master-reference="first">
        <fo:static-content flow-name="xsl-region-before">
          <fo:block line-height="14pt" font-size="10pt"
    text-align="end"></fo:block>
        </fo:static-content>
        <fo:static-content flow-name="xsl-region-after">
          <fo:block line-height="14pt" font-size="10pt"
    text-align="end"></fo:block>
        </fo:static-content>
        <fo:flow flow-name="xsl-region-body">


      <fo:table>
        <fo:table-column column-width="4cm"/>
        <fo:table-column column-width="9cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="dotted">
              <fo:block text-align="left" font-size="10pt"  margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> 2.  VEHICULOS </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="16cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <xsl:for-each select="vehiculo">
      <fo:table>
        <fo:table-column column-width="2.5cm"/>
        <fo:table-column column-width="13.5cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="dotted">
              <fo:block text-align="center" font-size="10pt"  margin-left="5pt" padding-top="2pt" padding-bottom="2pt">Veh�culo&#160;&#160;<xsl:value-of select="indiceVehiculo"/>&#160;:</fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="4cm"/>
        <fo:table-column column-width="4cm"/>
        <fo:table-column column-width="2cm"/>
        <fo:table-column column-width="3cm"/>
        <fo:table-column column-width="5.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Marca y Modelo </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Tipo de Veh�culo </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> A�o </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Patente </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt"> Verificacion Inscripcion </fo:block>
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-bottom="2pt">Veh�culos Motorizados </fo:block>
            </fo:table-cell>
          </fo:table-row>
          <fo:table-row>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="dotted" background-color="#c7d5ee">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="marcaVehiculo"/> &#160;&#160; &#160;<xsl:value-of select="modeloVehiculo"/> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="dotted" background-color="#c7d5ee">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="tipoVehiculo"/> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="dotted" background-color="#c7d5ee">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="anioVehiculo"/> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="dotted" background-color="#c7d5ee">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="patenteVehiculo"/> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="dotted" background-color="#c7d5ee">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="verificacionInscripcionVehiculo"/> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="15cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="center" font-size="10pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Grav�menes sobre el veh�culo </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="5cm"/>
        <fo:table-column column-width="5cm"/>
        <fo:table-column column-width="5cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> A favor de </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Deuda Primitiva M$</fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Saldo Actual M$ </fo:block>
            </fo:table-cell>
          </fo:table-row>
          <fo:table-row>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="dotted" background-color="#c7d5ee">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="gravamenVehiculo"/> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="dotted" background-color="#c7d5ee">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="translate(format-number(primitivaVehiculo, '###,###'),'.,',',.')" /> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="dotted" background-color="#c7d5ee">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="translate(format-number(saldoActualVehiculo, '###,###'),'.,',',.')" /> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="16cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
     
     </xsl:for-each>
    
     <fo:table>
        <fo:table-column column-width="16cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="10pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>

          </fo:flow>
      </fo:page-sequence>

    <fo:page-sequence master-reference="first">
        <fo:static-content flow-name="xsl-region-before">
          <fo:block line-height="14pt" font-size="10pt"
    text-align="end"></fo:block>
        </fo:static-content>
        <fo:static-content flow-name="xsl-region-after">
          <fo:block line-height="14pt" font-size="10pt"
    text-align="end"></fo:block>
        </fo:static-content>
        <fo:flow flow-name="xsl-region-body">

     
    
   
      <fo:table>
        <fo:table-column column-width="17cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="dotted">
              <fo:block text-align="justify" font-size="10.5pt" margin-left="5pt" padding-top="2pt" font-weight="bold"> 3.  PARTICIPACION EN SOCIEDADES  -  DECLARACION  PARA  MARGENES  DE  CREDITO </fo:block>
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-bottom="2pt"> (Art. 85 Ley General de Banco) </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-top="10pt">
              <fo:block text-align="justify" font-size="10pt" padding-top="2pt" padding-bottom="2pt">Con el Proposito que el banco de Cr�dito en Inversiones,
                seg�n los dispuesto en el Art. 85 de la Ley General de Bancos, determine el monto de las obligacines complementariasque afectan los m�rgenes
                de endeudamiento mencionados en el Art. 84 de la mencionada ley, el Cliente declara ser a esta fecha socio, accionista o partic�pe en mas de un 2%
                de su capital en las siguientes sociedades, comunidades o suceciones.</fo:block>
              <fo:block text-align="justify" font-size="10pt" padding-top="2pt" padding-bottom="2pt">Las presentes declaraciones sen entender�n como negativas
                cuando los espacios pertinentes se hayan dejado en blanco, tengan indicaciones en ese sentido o est�n tachados</fo:block>
              <fo:block text-align="justify" font-size="10pt" padding-top="2pt" padding-bottom="2pt">El cliente se compromete a informar de inmediato al Banco de
                Cr�dito e Inversiones cualquier modificaci�n o nueva participaci�n que afecte a los antecedentes antes mencionados, despues de esta fecha. Para
                este efecto, los antecedentes del caso se entregar�n por escrito al Banco con la documentacion de respaldo que corresponda.</fo:block>
              <fo:block text-align="justify" font-size="10pt" padding-top="2pt" padding-bottom="2pt">Si como consecuencia de la presente declaraci�n o del no
                cumplimiento de lo se�alado procedentemente, el Banco de Cr�dito e Inversiones determinare las obligaciones crediticias del Cliente en forma
                en forma que no se ajustan a las normas legales vigentes y por este motivo quedase afecto a multas de cualquier naturaleza, el Cliente
                se obliga a indemnizar al Banco con todos los pagos que deba efectuar con por tal raz�n, m�s intereses calculados seg�n la tasa m�xima convencional
                autorizada porla ley. Para este fin, el Banco queda autorizado para cursar los cargos necesarios en la cuenta corriente opara descontar las sumas
                correspondiuentes de cualquier acreencia a su favor.</fo:block>
              <fo:block text-align="justify" font-size="10pt" padding-top="2pt" padding-bottom="2pt" >NOTA: Si el espacio desponible es insuficiente, deber�n
                adjuntarse n�minas en forma separada debidamente suscritas por el Cliente</fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="15pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="6cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="dotted">
              <fo:block text-align="center" font-size="10pt"  margin-left="5pt" padding-top="2pt" padding-bottom="2pt" font-weight="bold"> Sociedades con fines de lucro </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="6.4cm"/>
        <fo:table-column column-width="3cm"/>
        <fo:table-column column-width="4cm"/>
        <fo:table-column column-width="5cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Nombre o Raz�n Social </fo:block>
            </fo:table-cell>
            <fo:table-cell border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> RUT </fo:block>
            </fo:table-cell>
            <fo:table-cell border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Tipo de Relaci�n </fo:block>
            </fo:table-cell>
            <fo:table-cell border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> % Participaci�n </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="6.4cm"/>
        <fo:table-column column-width="3cm"/>
        <fo:table-column column-width="4cm"/>
        <fo:table-column column-width="5cm"/>
        <fo:table-body>
	<xsl:for-each select="sociedadConLucro">
          <fo:table-row>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid"  border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" background-color="#c7d5ee">
              <fo:block text-align="left" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="nombreSociedadConLucro"/> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid"  border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" background-color="#c7d5ee">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="rutSociedadConLucro"/> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid"  border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" background-color="#c7d5ee">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="tipoRelacionSociedadConLucro"/> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" background-color="#c7d5ee">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="participacionSociedadConLucro"/> </fo:block>
            </fo:table-cell>
          </fo:table-row>
	  </xsl:for-each>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="16cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="10pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="9cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="dotted">
              <fo:block text-align="center" font-size="10pt"  margin-left="5pt" padding-top="2pt" padding-bottom="2pt" font-weight="bold"> Sociedades sin fines de lucro (Corporaciones, etc) </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="16cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="6.4cm"/>
        <fo:table-column column-width="3cm"/>
        <fo:table-column column-width="4cm"/>
        <fo:table-column column-width="5cm"/>
        <fo:table-body>
	
          <fo:table-row>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Nombre o Raz�n Social </fo:block>
            </fo:table-cell>
            <fo:table-cell border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> RUT </fo:block>
            </fo:table-cell>
            <fo:table-cell border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Tipo de Relaci�n </fo:block>
            </fo:table-cell>
            <fo:table-cell border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> % Participaci�n </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="6.4cm"/>
        <fo:table-column column-width="3cm"/>
        <fo:table-column column-width="4cm"/>
        <fo:table-column column-width="5cm"/>
        <fo:table-body>
	<xsl:for-each select="sociedadSinLucro">
          <fo:table-row>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid"  border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" background-color="#c7d5ee">
              <fo:block text-align="left" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="nombreSociedadSinLucro"/> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid"  border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" background-color="#c7d5ee">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="rutSociedadSinLucro"/> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid"  border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" background-color="#c7d5ee">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="tipoRelacionSociedadSinLucro"/> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid"  border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" background-color="#c7d5ee">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="participacionSociedadSinLucro"/> </fo:block>
            </fo:table-cell>
          </fo:table-row>
	   </xsl:for-each> 
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="15pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="11cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="dotted">
              <fo:block text-align="center" font-size="10pt"  margin-left="5pt" padding-top="2pt" padding-bottom="2pt" font-weight="bold"> 4. OTROS BIENES (Acciones, Bonos, D�positos a Plazo, etc) </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="5pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="13cm"/>
        <fo:table-column column-width="5.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Detalle otros bienes </fo:block>
            </fo:table-cell>
            <fo:table-cell border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Monto $ </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="13cm"/>
        <fo:table-column column-width="5.4cm"/>
        <fo:table-body>
		<xsl:for-each select="otros">
          <fo:table-row>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" background-color="#c7d5ee">
              <fo:block text-align="left" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="detalleOtrosBienes"/> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" background-color="#c7d5ee">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="translate(format-number(montoOtrosBienes, '###,###'),'.,',',.')" /> </fo:block>
            </fo:table-cell>
          </fo:table-row>
</xsl:for-each>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="15pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>

          </fo:flow>
      </fo:page-sequence>

    <fo:page-sequence master-reference="first">
        <fo:static-content flow-name="xsl-region-before">
          <fo:block line-height="14pt" font-size="10pt"
    text-align="end"></fo:block>
        </fo:static-content>
        <fo:static-content flow-name="xsl-region-after">
          <fo:block line-height="14pt" font-size="10pt"
    text-align="end"></fo:block>
        </fo:static-content>
        <fo:flow flow-name="xsl-region-body">



      <fo:table>
        <fo:table-column column-width="13cm"/>
        <fo:table-column column-width="5.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#005089" border-width="0.5pt" border-style="dotted" background-color="#005089">
              <fo:block text-align="left" color="#FFFFFF" font-size="11pt" font-weight="bold" margin-left="5pt" padding-top="2pt" padding-bottom="0.5pt" > XI. VOLUMENES ESPERADOS (MOVIMIENTOS MENSUALES) </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block color="#005089">
                <fo:leader leader-pattern="rule"
                   leader-length="9cm"
                   rule-thickness="1pt"
                   rule-style="dotted"/>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="10pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="8cm"/>
        <fo:table-column column-width="3cm"/>
        <fo:table-column column-width="3cm"/>
        <fo:table-column column-width="4.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Producto / Concepto </fo:block>
            </fo:table-cell>
            <fo:table-cell border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> N� Operaciones </fo:block>
            </fo:table-cell>
            <fo:table-cell border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Monto M$ </fo:block>
            </fo:table-cell>
            <fo:table-cell border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> Promedio Mensual M$ </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="8cm"/>
        <fo:table-column column-width="3cm"/>
        <fo:table-column column-width="3cm"/>
        <fo:table-column column-width="4.4cm"/>
        <fo:table-body>
	<xsl:for-each select="movimiento">
          <fo:table-row>
            <fo:table-cell border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" background-color="#c7d5ee">
              <fo:block text-align="left" font-size="10pt" padding-top="2pt" padding-bottom="2pt" margin-left="2pt"> &#160;<xsl:value-of select="indiceProducto"/> &#160;<xsl:value-of select="productoConcepto"/> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" background-color="#c7d5ee">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="numOperaciones"/> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" background-color="#c7d5ee">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="translate(format-number(monto, '###,###'),'.,',',.')" /> </fo:block>
            </fo:table-cell>
            <fo:table-cell border-left-color="#0071bc" border-left-width="0.5pt" border-left-style="solid" border-right-color="#0071bc" border-right-width="0.5pt" border-right-style="solid" border-bottom-color="#0071bc" border-bottom-width="0.5pt" border-bottom-style="solid" border-top-color="#0071bc" border-top-width="0.5pt" border-top-style="solid" background-color="#c7d5ee">
              <fo:block text-align="center" font-size="10pt" margin-left="5pt" padding-top="2pt" padding-bottom="2pt"> &#160;<xsl:value-of select="translate(format-number(promedioMensual, '###,###'),'.,',',.')" /> </fo:block>
            </fo:table-cell>
          </fo:table-row>
	  </xsl:for-each>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="10pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-top="10pt" border-color="#0071bc" border-width="0.5pt" border-style="dotted">
              <fo:block text-align="justify" font-size="10pt" padding-top="2pt" font-weight="bold" margin-left="5pt"> IMPORTANTE </fo:block>
              <fo:block text-align="justify" font-size="10pt" padding-bottom="4pt" margin-left="5pt" margin-right="5pt"> Declaro bajo juramento que mientras mantenga deudas
                obligaciones pendientes a favordel Banco de Cr�dito e Inversiones, me comprometo a conservar inc�lume el patrimonio declarado
                en el presente documento y me obligo a comunicarles por escrito y con la debida anticipaci�n, todo hecho, acto o contrato
                que pueda disminuir o extinguir mis cauciones o el valor declarado de mis bienes o patrimonio. La infraci�n a lo contemplado
                en la precedente estipulaci�n que tiene car�cter de esencial y determinante para mi relaci�n con el Banco de Cr�dito e Inversiones
                dar� derecho al Banco de Cr�dito e Inversiones para poner t�rmino a la relacion contractual y hacer exigible de inmediato el monto total
                de mis obligaciones pendientes, consider�ndolas como de plazo vencido, en cualquier forma en que se encuentren documentadas, sea en letras,
                pagar�s, escrituras u otros instrumentos. </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="15pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell border-color="#0071bc" border-width="0.5pt" border-style="dotted">
              <fo:block text-align="justify" font-size="11pt" padding-top="2pt" font-weight="bold" margin-left="5pt"> Declaro asumir integral responsabilidad
                por la veracidad de la informaci�n entregada en este&#160; documento. </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="85pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell>
              <fo:block text-align="center" color="#005089">
                <fo:leader leader-pattern="rule"
                   leader-length="6cm"
                   rule-thickness="1pt"
                   rule-style="dotted"/>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell>
              <fo:block text-align="center" font-size="10pt" padding-top="2pt" font-weight="bold" margin-left="5pt"> FIRMA CLIENTE </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>

<fo:table>
        <fo:table-column column-width="18.4cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell padding-bottom="60pt">
              <fo:block> </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
 <fo:table>
        <fo:table-column column-width="6.13cm"/>
	<fo:table-column column-width="6.13cm"/>
	<fo:table-column column-width="6.13cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell>
	    <fo:block text-align="center" color="#005089">
                <fo:leader leader-pattern="rule"
                   leader-length="5cm"
                   rule-thickness="1pt"
                   rule-style="dotted"/>
              </fo:block>
              <fo:block text-align="center" font-size="10pt" padding-top="2pt" font-weight="bold" margin-left="5pt"> NOMBRE EJECUTIVO COMERCIAL </fo:block>
            </fo:table-cell>
	     <fo:table-cell>
	     <fo:block text-align="center" color="#005089">
                <fo:leader leader-pattern="rule"
                   leader-length="5cm"
                   rule-thickness="1pt"
                   rule-style="dotted"/>
              </fo:block>
              <fo:block text-align="center" font-size="10pt" padding-top="2pt" font-weight="bold" margin-left="5pt"> FIRMA Y TIMBRE </fo:block>
            </fo:table-cell>
	     <fo:table-cell>
	     <fo:block text-align="center" color="#005089">
                <fo:leader leader-pattern="rule"
                   leader-length="5cm"
                   rule-thickness="1pt"
                   rule-style="dotted"/>
              </fo:block>
              <fo:block text-align="center" font-size="10pt" padding-top="2pt" font-weight="bold" margin-left="5pt"> FECHA </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>


    </fo:flow>
  </fo:page-sequence>
</fo:root>
</xsl:template>
</xsl:stylesheet>
