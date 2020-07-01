<?xml version="1.0" encoding="iso-8859-1" ?>

<!-- <==v ersion: 2006/08/23 12:15==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes" />
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />

    <xsl:template match="seguroAutoFacil">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <!-- Propiedades pagina -->
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-height="330mm" page-width="215.9mm" margin-top="10mm" margin-bottom="20mm"  margin-right="10mm" margin-left="10mm">
                    <fo:region-before region-name="xsl-region-before" display-align="after" extent="15mm"/>
                    <fo:region-after region-name="xsl-region-after" display-align="before" extent="15mm"/>
                    <fo:region-body margin-top="20mm" margin-bottom="25mm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="miCarta">
                <fo:static-content flow-name="xsl-region-before" border-bottom-style="solid" border-bottom-width="3pt" border-bottom-color="rgb(192,192,192)" font-size="10pt" font-family="Helvetica">
                   <fo:table table-layout="fixed" width="100%">
                       <fo:table-column column-width="proportional-column-width(4)"/>
                       <fo:table-column column-width="proportional-column-width(1)"/>
                       <fo:table-body>
                          <fo:table-row>
                                <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic height="33pt" width="128pt" vertical-align="left">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="logoBciSeguros"/>
                                        </xsl:attribute>
                                      </fo:external-graphic>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic height="33pt" width="112pt" vertical-align="right">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="logoBciCorredoresSeguros"/>
                                        </xsl:attribute>
                                      </fo:external-graphic>
                                    </fo:block>
                                </fo:table-cell>
                          </fo:table-row>
                        </fo:table-body>
                    </fo:table>               
                </fo:static-content>

                <fo:static-content flow-name="xsl-region-after" padding-top="2pt" border-top-style="solid" border-top-width="1pt" border-top-color="rgb(192,192,192)" font-size="10pt" font-family="Helvetica">
                    <fo:table table-layout="fixed" width="100%">
                        <fo:table-column column-width="proportional-column-width(4)"/>
                        <fo:table-column column-width="proportional-column-width(1)"/>
                        <fo:table-body>
                          <fo:table-row>
                            <fo:table-cell>
                              <fo:block text-align="left"  font-size="10pt" font-family="Arial, Helvetica, sans-serif" line-height="1em + 2pt">
                                   &#x00A0;
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                              <fo:block text-align="right" font-size="10pt" font-family="Arial, Helvetica, sans-serif" line-height="1em + 2pt">
                                 Pagina  <fo:page-number/> / <fo:page-number-citation ref-id="theEnd"/>
                              </fo:block>  
                            </fo:table-cell>
                          </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                </fo:static-content>               

                <fo:flow flow-name="xsl-region-body">                
                    <fo:table border-collapse="collapse">
                        <fo:table-column column-width="2.3cm"/>
                        <fo:table-column column-width="10cm"/>
                        <fo:table-body>
                        <fo:table-row >
                              <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" >
                                  <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                  Sucursal
                                  </fo:block>
                              </fo:table-cell>
                              <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" >
                                  <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                   : <xsl:value-of select="sucursal"/>
                                  </fo:block>
                              </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row border-top-style="solid" border-top-width="2px" border-top-color="rgb(0,0,0)">
                              <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" >
                                  <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                   Ejecutivo
                                  </fo:block>
                              </fo:table-cell>
                              <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" >
                                  <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                   : <xsl:value-of select="ejecutivo"/>
                                  </fo:block>
                              </fo:table-cell>
                        </fo:table-row>
                        </fo:table-body>
                    </fo:table>                                             

                    <fo:block>
                        <fo:leader leader-pattern="space" leader-length="17cm" />
                    </fo:block>
                    <fo:table border-collapse="collapse">   
                        <fo:table-column column-width="100%" />
                        <fo:table-body>
                            <fo:table-row border-top-style="solid" border-top-width="2px" border-top-color="rgb(0,0,0)">
                                <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" border-top-style="solid" border-top-width="0.2pt" border-bottom-style="solid" border-bottom-width="0.2pt" border-left-style="solid" border-left-width="0.2pt" border-right-style="solid" border-right-width="0.2pt">
                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="center">
                                  Seguro Auto F�cil
                                  </fo:block>
                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="center">
                                  (Operaci�n Cr�dito <xsl:value-of select="caioperacion"/><xsl:value-of select="iicoperacion"/>)
                                  </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>

                    <fo:block>
                        <fo:leader leader-pattern="space" leader-length="17cm" />
                    </fo:block>                               
                    <fo:block font-family="Helvetica" font-size="12pt" font-weight="bold" text-align="left" >MATERIA ASEGURADA (DATOS DEL VEHICULO)</fo:block>                       
                    <fo:table border-collapse="collapse">
                        <fo:table-column column-width="20%" column-number="1"/>
                        <fo:table-column column-width="30%" column-number="2"/>
                        <fo:table-column column-width="20%" column-number="3"/>
                        <fo:table-column column-width="30%" column-number="4"/>
                        <fo:table-body>
                        <fo:table-row border-top-style="solid" border-top-width="2px" border-top-color="rgb(0,0,0)">
                              <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" border-top-style="solid" border-top-width="0.2pt" border-bottom-style="solid" border-bottom-width="0.2pt" border-left-style="solid" border-left-width="0.2pt" border-right-style="solid" border-right-width="0.2pt">
                                  <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                   Marca Veh�culo 
                                  </fo:block>
                              </fo:table-cell>
                              <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" border-top-style="solid" border-top-width="0.2pt" border-bottom-style="solid" border-bottom-width="0.2pt" border-left-style="solid" border-left-width="0.2pt" border-right-style="solid" border-right-width="0.2pt">
                                  <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                   <xsl:value-of select="marcaauto"/>
                                  </fo:block>
                              </fo:table-cell>
                              <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" border-top-style="solid" border-top-width="0.2pt" border-bottom-style="solid" border-bottom-width="0.2pt" border-left-style="solid" border-left-width="0.2pt" border-right-style="solid" border-right-width="0.2pt">
                                  <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                   Modelo Veh�culo
                                  </fo:block>
                              </fo:table-cell>
                              <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" border-top-style="solid" border-top-width="0.2pt" border-bottom-style="solid" border-bottom-width="0.2pt" border-left-style="solid" border-left-width="0.2pt" border-right-style="solid" border-right-width="0.2pt">
                                  <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                   <xsl:value-of select="modeloauto"/>
                                  </fo:block>
                              </fo:table-cell>
                        </fo:table-row>
                        <fo:table-row border-top-style="solid" border-top-width="2px" border-top-color="rgb(0,0,0)">
                              <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" border-top-style="solid" border-top-width="0.2pt" border-bottom-style="solid" border-bottom-width="0.2pt" border-left-style="solid" border-left-width="0.2pt" border-right-style="solid" border-right-width="0.2pt">
                                  <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                   Uso Veh�culo
                                  </fo:block>
                              </fo:table-cell>
                              <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" border-top-style="solid" border-top-width="0.2pt" border-bottom-style="solid" border-bottom-width="0.2pt" border-left-style="solid" border-left-width="0.2pt" border-right-style="solid" border-right-width="0.2pt">
                                  <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                   <xsl:value-of select="usoVehiculo"/>
                                  </fo:block>
                              </fo:table-cell>
                              <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" border-top-style="solid" border-top-width="0.2pt" border-bottom-style="solid" border-bottom-width="0.2pt" border-left-style="solid" border-left-width="0.2pt" border-right-style="solid" border-right-width="0.2pt">
                                  <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                   A�o Fabricaci�n
                                  </fo:block>
                              </fo:table-cell>
                              <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" border-top-style="solid" border-top-width="0.2pt" border-bottom-style="solid" border-bottom-width="0.2pt" border-left-style="solid" border-left-width="0.2pt" border-right-style="solid" border-right-width="0.2pt">
                                  <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                   <xsl:value-of select="autoAno"/>
                                  </fo:block>
                              </fo:table-cell>
                        </fo:table-row>
                        </fo:table-body>
                    </fo:table>                                             

                    <fo:block>
                        <fo:leader leader-pattern="space" leader-length="17cm" />
                    </fo:block>                               
                    <fo:block font-family="Helvetica" font-size="12pt" font-weight="bold" text-align="left" >CONDUCTOR HABITUAL</fo:block>
                    <fo:table border-collapse="collapse">
                        <fo:table-column column-width="20%" column-number="1"/>
                        <fo:table-column column-width="30%" column-number="2"/>
                        <fo:table-column column-width="20%" column-number="3"/>
                        <fo:table-column column-width="30%" column-number="4"/>
                            <fo:table-body>
                               <fo:table-row border-top-style="solid" border-top-width="2px" border-top-color="rgb(0,0,0)">
                                  <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" border-top-style="solid" border-top-width="0.2pt" border-bottom-style="solid" border-bottom-width="0.2pt" border-left-style="solid" border-left-width="0.2pt" border-right-style="solid" border-right-width="0.2pt">
                                      <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                       Rut 
                                      </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" border-top-style="solid" border-top-width="0.2pt" border-bottom-style="solid" border-bottom-width="0.2pt" border-left-style="solid" border-left-width="0.2pt" border-right-style="solid" border-right-width="0.2pt">
                                      <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                       <xsl:value-of select="rut"/>
                                      </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" border-top-style="solid" border-top-width="0.2pt" border-bottom-style="solid" border-bottom-width="0.2pt" border-left-style="solid" border-left-width="0.2pt" border-right-style="solid" border-right-width="0.2pt">
                                      <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                       Edad
                                      </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" border-top-style="solid" border-top-width="0.2pt" border-bottom-style="solid" border-bottom-width="0.2pt" border-left-style="solid" border-left-width="0.2pt" border-right-style="solid" border-right-width="0.2pt">
                                      <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                       <xsl:value-of select="edad"/>
                                      </fo:block>
                                  </fo:table-cell>
                              </fo:table-row>                            
                          </fo:table-body>
                     </fo:table>                                             
                    
                    <fo:block>
                        <fo:leader leader-pattern="space" leader-length="17cm" />
                    </fo:block>                               
                    <fo:block font-family="Helvetica" font-size="12pt" font-weight="bold" text-align="left" >PRIMAS</fo:block>
                    <fo:table border-collapse="collapse">
                        <fo:table-column column-width="50%" column-number="1"/>
                        <fo:table-column column-width="50%" column-number="2"/>
                            <fo:table-body>
                               <fo:table-row border-top-style="solid" border-top-width="2px" border-top-color="rgb(0,0,0)">
                                  <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" border-top-style="solid" border-top-width="0.2pt" border-bottom-style="solid" border-bottom-width="0.2pt" border-left-style="solid" border-left-width="0.2pt" border-right-style="solid" border-right-width="0.2pt">
                                      <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                       Compa��a: 
                                      </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" border-top-style="solid" border-top-width="0.2pt" border-bottom-style="solid" border-bottom-width="0.2pt" border-left-style="solid" border-left-width="0.2pt" border-right-style="solid" border-right-width="0.2pt">
                                      <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                       BCI SEGUROS GENERALES
                                      </fo:block>
                                  </fo:table-cell>
                              </fo:table-row>                            
                               <fo:table-row border-top-style="solid" border-top-width="2px" border-top-color="rgb(0,0,0)">
                                  <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" border-top-style="solid" border-top-width="0.2pt" border-bottom-style="solid" border-bottom-width="0.2pt" border-left-style="solid" border-left-width="0.2pt" border-right-style="solid" border-right-width="0.2pt">
                                      <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                       Primas Brutas Mensuales en UF
                                      </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" border-top-style="solid" border-top-width="0.2pt" border-bottom-style="solid" border-bottom-width="0.2pt" border-left-style="solid" border-left-width="0.2pt" border-right-style="solid" border-right-width="0.2pt">
                                      <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                       <xsl:value-of select="primaBruta"/>
                                      </fo:block>
                                  </fo:table-cell>
                            </fo:table-row>                            
                        </fo:table-body>
                    </fo:table>                                             

                    <fo:block>
                        <fo:leader leader-pattern="space" leader-length="17cm" />
                    </fo:block>                               
                    <fo:block font-family="Helvetica" font-size="12pt" font-weight="bold" text-align="left" >COBERTURAS</fo:block>
                    <fo:table border-collapse="collapse">
                        <fo:table-column column-width="100%"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" >
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                        Plan AUTO FACIL- Compa��a: BCI SEGUROS GENERALES
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    1. P�rdida Total.
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    2. Indemnizaci�n 0 Km.
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    3. Asistencia al veh�culo
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    4. Muerte Accidental Plan "A" e Incapacidad Temporal Plan "B", UF 100 por persona, l�mite m�ximo UF 400 por evento.
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    5. Robo, hurto o uso no autorizado.
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    6. Responsabilidad Civil Da�o Emergente.
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    7. Responsabilidad Civil Da�o Moral
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    8. Responsabilidad Civil Lucro Cesante
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    9. Huelga y Terrorismo
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    10. Actos maliciosos
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    11. Sismo
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    12. Granizo y otros riesgos de la naturaleza.
                                    </fo:block>
                                </fo:table-cell>                              
                            </fo:table-row>                            
                        </fo:table-body>
                    </fo:table>

                    <fo:block>
                        <fo:leader leader-pattern="space" leader-length="17cm" />
                    </fo:block>                               
                    <fo:block font-family="Helvetica" font-size="12pt" font-weight="bold" text-align="left" >DETALLE DE PAGO</fo:block>
                    <fo:table border-collapse="collapse">
                        <fo:table-column column-width="100%" column-number="1"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" >
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    Efectivo Cta. Cte. BCI
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    Cheque Tarj. Credito BCI
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>                            
                        </fo:table-body>
                    </fo:table>

                    <fo:table break-after="page" />
                    <fo:block>
                        <fo:leader leader-pattern="space" leader-length="17cm" />
                    </fo:block>                       
                    <fo:block font-family="Helvetica" font-size="12pt" font-weight="bold" text-align="left" >CONDICIONES PARTICULARES Y DECLARACIONES ESPECIALES</fo:block>
                    
                    <fo:table border-collapse="collapse" >
                        <fo:table-column column-width="100%" column-number="1"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" >
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                        BENEFICIO
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                        Todos los planes incluyen el servicio exclusivo de reparaci�n m�vil BCI. En el Plan Protecci�n Preferencial incluye talleres de marca.
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    EXCLUSIONES
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    - Veh�culos con m�s de 15 a�os de antig�edad.
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    - Veh�culos de 3 o menos ruedas.
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    - Veh�culos de arriendo o renta car.
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    - Veh�culos de turismo.
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    - Veh�culos de locomoci�n colectiva o taxis.
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    - Furgones escolares.
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    - Veh�culos del Cuerpo de Bomberos, ambulancias y policiales.
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    - Veh�culos de Escuela de Conductores.
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    - Veh�culos sin placa �nica nacional, excepto Veh�culos nuevos.
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    - Veh�culos internados con franquicia aduanera y que no correspondan a versiones vendidas en Chile por representantes de la marca debidamente autorizados.
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    - Veh�culos hechizos.
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    - Veh�culos que transporten material explosivo, corrosivo o combustible.
                                    </fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    - Veh�culos descapotables, se excluyen las coberturas de robo, hurto o uso no autorizado, robo de accesorios y cualquier da�o a la capota.
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>                            
                        </fo:table-body>
                    </fo:table>

                    <fo:block>
                        <fo:leader leader-pattern="space" leader-length="17cm" />
                    </fo:block>                               
                    <fo:table border-collapse="collapse">
                        <fo:table-column column-width="100%" column-number="1"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" >
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    Para la emisi�n del presente certificado ha sido determinante la declaraci�n formulada por el contratante, respecto de otros seguros contratados que hayan amparado al veh�culo individualizado anteriormente y a quien sea el conductor habitual de este.                                    
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>

                    <fo:block>
                        <fo:leader leader-pattern="space" leader-length="17cm" />
                    </fo:block>                               
                    <fo:table border-collapse="collapse">
                        <fo:table-column column-width="100%" column-number="1"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" >
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    Todas las menciones de este certificado formar�n parte integrante de las Condiciones Particulares de la p�liza.                                    
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                    <fo:block>
                        <fo:leader leader-pattern="space" leader-length="17cm" />
                    </fo:block>                               
                    <fo:block>
                        <fo:leader leader-pattern="space" leader-length="17cm" />
                    </fo:block>                               
                    <fo:block>
                        <fo:leader leader-pattern="space" leader-length="17cm" />
                    </fo:block>                               
                    <fo:block>
                        <fo:leader leader-pattern="space" leader-length="17cm" />
                    </fo:block>                               
                    <fo:block>
                        <fo:leader leader-pattern="space" leader-length="17cm" />
                    </fo:block>                               
                    <fo:block>
                        <fo:leader leader-pattern="space" leader-length="17cm" />
                    </fo:block>                               
                    <fo:block>
                        <fo:leader leader-pattern="space" leader-length="17cm" />
                    </fo:block>                               
                    <fo:block>
                        <fo:leader leader-pattern="space" leader-length="17cm" />
                    </fo:block>                               
                    <fo:table border-collapse="collapse">
                        <fo:table-column column-width="50%" column-number="1"/>
                        <fo:table-column column-width="50%" column-number="2"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" >
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    Fecha : <xsl:value-of select="fechahoy"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" >
                                    <fo:block font-family="Helvetica" font-size="10pt" text-align="left">
                                    Firma Corredor
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                    <fo:block id="theEnd"/>
                </fo:flow>                
            </fo:page-sequence>
        </fo:root>
    </xsl:template>   
</xsl:stylesheet>