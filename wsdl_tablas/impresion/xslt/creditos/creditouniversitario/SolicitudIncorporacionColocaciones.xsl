<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2006/08/23 12:15 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />

   <!-- <xsl:param name="IMG_URL"/> -->

    <xsl:template match="SolicitudIncorporacionColocaciones">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="10mm" margin-left="10mm" margin-right="10mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="miCarta">
               <fo:flow flow-name="xsl-region-body">

              <fo:table border-collapse="collapse">

                 <fo:table-column column-width="30mm" />
                 <fo:table-column column-width="115.9mm" />
                 <fo:table-column column-width="50mm"/>
                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block >
				     <fo:external-graphic  width="2.1cm"   height="1.5cm" vertical-align="middle">
            					<xsl:attribute name="src">
      					        <xsl:value-of select="IncorporacionColocacionesVO/logoBciSeguros"/>
                                       		</xsl:attribute>
                                     </fo:external-graphic>
                          </fo:block>
                       </fo:table-cell>
                       <fo:table-cell >
                          <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACIÓN</fo:block>
                          <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SEGUROS COLOCACIONES</fo:block>
                       </fo:table-cell>
                       <fo:table-cell >
                          <fo:block >
				     <fo:external-graphic  width="3.9cm"   height="1.1cm" vertical-align="middle">
                                                <xsl:attribute name="src">
                                       		<xsl:value-of select="IncorporacionColocacionesVO/logoBciCorredoresSeguros"/>
                                       		</xsl:attribute>
                                     </fo:external-graphic>
                          </fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>


              <fo:table border-collapse="collapse">
                 <fo:table-column column-width="96.95mm" />
                 <fo:table-column column-width="96.95mm" />
                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm"></fo:block>
                       </fo:table-cell>
                       <fo:table-cell >
                          <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio Nº<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionColocacionesVO/numeroCredito" /></fo:inline></fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse"  >
                 <fo:table-column column-width="195.9mm"/>
                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>DATOS ENTIDAD CONTRATANTE</fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm">Entidad Contratante: Banco Crédito e Inversiones</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm">Sucursal/Oficina:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionColocacionesVO/sucursal" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm" margin-left="1mm">Ejecutivo:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionColocacionesVO/ejecutivo" />  </fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm" margin-left="1mm">Jefe Sucursal/Oficina:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionColocacionesVO/jefeOficina" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="96.5mm"  border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="6.4mm"   border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="13.7mm"  border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="6.4mm"   border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="72.9mm" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm" font-weight="bold" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>SOLICITA SEGURO DE DESGRAVAMEN:</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold" text-align="center"><xsl:if test="IncorporacionColocacionesVO/solicitaSeguroDesgravamen = 'true'"></xsl:if></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" font-weight="bold" background-color="#BDBDBD">SI<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold" background-color="#BDBDBD"></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold" text-align="center"><xsl:if test="IncorporacionColocacionesVO/solicitaSeguroDesgravamen = 'false'"></xsl:if></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm" font-weight="bold" background-color="#BDBDBD" border-right="0.5pt solid black">NO<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
              </fo:table>             

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" line-height="4.5mm" margin-left="1mm" border-right="0.5pt solid black">ASEGURABLE (Solo personas naturales)</fo:block>
                            </fo:table-cell>
                      </fo:table-row>

                </fo:table-body>
               </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="86mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
	         <fo:table-column column-width="0.42cm"  border-top="0.5pt solid black" border-bottom="0.3pt solid black" border-right="0.3pt solid black" border-left="0.5pt solid black"/>
                  <fo:table-column column-width="7mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
                  <fo:table-column column-width="87mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
				  <fo:table-column column-width="0.42cm"  border-top="0.5pt solid black" border-bottom="0.3pt solid black" border-right="0.3pt solid black" border-left="0.5pt solid black"/>
                  <fo:table-column column-width="7,9mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" line-height="4.5mm" margin-left="1mm">DEUDOR DIRECTO</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
								<fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4mm"><fo:leader leader-pattern="space" leader-length="1mm"/>      	         
							  </fo:block>                            
                            </fo:table-cell>                            
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" margin-left="1mm" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" margin-left="1mm" line-height="4.5mm">AVAL</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block  font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" line-height="4mm"><fo:inline font-weight="bold"><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:if test="IncorporacionColocacionesVO/deudorDirecto = 'false'"></xsl:if></fo:inline></fo:block>
                            </fo:table-cell>          
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" margin-left="1mm" line-height="4.5mm" border-right="0.5pt solid black"></fo:block>
                            </fo:table-cell>                                              
                      </fo:table-row>

                </fo:table-body>
               </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="138.9mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="57mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Nombre Completo:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><!--<xsl:value-of select="IncorporacionColocacionesVO/nombreCliente" />--></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Rut:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><!--<xsl:value-of select="IncorporacionColocacionesVO/rutCliente" />--></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="120mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Fecha Nacimiento:<fo:leader leader-pattern="space" leader-length="1mm"/>
                                     <fo:inline font-weight="bold"><!--<xsl:value-of select="IncorporacionColocacionesVO/fechaNacimientoCliente" />--></fo:inline>
                                    </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Estado Civil:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionColocacionesVO/estadoCivilCliente" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"  text-align="left" margin-left="1mm" line-height="4.5mm">Domicilio:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(IncorporacionColocacionesVO/direccion,0,32)" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
               </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Ciudad:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(IncorporacionColocacionesVO/ciudad,0,20)" /></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Comuna:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(IncorporacionColocacionesVO/comuna,0,20)" /></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Teléfono:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionColocacionesVO/telefono" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>


              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="126.7mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>                  
                  <fo:table-column column-width="52.8mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-column column-width="6.4mm" border-top="0.2pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black" />
                  <fo:table-column column-width="10mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>                  
                  <fo:table-body>

                      <fo:table-row>
                            <fo:table-cell>
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" line-height="4.5mm" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>DESGRAVAMEN (POL 2 05 040, CAD 2 08 074)</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" line-height="4.5mm" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>CREDITO CONSUMO</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" line-height="4.5mm"><xsl:if test="IncorporacionColocacionesVO/creditoConsumo = 'true'"></xsl:if></fo:block>
                            </fo:table-cell>            
                            <fo:table-cell>
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" line-height="4.5mm" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                            </fo:table-cell>                                       
                      </fo:table-row>

                      <fo:table-row>
                            <fo:table-cell>
                                    <fo:block border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" line-height="4.5mm" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm" background-color="#BDBDBD"/>DESGRAVAMEN (POL 2 05 040)</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                    <fo:block border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" line-height="4.5mm" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>CREDITO COMERCIAL</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                    <fo:block border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" line-height="4.5mm"><xsl:if test="IncorporacionColocacionesVO/creditoConsumo = 'false'"></xsl:if></fo:block>
                            </fo:table-cell>                  
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" line-height="4.5mm" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                            </fo:table-cell>                                         
                      </fo:table-row>


                </fo:table-body>
               </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Nro. Operación:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionColocacionesVO/numeroCredito" /></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Moneda:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionColocacionesVO/glosaMoneda" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Monto del Crédito responsabilidad del asegurable:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

                                    <xsl:variable name="moneda" select="IncorporacionColocacionesVO/moneda" />
                                      <xsl:choose>

                                        <xsl:when test="$moneda = 'UF'">
                                           <xsl:value-of select='format-number(IncorporacionColocacionesVO/montoCredito, "###.###.##0,0000","decimal")'/>
                                        </xsl:when>


                                        <xsl:when test="$moneda = '$'">
                                          <xsl:value-of select='format-number(IncorporacionColocacionesVO/montoCredito, "###.###.##0","decimal")' />
                                        </xsl:when>

                                    </xsl:choose>



                                    </fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="75mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="9mm" border-top="0.5pt solid black" />
                  <fo:table-column column-width="35mm" border-top="0.5pt solid black" />
                  <fo:table-column column-width="9mm" border-top="0.5pt solid black" />
                  <fo:table-column column-width="67.9mm" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" margin-left="1mm">Vigencia Operación: Desde <fo:inline font-weight="bold"><xsl:value-of select="IncorporacionColocacionesVO/vigenciaOperacionDesde" /></fo:inline></fo:block>
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" ></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" ></fo:block>
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" ></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm">Hasta <fo:inline font-weight="bold"><xsl:value-of select="IncorporacionColocacionesVO/vigenciaOperacionHasta" /></fo:inline></fo:block>
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm"></fo:block>
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" >Prima:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"></fo:inline><fo:leader leader-pattern="space" leader-length="7mm"/>Convertidos a la</fo:block>
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" >UF del<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionColocacionesVO/fechaEmision" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(fecha emisión)</fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" line-height="4.5mm">Comisión de Intermediación:<fo:leader leader-pattern="space" leader-length="2mm"/>25% de la prima</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" line-height="4.5mm">Comisión de Recaudación (Receptor Banco BCI):<fo:leader leader-pattern="space" leader-length="2mm"/>UF 0,03 + IVA por recaudación</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" line-height="4.5mm">Valija documentos (Receptor Banco BCI):<fo:leader leader-pattern="space" leader-length="2mm"/>$400 + IVA por seguro</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" line-height="4.5mm">La prima y/o tasa puede variar en función a la evaluación del riesgo por parte de BCI Seguros Vida S.A.</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold">Capital Asegurado:</fo:inline> saldo insoluto de la operación crediticia individualizada a la fecha de siniestro.</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" font-weight="bold" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>SEGUROS ADICIONALES SOLO PARA CRÉDITOS DE CONSUMO</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>


              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="89.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="51.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="18.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="36.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">PRODUCTO</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">CAPITAL ASEGURADO</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">PRIMA BRUTA</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">COMISION DE</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">INTERMEDIACION</fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse" text-align="left">
	         <fo:table-column column-width="1.8mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
	         <fo:table-column column-width="0.42cm"  border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	         <fo:table-column column-width="83.475mm" border-top="0.5pt solid black"  />
	         <fo:table-column column-width="51.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
	         <fo:table-column column-width="18.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
	         <fo:table-column column-width="36.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" />
	      
	         <fo:table-body>
	            <fo:table-row>
	               <fo:table-cell >
	      		  <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" line-height="4.5mm"></fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	      	          <xsl:variable name="primBrutaSegDobleCap" select="IncorporacionColocacionesVO/primaBrutaSeguroDobleCapital" />
	      	          <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">
	      	          <xsl:if  test="$primBrutaSegDobleCap &gt; 0"></xsl:if>
	      		  </fo:block>
	      		  <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" line-height="4.5mm"></fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block  font-family="Helvetica" font-size="11pt"   text-align="justify" margin-left="1mm" line-height="4.5mm">Doble Capital (POL 2 95 043 CAD 2 92 135)</fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">Saldo insoluto del crédito de</fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block >
			     <xsl:variable name="primBrutaSegDobleCap" select="IncorporacionColocacionesVO/primaBrutaSeguroDobleCapital" />
			     <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
			     <xsl:if  test="$primBrutaSegDobleCap &gt; 0">
			     <!--<xsl:value-of select='format-number(IncorporacionColocacionesVO/primaBrutaSeguroDobleCapital, "###.###.##0,0000","decimal")'/>-->
			     </xsl:if>
			     </fo:inline></fo:block>
			     <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm"></fo:block>
                          </fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">33,78 %</fo:block>
	                  <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" line-height="4.5mm"></fo:block>
	               </fo:table-cell>
	            </fo:table-row>
	         </fo:table-body>
	      </fo:table>
	                    
	      <fo:table border-collapse="collapse" text-align="left">
	      	 <fo:table-column column-width="89.475mm" border-left="0.5pt solid black"   />
	      	 <fo:table-column column-width="51.475mm" border-left="0.5pt solid black" />
	      	 <fo:table-column column-width="18.475mm" border-left="0.5pt solid black" />
	      	 <fo:table-column column-width="36.475mm" border-left="0.5pt solid black" border-right="0.5pt solid black" />
	      	      
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"></fo:block >
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">consumo individualizado.</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block >	                     
	      	             <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"></fo:block>
	      	          </fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm"></fo:block>	      	        
	      	       </fo:table-cell>
	      	    </fo:table-row>
	         </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse" text-align="left">
	      	 <fo:table-column column-width="1.8mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
	      	 <fo:table-column column-width="0.42cm"  border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	      	 <fo:table-column column-width="83.475mm" border-top="0.5pt solid black"  />
	      	 <fo:table-column column-width="51.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
	      	 <fo:table-column column-width="18.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
	      	 <fo:table-column column-width="36.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" />
	      	      
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" line-height="4.5mm"></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	      	  <fo:block >
			     <xsl:variable name="primBrutaSegRentaPorHospit" select="IncorporacionColocacionesVO/primaBrutaSeguroRentaPorHospitalizacion" />
			     <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/>
			     <xsl:if  test="$primBrutaSegRentaPorHospit &gt; 0"></xsl:if>
			     </fo:block>
			     <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" line-height="4.5mm"></fo:block>
                          </fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block  font-family="Helvetica" font-size="11pt"   text-align="justify" margin-left="1mm" line-height="4.5mm">Renta por Hospitalización (POL 2 92015 Alt. G)</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">Hasta 6 cuotas del crédito de</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block>
		             <xsl:variable name="primBrutaSegRentaPorHospit" select="IncorporacionColocacionesVO/primaBrutaSeguroRentaPorHospitalizacion" />
		             <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
		             <xsl:if  test="$primBrutaSegRentaPorHospit &gt; 0">
		             <!--<xsl:value-of select='format-number(IncorporacionColocacionesVO/primaBrutaSeguroRentaPorHospitalizacion, "###.###.##0,0000","decimal")'/>-->
		             </xsl:if>
		             </fo:inline></fo:block>
		             <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm"></fo:block>
                          </fo:block>	      	          
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">30 %</fo:block>
	      	          <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" line-height="4.5mm"></fo:block>
	      	       </fo:table-cell>
	      	    </fo:table-row>
	      	 </fo:table-body>
	     </fo:table>
	      	                    
	     <fo:table border-collapse="collapse" text-align="left">
	      	<fo:table-column column-width="89.475mm" border-left="0.5pt solid black"   />
	      	<fo:table-column column-width="51.475mm" border-left="0.5pt solid black" />
	      	<fo:table-column column-width="18.475mm" border-left="0.5pt solid black" />
	      	<fo:table-column column-width="36.475mm" border-left="0.5pt solid black" border-right="0.5pt solid black" />
	      	      	      
	      	<fo:table-body>
	      	   <fo:table-row>
	      	      <fo:table-cell >
	      	      	 <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"></fo:block >
	      	      </fo:table-cell>
	      	      <fo:table-cell >
	      	      	 <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">consumo individualizado.</fo:block>
	      	      </fo:table-cell>
	      	      <fo:table-cell >
	      	      	 <fo:block >	                     
	      	      	    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"></fo:block>
	      	      	 </fo:block>
	      	      </fo:table-cell>
	      	      <fo:table-cell >
	      	      	 <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm"></fo:block>	      	        
	      	      </fo:table-cell>
	      	   </fo:table-row>
	      	</fo:table-body>
             </fo:table>
             
             <fo:table border-collapse="collapse" text-align="left">
	     	<fo:table-column column-width="1.8mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
	     	<fo:table-column column-width="0.42cm"  border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	     	<fo:table-column column-width="83.475mm" border-top="0.5pt solid black"  />
	     	<fo:table-column column-width="51.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
	     	<fo:table-column column-width="18.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
	     	<fo:table-column column-width="36.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" />
	     	      	      
	     	<fo:table-body>
	     	   <fo:table-row>
	     	      <fo:table-cell >
	     	      	 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" line-height="4.5mm"></fo:block>
	     	      </fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block >
			    <xsl:variable name="primBrutaSegEnferGrves" select="IncorporacionColocacionesVO/primaBrutaSeguroEnfermedadesGraves" />
			    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/>
			    <xsl:if  test="$primBrutaSegEnferGrves &gt; 0"></xsl:if>
			    </fo:block>
			    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" line-height="4.5mm"></fo:block>
                         </fo:block>
	     	      </fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block  font-family="Helvetica" font-size="11pt"   text-align="justify" margin-left="1mm" line-height="4.5mm">Enfermedades Graves (CAD 3 07 093)</fo:block>
	     	      </fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">Hasta 6 cuotas del crédito de</fo:block>
	     	      </fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block>
			    <xsl:variable name="primBrutaSegEnferGrves" select="IncorporacionColocacionesVO/primaBrutaSeguroEnfermedadesGraves" />
			    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt"   text-align="left"  line-height="4.5mm"><fo:inline font-weight="bold">
			    <xsl:if test="$primBrutaSegEnferGrves  &gt; 0">
			    <!--<xsl:value-of select='format-number(IncorporacionColocacionesVO/primaBrutaSeguroEnfermedadesGraves, "###.###.##0,0000","decimal")'/>-->
			    </xsl:if></fo:inline></fo:block>
			    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left"  margin-left="1mm" line-height="4.5mm"></fo:block>
                         </fo:block>
                      </fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">30 %</fo:block>
	     	      	 <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" line-height="4.5mm"></fo:block>
	     	      </fo:table-cell>
	     	   </fo:table-row>
	     	</fo:table-body>
	     </fo:table>
	     	      	                    
	     <fo:table border-collapse="collapse" text-align="left">
	     	<fo:table-column column-width="89.475mm" border-left="0.5pt solid black"   />
	     	<fo:table-column column-width="51.475mm" border-left="0.5pt solid black" />
	     	<fo:table-column column-width="18.475mm" border-left="0.5pt solid black" />
	     	<fo:table-column column-width="36.475mm" border-left="0.5pt solid black" border-right="0.5pt solid black" />
	     	      	      	      
	     	<fo:table-body>
	     	   <fo:table-row>
	     	      <fo:table-cell >
	     	      	 <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"></fo:block >
	     	      </fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">consumo individualizado.</fo:block>
	     	      </fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block >	                     
	     	      	    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"></fo:block>
	     	      	 </fo:block>
	     	      </fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm"></fo:block>	      	        
	     	      </fo:table-cell>
	     	   </fo:table-row>
	     	</fo:table-body>
             </fo:table>              
              
              <fo:table border-collapse="collapse" text-align="left">
	         <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>
	      
                 <fo:table-body>
                    <fo:table-row>
	               <fo:table-cell >
                          <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left"    font-weight="bold" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm" />VIGENCIA DE LOS SEGUROS</fo:block>
                       </fo:table-cell>
		    </fo:table-row>
		 </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>
	               <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="justify" margin-left="1mm" line-height="4.5mm">Desde el momento de la aceptación de la presente solicitud por parte de la compañía de seguros hasta el día en que se produzca una cualquiera de las dos circunstancias siguientes: 1) que el asegurado cumpla la edad límite de permanencia de cada cobertura, 2) que se extinga el crédito que dio origen al seguro.</fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
              </fo:table>



              <fo:table border-collapse="collapse" text-align="left">
                 <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block   font-family="Helvetica" font-size="11pt"  text-align="left" font-weight="bold" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm" />BENEFICIARIOS SEGURO DOBLE CAPITAL</fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>



              <fo:table border-collapse="collapse" text-align="left">
                 <fo:table-column column-width="40mm"    border-top="0.5pt solid black" border-left="0.5pt solid black" />
                 <fo:table-column column-width="123.9mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                 <fo:table-column column-width="32mm"    border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block   font-family="Helvetica" font-size="11pt" text-align="center" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="right" font-weight="bold" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                          <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="right" font-weight="bold" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                          <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="right" font-weight="bold" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                       </fo:table-cell>
                       <fo:table-cell >
                          <fo:block   font-family="Helvetica" font-size="11pt" text-align="center" margin-left="1mm" line-height="4.5mm">Nombre completo o Razón Social</fo:block>
                          <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                          <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                          <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                       </fo:table-cell>
                       <fo:table-cell >
                          <fo:block   font-family="Helvetica" font-size="11pt" text-align="center" margin-left="1mm" line-height="4.5mm">% Distribución</fo:block>
                          <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="right" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                          <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="right" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                          <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="right" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                 <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">En caso que el asegurado no designe beneficiarios, éstos serán los herederos legales</fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                 <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block   font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm" />FORMA DE PAGO</fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                 <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Autorizo que el monto de las primas correspondientes a los seguros elegidos, sean cargados en el pago del crédito solicitado, bajo el Nro. de Operación <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionColocacionesVO/numeroCredito" />  </fo:inline></fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>


              <fo:table border-collapse="collapse" text-align="left">
                 <fo:table-column  column-width="1mm" border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
                 <fo:table-column  column-width="194.9mm" border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-right="0.5pt solid black"/>

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block   font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left"><fo:leader leader-pattern="space" leader-length="1mm" /></fo:block>
                       </fo:table-cell >
                       <fo:table-cell >
                          <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Por el presente instrumento, solicito como asegurable mi incorporación a la(s) póliza(s) colectiva(s) respectiva(s) de BCI Seguros de Vida S.A. según producto(s) identificado(s) precedentemente. Con este objeto otorgo mandato  al Banco de Crédito e Inversiones, en adelante "el Mandatario", para que contrate y/o renueve con BCI Seguros Vida S.A., uno o más Seguros para el asegurable, intermediados por Bci Corredores de Seguros S.A..<fo:leader leader-pattern="space" leader-length="1mm" />Desde ya, acepto como asegurable todas las condiciones de la contratación del o de los seguro(s), entre éstas, su vigencia, la cobertura del o de los mismos y el cargo de la(s) prima(s) y de cualesquiera otros gastos generados con ocasión del o de los mismos, en cualquiera de mis Cuentas Corrientes, o la rebaja correspondiente del o de los créditos que se me concediere(n), de la(s) prima(s), impuestos, comisiones y otros gastos derivados de su contratación y renovación en su caso, en las oportunidades y con la frecuencia que corresponde a los respectivos vencimientos. Así también, acepto las condiciones de procedencia o improcedencia del pago del o de los seguros pactados en la Compañía de Seguros y el monto de cobertura sin que al Banco corresponda responsabilidad alguna, para el evento que el(los) seguro(s) no fuese(n) pagado(s), no fuere(n) contratado(s), no fuese(n) renovado(s), o no cumplan los requisitos de asegurabilidad exigidos.</fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>

              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <fo:table border-collapse="collapse" >
                 <fo:table-column />
                 <fo:table-column />
                 <fo:table-column />
                 <fo:table-column />

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                         <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
                         <fo:block line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="10mm" /><!--<xsl:value-of select="IncorporacionColocacionesVO/fechaSuscripcion"/>--></fo:block>
                         <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="12mm"/>Fecha</fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                         <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
                         <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
                         <fo:block line-height="4.5mm" text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm">Firma del asegurable</fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                         <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
                         <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
                         <fo:block line-height="4.5mm" text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm">Firma del Titular</fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                         <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
                         <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
                         <fo:block line-height="4.5mm" text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="8mm"/>Firma del Corredor</fo:block>
                         
                      </fo:table-cell>
                   </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse">
	      	 <fo:table-column/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" text-align="right" font-weight="bold" vertical-align="middle" line-height="4.5mm" font-size="9pt">CONTINUA EN PÁGINA SIGUIENTE</fo:block>
	      	       </fo:table-cell>
	      	    </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
              
        </fo:flow>
     </fo:page-sequence>

     <fo:page-sequence master-reference="miCarta">
        <fo:flow flow-name="xsl-region-body">

           <fo:table border-collapse="collapse">
              <fo:table-column column-width="30mm" />
              <fo:table-column column-width="115.9mm" />
              <fo:table-column column-width="50mm"/>
                  
              <fo:table-body>
                 <fo:table-row>
                    <fo:table-cell >
                       <fo:block>
				     <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
            					<xsl:attribute name="src">
      					        <xsl:value-of select="IncorporacionColocacionesVO/logoBciSeguros"/>
                                       		</xsl:attribute>
                                     </fo:external-graphic>
                       </fo:block>
                    </fo:table-cell>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">SOLICITUD DE INCORPORACIÓN</fo:block>
                       <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">SEGUROS COLOCACIONES</fo:block>
                    </fo:table-cell>
                    <fo:table-cell >
                       <fo:block >
				     <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
                                                <xsl:attribute name="src">
                                       		<xsl:value-of select="IncorporacionColocacionesVO/logoBciCorredoresSeguros"/>
                                       		</xsl:attribute>
                                     </fo:external-graphic>
                       </fo:block>
                    </fo:table-cell>
                 </fo:table-row>
              </fo:table-body>
           </fo:table>

           <fo:table border-collapse="collapse">
              <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black" />
              <fo:table-body>
                 <fo:table-row>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" background-color="#BDBDBD">NOTAS</fo:block>
                    </fo:table-cell>
                 </fo:table-row>
              </fo:table-body>
           </fo:table>

           <fo:table border-collapse="collapse">
              <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black" />
              <fo:table-body>
                 <fo:table-row>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Coberturas Adicionales al Crédito:</fo:block>
                    </fo:table-cell>
                 </fo:table-row>
              </fo:table-body>
           </fo:table>

           <fo:table border-collapse="collapse">
              <fo:table-column column-width="5mm"    border-left="0.5pt solid black"  />
              <fo:table-column column-width="190.9mm" border-right="0.5pt solid black" />
              <fo:table-body>
                 <fo:table-row>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" text-align="right" vertical-align="middle" line-height="4.5mm" font-size="11pt">-<fo:leader leader-pattern="space" leader-length="1mm"/>
                       </fo:block>
                    </fo:table-cell>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt" margin-right="1mm" >Doble Capital (POL 2 95 043 CAD 2 92 135): El límite de edad para cobertura de fallecimiento es de 75 años 0 días, y para la Cobertura de Incapacidad Total y Permanente dos tercios es de 65 años 0 días para hombres y 60 años 0 días para mujeres.</fo:block>
                    </fo:table-cell>
                 </fo:table-row>
              </fo:table-body>
           </fo:table>

           <fo:table border-collapse="collapse">
              <fo:table-column column-width="5mm"    border-left="0.5pt solid black"  />
              <fo:table-column column-width="190.9mm" border-right="0.5pt solid black" />
              <fo:table-body>
                 <fo:table-row>
                    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="right" vertical-align="middle" line-height="4.5mm" font-size="11pt">-<fo:leader leader-pattern="space" leader-length="1mm"/>
		       </fo:block>
                    </fo:table-cell>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt" margin-right="1mm">Renta por Hospitalización (POL 2 92 015 Alt. G): Límite de edad 75 años 0 días. Carencia 60 días contados desde la fecha de curse del crédito de consumo asociado al seguro. Los límites de indemnización se definen de acuerdo al período de hospitalización siguiente: de 4 a 30 días 1 cuota; de 31 a 60 días 2 cuotas; de 61 a 90 días 3 cuotas; de 91 a 120 días 4 cuotas; de 121 a 150 días 5 cuotas; de 151 a 180 días 6 cuotas.</fo:block>
                    </fo:table-cell>
                 </fo:table-row>
              </fo:table-body>
           </fo:table>

           <fo:table border-collapse="collapse">
              <fo:table-column column-width="5mm"    border-left="0.5pt solid black"  />
              <fo:table-column column-width="190.9mm" border-right="0.5pt solid black" />
              <fo:table-body>
                 <fo:table-row>
                    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="right" vertical-align="middle" line-height="4.5mm" font-size="11pt">-<fo:leader leader-pattern="space" leader-length="1mm"/>
		       </fo:block>
                    </fo:table-cell>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt" margin-right="1mm">Enfermedades Graves (CAD 3 07 093). Límite de edad 75 años 0 días. Carencia 60 días contados desde la fecha de curse del crédito de consumo asociado al seguro. El monto asegurado corresponderá al valor de la cuota pactada, con un máximo de seis cuotas con un tope de UF 50 por cuota dutante toda la vigencia del crédito.</fo:block>
                    </fo:table-cell>
                 </fo:table-row>
              </fo:table-body>
           </fo:table>
           
           <fo:table border-collapse="collapse">
              <fo:table-column column-width="5mm"    border-left="0.5pt solid black"  />
              <fo:table-column column-width="190.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
	         <fo:table-row>
	            <fo:table-cell >
	   	       <fo:block font-family="Helvetica" text-align="right" vertical-align="middle" line-height="4.5mm" font-size="11pt">-<fo:leader leader-pattern="space" leader-length="1mm"/>
	   	       </fo:block>
	            </fo:table-cell>
	            <fo:table-cell >
	               <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt" margin-right="1mm">Servicio Orientación jurídica telefónca para posesión efectiva (con revisión de documentos) solo para créditos de consumo.</fo:block>
	            </fo:table-cell>
	         </fo:table-row>
	      </fo:table-body>
           </fo:table>
           
           <fo:table border-collapse="collapse">
              <fo:table-column column-width="5mm"    border-left="0.5pt solid black"  />
              <fo:table-column column-width="190.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
	         <fo:table-row>
	            <fo:table-cell >
	   	       <fo:block font-family="Helvetica" text-align="right" vertical-align="middle" line-height="4.5mm" font-size="11pt">-<fo:leader leader-pattern="space" leader-length="1mm"/>
	   	       </fo:block>
	            </fo:table-cell>
	            <fo:table-cell >
	               <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt" margin-right="1mm">En caso de extinción o disminución de deuda por prepago o renegociación del crédito, BCI Seguros devolverá al deudor asegurado la prima que no se hubiere devengado por la extinción de los riesgos, si ello se hubiera producido dentro de los 45 días siguientes al inicio de la cobertura o dentro de un término correspondiente a la décima parte del período de cobertura efectiva del seguro, si ello fuera superior (Circular 1762 de la Superintendencia de Valores y Seguros).</fo:block>
	            </fo:table-cell>
	         </fo:table-row>
	      </fo:table-body>
           </fo:table>
           
           <fo:table border-collapse="collapse">
              <fo:table-column column-width="5mm"    border-left="0.5pt solid black"  />
              <fo:table-column column-width="190.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
	         <fo:table-row>
	            <fo:table-cell >
	   	       <fo:block font-family="Helvetica" text-align="right" vertical-align="middle" line-height="4.5mm" font-size="11pt">-<fo:leader leader-pattern="space" leader-length="1mm"/>
	   	       </fo:block>
	            </fo:table-cell>
	            <fo:table-cell >
	               <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt" margin-right="1mm">En caso de consultas, reclamos y denuncias de siniestro, el asegurado se deberá comunicar con BCI Corredores de Seguros al teléfono (02)5404953 o al e-mail: siniestrosbci@bci.cl, al teléfono del CRI de la Compañía de Seguros 6006000292 - desde celular 02-6799700 o en cualquiera de las oficinas de BCI Seguros Vida S.A.</fo:block>
	            </fo:table-cell>
	         </fo:table-row>
	      </fo:table-body>
           </fo:table>
                                 
           <fo:table border-collapse="collapse">
              <fo:table-column  border-right="0.5pt solid black" border-left="0.5pt solid black"  border-bottom="0.5pt solid black" border-top="0.5pt solid black"/>
              <fo:table-body>
                 <fo:table-row>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" text-align="justify" font-weight="bold" vertical-align="middle" line-height="4.5mm" background-color="#BDBDBD" font-size="11pt">EL ASEGURABLE DECLARA ESTAR EN CONOCIMIENTO:</fo:block>
                    </fo:table-cell>
                 </fo:table-row>
              </fo:table-body>
           </fo:table>


           <fo:table border-collapse="collapse">
              <fo:table-column column-width="5mm"    border-left="0.5pt solid black"  />
              <fo:table-column column-width="190.9mm" border-right="0.5pt solid black" />
              <fo:table-body>
                 <fo:table-row>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">a)</fo:block>
                    </fo:table-cell>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt" margin-right="1mm">Que: 1) La indemnización a que dé lugar la cobertura de Renta por Hospitalización y Enfermedades Graves serán pagadas íntegramente al Banco de Crédito de Inversiones. 2) Que el límite de edad para la cobertura de Desgravamen es de 75 años y para la cobertura de incapacidad total y permanente es de 65 años. Acepto estas condiciones conforme a los términos prescritos en la Norma de Carácter General 124 de la S.V.S. del 22 de noviembre del 2001.</fo:block>
                    </fo:table-cell>
                 </fo:table-row>
              </fo:table-body>
           </fo:table>

           <fo:table border-collapse="collapse">
              <fo:table-column column-width="5mm"    border-left="0.5pt solid black"  />
              <fo:table-column column-width="190.9mm" border-right="0.5pt solid black" />
              <fo:table-body>
                 <fo:table-row>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">b)</fo:block>
                    </fo:table-cell>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt" margin-right="1mm">Que esta solicitud de incorporación, no otorga cobertura hasta haber sido aceptada por Bci Seguros Vida S.A.</fo:block>
                    </fo:table-cell>
                 </fo:table-row>
              </fo:table-body>
           </fo:table>

           <fo:table border-collapse="collapse">
              <fo:table-column column-width="5mm"    border-left="0.5pt solid black"  />
              <fo:table-column column-width="190.9mm" border-right="0.5pt solid black" />
              <fo:table-body>
                 <fo:table-row>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">c)</fo:block>
                    </fo:table-cell>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt" margin-right="1mm">Que la exactitud, efectividad de la información y demás declaraciones contenidas en el presente documento, son factores indispensables para la apreciación de riesgo, por parte de BCI Seguros Vida S.A. y cualquier reticencia, omisión o declaración falsa de mi parte, podrá acarrear la nulidad del contrato.</fo:block>
                    </fo:table-cell>
                 </fo:table-row>
              </fo:table-body>
           </fo:table>


           <fo:table border-collapse="collapse">
              <fo:table-column column-width="5mm"    border-left="0.5pt solid black"  />
              <fo:table-column column-width="190.9mm" border-right="0.5pt solid black" />
              <fo:table-body>
                 <fo:table-row>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">d)</fo:block>
                    </fo:table-cell>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt" margin-right="1mm">La presente Solicitud de Incorporación a estos seguros se hace a petición del suscrito y en ningún caso ha sido considerada como condición para el otorgamiento del (de los) crédito(s) ofrecido(s) o solicitado(s); y además declaro estar en pleno conocimiento de toda la información contenida en la presente Solicitud.</fo:block>
                    </fo:table-cell>
                 </fo:table-row>
              </fo:table-body>
           </fo:table>

           <fo:table border-collapse="collapse">
              <fo:table-column column-width="5mm"    border-left="0.5pt solid black"  />
              <fo:table-column column-width="190.9mm" border-right="0.5pt solid black" />
              <fo:table-body>
                 <fo:table-row>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">e)</fo:block>
                    </fo:table-cell>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt" margin-right="1mm">Del derecho a decidir sobre la contratación de los seguros y a la libre elección del intermediario y compañía aseguradora.</fo:block>
                    </fo:table-cell>
                 </fo:table-row>
              </fo:table-body>
           </fo:table>


           <fo:table border-collapse="collapse">
              <fo:table-column   border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"  />
              <fo:table-body>
                 <fo:table-row>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" text-align="left" font-weight="bold" vertical-align="middle" line-height="4.5mm" background-color="#BDBDBD" font-size="11pt">AUTORIZACIÓN:</fo:block>
                    </fo:table-cell>
                 </fo:table-row>
              </fo:table-body>
           </fo:table>

           <fo:table border-collapse="collapse">
              <fo:table-column   border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"  />
              <fo:table-body>
                 <fo:table-row>
                    <fo:table-cell>
                       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" margin-left="1mm" margin-right="2mm" line-height="4.5mm" font-size="11pt">Autorizo  al Banco para remitir a Bci Seguros Vida S.A. y/o Bci Corredores de Seguros S.A. la información pertinente a los montos de los créditos; sus condiciones, estados de servicios de las deudas, montos o saldos insolutos adeudados y demás que fuere menester para dichas operaciones, según lo solicitaren dichas compañías.</fo:block>
                    </fo:table-cell>
                 </fo:table-row>
               </fo:table-body>
            </fo:table>

            <fo:table border-collapse="collapse">
               <fo:table-column   border-top="0.5pt solid black"  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
               <fo:table-body>
                  <fo:table-row>
                     <fo:table-cell >
                        <fo:block font-family="Helvetica" text-align="left" font-weight="bold" vertical-align="middle" line-height="4.5mm" background-color="#BDBDBD" font-size="11pt">DECLARACIÓN:</fo:block>
                     </fo:table-cell>
                  </fo:table-row>
               </fo:table-body>
            </fo:table>


              <fo:table border-collapse="collapse">
                  <fo:table-column   border-top="0.5pt solid black" border-bottom="0.5pt solid black"  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >

                                    <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" margin-left="1mm" margin-right="2mm" line-height="4.5mm" font-size="11pt">Declaro estar dispuesto a someterme a pruebas médicas por cuenta de la Compañía, asímismo autorizo a los médicos, hospital, clínica u otra institución o persona que tenga mis registros personales para que entregue o proporcione la información solicitada por BCI Seguros Vida S.A. A su vez faculto a esta última para que solicite o retire copia de tales antecedentes patológicos, incluso en caso de muerte, conforme a lo dispuesto en la ley número 19.628, artículo 127 del Código Sanitario.</fo:block>

                            </fo:table-cell>

                     </fo:table-row>


                </fo:table-body>
                </fo:table>

                        
            <fo:table border-collapse="collapse">
               <fo:table-column  border-right="0.5pt solid black" border-left="0.5pt solid black"  border-top="0.5pt solid black" border-bottom="0.5pt solid black"/>
               <fo:table-body>
                  <fo:table-row>
                     <fo:table-cell >
                        <fo:block font-family="Helvetica" text-align="left" font-weight="bold" vertical-align="middle" line-height="4.5mm" font-size="11pt" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>PRINCIPALES EXCLUSIONES:</fo:block>
                     </fo:table-cell>
                  </fo:table-row>
               </fo:table-body>
            </fo:table>

            <fo:table border-collapse="collapse">
               <fo:table-column  column-width="1mm" border-left="0.5pt solid black" />           
               <fo:table-column  column-width="194.9mm" border-right="0.5pt solid black"/>
               <fo:table-body>
                  <fo:table-row>
                     <fo:table-cell>
                        <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" margin-right="2mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                     </fo:table-cell>
                     <fo:table-cell >
                        <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" margin-right="2mm" line-height="4.5mm" font-size="11pt">Las exclusiones del seguro se encuentran contenidas en la póliza depositada en el registro de la S.V.S. bajo el código POL 2 05 040 y CAD 08 074 entre las principales se cuenta:</fo:block>
                     </fo:table-cell>
                  </fo:table-row>
               </fo:table-body>
            </fo:table>

            <fo:table border-collapse="collapse">
	       <fo:table-column  column-width="1mm" border-left="0.5pt solid black" />           
	       <fo:table-column  column-width="194.9mm" border-right="0.5pt solid black"  border-bottom="0.5pt solid black"/>
	       <fo:table-body>
	          <fo:table-row>
	             <fo:table-cell>
	                <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" margin-right="2mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                     </fo:table-cell>
                     <fo:table-cell >
                        <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" margin-right="2mm" line-height="4.5mm" font-size="11pt">1) Automutilación, o autolesión. 2) Acto delictivo cometido. en calidad de autor o cómplice, por quien pudiere verse beneficiado por el pago de la cantidad asegurada 3) Realización o participación en una actividad o deporte riesgoso, considerándose como tales aquellos que objetivamente constituyan una flagrante agravación del riesgo y/o se requiera de medidas de protección y/o seguridad para realizarlos. A vía de ejemplo y sin que la enumeración sea taxativa o restrictiva
