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
                          <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACI�N</fo:block>
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
                          <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio N�<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionColocacionesVO/numeroCredito" /></fo:inline></fo:block>
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
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm">Entidad Contratante: Banco Cr�dito e Inversiones</fo:block>
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
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Tel�fono:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionColocacionesVO/telefono" /></fo:inline></fo:block>
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
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Nro. Operaci�n:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionColocacionesVO/numeroCredito" /></fo:inline></fo:block>
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
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Monto del Cr�dito responsabilidad del asegurable:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

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
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" margin-left="1mm">Vigencia Operaci�n: Desde <fo:inline font-weight="bold"><xsl:value-of select="IncorporacionColocacionesVO/vigenciaOperacionDesde" /></fo:inline></fo:block>
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
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" >UF del<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionColocacionesVO/fechaEmision" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(fecha emisi�n)</fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" line-height="4.5mm">Comisi�n de Intermediaci�n:<fo:leader leader-pattern="space" leader-length="2mm"/>25% de la prima</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" line-height="4.5mm">Comisi�n de Recaudaci�n (Receptor Banco BCI):<fo:leader leader-pattern="space" leader-length="2mm"/>UF 0,03 + IVA por recaudaci�n</fo:block>
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
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" line-height="4.5mm">La prima y/o tasa puede variar en funci�n a la evaluaci�n del riesgo por parte de BCI Seguros Vida S.A.</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold">Capital Asegurado:</fo:inline> saldo insoluto de la operaci�n crediticia individualizada a la fecha de siniestro.</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" font-weight="bold" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>SEGUROS ADICIONALES SOLO PARA CR�DITOS DE CONSUMO</fo:block>
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
	                  <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">Saldo insoluto del cr�dito de</fo:block>
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
	      	          <fo:block  font-family="Helvetica" font-size="11pt"   text-align="justify" margin-left="1mm" line-height="4.5mm">Renta por Hospitalizaci�n (POL 2 92015 Alt. G)</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">Hasta 6 cuotas del cr�dito de</fo:block>
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
	     	      	 <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">Hasta 6 cuotas del cr�dito de</fo:block>
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
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="justify" margin-left="1mm" line-height="4.5mm">Desde el momento de la aceptaci�n de la presente solicitud por parte de la compa��a de seguros hasta el d�a en que se produzca una cualquiera de las dos circunstancias siguientes: 1) que el asegurado cumpla la edad l�mite de permanencia de cada cobertura, 2) que se extinga el cr�dito que dio origen al seguro.</fo:block>
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
                          <fo:block   font-family="Helvetica" font-size="11pt" text-align="center" margin-left="1mm" line-height="4.5mm">Nombre completo o Raz�n Social</fo:block>
                          <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                          <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                          <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                       </fo:table-cell>
                       <fo:table-cell >
                          <fo:block   font-family="Helvetica" font-size="11pt" text-align="center" margin-left="1mm" line-height="4.5mm">% Distribuci�n</fo:block>
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
                          <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">En caso que el asegurado no designe beneficiarios, �stos ser�n los herederos legales</fo:block>
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
                          <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Autorizo que el monto de las primas correspondientes a los seguros elegidos, sean cargados en el pago del cr�dito solicitado, bajo el Nro. de Operaci�n <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionColocacionesVO/numeroCredito" />  </fo:inline></fo:block>
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
                          <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Por el presente instrumento, solicito como asegurable mi incorporaci�n a la(s) p�liza(s) colectiva(s) respectiva(s) de BCI Seguros de Vida S.A. seg�n producto(s) identificado(s) precedentemente. Con este objeto otorgo mandato  al Banco de Cr�dito e Inversiones, en adelante "el Mandatario", para que contrate y/o renueve con BCI Seguros Vida S.A., uno o m�s Seguros para el asegurable, intermediados por Bci Corredores de Seguros S.A..<fo:leader leader-pattern="space" leader-length="1mm" />Desde ya, acepto como asegurable todas las condiciones de la contrataci�n del o de los seguro(s), entre �stas, su vigencia, la cobertura del o de los mismos y el cargo de la(s) prima(s) y de cualesquiera otros gastos generados con ocasi�n del o de los mismos, en cualquiera de mis Cuentas Corrientes, o la rebaja correspondiente del o de los cr�ditos que se me concediere(n), de la(s) prima(s), impuestos, comisiones y otros gastos derivados de su contrataci�n y renovaci�n en su caso, en las oportunidades y con la frecuencia que corresponde a los respectivos vencimientos. As� tambi�n, acepto las condiciones de procedencia o improcedencia del pago del o de los seguros pactados en la Compa��a de Seguros y el monto de cobertura sin que al Banco corresponda responsabilidad alguna, para el evento que el(los) seguro(s) no fuese(n) pagado(s), no fuere(n) contratado(s), no fuese(n) renovado(s), o no cumplan los requisitos de asegurabilidad exigidos.</fo:block>
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
	      	          <fo:block font-family="Helvetica" text-align="right" font-weight="bold" vertical-align="middle" line-height="4.5mm" font-size="9pt">CONTINUA EN P�GINA SIGUIENTE</fo:block>
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
                       <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">SOLICITUD DE INCORPORACI�N</fo:block>
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
                       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Coberturas Adicionales al Cr�dito:</fo:block>
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
                       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt" margin-right="1mm" >Doble Capital (POL 2 95 043 CAD 2 92 135): El l�mite de edad para cobertura de fallecimiento es de 75 a�os 0 d�as, y para la Cobertura de Incapacidad Total y Permanente dos tercios es de 65 a�os 0 d�as para hombres y 60 a�os 0 d�as para mujeres.</fo:block>
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
                       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt" margin-right="1mm">Renta por Hospitalizaci�n (POL 2 92 015 Alt. G): L�mite de edad 75 a�os 0 d�as. Carencia 60 d�as contados desde la fecha de curse del cr�dito de consumo asociado al seguro. Los l�mites de indemnizaci�n se definen de acuerdo al per�odo de hospitalizaci�n siguiente: de 4 a 30 d�as 1 cuota; de 31 a 60 d�as 2 cuotas; de 61 a 90 d�as 3 cuotas; de 91 a 120 d�as 4 cuotas; de 121 a 150 d�as 5 cuotas; de 151 a 180 d�as 6 cuotas.</fo:block>
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
                       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt" margin-right="1mm">Enfermedades Graves (CAD 3 07 093). L�mite de edad 75 a�os 0 d�as. Carencia 60 d�as contados desde la fecha de curse del cr�dito de consumo asociado al seguro. El monto asegurado corresponder� al valor de la cuota pactada, con un m�ximo de seis cuotas con un tope de UF 50 por cuota dutante toda la vigencia del cr�dito.</fo:block>
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
	               <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt" margin-right="1mm">Servicio Orientaci�n jur�dica telef�nca para posesi�n efectiva (con revisi�n de documentos) solo para cr�ditos de consumo.</fo:block>
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
	               <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt" margin-right="1mm">En caso de extinci�n o disminuci�n de deuda por prepago o renegociaci�n del cr�dito, BCI Seguros devolver� al deudor asegurado la prima que no se hubiere devengado por la extinci�n de los riesgos, si ello se hubiera producido dentro de los 45 d�as siguientes al inicio de la cobertura o dentro de un t�rmino correspondiente a la d�cima parte del per�odo de cobertura efectiva del seguro, si ello fuera superior (Circular 1762 de la Superintendencia de Valores y Seguros).</fo:block>
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
	               <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt" margin-right="1mm">En caso de consultas, reclamos y denuncias de siniestro, el asegurado se deber� comunicar con BCI Corredores de Seguros al tel�fono (02)5404953 o al e-mail: siniestrosbci@bci.cl, al tel�fono del CRI de la Compa��a de Seguros 6006000292 - desde celular 02-6799700 o en cualquiera de las oficinas de BCI Seguros Vida S.A.</fo:block>
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
                       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt" margin-right="1mm">Que: 1) La indemnizaci�n a que d� lugar la cobertura de Renta por Hospitalizaci�n y Enfermedades Graves ser�n pagadas �ntegramente al Banco de Cr�dito de Inversiones. 2) Que el l�mite de edad para la cobertura de Desgravamen es de 75 a�os y para la cobertura de incapacidad total y permanente es de 65 a�os. Acepto estas condiciones conforme a los t�rminos prescritos en la Norma de Car�cter General 124 de la S.V.S. del 22 de noviembre del 2001.</fo:block>
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
                       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt" margin-right="1mm">Que esta solicitud de incorporaci�n, no otorga cobertura hasta haber sido aceptada por Bci Seguros Vida S.A.</fo:block>
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
                       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt" margin-right="1mm">Que la exactitud, efectividad de la informaci�n y dem�s declaraciones contenidas en el presente documento, son factores indispensables para la apreciaci�n de riesgo, por parte de BCI Seguros Vida S.A. y cualquier reticencia, omisi�n o declaraci�n falsa de mi parte, podr� acarrear la nulidad del contrato.</fo:block>
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
                       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt" margin-right="1mm">La presente Solicitud de Incorporaci�n a estos seguros se hace a petici�n del suscrito y en ning�n caso ha sido considerada como condici�n para el otorgamiento del (de los) cr�dito(s) ofrecido(s) o solicitado(s); y adem�s declaro estar en pleno conocimiento de toda la informaci�n contenida en la presente Solicitud.</fo:block>
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
                       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt" margin-right="1mm">Del derecho a decidir sobre la contrataci�n de los seguros y a la libre elecci�n del intermediario y compa��a aseguradora.</fo:block>
                    </fo:table-cell>
                 </fo:table-row>
              </fo:table-body>
           </fo:table>


           <fo:table border-collapse="collapse">
              <fo:table-column   border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"  />
              <fo:table-body>
                 <fo:table-row>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" text-align="left" font-weight="bold" vertical-align="middle" line-height="4.5mm" background-color="#BDBDBD" font-size="11pt">AUTORIZACI�N:</fo:block>
                    </fo:table-cell>
                 </fo:table-row>
              </fo:table-body>
           </fo:table>

           <fo:table border-collapse="collapse">
              <fo:table-column   border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"  />
              <fo:table-body>
                 <fo:table-row>
                    <fo:table-cell>
                       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" margin-left="1mm" margin-right="2mm" line-height="4.5mm" font-size="11pt">Autorizo  al Banco para remitir a Bci Seguros Vida S.A. y/o Bci Corredores de Seguros S.A. la informaci�n pertinente a los montos de los cr�ditos; sus condiciones, estados de servicios de las deudas, montos o saldos insolutos adeudados y dem�s que fuere menester para dichas operaciones, seg�n lo solicitaren dichas compa��as.</fo:block>
                    </fo:table-cell>
                 </fo:table-row>
               </fo:table-body>
            </fo:table>

            <fo:table border-collapse="collapse">
               <fo:table-column   border-top="0.5pt solid black"  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
               <fo:table-body>
                  <fo:table-row>
                     <fo:table-cell >
                        <fo:block font-family="Helvetica" text-align="left" font-weight="bold" vertical-align="middle" line-height="4.5mm" background-color="#BDBDBD" font-size="11pt">DECLARACI�N:</fo:block>
                     </fo:table-cell>
                  </fo:table-row>
               </fo:table-body>
            </fo:table>


              <fo:table border-collapse="collapse">
                  <fo:table-column   border-top="0.5pt solid black" border-bottom="0.5pt solid black"  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >

                                    <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" margin-left="1mm" margin-right="2mm" line-height="4.5mm" font-size="11pt">Declaro estar dispuesto a someterme a pruebas m�dicas por cuenta de la Compa��a, as�mismo autorizo a los m�dicos, hospital, cl�nica u otra instituci�n o persona que tenga mis registros personales para que entregue o proporcione la informaci�n solicitada por BCI Seguros Vida S.A. A su vez faculto a esta �ltima para que solicite o retire copia de tales antecedentes patol�gicos, incluso en caso de muerte, conforme a lo dispuesto en la ley n�mero 19.628, art�culo 127 del C�digo Sanitario.</fo:block>

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
                        <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" margin-right="2mm" line-height="4.5mm" font-size="11pt">Las exclusiones del seguro se encuentran contenidas en la p�liza depositada en el registro de la S.V.S. bajo el c�digo POL 2 05 040 y CAD 08 074 entre las principales se cuenta:</fo:block>
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
                        <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" margin-right="2mm" line-height="4.5mm" font-size="11pt">1) Automutilaci�n, o autolesi�n. 2) Acto delictivo cometido. en calidad de autor o c�mplice, por quien pudiere verse beneficiado por el pago de la cantidad asegurada 3) Realizaci�n o participaci�n en una actividad o deporte riesgoso, consider�ndose como tales aquellos que objetivamente constituyan una flagrante agravaci�n del riesgo y/o se requiera de medidas de protecci�n y/o seguridad para realizarlos. A v�a de ejemplo y sin que la enumeraci�n sea taxativa o restrictiva
sino que meramente enunciativa, se considera actividad o deporte riesgoso el manejo de explosivos, mineria subterr�nea, trabajos en altura o l�neas de alta tensi�n, inmersi�n submarina, piloto civil, paracaidismo, monta�ismo, alas delta, benji, parapente, carreras de auto y moto, entre otros. 4) Enfermedades preexistentes, entendi�ndose por tales las definidas en el
articulo 2� las Condiciones Generales 5) Una infecci�n oportunista o neoplasma maligno causado o que resulte como consecuencia que el Asegurado estuviere afecto o fuere portador del Sindrome de Inmunodeficiencia Adquirida, cualquiera fuese el momento en que el Asegurado se haya infectado o contra�do dicho sindrome. 6) todas las exclusiones indicadas en el condicionado general.</fo:block>
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
	      	      	  <fo:block font-family="Helvetica" text-align="right" font-weight="bold" vertical-align="middle" line-height="4.5mm" font-size="9pt">CONTINUA EN P�GINA SIGUIENTE</fo:block>
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
                        <fo:block font-family="Helvetica" font-size="10pt"   font-weight="bold" text-align="center" vertical-align="middle" >SOLICITUD DE INCORPORACI�N</fo:block>
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
	                <fo:block font-family="Helvetica"  font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" margin-top="1mm" margin-bottom="1mm" line-height="4.5mm" >Declaro conocer y aceptar que la falta de entrega o entrega de informaci�n inexacta a la fecha de curse de esta operaci�n crediticia, relativa al estado de salud, capacidades funcionales, realizaci�n de ocupaciones, actividades y/o deportes riesgosos, puede influir en la correcta apreciaci�n y evaluaci�n de esta solicitud y por lo tanto acepto informar a la Compa��a Aseguradora: a) de cualquier enfermedad y/o p�rdida total, f�sica o funcional de �rganos mediante la Declaraci�n Personal de Salud (D.P.S.) registrada a continuaci�n, y me obligo a aportar los antecedentes necesarios para que la Compa��a de Seguros realice la evaluaci�n correspondiente b) de cualquier ocupaci�n, actividad y/o deporte que realice, aunque sea en forma espor�dica, mediante la Declaraci�n de Deportes y Actividades y/o Declaraci�n de Ocupaci�n registradas a continuaci�n:</fo:block>
                     </fo:table-cell>
                  </fo:table-row>
               </fo:table-body>
            </fo:table>
            
            <fo:table border-collapse="collapse" text-align="left" >
	       <fo:table-column border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
	       <fo:table-body>
	          <fo:table-row>
	             <fo:table-cell >
	                <fo:block font-family="Helvetica" font-weight="bold" font-size="11pt" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>DECLARACI�N PERSONAL DE SALUD</fo:block>
	             </fo:table-cell>
	          </fo:table-row>
	       </fo:table-body>
	    </fo:table>
	    
	    <fo:table border-collapse="collapse" text-align="left" >
	       <fo:table-column border-left="0.5pt solid black" border-right="0.5pt solid black"/>
	       <fo:table-body>
	          <fo:table-row>
	             <fo:table-cell >
	                <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">�Ha padecido, se le ha diagnosticado, o tiene conocimiento de sufrir alguna de las siguientes enfermedades:</fo:block>
	                <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">Diabetes, enfermedades al ri��n, enfermedades de los huesos o m�sculos, enfermedades cardiacas, bypass, hipertensi�n arterial, enfermedades coronarias, soplos cardiacos, arritmias, sobrepeso u obesidad, enfermedades del sistema respiratorio, c�ncer, hepatitis (excepto tipo A), enfermedades gastrointestinales como cirrosis hep�tica, �lcera g�strica, colitis ulcerosa, enfermedades hematol�gicas como leucemia, linfoma o anemia (excepto la falta de fierro), desordenes nerviosos o mentales, sida, HIV positivo, enfermedades neurol�gicas como accidente vascular cerebral, epilepsia, enfermedad de alzheimer, alcoholismo o drogadicci�n?.</fo:block>
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
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">SI<fo:leader leader-pattern="space" leader-length="2mm"/>Especifique: enfermedad, fecha diagn�stico, m�dico tratante:</fo:block>
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
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">�Ha padecido, se le ha diagnosticado, o tiene conocimiento de sufrir alguna enfermedad no mencionada en la pregunta anterior?.</fo:block>
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
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">SI<fo:leader leader-pattern="space" leader-length="2mm"/>Especifique: enfermedad, fecha diagn�stico, m�dico tratante:</fo:block>
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
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">�Ha estado bajo alg�n tratamiento m�dico en los �ltimos 5 a�os?</fo:block>
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
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">SI<fo:leader leader-pattern="space" leader-length="2mm"/>�Diagn�stico, m�dico tratante?:</fo:block>
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
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">�Ha sido sometido a intervenciones quir�rgicas en los �ltimos 5 a�os o tiene indicada alguna?</fo:block>
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
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">SI<fo:leader leader-pattern="space" leader-length="2mm"/>�Diagn�stico, fecha diagn�stico, m�dico tratante?:</fo:block>
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
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">�Ha estado hospitalizado en los �ltimos 5 a�os?</fo:block>
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
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">SI<fo:leader leader-pattern="space" leader-length="2mm"/>�Motivo, fecha hospitalizaci�n?:</fo:block>
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
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">�Ingiere alg�n tipo de medicamento en forma habitual?</fo:block>
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
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">SI<fo:leader leader-pattern="space" leader-length="2mm"/>�Cu�les?:<fo:leader leader-length="10cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>
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
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">Declaro que estoy en conocimiento y acepto que ninguno de los seguros solicitados otorgar�n cobertura por enfermedades preexistentes (indicadas o no en esta declaraci�n) a la fecha de suscripci�n de esta solicitud.</fo:block>
	              </fo:table-cell>
	           </fo:table-row>
	        </fo:table-body>
             </fo:table>
             
           <fo:table border-collapse="collapse" text-align="left" >
              <fo:table-column border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
              <fo:table-body>
                 <fo:table-row>
                    <fo:table-cell >
                       <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD">DECLARACI�N DE DEPORTES Y ACTIVIDADES</fo:block>
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
                          <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">Declaro como asegurable aceptar que los seguros solicitados no otorgar�n cobertura si el siniestro ocurre durante la realizaci�n de los siguientes deportes o actividades aunque los practique en forma ocasional y/o espor�dica: inmersiones subacu�ticas, alas delta, parapente, paracaidismo, bengi, monta�ismo, boxeo, carreras de velocidad (auto, moto, embarcaciones acu�ticas, bicicleta, ski de nieve); esqu� en helic�ptero, carreras de caballo, rodeo, bombero, piloto o pasajero de aviaci�n civil, pasajero en aviaci�n comercial en vuelos no regulares o de itinerario no establecido.</fo:block>
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
                       <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">�Practica otros deportes o actividades riesgosas?</fo:block>
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
                       <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">SI<fo:leader leader-pattern="space" leader-length="2mm"/>�Cu�les?: </fo:block>
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
                       <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>DECLARACI�N DE OCUPACI�N</fo:block>
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
                       <fo:block font-family="Helvetica" font-size="11pt"  text-align="left" margin-left="1mm" margin-right="2mm" >Profesi�n o actividad:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><!--<xsl:value-of select="IncorporacionColocacionesVO/profesionCliente"/>--></fo:inline></fo:block>
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
                        <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm">�En su actividad usted tiene que: levantar o mover objetos de gran peso, realizar trabajos bajo tierra o a gran altura, manejar sustancias: corrosivas, t�xicas, �cidos, pesticidas, petr�leos; entrar en contacto con sustancias radioactivas o equipos con elementos radioactivos, trabajar con o en proximidad a materiales explosivos, realizar trabajos con elementos de mediana o alta tensi�n, manejar maquinaria o implementos de corte en general, portar arma, realizar faenas de pesca en alta mar, extinguir incendios, transportar caudales o sumas importantes de dinero, realizar viajes al extranjero a zonas en conflicto, utilizar (como piloto o pasajero) aviones o helic�pteros privados o en vuelos no regulares o de itinerario no establecido?</fo:block>
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
                        <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" margin-right="2mm" line-height="4.5mm" >Nota: Queda entendido y convenido por las partes, que el contenido de las anteriores declaraciones del asegurable representa �ntegra y fielmente su voluntad</fo:block>
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
	    	           <fo:block font-family="Helvetica" text-align="right" font-weight="bold" vertical-align="middle" line-height="4.5mm" font-size="9pt">CONTINUA EN P�GINA SIGUIENTE</fo:block>
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
                         <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACI�N</fo:block>
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
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm">Entidad Contratante: Banco Cr�dito e Inversiones</fo:block>
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
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Tel�fono:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:if test="IncorporacionColocacionesVO/deudorDirecto = 'true'"><xsl:value-of select="IncorporacionColocacionesVO/telefono" /></xsl:if></fo:inline></fo:block>
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
                                    Por el presente instrumento, solicito la incorporaci�n del asegurable identificado anteriormente, a la p�liza Colectiva respectiva de BCI Seguros Generales S.A, seg�n producto identificado a continuaci�n:
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
                            <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">Comisi�n de</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">intermediaci�n %</fo:block>
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
                            <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">Hasta 4 cuotas del cr�dito</fo:block>
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
                                    <fo:block   border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt"    text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>Desde: la fecha del otorgamiento del cr�dito</fo:block>
                            </fo:table-cell>
                      </fo:table-row>

                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block     border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt"  text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>Hasta: el d�a en que se produzca cualquiera de las dos circunstancias siguientes</fo:block>
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
                                    2) Que se extinga el cr�dito que dio origen al seguro.
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
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Autorizo que el monto de las primas correspondientes a los seguros elegidos, sean cargados en el pago del cr�dito solicitado, bajo el Nro. de Operaci�n: <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionColocacionesVO/numeroCredito" />  </fo:inline></fo:block>
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
                                    Periodo de actividad m�nima para invocar al seguro:</fo:inline> 6 meses con contrato indefinido con un mismo empleador. <fo:inline font-weight="bold">Carencia : </fo:inline>60 d�as desde la contrataci�n del cr�dito o dos cuotas mensuales. Per�odo de <fo:inline font-weight="bold"> Cesant�a/Incapacidad cubierto: </fo:inline> Cuatro cuotas mensuales. <fo:inline font-weight="bold">Edad de ingreso:</fo:inline> entre 18 y 64 a�os.<fo:inline font-weight="bold"> Permanencia: </fo:inline>Hasta los 64 a�os 364 d�as.
                                    </fo:block>

                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
                                    1.<fo:leader leader-pattern="space" leader-length="1mm"/>
                                    <fo:inline text-decoration="underline" margin-left="2mm">Cobertura:</fo:inline>
                                    </fo:block>

                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
                                    a)<fo:leader leader-pattern="space" leader-length="1mm"  margin-left="2mm"/>
                                    <fo:inline font-weight="bold">Trabajadores Dependientes </fo:inline> cesant�a involuntaria por alguna de las causales de los n�meros 1 y 6 del art�culo 159 o el inciso 1 del art�culo 161, ambos del C�digo del Trabajo. En presencia de la situaci�n prevista en el art�culo 159 nro. 1, ser� necesario acreditar en el finiquito respectivo el pago de al menos 2/3(dos tercios) de la indemnizaci�n que hubiese correspondido en caso de heberse imputado la causal establecida en el inciso 1 del articulo 161 del mismo c�digo.
                                    </fo:block>
                                    
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
				    b)<fo:leader leader-pattern="space" leader-length="1mm"/>
				    <fo:inline font-weight="bold">Trabajadores Independientes </fo:inline>
				    incapacidad temporal producida por una enfermedad de origen infeccioso o accidente que cause el otorgamiento de una licencia m�dica de reposo superior a 30 d�as. El n�mero de cuotas a indemnizar se regir� de acuerdo a la tabla que se representa a continuaci�n:
				    </fo:block>
				    
				    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
				    
				    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
				    <fo:leader leader-pattern="space" leader-length="1mm"/>
				    <fo:inline text-decoration="underline">Tiempo de Reposo:</fo:inline>
				                                        </fo:block>
				    
				    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
				    <fo:leader leader-pattern="space" leader-length="1mm"/>
				    De 31 a 60 d�as; 1 cuota</fo:block>
				    
				    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
				    <fo:leader leader-pattern="space" leader-length="1mm"/>
				    De 61 a 90 d�as; 2 cuotas</fo:block>
				    
				    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
				    <fo:leader leader-pattern="space" leader-length="1mm"/>
				    De 91 a 120 d�as; 3 cuotas</fo:block>
				    
				    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
				    <fo:leader leader-pattern="space" leader-length="1mm"/>
				    M�s de  121 d�as; 4 cuotas</fo:block>
				    
				    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
				    
				    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
				    2.<fo:leader leader-pattern="space" leader-length="1mm"/>
				    <fo:inline text-decoration="underline" margin-left="2mm">Plazo M�ximo de presentaci�n de antecedentes:</fo:inline>Para la acreditaci�n inicial del siniestro, en caso de trabajadores dependientes el plazo ser� de 180 d�as corridos contandos desde la fecha de t�rmino de la relaci�n laboral o fecha d einicio de licencia m�dica para trabajadores independientes. Posteriormente, para cobrar las cuotas siguientes el plazo es de 45 d�as corridos posteriores a la fecha de facturaci�n de cada cuota reclamada.
				    </fo:block>
				    
				    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
				    3.<fo:leader leader-pattern="space" leader-length="1mm"/>
				    <fo:inline text-decoration="underline" margin-left="2mm">Antecedentes requeridos para la acreditaci�n del siniestro y el pago de cuotas:</fo:inline>
				    </fo:block>
				    
				    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
				    a)<fo:leader leader-pattern="space" leader-length="1mm"/>
				    En caso de Trabajador Dependiente: Copia de finiquito firmado original ante notario, certificado de cotizaciones de la AFP o INP con las doce ultimas liquidaciones (posterior al 20 del mes a cobrar), inscripci�n en el registro municipal de cesantes y/o solictud de pago del subsidio de cesant�a. Por caa una de las cuotas en que se solicite el pago del seguro, se debe presentar el certificado de la AFP o INP se�alado anteriormente, �ltima colilla del pago de sbsidio de cesant�a.
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
	      	      	  <fo:block font-family="Helvetica" text-align="right" font-weight="bold" vertical-align="middle" line-height="4.5mm" font-size="9pt">CONTINUA EN P�GINA SIGUIENTE</fo:block>
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
	                  <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACI�N</fo:block>
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
                          En caso de Trabajador independiente: licencia m�dica con el n�mero de dias de reposo, copia de la documentaci�n presentada al sistema de salud previsional, declaraci�n jurada simple de su estado de salud. No se cubrir�n las licencias m�dicas curativas extendidas con anterioridad a la contratac�n de la cobertura o derivadas de continuaci�n de tratamiento, tampoco se cubren licencias m�dicas maternales ni licencias m�dicas por complicaciones de embarazos y tampoco por enfermedad de hijos menores de 1 a�o. Carencia. 60 d�as desde la fecha de suscripci�n del seguro.
                          </fo:block>
                          
                          <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                          <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
                          4.<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <fo:inline text-decoration="underline" margin-left="2mm">Exclusiones:</fo:inline>
                          </fo:block>

                          <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">
                          -<fo:leader leader-pattern="space" leader-length="1mm"/>
                          Clientes del banco BCI que habiendo jubilado no realizan actividad profesional documentada en contrato de trabajo o de prestaci�n de servicios.
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
                          Que la indemnizaci�n a que d� lugar la cobertura de <fo:inline font-weight="bold">Cesantia Involuntaria</fo:inline> ser� pagada integramente al Banco de Cr�ditos e Inversiones. Acepto esas condiciones conforme a los t�rminos prescritos en la Norma de car�cter General 124 de la S.V.S. del 22 de noviembre del 2001.
                          </fo:block>

                          <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" >
                          2.<fo:leader leader-pattern="space" leader-length="1mm"/>
                          Que la presente Solicitud de Incorporaci�n de estos seguros se hace a petici�n del suscrito y en ning�n caso ha sido considerada como condici�n para el otorgamiento del(de los) cr�dito(s) ofrecido(s) o solicitado(s); y adem�s declaro estar en pleno conocimiento de toda la informaci�n contenida en la presente Solicitud.
                          </fo:block>

                          <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" >
                          3.<fo:leader leader-pattern="space" leader-length="1mm"/>
                          Del derecho a decidir sobre la contrataci�n de los seguros y a la libre elecci�n del intermediario y compa�ia aseguradora.
                          </fo:block>

                          <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" >
                          4.<fo:leader leader-pattern="space" leader-length="1mm"/>
                          Aceptar que esta solicitud, no otorga cobertura hasta haber sido aceptada por BCI Seguros Generales S.A. Que en caso que la tasa de desempleo de los �ltimos 12 meses m�viles contados desde la fecha del mes anterior al de ocurrencia del siniestro, informada por el Instituto Nacional de Estadisticas(INE) sea superior al <fo:inline font-weight="bold">12%</fo:inline>, el monto asegurado ser� reducido a dos(2) cuotas de cr�dito como tope m�ximo de indemnizaci�n.
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
                          <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">AUTORIZACI�N</fo:inline>
                          </fo:block>

                          <fo:block  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" >
                          <fo:leader leader-pattern="space" leader-length="1mm"/>Autorizar  al Banco para remitir a BCI Seguros Generales S.A. y/o BCI Corredores de Seguros S.A. la informaci�n pertinente a los montos a los cr�ditos; sus condiciones, estados de servicios de la deuda, montos o saldos insolutos adecuados y dem�s que fuere menester para dichas operaciones, seg�n lo solicitaren dichas compa�ias.
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
                         <fo:block font-family="Helvetica" text-align="justify" font-weight="bold" font-size="11pt" vertical-align="middle" margin-left="1mm" margin-right="2mm" line-height="4.5mm">La presente solicitud de incorporaci�n ser� aceptada por BCI Seguros de Vida S.A. en forma inmediata y otorgar� cobertura, una vez que la operaci�n crediticia individualizada sea aceptada por el Banco de Cr�dito e Inversiones.</fo:block>
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
                          <fo:block font-family="Helvetica" text-align="center" font-weight="bold" vertical-align="middle" line-height="4.5mm" font-size="11pt" background-color="#BDBDBD">INFORMACION ARTICULOS 57 Y 58 DEL DL N� 251.</fo:block>
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
                          Bci Corredores de Seguros S.A., Rut 78.951.950-1, en mi calidad de Corredor de seguros y en cumplimiento a la ley, informo que durante el a�o calendario anterior intermedi� contratos de seguros con las siguientes Companias de seguros:
<fo:inline font-weight="bold">En Seguros Generales:</fo:inline> El 79,28 % en BCI Seguros Generales S.A., el 7,40 % con la Compa�ia de Seguros Generales Cardif S.A., el 3.28 % con Aseguradora Magallanes S.A., el 3,24 % con Liberty Compa�ia de Seguros Generales S.A., el 2,45 % con Royal Sun alliance Seguros S.A., el 1,83 % con Mapfre Seguros Generales SA., el 1,10 % con C.S.G. Penta Security S.A. , el 0,75 % con Consorcio Nacional de Seguros Generales S.A. y otras 1,42 %. <fo:inline font-weight="bold">En Seguros de Vida:</fo:inline> El 65,69 % con Bci Seguros de Vida S.A., el 24,71 % con la Compa�ia de Seguros de Vida Cardif S.A., el 5,66 % con Chilena Consolidada Seguros de Vida S.A., el 2,02 % en la Interamericana Compa�ia de Seguros de Vida S.A. , el 1,03 % con Euroamerica Vida
S.A, el 0,42 % con Consorcio Nacional Vida y otras 0,47 %. <fo:inline font-weight="bold">En Renta Vitalicia:</fo:inline> El 25,62 % con Principal Compa�ia de Seguros de Vida Chile S.A., el 23,50 % con Met Life Chile Seguros de Vida S.A., el 11,25% con Compa�ia de Seguros de Vida Corp S.A. , el 8,25% con ING Vida S.A., el 6,92 % con Cruz del Sur Vida S.A.,.el 6,57% con Penta Vida Compa�ia de Seguros de Wda S.A., el 5,78 % con C.S.V Consorcio Nacional de Seguros S.A , el 4,08 % con Bci Seguros Vida S.A. , el 2,54 % con Renta Vida S.A. , el 2,07% con Euroamerica Seguros de Vida S.A. y otras 3.43 %.
Para responder del correcto y cabal cumplimiento de todas mis obligaciones emanadas de la actividad de Corredor de Seguros y en especial de los perjuicios que pueda ocasionar a los asegurados que contraten seguros por mi intermedio se ha emitido P�liza de Responsabilidad Civil N� 4282810 y P�liza de Garantia N� 10009577 en Consorcio Nacional de Seguros S.A.
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