sino que meramente enunciativa, se considera actividad o deporte riesgoso el manejo de explosivos, mineria subterránea, trabajos en altura o líneas de alta tensión, inmersión submarina, piloto civil, paracaidismo, montañismo, alas delta, benji, parapente, carreras de auto y moto, entre otros. 4) Enfermedades preexistentes, entendiéndose por tales las definidas en el
articulo 2° las Condiciones Generales 5) Una infección oportunista o neoplasma maligno causado o que resulte como consecuencia que el Asegurado estuviere afecto o fuere portador del Sindrome de Inmunodeficiencia Adquirida, cualquiera fuese el momento en que el Asegurado se haya infectado o contraído dicho sindrome. 6) todas las exclusiones indicadas en el condicionado general.</fo:block>
                     </fo:table-cell>
                  </fo:table-row>
               </fo:table-body>
            </fo:table>

			<!--
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              -->
              <fo:table border-collapse="collapse" >
	         <fo:table-column />
	         <fo:table-column />
	         <fo:table-column />
	      
	         <fo:table-body>
	            <fo:table-row>
	               <fo:table-cell >
	                     <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
	                     <fo:block line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="10mm" /><!--<xsl:value-of select="IncorporacionColocacionesVO/fechaSuscripcion"/>--></fo:block>
	                     <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
	                     <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="12mm"/>Fecha</fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
	                  <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
	                  <fo:block line-height="4.5mm" text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
	                  <fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm">Firma del asegurable</fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
	                  <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
                          <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                          <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="4mm"/>    Firma del Corredor</fo:block>	                  
	               </fo:table-cell>
	            </fo:table-row>
	         </fo:table-body>
              </fo:table>
              
              <!--
              <fo:table border-collapse="collapse">
	      	 <fo:table-column/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	      	  <fo:block font-family="Helvetica" text-align="right" font-weight="bold" vertical-align="middle" line-height="4.5mm" font-size="9pt">CONTINUA EN PÁGINA SIGUIENTE</fo:block>
	      	       </fo:table-cell>
	      	    </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
			-->
			
         </fo:flow>
      </fo:page-sequence>


      <!--<xsl:variable name="montoCreditoEnUF" select="IncorporacionColocacionesVO/montoCreditoEnUF" />-->
      <!--  <xsl:if test="$montoCreditoEnUF &lt; 2001"> -->

      <fo:page-sequence master-reference="miCarta">
         <fo:flow flow-name="xsl-region-body">

            <fo:table border-collapse="collapse">
               <fo:table-column column-width="30mm" />
               <fo:table-column column-width="115.9mm" />
               <fo:table-column column-width="50mm"/>
               <fo:table-body>
                  <fo:table-row>
                     <fo:table-cell >
                        <fo:block >
				     <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
            					<xsl:attribute name="src">
      					        <xsl:value-of select="IncorporacionColocacionesVO/logoBciSeguros"/>
                                       		</xsl:attribute>
                                     </fo:external-graphic>
                        </fo:block>
                     </fo:table-cell>
                     <fo:table-cell >
                        <fo:block font-family="Helvetica" font-size="10pt"   font-weight="bold" text-align="center" vertical-align="middle" >SOLICITUD DE INCORPORACIÓN</fo:block>
                        <fo:block font-family="Helvetica" font-size="10pt"   font-weight="bold" text-align="center" vertical-align="middle" >SEGUROS COLOCACIONES</fo:block>
                     </fo:table-cell>
                     <fo:table-cell >
                        <fo:block>
				     <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
                                                <xsl:attribute name="src">
                                       		<xsl:value-of select="IncorporacionColocacionesVO/logoBciCorredoresSeguros"/>
                                       		</xsl:attribute>
                                     </fo:external-graphic>
                        </fo:block>
                     </fo:table-cell>
                  </fo:table-row>
               </fo:table-body>
            </fo:table>

            <fo:table border-collapse="collapse">
	       <fo:table-column  border-right="0.5pt solid black" border-left="0.5pt solid black"  border-top="0.5pt solid black" border-bottom="0.5pt solid black"/>
	       <fo:table-body>
	          <fo:table-row>
	             <fo:table-cell >
	                <fo:block font-family="Helvetica" text-align="left" font-weight="bold" vertical-align="middle" line-height="4.5mm" font-size="11pt" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>CONDICIONES DE ASEGURAMIENTO PARA CREDITOS SUPERIORES A UF 2.000 (favor contestar lo siguientes cuestionarios)</fo:block>
	             </fo:table-cell>
	          </fo:table-row>
	       </fo:table-body>
            </fo:table>
            
            <fo:table border-collapse="collapse" text-align="left" >
	       <fo:table-column   border-bottom="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
	       <fo:table-body>
	          <fo:table-row>
	             <fo:table-cell >
	                <fo:block font-family="Helvetica"  font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" margin-top="1mm" margin-bottom="1mm" line-height="4.5mm" >Declaro conocer y aceptar que la falta de entrega o entrega de información inexacta a la fecha de curse de esta operación crediticia, relativa al estado de salud, capacidades funcionales, realización de ocupaciones, actividades y/o deportes riesgosos, puede influir en la correcta apreciación y evaluación de esta solicitud y por lo tanto acepto informar a la Compañía Aseguradora: a) de cualquier enfermedad y/o pérdida total, física o funcional de órganos mediante la Declaración Personal de Salud (D.P.S.) registrada a continuación, y me obligo a aportar los antecedentes necesarios para que la Compañía de Seguros realice la evaluación correspondiente b) de cualquier ocupación, actividad y/o deporte que realice, aunque sea en forma esporádica, mediante la Declaración de Deportes y Actividades y/o Declaración de Ocupación registradas a continuación:</fo:block>
                     </fo:table-cell>
                  </fo:table-row>
               </fo:table-body>
            </fo:table>
            
            <fo:table border-collapse="collapse" text-align="left" >
	       <fo:table-column border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
	       <fo:table-body>
	          <fo:table-row>
	             <fo:table-cell >
	                <fo:block font-family="Helvetica" font-weight="bold" font-size="11pt" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>DECLARACIÓN PERSONAL DE SALUD</fo:block>
	             </fo:table-cell>
	          </fo:table-row>
	       </fo:table-body>
	    </fo:table>
	    
	    <fo:table border-collapse="collapse" text-align="left" >
	       <fo:table-column border-left="0.5pt solid black" border-right="0.5pt solid black"/>
	       <fo:table-body>
	          <fo:table-row>
	             <fo:table-cell >
	                <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">¿Ha padecido, se le ha diagnosticado, o tiene conocimiento de sufrir alguna de las siguientes enfermedades:</fo:block>
	                <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">Diabetes, enfermedades al riñón, enfermedades de los huesos o músculos, enfermedades cardiacas, bypass, hipertensión arterial, enfermedades coronarias, soplos cardiacos, arritmias, sobrepeso u obesidad, enfermedades del sistema respiratorio, cáncer, hepatitis (excepto tipo A), enfermedades gastrointestinales como cirrosis hepática, úlcera gástrica, colitis ulcerosa, enfermedades hematológicas como leucemia, linfoma o anemia (excepto la falta de fierro), desordenes nerviosos o mentales, sida, HIV positivo, enfermedades neurológicas como accidente vascular cerebral, epilepsia, enfermedad de alzheimer, alcoholismo o drogadicción?.</fo:block>
	             </fo:table-cell>
	          </fo:table-row>
	        </fo:table-body>
	     </fo:table>
	    
	    
	     <fo:table border-collapse="collapse" text-align="left" >
	        <fo:table-column column-width="0.21cm" border-left="0.5pt solid black"/>
	        <fo:table-column column-width="0.42cm" border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	        <fo:table-column column-width="1.14cm" />
	        <fo:table-column column-width="0.42cm" border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	        <fo:table-column column-width="17.40cm"   border-right="0.5pt solid black"/>
	    
	        <fo:table-body>
	           <fo:table-row>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm"></fo:block>
	              </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm"></fo:block>
	              </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">NO</fo:block>
	              </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm"></fo:block>
	              </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">SI<fo:leader leader-pattern="space" leader-length="2mm"/>Especifique: enfermedad, fecha diagnóstico, médico tratante:</fo:block>
	              </fo:table-cell>
	           </fo:table-row>
	        </fo:table-body>
	     </fo:table>
	    
	    
	    <fo:table border-collapse="collapse" text-align="left" >
	       <fo:table-column border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	       <fo:table-body>
	          <fo:table-row>
	             <fo:table-cell >
	                <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/> </fo:block> 
	                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="2mm" margin-top="20mm" margin-left="1mm"><fo:leader leader-length="14.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
	             </fo:table-cell>
	          </fo:table-row>
	       </fo:table-body>
	     </fo:table>
	    
	     <fo:table border-collapse="collapse" text-align="left" >
	        <fo:table-column border-left="0.5pt solid black" border-right="0.5pt solid black" />
	        <fo:table-body>
	           <fo:table-row>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">¿Ha padecido, se le ha diagnosticado, o tiene conocimiento de sufrir alguna enfermedad no mencionada en la pregunta anterior?.</fo:block>
	              </fo:table-cell>
	           </fo:table-row>
	        </fo:table-body>
	     </fo:table>
	    
	     <fo:table border-collapse="collapse" text-align="left" >
	        <fo:table-column column-width="0.21cm" border-left="0.5pt solid black"/>
	        <fo:table-column column-width="0.42cm" border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	        <fo:table-column column-width="1.14cm" />
	        <fo:table-column column-width="0.42cm" border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	        <fo:table-column column-width="17.40cm"   border-right="0.5pt solid black"/>
	    
	        <fo:table-body>
	           <fo:table-row>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm"></fo:block>
	              </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm"></fo:block>
	              </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">NO</fo:block>
	              </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm"></fo:block>
	              </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">SI<fo:leader leader-pattern="space" leader-length="2mm"/>Especifique: enfermedad, fecha diagnóstico, médico tratante:</fo:block>
	              </fo:table-cell>
	           </fo:table-row>
	        </fo:table-body>
	     </fo:table>
	    
	    <fo:table border-collapse="collapse" text-align="left" >
	       <fo:table-column border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	       <fo:table-body>
	          <fo:table-row>
	             <fo:table-cell >
	                <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/> </fo:block> 
	                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="2mm" margin-top="20mm" margin-left="1mm"><fo:leader leader-length="14.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
	             </fo:table-cell>
	          </fo:table-row>
	       </fo:table-body>
	     </fo:table>
	    
             <fo:table border-collapse="collapse" text-align="left" >
	        <fo:table-column border-left="0.5pt solid black" border-right="0.5pt solid black"/>
	        <fo:table-body>
	           <fo:table-row>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">Peso:<fo:leader leader-pattern="space" leader-length="10mm"/><fo:leader leader-length="3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="2mm"/>Kgs.<fo:leader leader-pattern="space" leader-length="10mm"/>Estatura:<fo:leader leader-pattern="space" leader-length="2mm"/><fo:leader leader-length="2.8cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="2mm"/>cms.</fo:block>
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">¿Ha estado bajo algún tratamiento médico en los últimos 5 años?</fo:block>
	              </fo:table-cell>
	           </fo:table-row>
	        </fo:table-body>
	     </fo:table>
	    
	     <fo:table border-collapse="collapse" text-align="left" >
	        <fo:table-column column-width="0.21cm" border-left="0.5pt solid black"/>
	        <fo:table-column column-width="0.42cm" border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	        <fo:table-column column-width="1.14cm" />
	        <fo:table-column column-width="0.42cm" border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	        <fo:table-column column-width="17.40cm"   border-right="0.5pt solid black"/>
	    
	        <fo:table-body>
	           <fo:table-row>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm"></fo:block>
	              </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm"></fo:block>
	              </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">NO</fo:block>
	              </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm"></fo:block>
	              </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">SI<fo:leader leader-pattern="space" leader-length="2mm"/>¿Diagnóstico, médico tratante?:</fo:block>
	              </fo:table-cell>
	           </fo:table-row>
	        </fo:table-body>
	     </fo:table>
	    
	    <fo:table border-collapse="collapse" text-align="left" >
	       <fo:table-column border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	       <fo:table-body>
	          <fo:table-row>
	             <fo:table-cell >
	                <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/> </fo:block> 
	                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="2mm" margin-top="20mm" margin-left="1mm"><fo:leader leader-length="14.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
	             </fo:table-cell>
	          </fo:table-row>
	       </fo:table-body>
	     </fo:table>
	    
	     <fo:table border-collapse="collapse" text-align="left" >
	        <fo:table-column border-left="0.5pt solid black" border-right="0.5pt solid black" />
	        <fo:table-body>
	           <fo:table-row>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">¿Ha sido sometido a intervenciones quirúrgicas en los últimos 5 años o tiene indicada alguna?</fo:block>
	              </fo:table-cell>
	           </fo:table-row>
	        </fo:table-body>
	     </fo:table>
	    
	     <fo:table border-collapse="collapse" text-align="left" >
	        <fo:table-column column-width="0.21cm" border-left="0.5pt solid black"/>
	        <fo:table-column column-width="0.42cm" border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	        <fo:table-column column-width="1.14cm" />
	        <fo:table-column column-width="0.42cm" border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	        <fo:table-column column-width="17.40cm"   border-right="0.5pt solid black"/>
	    
	        <fo:table-body>
	           <fo:table-row>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm"></fo:block>
	              </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm"></fo:block>
	              </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">NO</fo:block>
	              </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm"></fo:block>
	              </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">SI<fo:leader leader-pattern="space" leader-length="2mm"/>¿Diagnóstico, fecha diagnóstico, médico tratante?:</fo:block>
	              </fo:table-cell>
	           </fo:table-row>
	        </fo:table-body>
	     </fo:table>
	    	    
	    <fo:table border-collapse="collapse" text-align="left" >
	       <fo:table-column border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	       <fo:table-body>
	          <fo:table-row>
	             <fo:table-cell >
	                <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/> </fo:block> 
	                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="2mm" margin-top="20mm" margin-left="1mm"><fo:leader leader-length="14.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
	             </fo:table-cell>
	          </fo:table-row>
	       </fo:table-body>
	     </fo:table>
	     
	     <fo:table border-collapse="collapse" text-align="left" >
	        <fo:table-column border-left="0.5pt solid black" border-right="0.5pt solid black"/>
	        <fo:table-body>
	           <fo:table-row>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">¿Ha estado hospitalizado en los últimos 5 años?</fo:block>
	              </fo:table-cell>
	           </fo:table-row>
	        </fo:table-body>
	     </fo:table>
	    
	     <fo:table border-collapse="collapse" text-align="left" >
	        <fo:table-column column-width="0.21cm" border-left="0.5pt solid black"/>
	        <fo:table-column column-width="0.42cm" border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	        <fo:table-column column-width="1.14cm" />
	        <fo:table-column column-width="0.42cm" border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	        <fo:table-column column-width="17.40cm"   border-right="0.5pt solid black"/>
	    
	        <fo:table-body>
	           <fo:table-row>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm"></fo:block>
	              </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm"></fo:block>
	              </fo:table-cell>
                      <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">NO</fo:block>
	              </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm"></fo:block>
	              </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">SI<fo:leader leader-pattern="space" leader-length="2mm"/>¿Motivo, fecha hospitalización?:</fo:block>
	              </fo:table-cell>
	           </fo:table-row>
	        </fo:table-body>
	     </fo:table>
	    
	    <fo:table border-collapse="collapse" text-align="left" >
	       <fo:table-column border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	       <fo:table-body>
	          <fo:table-row>
	             <fo:table-cell >
	                <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/> </fo:block> 
	                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="2mm" margin-top="20mm" margin-left="1mm"><fo:leader leader-length="14.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
	             </fo:table-cell>
	          </fo:table-row>
	       </fo:table-body>
	     </fo:table>
	     
	     <fo:table border-collapse="collapse" text-align="left" >
	        <fo:table-column border-left="0.5pt solid black" border-right="0.5pt solid black"/>
	        <fo:table-body>
	           <fo:table-row>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">¿Ingiere algún tipo de medicamento en forma habitual?</fo:block>
	              </fo:table-cell>
	           </fo:table-row>
	        </fo:table-body>
	     </fo:table>
	    
	     <fo:table border-collapse="collapse" text-align="left" >
	        <fo:table-column column-width="0.21cm" border-left="0.5pt solid black"/>
	        <fo:table-column column-width="0.42cm" border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	        <fo:table-column column-width="1.14cm" />
	        <fo:table-column column-width="0.42cm" border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	        <fo:table-column column-width="17.40cm"   border-right="0.5pt solid black"/>
	    
	        <fo:table-body>
	           <fo:table-row>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm"></fo:block>
	              </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm"></fo:block>
	              </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">NO</fo:block>
	              </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm"></fo:block>
	              </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">SI<fo:leader leader-pattern="space" leader-length="2mm"/>¿Cuáles?:<fo:leader leader-length="10cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>
	              </fo:table-cell>
	           </fo:table-row>
	        </fo:table-body>
	     </fo:table>
	      
	     <!-- fo:table border-collapse="collapse" text-align="left" >
	        <fo:table-column border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	        <fo:table-body>
	           <fo:table-row>
	              <fo:table-cell >
	                 <fo:block line-height="2mm" ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="center" margin-left="1mm" margin-right="2mm" line-height="2mm"><fo:leader leader-length="19.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
	                 <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	              </fo:table-cell>
	           </fo:table-row>
	        </fo:table-body>
	     </fo:table -->
	    
	     <fo:table border-collapse="collapse" text-align="left" >
	        <fo:table-column border-left="0.5pt solid black" border-right="0.5pt solid black" border-top="0.5pt solid black" border-bottom="0.5pt solid black"/>
	        <fo:table-body>
	           <fo:table-row>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">Declaro que estoy en conocimiento y acepto que ninguno de los seguros solicitados otorgarán cobertura por enfermedades preexistentes (indicadas o no en esta declaración) a la fecha de suscripción de esta solicitud.</fo:block>
	              </fo:table-cell>
	           </fo:table-row>
	        </fo:table-body>
             </fo:table>
             
           <fo:table border-collapse="collapse" text-align="left" >
              <fo:table-column border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
              <fo:table-body>
                 <fo:table-row>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD">DECLARACIÓN DE DEPORTES Y ACTIVIDADES</fo:block>
                    </fo:table-cell>
                 </fo:table-row>
              </fo:table-body>
           </fo:table>
 
           <fo:table border-collapse="collapse" text-align="left" >
              <fo:table-column border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">Declaro como asegurable aceptar que los seguros solicitados no otorgarán cobertura si el siniestro ocurre durante la realización de los siguientes deportes o actividades aunque los practique en forma ocasional y/o esporádica: inmersiones subacuáticas, alas delta, parapente, paracaidismo, bengi, montañismo, boxeo, carreras de velocidad (auto, moto, embarcaciones acuáticas, bicicleta, ski de nieve); esquí en helicóptero, carreras de caballo, rodeo, bombero, piloto o pasajero de aviación civil, pasajero en aviación comercial en vuelos no regulares o de itinerario no establecido.</fo:block>
                          <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
           </fo:table>

           <fo:table border-collapse="collapse" text-align="left" >
              <fo:table-column column-width="9.40cm" border-left="0.5pt solid black" />
              <fo:table-column column-width="0.21cm" />
              <fo:table-column column-width="0.42cm" border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black"/>
              <fo:table-column column-width="1.14cm" />
              <fo:table-column column-width="0.42cm" border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black"/>             
              <fo:table-column column-width="8cm" border-left="0.5pt solid black" border-right="0.5pt solid black"/> 
              <fo:table-body>
                 <fo:table-row>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">¿Practica otros deportes o actividades riesgosas?</fo:block>
                    </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm"></fo:block>
	              </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm"></fo:block>
	              </fo:table-cell>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" font-size="11pt" text-align="right" margin-left="1mm" margin-right="2mm" line-height="4.5mm">NO</fo:block>
                    </fo:table-cell>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm"></fo:block>
                    </fo:table-cell>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">SI<fo:leader leader-pattern="space" leader-length="2mm"/>¿Cuáles?: </fo:block>
                    </fo:table-cell>             
                 </fo:table-row>
              </fo:table-body>
           </fo:table>
           
	    <fo:table border-collapse="collapse" text-align="left" >
	       <fo:table-column border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	       <fo:table-body>
	          <fo:table-row>
	             <fo:table-cell >
	                <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/> </fo:block> 
	                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="2mm" margin-top="20mm"><fo:leader leader-length="19.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                        <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/> </fo:block> 
	             </fo:table-cell>
	          </fo:table-row>
	       </fo:table-body>
	     </fo:table>

           <fo:table border-collapse="collapse" text-align="left" >
              <fo:table-column  border-bottom="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
              <fo:table-body>
                 <fo:table-row>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>DECLARACIÓN DE OCUPACIÓN</fo:block>
                    </fo:table-cell>
                 </fo:table-row>
              </fo:table-body>
           </fo:table>

           <fo:table border-collapse="collapse" text-align="left" >
              <fo:table-column  border-bottom="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
              <fo:table-column  border-bottom="0.5pt solid black" border-right="0.5pt solid black"/>
              <fo:table-body>
                 <fo:table-row>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" font-size="11pt"  text-align="left" margin-left="1mm" margin-right="2mm" >Profesión o actividad:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><!--<xsl:value-of select="IncorporacionColocacionesVO/profesionCliente"/>--></fo:inline></fo:block>
                     </fo:table-cell>
                     <fo:table-cell >
                        <fo:block font-family="Helvetica" font-size="11pt"  text-align="left" margin-left="1mm" margin-right="2mm" >Cargo que ocupa <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><!--<xsl:value-of select="IncorporacionColocacionesVO/cargoCliente"/>--></fo:inline></fo:block>
                     </fo:table-cell>
                  </fo:table-row>                
               </fo:table-body>
            </fo:table>
            
           <fo:table border-collapse="collapse" text-align="left" >
              <fo:table-column  border-bottom="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
              <fo:table-body>
                 <fo:table-row>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" font-size="11pt"  text-align="left" margin-left="1mm" margin-right="2mm" >Indique lugar donde desarrollo su actividad:</fo:block>
                     </fo:table-cell>
                     <fo:table-cell >
                        <fo:block font-family="Helvetica" font-size="11pt"  text-align="left" margin-left="1mm" margin-right="2mm" ></fo:block>
                     </fo:table-cell>
                  </fo:table-row>                  
               </fo:table-body>
            </fo:table>            

            <fo:table border-collapse="collapse" text-align="left" >
               <fo:table-column border-left="0.5pt solid black" border-right="0.5pt solid black"/>
               <fo:table-body>
                  <fo:table-row>
                     <fo:table-cell >
                        <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                        <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">¿En su actividad usted tiene que: levantar o mover objetos de gran peso, realizar trabajos bajo tierra o a gran altura, manejar sustancias: corrosivas, tóxicas, ácidos, pesticidas, petróleos; entrar en contacto con sustancias radioactivas o equipos con elementos radioactivos, trabajar con o en proximidad a materiales explosivos, realizar trabajos con elementos de mediana o alta tensión, manejar maquinaria o implementos de corte en general, portar arma, realizar faenas de pesca en alta mar, extinguir incendios, transportar caudales o sumas importantes de dinero, realizar viajes al extranjero a zonas en conflicto, utilizar (como piloto o pasajero) aviones o helicópteros privados o en vuelos no regulares o de itinerario no establecido?</fo:block>
                        <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                     </fo:table-cell>
                  </fo:table-row>
               </fo:table-body>
            </fo:table>

            <fo:table border-collapse="collapse" text-align="left" >
               <fo:table-column column-width="0.21cm"  border-left="0.5pt solid black"/>
               <fo:table-column column-width="0.42cm"  border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black"/>
               <fo:table-column column-width="1.14cm"  />
               <fo:table-column column-width="0.42cm"  border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black"/>
               <fo:table-column column-width="17.40cm" border-right="0.5pt solid black"/>

               <fo:table-body>
                  <fo:table-row>
                     <fo:table-cell >
                        <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm"></fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                         <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm"></fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                         <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">NO</fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                         <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm"></fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                         <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">SI<fo:leader leader-pattern="space" leader-length="2mm"/>En caso afirmativo especifique:</fo:block>
                      </fo:table-cell>
                  </fo:table-row>
               </fo:table-body>
            </fo:table>

	    <fo:table border-collapse="collapse" text-align="left" >
	       <fo:table-column border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	       <fo:table-body>
	          <fo:table-row>
	             <fo:table-cell >
	                <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/> </fo:block> 
	                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="2mm" margin-top="20mm"><fo:leader leader-length="18.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                        <fo:block line-height="2mm"><fo:leader leader-pattern="space" leader-length="17cm"/> </fo:block> 
	             </fo:table-cell>
	          </fo:table-row>
	       </fo:table-body>
	     </fo:table>

            <fo:table border-collapse="collapse" text-align="left" >
               <fo:table-column border-left="0.5pt solid black" border-right="0.5pt solid black"
               border-top="0.5pt solid black" border-bottom="0.5pt solid black"/>
               <fo:table-body>
                  <fo:table-row>
                     <fo:table-cell >
                        <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm" >Nota: Queda entendido y convenido por las partes, que el contenido de las anteriores declaraciones del asegurable representa íntegra y fielmente su voluntad</fo:block>
                     </fo:table-cell>
                  </fo:table-row>
               </fo:table-body>
            </fo:table>
           

            <fo:table border-collapse="collapse" text-align="left">
	       <fo:table-column />
	       <fo:table-column />
	       <fo:table-column />
	       <fo:table-body>
	          <fo:table-row>
	             <fo:table-cell >
	                  <!--<fo:block space-before="0.5em"    space-after="0.5em"></fo:block>-->
	                  <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                          <fo:block line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="10mm" /><!--<xsl:value-of select="IncorporacionColocacionesVO/fechaSuscripcion"/>--></fo:block>
	                  <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
	                  <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="12mm"/>Fecha</fo:block>
	                </fo:table-cell>
	                <fo:table-cell >
	                   <!--<fo:block space-before="0.5em"    space-after="0.5em"></fo:block>-->
	                   <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
	                   <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
	                   <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
	                   <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center">Firma del asegurable</fo:block>
	                </fo:table-cell>
	                <fo:table-cell >
	                   <!--<fo:block space-before="0.5em"    space-after="0.5em"></fo:block>-->
	                   <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
	                   <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                       <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm">
						<fo:leader leader-pattern="space" leader-length="15mm"/>                       
                       <fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
	                   <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" >
	                   <fo:leader leader-pattern="space" leader-length="20mm"/> Firma del Corredor
	                   </fo:block>
	                </fo:table-cell>
	             </fo:table-row>
	          </fo:table-body>
	       </fo:table>
	               
	    <fo:table border-collapse="collapse">
	       <fo:table-column/>
	    	  <fo:table-body>
	    	     <fo:table-row>
	    	        <fo:table-cell >
	       	           <!--<fo:block space-before="0.5em"    space-after="0.5em"></fo:block>-->
	    	           <fo:block font-family="Helvetica" text-align="right" font-weight="bold" vertical-align="middle" line-height="4.5mm" font-size="9pt">CONTINUA EN PÁGINA SIGUIENTE</fo:block>
	    	   	</fo:table-cell>
	    	     </fo:table-row>
	    	  </fo:table-body>
	   </fo:table >


          </fo:flow>
       </fo:page-sequence>
       
       

       <fo:page-sequence master-reference="miCarta">
          <fo:flow flow-name="xsl-region-body">

             <fo:table border-collapse="collapse">
                <fo:table-column column-width="30mm" />
                <fo:table-column column-width="115.9mm" />
                <fo:table-column column-width="50mm"/>
                <fo:table-body>
                   <fo:table-row>
                      <fo:table-cell >
                         <fo:block >
				     <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
            					<xsl:attribute name="src">
      					        <xsl:value-of select="IncorporacionColocacionesVO/logoBciSeguros"/>
                                       		</xsl:attribute>
                                     </fo:external-graphic>
                         </fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                         <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACIÓN</fo:block>
                         <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SEGUROS COLOCACIONES</fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                         <fo:block >
				     <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
                                                <xsl:attribute name="src">
                                       		<xsl:value-of select="IncorporacionColocacionesVO/logoBciCorredoresSeguros"/>
                                       		</xsl:attribute>
                                     </fo:external-graphic>
                         </fo:block>
                      </fo:table-cell>
                   </fo:table-row>
                </fo:table-body>
             </fo:table>

             <fo:table border-collapse="collapse"  >
                <fo:table-column column-width="195.9mm"/>
                <fo:table-body>
                   <fo:table-row>
                      <fo:table-cell background-color="#BDBDBD">
                         <fo:block  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" ><fo:leader leader-pattern="space" leader-length="1mm"/>PROPUESTA SEGUROS GENERALES</fo:block>
                      </fo:table-cell>
                   </fo:table-row>
                </fo:table-body>
             </fo:table>
             
             <fo:table border-collapse="collapse"  >
                <fo:table-column column-width="195.9mm"/>
                <fo:table-body>
                   <fo:table-row>
                      <fo:table-cell >
                         <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>DATOS ENTIDAD CONTRATANTE</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
             </fo:table>

              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm">Entidad Contratante: Banco Crédito e Inversiones</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm">Sucursal/Oficina:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionColocacionesVO/sucursal" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm" margin-left="1mm">Ejecutivo:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionColocacionesVO/ejecutivo" /></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm" margin-left="1mm">Jefe Sucursal/Oficina:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:if test="IncorporacionColocacionesVO/deudorDirecto = 'true'"><xsl:value-of select="IncorporacionColocacionesVO/jefeOficina" /></xsl:if></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>




              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="195,91mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>


                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" margin-left="1mm" line-height="4.5mm">ASEGURABLE</fo:block>
                            </fo:table-cell>
                      </fo:table-row>

                </fo:table-body>
               </fo:table>


              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="138.9mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="57mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Nombre Completo:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionColocacionesVO/nombreCliente" /></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Rut:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionColocacionesVO/rutCliente" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="80mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
                  <fo:table-column column-width="12mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-column column-width="0.42cm"  border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black"/>
                  <fo:table-column column-width="2.14cm" border-top="0.5pt solid black"   />
                  <fo:table-column column-width="0.42cm"  border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black"/>
                  <fo:table-column column-width="2.14cm" border-top="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                 <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Fecha Nacimiento:<fo:leader leader-pattern="space" leader-length="1mm"/>
                                    <fo:inline font-weight="bold"><xsl:value-of select="IncorporacionColocacionesVO/fechaNacimientoCliente" /></fo:inline>
                                 </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">sexo:<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
			       <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><xsl:if test="IncorporacionColocacionesVO/deudorDirecto = 'true'"><xsl:if test="IncorporacionColocacionesVO/genero = 'true'"></xsl:if></xsl:if></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
			       <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Masculino</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
			       <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><xsl:if test="IncorporacionColocacionesVO/deudorDirecto = 'true'"><xsl:if test="IncorporacionColocacionesVO/genero = 'false'"></xsl:if></xsl:if></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
			       <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Femenino</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Estado Civil:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:if test="IncorporacionColocacionesVO/deudorDirecto = 'true'"><xsl:value-of select="IncorporacionColocacionesVO/estadoCivilCliente" /></xsl:if></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"  text-align="left" margin-left="1mm" line-height="4.5mm">Domicilio:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:if test="IncorporacionColocacionesVO/deudorDirecto = 'true'"><xsl:value-of select="substring(IncorporacionColocacionesVO/direccion,0,32)" /></xsl:if></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
               </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Ciudad:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:if test="IncorporacionColocacionesVO/deudorDirecto = 'true'"><xsl:value-of select="substring(IncorporacionColocacionesVO/ciudad,0,20)" /></xsl:if></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Comuna:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:if test="IncorporacionColocacionesVO/deudorDirecto = 'true'"><xsl:value-of select="substring(IncorporacionColocacionesVO/comuna,0,20)" /></xsl:if></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Teléfono:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:if test="IncorporacionColocacionesVO/deudorDirecto = 'true'"><xsl:value-of select="IncorporacionColocacionesVO/telefono" /></xsl:if></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>


              <fo:table border-collapse="collapse"  >
                  <fo:table-column column-width="195.9mm"/>

                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell background-color="#C5D7E4">
                                    <fo:block  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>PRODUCTOS Y/O COBERTURA A CONTRATAR EN BCI SEGUROS GENERALES S.A</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
               </fo:table>



              <fo:table border-collapse="collapse"  >
                  <fo:table-column column-width="195.9mm"/>

                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt"  text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>
                                    Por el presente instrumento, solicito la incorporación del asegurable identificado anteriormente, a la póliza Colectiva respectiva de BCI Seguros Generales S.A, según producto identificado a continuación:
                                    </fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
               </fo:table>
               
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="69.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="54.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="33.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="38.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>                             
                         <fo:table-cell >
                            <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">Producto</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" line-height="4.5mm"></fo:block>
                         </fo:table-cell>
                         <fo:table-cell >
                            <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">Capital Asegurado</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" line-height="4.5mm"></fo:block>
                         </fo:table-cell>
                         <fo:table-cell >
                            <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">Prima Bruta</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" line-height="4.5mm">Mensual UF</fo:block>
                         </fo:table-cell>
                         <fo:table-cell >
                            <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">Comisión de</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">intermediación %</fo:block>
                         </fo:table-cell>
                      </fo:table-row>
                   </fo:table-body>
                </fo:table>              

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="1.8mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="0.42cm"  border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black"/>
                  <fo:table-column column-width="63.475mm" border-top="0.5pt solid black"  />
                  <fo:table-column column-width="54.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="33.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="38.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" />

                  <fo:table-body>
                      <fo:table-row>
                         <fo:table-cell >
			    <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" line-height="4.5mm"></fo:block>
                         </fo:table-cell>
                         <fo:table-cell >
			    <xsl:variable name="primaBrutaSeguroCesantiaInvoluntaria" select="IncorporacionColocacionesVO/primaBrutaSeguroCesantiaInvoluntaria" />
			    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">
			       <xsl:if test="IncorporacionColocacionesVO/deudorDirecto = 'true'"><xsl:if  test="$primaBrutaSeguroCesantiaInvoluntaria &gt; 0"></xsl:if></xsl:if>
			    </fo:block>
			    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" line-height="4.5mm"></fo:block>
                         </fo:table-cell>
                         <fo:table-cell >
                            <fo:block  font-family="Helvetica" font-size="11pt"   text-align="justify" margin-left="1mm" line-height="4.5mm">CESANTIA INVOLUNTARIA (POL</fo:block>
                         </fo:table-cell>
                         <fo:table-cell >
                            <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">Hasta 4 cuotas del crédito</fo:block>
                         </fo:table-cell>
                         <fo:table-cell >
                            <fo:block >
                               <xsl:variable name="primaBrutaSeguroCesantiaInvoluntaria" select="IncorporacionColocacionesVO/primaBrutaSeguroCesantiaInvoluntaria" />
                               <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold">
                               <xsl:if  test="$primaBrutaSeguroCesantiaInvoluntaria &gt; 0">
                               <xsl:if test="IncorporacionColocacionesVO/deudorDirecto = 'true'">
                               <xsl:value-of select='format-number(IncorporacionColocacionesVO/primaBrutaSeguroCesantiaInvoluntaria, "###.###.##0,0000","decimal")'/>
                               </xsl:if>
                               </xsl:if></fo:inline>
                               </fo:block>
                               <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm"></fo:block>
                            </fo:block>
                         </fo:table-cell>
                         <fo:table-cell >
                            <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">15 %</fo:block>
                            <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" line-height="4.5mm"></fo:block>
                         </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse" text-align="left">
	         <fo:table-column column-width="69.475mm" border-left="0.5pt solid black"   />
	         <fo:table-column column-width="54.475mm" border-left="0.5pt solid black" />
	         <fo:table-column column-width="33.475mm" border-left="0.5pt solid black" />
	         <fo:table-column column-width="38.475mm" border-left="0.5pt solid black" border-right="0.5pt solid black" />
	      
	         <fo:table-body>
	            <fo:table-row>
	               <fo:table-cell >
	                  <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"> 1 90 031, POL 1 91 057, CAL 1 93 037)</fo:block >
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">individualizado(Tope UF 25</fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block >	                     
	                     <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"></fo:block>
	                  </fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm"></fo:block>
	                  <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" line-height="4.5mm"></fo:block>
	               </fo:table-cell>
	            </fo:table-row>
	         </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
	         <fo:table-column column-width="69.475mm" border-left="0.5pt solid black"   />
	         <fo:table-column column-width="54.475mm" border-left="0.5pt solid black" />
	         <fo:table-column column-width="33.475mm" border-left="0.5pt solid black" />
	         <fo:table-column column-width="38.475mm" border-left="0.5pt solid black" border-right="0.5pt solid black" />
	      
	         <fo:table-body>
	            <fo:table-row>
	               <fo:table-cell >
	                  <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"></fo:block >
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm"> por cuota)</fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block >	                     
	                     <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"></fo:block>
	                  </fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm"></fo:block>
	                  <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" line-height="4.5mm"></fo:block>
	               </fo:table-cell>
	            </fo:table-row>
	         </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse"  >
                  <fo:table-column column-width="195.9mm"/>

                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black" font-family="Helvetica" font-size="11pt"    font-weight="bold" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>VIGENCIA DE LOS SEGUROS</fo:block>
                            </fo:table-cell>
                      </fo:table-row>

                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block   border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt"    text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>Desde: la fecha del otorgamiento del crédito</fo:block>
                            </fo:table-cell>
                      </fo:table-row>

                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block     border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt"  text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>Hasta: el día en que se produzca cualquiera de las dos circunstancias siguientes</fo:block>
                            </fo:table-cell>
                      </fo:table-row>

                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block     border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt"  text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>
                                    1) Que el asegurado cumpla la edad de permanencia de cada cobertura,
                                    </fo:block>
                            </fo:table-cell>
                      </fo:table-row>


                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block   border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica"    font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>
                                    2) Que se extinga el crédito que dio origen al seguro.
                                    </fo:block>
                            </fo:table-cell>
                      </fo:table-row>


                </fo:table-body>
               </fo:table>






              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" margin-left="1mm" >FORMA DE PAGO</fo:block>
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
              </fo:table>



              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>
                         <fo:table-cell >
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Autorizo que el monto de las primas correspondientes a los seguros elegidos, sean cargados en el pago del crédito solicitado, bajo el Nro. de Operación: <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionColocacionesVO/numeroCredito" />  </fo:inline></fo:block>
                         </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>




              <fo:table border-collapse="collapse"  >
                  <fo:table-column column-width="195.9mm"/>

                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell background-color="#BDBDBD">
                                    <fo:block  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>CARACTERISTICAS DEL PRODUCTO</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
               </fo:table>




              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">
                                    Periodo de actividad mínima para invocar al seguro:</fo:inline> 6 meses con contrato indefinido con un mismo empleador. <fo:inline font-weight="bold">Carencia : </fo:inline>60 días desde la contratación del crédito o dos cuotas mensuales. Período de <fo:inline font-weight="bold"> Cesantía/Incapacidad cubierto: </fo:inline> Cuatro cuotas mensuales. <fo:inline font-weight="bold">Edad de ingreso:</fo:inline> entre 18 y 64 años.<fo:inline font-weight="bold"> Permanencia: </fo:inline>Hasta los 64 años 364 días.
                                    </fo:block>

                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
                                    1.<fo:leader leader-pattern="space" leader-length="1mm"/>
                                    <fo:inline text-decoration="underline" margin-left="2mm">Cobertura:</fo:inline>
                                    </fo:block>

                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
                                    a)<fo:leader leader-pattern="space" leader-length="1mm"  margin-left="2mm"/>
                                    <fo:inline font-weight="bold">Trabajadores Dependientes </fo:inline> cesantía involuntaria por alguna de las causales de los números 1 y 6 del artículo 159 o el inciso 1 del artículo 161, ambos del Código del Trabajo. En presencia de la situación prevista en el artículo 159 nro. 1, será necesario acreditar en el finiquito respectivo el pago de al menos 2/3(dos tercios) de la indemnización que hubiese correspondido en caso de heberse imputado la causal establecida en el inciso 1 del articulo 161 del mismo código.
                                    </fo:block>
                                    
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
				    b)<fo:leader leader-pattern="space" leader-length="1mm"/>
				    <fo:inline font-weight="bold">Trabajadores Independientes </fo:inline>
				    incapacidad temporal producida por una enfermedad de origen infeccioso o accidente que cause el otorgamiento de una licencia médica de reposo superior a 30 días. El número de cuotas a indemnizar se regirá de acuerdo a la tabla que se representa a continuación:
				    </fo:block>
				    
				    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
				    
				    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
				    <fo:leader leader-pattern="space" leader-length="1mm"/>
				    <fo:inline text-decoration="underline">Tiempo de Reposo:</fo:inline>
				                                        </fo:block>
				    
				    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
				    <fo:leader leader-pattern="space" leader-length="1mm"/>
				    De 31 a 60 días; 1 cuota</fo:block>
				    
				    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
				    <fo:leader leader-pattern="space" leader-length="1mm"/>
				    De 61 a 90 días; 2 cuotas</fo:block>
				    
				    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
				    <fo:leader leader-pattern="space" leader-length="1mm"/>
				    De 91 a 120 días; 3 cuotas</fo:block>
				    
				    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
				    <fo:leader leader-pattern="space" leader-length="1mm"/>
				    Más de  121 días; 4 cuotas</fo:block>
				    
				    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
				    
				    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
				    2.<fo:leader leader-pattern="space" leader-length="1mm"/>
				    <fo:inline text-decoration="underline" margin-left="2mm">Plazo Máximo de presentación de antecedentes:</fo:inline>Para la acreditación inicial del siniestro, en caso de trabajadores dependientes el plazo será de 180 días corridos contandos desde la fecha de término de la relación laboral o fecha d einicio de licencia médica para trabajadores independientes. Posteriormente, para cobrar las cuotas siguientes el plazo es de 45 días corridos posteriores a la fecha de facturación de cada cuota reclamada.
				    </fo:block>
				    
				    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
				    3.<fo:leader leader-pattern="space" leader-length="1mm"/>
				    <fo:inline text-decoration="underline" margin-left="2mm">Antecedentes requeridos para la acreditación del siniestro y el pago de cuotas:</fo:inline>
				    </fo:block>
				    
				    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
				    a)<fo:leader leader-pattern="space" leader-length="1mm"/>
				    En caso de Trabajador Dependiente: Copia de finiquito firmado original ante notario, certificado de cotizaciones de la AFP o INP con las doce ultimas liquidaciones (posterior al 20 del mes a cobrar), inscripción en el registro municipal de cesantes y/o solictud de pago del subsidio de cesantía. Por caa una de las cuotas en que se solicite el pago del seguro, se debe presentar el certificado de la AFP o INP señalado anteriormente, última colilla del pago de sbsidio de cesantía.
                                    </fo:block>				    
                             </fo:table-cell >
                                    
                                    </fo:table-row>
				                    </fo:table-body>
              </fo:table>
              
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	      
	      <fo:table border-collapse="collapse" >
	         <fo:table-column />
	         <fo:table-column />
	         <fo:table-column />
	      
	         <fo:table-body>
	            <fo:table-row>
	               <fo:table-cell >
	                  <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
                          <fo:block line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="10mm" /><!--<xsl:value-of select="IncorporacionColocacionesVO/fechaSuscripcion"/>--></fo:block>
	                  <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
	                  <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="12mm"/>Fecha</fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
	                  <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
	                  <fo:block line-height="4.5mm" text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
	                  <fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm">Firma del asegurable</fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
	                  <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
                          <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
	                  <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="5mm"/>Firma del Corredor</fo:block>
	               </fo:table-cell>
	            </fo:table-row>
	         </fo:table-body>
	      </fo:table>
	                    
	      <fo:table border-collapse="collapse">
	      	 <fo:table-column/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	      	  <fo:block font-family="Helvetica" text-align="right" font-weight="bold" vertical-align="middle" line-height="4.5mm" font-size="9pt">CONTINUA EN PÁGINA SIGUIENTE</fo:block>
	      	       </fo:table-cell>
	      	    </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
              
           </fo:flow>
	</fo:page-sequence>
	             	            	      
	<fo:page-sequence master-reference="miCarta">
           <fo:flow flow-name="xsl-region-body">
                      
              <fo:table border-collapse="collapse">
	         <fo:table-column column-width="30mm" />
	         <fo:table-column column-width="115.9mm" />
	         <fo:table-column column-width="50mm"/>
	         <fo:table-body>
	            <fo:table-row>
	               <fo:table-cell >
	                  <fo:block >
				     <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
            					<xsl:attribute name="src">
      					        <xsl:value-of select="IncorporacionColocacionesVO/logoBciSeguros"/>
                                       		</xsl:attribute>
                                     </fo:external-graphic>
	                  </fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACIÓN</fo:block>
	                  <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SEGUROS COLOCACIONES</fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block >
				     <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
                                                <xsl:attribute name="src">
                                       		<xsl:value-of select="IncorporacionColocacionesVO/logoBciCorredoresSeguros"/>
                                       		</xsl:attribute>
                                     </fo:external-graphic>
	                  </fo:block>
	               </fo:table-cell>
	            </fo:table-row>
	         </fo:table-body>
             </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                 <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >                                  
                          <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
                          b)<fo:leader leader-pattern="space" leader-length="1mm"/>
                          En caso de Trabajador independiente: licencia médica con el número de dias de reposo, copia de la documentación presentada al sistema de salud previsional, declaración jurada simple de su estado de salud. No se cubrirán las licencias médicas curativas extendidas con anterioridad a la contratacón de la cobertura o derivadas de continuación de tratamiento, tampoco se cubren licencias médicas maternales ni licencias médicas por complicaciones de embarazos y tampoco por enfermedad de hijos menores de 1 año. Carencia. 60 días desde la fecha de suscripción del seguro.
                          </fo:block>
                          
                          <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                          <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
                          4.<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <fo:inline text-decoration="underline" margin-left="2mm">Exclusiones:</fo:inline>
                          </fo:block>

                          <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
                          -<fo:leader leader-pattern="space" leader-length="1mm"/>
                          Clientes del banco BCI que habiendo jubilado no realizan actividad profesional documentada en contrato de trabajo o de prestación de servicios.
                          </fo:block>

                          <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
                          -<fo:leader leader-pattern="space" leader-length="1mm"/>
                          Trabajadores del banco BCI y de sus filiales
                          </fo:block>

                          <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
                          Funcionarios de las Fuerzas Armadas, de Orden y Seguridad (Carabineros y Policia de Investigaciones).
                          </fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse"  >
                 <fo:table-column column-width="195.9mm"/>

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell background-color="#BDBDBD">
                          <fo:block  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>COMO ASEGURABLE DECLARA ESTAR EN CONOCIMIENTO:</fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse">
                 <fo:table-column column-width="195.9mm" border-right="0.5pt solid black" />
                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" >
                          1.<fo:leader leader-pattern="space" leader-length="1mm"/>
                          Que la indemnización a que dé lugar la cobertura de <fo:inline font-weight="bold">Cesantia Involuntaria</fo:inline> será pagada integramente al Banco de Créditos e Inversiones. Acepto esas condiciones conforme a los términos prescritos en la Norma de carácter General 124 de la S.V.S. del 22 de noviembre del 2001.
                          </fo:block>

                          <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" >
                          2.<fo:leader leader-pattern="space" leader-length="1mm"/>
                          Que la presente Solicitud de Incorporación de estos seguros se hace a petición del suscrito y en ningún caso ha sido considerada como condición para el otorgamiento del(de los) crédito(s) ofrecido(s) o solicitado(s); y además declaro estar en pleno conocimiento de toda la información contenida en la presente Solicitud.
                          </fo:block>

                          <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" >
                          3.<fo:leader leader-pattern="space" leader-length="1mm"/>
                          Del derecho a decidir sobre la contratación de los seguros y a la libre elección del intermediario y compañia aseguradora.
                          </fo:block>

                          <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" >
                          4.<fo:leader leader-pattern="space" leader-length="1mm"/>
                          Aceptar que esta solicitud, no otorga cobertura hasta haber sido aceptada por BCI Seguros Generales S.A. Que en caso que la tasa de desempleo de los últimos 12 meses móviles contados desde la fecha del mes anterior al de ocurrencia del siniestro, informada por el Instituto Nacional de Estadisticas(INE) sea superior al <fo:inline font-weight="bold">12%</fo:inline>, el monto asegurado será reducido a dos(2) cuotas de crédito como tope máximo de indemnización.
                          </fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse">
                 <fo:table-column column-width="195.9mm" border-right="0.5pt solid black" />
                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" >
                          <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">AUTORIZACIÓN</fo:inline>
                          </fo:block>

                          <fo:block  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" >
                          <fo:leader leader-pattern="space" leader-length="1mm"/>Autorizar  al Banco para remitir a BCI Seguros Generales S.A. y/o BCI Corredores de Seguros S.A. la información pertinente a los montos a los créditos; sus condiciones, estados de servicios de la deuda, montos o saldos insolutos adecuados y demás que fuere menester para dichas operaciones, según lo solicitaren dichas compañias.
                          </fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse">
                 <fo:table-column  border-top="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black" border-bottom="0.5pt solid black" />
                 <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell >
                         <fo:block font-family="Helvetica" text-align="justify" font-weight="bold" font-size="11pt" vertical-align="middle" margin-left="1mm" margin-right="2mm" line-height="4.5mm">La presente solicitud de incorporación será aceptada por BCI Seguros de Vida S.A. en forma inmediata y otorgará cobertura, una vez que la operación crediticia individualizada sea aceptada por el Banco de Crédito e Inversiones.</fo:block>
                      </fo:table-cell>
                   </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <fo:table border-collapse="collapse" text-align="left">
                 <fo:table-column />
                 <fo:table-column />
                 <fo:table-column />

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block line-height="4.5mm" space-before="0.5em"    space-after="0.5em"></fo:block>
                          <fo:block line-height="4.5mm" space-before="0.5em"    space-after="0.5em"></fo:block>
                          <fo:block line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="10mm" /><!--<xsl:value-of select="IncorporacionColocacionesVO/fechaSuscripcion"/>--></fo:block>
                          <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                          <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="12mm"/>Fecha</fo:block>
                       </fo:table-cell>
                       <fo:table-cell >
                          <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                          <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                          <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                          <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                          <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center">Firma del asegurable</fo:block>
                       </fo:table-cell>
                       <fo:table-cell >
                             <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                             <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                             <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                             <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                             <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="4mm"/>    Firma del Corredor</fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>

              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <fo:table border-collapse="collapse">
                 <fo:table-column  border-top="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black" border-bottom="0.5pt solid black"/>
                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block font-family="Helvetica" text-align="center" font-weight="bold" vertical-align="middle" line-height="4.5mm" font-size="11pt" background-color="#BDBDBD">INFORMACION ARTICULOS 57 Y 58 DEL DL Nº 251.</fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse">
                 <fo:table-column   border-right="0.5pt solid black" border-left="0.5pt solid black" border-bottom="0.5pt solid black" />
                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block font-family="Helvetica" text-align="justify" margin-left="1mm" margin-right="2mm" vertical-align="middle" line-height="4.5mm" font-size="11pt">
                          Bci Corredores de Seguros S.A., Rut 78.951.950-1, en mi calidad de Corredor de seguros y en cumplimiento a la ley, informo que durante el año calendario anterior intermedié contratos de seguros con las siguientes Companias de seguros:
<fo:inline font-weight="bold">En Seguros Generales:</fo:inline> El 79,28 % en BCI Seguros Generales S.A., el 7,40 % con la Compañia de Seguros Generales Cardif S.A., el 3.28 % con Aseguradora Magallanes S.A., el 3,24 % con Liberty Compañia de Seguros Generales S.A., el 2,45 % con Royal Sun alliance Seguros S.A., el 1,83 % con Mapfre Seguros Generales SA., el 1,10 % con C.S.G. Penta Security S.A. , el 0,75 % con Consorcio Nacional de Seguros Generales S.A. y otras 1,42 %. <fo:inline font-weight="bold">En Seguros de Vida:</fo:inline> El 65,69 % con Bci Seguros de Vida S.A., el 24,71 % con la Compañia de Seguros de Vida Cardif S.A., el 5,66 % con Chilena Consolidada Seguros de Vida S.A., el 2,02 % en la Interamericana Compañia de Seguros de Vida S.A. , el 1,03 % con Euroamerica Vida
S.A, el 0,42 % con Consorcio Nacional Vida y otras 0,47 %. <fo:inline font-weight="bold">En Renta Vitalicia:</fo:inline> El 25,62 % con Principal Compañia de Seguros de Vida Chile S.A., el 23,50 % con Met Life Chile Seguros de Vida S.A., el 11,25% con Compañia de Seguros de Vida Corp S.A. , el 8,25% con ING Vida S.A., el 6,92 % con Cruz del Sur Vida S.A.,.el 6,57% con Penta Vida Compañia de Seguros de Wda S.A., el 5,78 % con C.S.V Consorcio Nacional de Seguros S.A , el 4,08 % con Bci Seguros Vida S.A. , el 2,54 % con Renta Vida S.A. , el 2,07% con Euroamerica Seguros de Vida S.A. y otras 3.43 %.
Para responder del correcto y cabal cumplimiento de todas mis obligaciones emanadas de la actividad de Corredor de Seguros y en especial de los perjuicios que pueda ocasionar a los asegurados que contraten seguros por mi intermedio se ha emitido Póliza de Responsabilidad Civil N° 4282810 y Póliza de Garantia N° 10009577 en Consorcio Nacional de Seguros S.A.
                          </fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>

           </fo:flow>
        </fo:page-sequence>


        </fo:root>
    </xsl:template>
</xsl:stylesheet>
