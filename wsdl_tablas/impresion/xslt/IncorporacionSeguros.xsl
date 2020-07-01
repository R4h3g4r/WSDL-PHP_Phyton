<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.1" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo"
>
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator=',' />
 
  
    <xsl:template match="IncorporacionSeguros">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="paginaPrincipal" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="10mm" margin-left="10mm" margin-right="10mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="paginaPrincipal">
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
      					        <xsl:value-of select="IncorporacionSeguros/logoBciSeguros"/>
                                       		</xsl:attribute>
                                     </fo:external-graphic>
                          </fo:block>
                       </fo:table-cell>
                       <fo:table-cell >
                          <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACI�N</fo:block>
                          <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SEGUROS COLOCACIONES PARA CREDITO COMERCIAL</fo:block>
                       </fo:table-cell>
                       <fo:table-cell >
                          <fo:block >
				     <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
                                                <xsl:attribute name="src">
                                       		<xsl:value-of select="IncorporacionSeguros/logoBciCorredoresSeguros"/>
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
                          <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio N�<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionSeguros/numeroCredito" /></fo:inline></fo:block>
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
                    </fo:table-row>VCA
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
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm">Sucursal/Oficina:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionSeguros/sucursal" /></fo:inline></fo:block>
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
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm" margin-left="1mm">Ejecutivo:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionSeguros/ejecutivo" />  </fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm" margin-left="1mm">Jefe Sucursal/Oficina:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionSeguros/jefeOficina" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>SEGURO
              </fo:table>

              <!-- fo:table border-collapse="collapse" text-align="left">
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
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold" text-align="center"><xsl:if test="IncorporacionSeguros/solicitaSeguroDesgravamen = 'true'">X</xsl:if></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" font-weight="bold" background-color="#BDBDBD">SI<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold" background-color="#BDBDBD"></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold" text-align="center"><xsl:if test="IncorporacionSeguros/solicitaSeguroDesgravamen = 'false'">X</xsl:if></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm" font-weight="bold" background-color="#BDBDBD" border-right="0.5pt solid black">NO<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
              </fo:table-->             

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" line-height="4.5mm">ASEGURABLE (Solo personas naturales)</fo:block>
                            </fo:table-cell>
                      </fo:table-row>

                </fo:table-body>
               </fo:table>

 <fo:block border-left="0.5pt solid black" border-top="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
                        
            <fo:table border-collapse="collapse" text-align="left">
              <fo:table-column column-width="46.5mm"   border-left="0.5pt solid black" />
              <fo:table-column column-width="6.4mm"   border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" />
              <fo:table-column column-width="45mm"  border-left="0.5pt solid black" />
              <fo:table-column column-width="25.7mm"/>
              <fo:table-column column-width="6.4mm"   border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" />
              <fo:table-column column-width="65.9mm"    border-left="0.5pt solid black" border-right="0.5pt solid black"/>

              <fo:table-body>
                  <fo:table-row>

                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/>DEUDOR DIRECTO</fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:if test="IncorporacionSeguros/deudorDirecto = 'true'">X</xsl:if></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                        </fo:table-cell>                        
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="1mm"/>AVAL</fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:if test="IncorporacionSeguros/deudorDirecto = 'false'">X</xsl:if></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm" border-right="0.5pt solid black"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                        </fo:table-cell>                            


                  </fo:table-row>
            </fo:table-body>
          </fo:table>                   
          <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>


              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="138.9mm" border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="57mm" border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Nombre Completo:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionSeguros/nombreCliente" /></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Rut:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionSeguros/rutCliente" />-<xsl:value-of select="IncorporacionSeguros/digitoVerficadorCliente" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              
          <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
                        
            <fo:table border-collapse="collapse" text-align="left">
              <fo:table-column column-width="16.5mm"   border-left="0.5pt solid black" />
              <fo:table-column column-width="6.4mm"   border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" />
              <fo:table-column column-width="30.7mm"  border-left="0.5pt solid black" />
              <fo:table-column column-width="6.4mm"   border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" />
              <fo:table-column column-width="135.9mm"    border-left="0.5pt solid black" border-right="0.5pt solid black"/>

              <fo:table-body>
                  <fo:table-row>

                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/>Sexo:</fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:if test="IncorporacionSeguros/sexoCliente = 'M'">X</xsl:if></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="1mm"/>Masculino</fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:if test="IncorporacionSeguros/sexoCliente = 'F'">X</xsl:if></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm" border-right="0.5pt solid black"><fo:leader leader-pattern="space" leader-length="1mm"/>Femenino</fo:block>
                        </fo:table-cell>                            


                  </fo:table-row>
            </fo:table-body>
          </fo:table>                   
          <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
          
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="60mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
		  <fo:table-column column-width="60mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>                  
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Fecha Nacimiento:<fo:leader leader-pattern="space" leader-length="1mm"/>
                                     <fo:inline font-weight="bold">
                                     	<xsl:value-of select="IncorporacionSeguros/fechaNacimientoCliente" />
                                     </fo:inline>
                                    </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Estado Civil:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionSeguros/estadoCivilCliente" /></fo:inline></fo:block>
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">email:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionSeguros/email" /></fo:inline></fo:block>
                            </fo:table-cell>                            
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"  text-align="left" margin-left="1mm" line-height="4.5mm">Domicilio:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionSeguros/direccion" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
               </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Comuna:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(IncorporacionSeguros/comuna,0,20)" /></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Ciudad:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(IncorporacionSeguros/ciudad,0,20)" /></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Tel�fono:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionSeguros/telefono" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>


              <!--fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="126.7mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
                  <fo:table-column column-width="6.4mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
                  <fo:table-column column-width="62.8mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>

                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" line-height="4.5mm" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>DESGRAVAMEN (POL 2 05 040)</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" line-height="4.5mm">X</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" line-height="4.5mm" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>CREDITO COMERCIAL</fo:block>
                            </fo:table-cell>
                      </fo:table-row>


                </fo:table-body>
               </fo:table-->

	      <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="1.5mm"  border-left="0.5pt solid black"/>
		  <fo:table-column column-width="6.4mm" border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black"/>                  
                  <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="justify" margin-left="1mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/>El asegurado faculta expresamente a  la compa��a, para que le env�e copia de su certificado de</fo:block>
                            </fo:table-cell>                            
                      </fo:table-row>
                </fo:table-body>
              </fo:table>
                        
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="1.5mm"  border-left="0.5pt solid black"/>
                  <fo:table-column  border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                            </fo:table-cell>                      
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"  text-align="justify" margin-left="1mm"  line-height="4.5mm">cobertura y los  dem�s documentos que forman parte integrante de la p�liza, a la  direcci�n de correo electr�nico individualizada por el asegurado y/o  contratante en este instrumento, con lo cual el suscrito se entender� por recibido, comunicado y/o notificado de la informaci�n pertinente como si fuera en soporte papel. En todo caso el  asegurado podr� siempre solicitar una copia del mismo en el domicilio de la  Compa��a, debiendo la �ltima hacer entrega de ella en el plazo m�ximo de  cinco d�as.</fo:block>
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
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Nro. Operaci�n:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:if test="IncorporacionSeguros/solicitaSeguroDesgravamen = 'true'"><xsl:value-of select="IncorporacionSeguros/numeroCredito" /></xsl:if></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Moneda:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:if test="IncorporacionSeguros/solicitaSeguroDesgravamen = 'true'"><xsl:value-of select="IncorporacionSeguros/glosaMoneda" /></xsl:if></fo:inline></fo:block>
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
                                   <xsl:if test="IncorporacionSeguros/solicitaSeguroDesgravamen = 'true'">
                                    <xsl:variable name="moneda" select="IncorporacionSeguros/moneda" />
                                      <xsl:choose>

                                        <xsl:when test="$moneda = '0998'">
                                           <xsl:value-of select='format-number(IncorporacionSeguros/montoCredito, "###.###.##0,0000","decimal")'/>
                                        </xsl:when>


                                        <xsl:when test="$moneda = '0999'">
                                          <xsl:value-of select='format-number(IncorporacionSeguros/montoCredito, "###.###.##0","decimal")' />
                                        </xsl:when>

                                    </xsl:choose>
                                   </xsl:if>


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
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" margin-left="1mm">Vigencia Operaci�n: Desde <fo:inline font-weight="bold"><xsl:if test="IncorporacionSeguros/solicitaSeguroDesgravamen = 'true'"><xsl:value-of select="IncorporacionSeguros/vigenciaOperacionDesde" /></xsl:if></fo:inline></fo:block>
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" ></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" ></fo:block>
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" ></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm">Hasta <fo:inline font-weight="bold"><xsl:if test="IncorporacionSeguros/solicitaSeguroDesgravamen = 'true'"><xsl:value-of select="IncorporacionSeguros/vigenciaOperacionHasta" /></xsl:if></fo:inline></fo:block>
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm"></fo:block>
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" ></fo:block>
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" ></fo:block>
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
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="40mm"  border-left="0.5pt solid black"/>
                  <fo:table-column  border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" font-weight="bold" margin-left="1mm" line-height="4.5mm">Capital Asegurado:</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" line-height="4.5mm">saldo insoluto de la operaci�n crediticia individualizada a la fecha de siniestro.</fo:block>
                            </fo:table-cell>                            
                      </fo:table-row>
                </fo:table-body>
              </fo:table>              

               <fo:table border-collapse="collapse" text-align="left">
                 <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block   font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm" />IMPORTANTE</fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                 <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Usted se est� incorporando como asegurado a una p�liza o contrato de seguro colectivo cuyas condiciones han sido convenidas por Banco de Cr�dito e Inversiones, directamente con la compa��a de seguros.</fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse" text-align="left">
                 <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Por el presente instrumento, solicito la incorporaci�n a la p�liza Colectiva respectiva, seg�n producto identificado a continuaci�n:</fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>              

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" font-weight="bold" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>SEGUROS CONTRATADOS</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>


              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="89.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="71.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="34.95mm"  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" />

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

                      </fo:table-row>
                </fo:table-body>
              </fo:table>

<fo:table border-collapse="collapse" text-align="left">
	         <fo:table-column column-width="1.8mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
	         <fo:table-column column-width="0.42cm"  border-top="0.5pt solid black"  border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	         <fo:table-column column-width="83.475mm" border-top="0.5pt solid black"  />
	         <fo:table-column column-width="71.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                 <fo:table-column column-width="34.95mm"  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" />
	      <fo:table-column column-width="1mm" border-top="0.5pt solid black"  />
	         <fo:table-body>
	            <fo:table-row>
	               <fo:table-cell >
	      		  <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" line-height="4.5mm"></fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	      	          <xsl:variable name="primBrutaSegDesgrav" select="IncorporacionSeguros/primaBrutaSeguroDesgravamen" />
	      	          <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">
	      	          <xsl:if  test="$primBrutaSegDesgrav &gt; 0">X</xsl:if>
	      		  </fo:block>
	      		  <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" line-height="4.5mm"></fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block  font-family="Helvetica" font-size="11pt"   text-align="justify" margin-left="1mm" line-height="4.5mm">Desgravamen</fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">SEGUN DETALLE</fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block >
			     <xsl:variable name="primBrutaSegDesgrav" select="IncorporacionSeguros/primaBrutaSeguroDesgravamen" />
			     <fo:block    font-family="Helvetica" font-size="11pt" text-align="right" line-height="4.5mm"><fo:inline font-weight="bold">
			     <xsl:if  test="$primBrutaSegDesgrav &gt; 0">
			     <xsl:value-of select='format-number(IncorporacionSeguros/primaBrutaSeguroDesgravamen, "###.###.##0,####","decimal")'/>
			     </xsl:if>
			     </fo:inline></fo:block>
                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left"  margin-left="1mm" line-height="4.5mm"></fo:block></fo:block> 
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm"></fo:block>
	                  <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" line-height="4.5mm"></fo:block>
	               </fo:table-cell>
	            </fo:table-row>
	         </fo:table-body>
	      </fo:table>              
               	<!--  Credito Salud-->
              <fo:table border-collapse="collapse" text-align="left">
	         <fo:table-column column-width="1.8mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
	         <fo:table-column column-width="0.42cm"  border-top="0.5pt solid black"  border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	         <fo:table-column column-width="83.475mm" border-top="0.5pt solid black"  />
	         <fo:table-column column-width="71.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                 <fo:table-column column-width="34.95mm"  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" />
	      <fo:table-column column-width="1mm" border-top="0.5pt solid black"  />
	         <fo:table-body>
	            <fo:table-row>
	               <fo:table-cell >
	      		  <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" line-height="4.5mm"></fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	      	          <xsl:variable name="primBrutaSegCredSal" select="IncorporacionSeguros/primaBrutaSeguroCreditoSalud" />
	      	          <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">
	      	          <xsl:if  test="$primBrutaSegCredSal &gt; 0">X</xsl:if>
	      		  </fo:block>
	      		  <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" line-height="4.5mm"></fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block  font-family="Helvetica" font-size="11pt"   text-align="justify" margin-left="1mm" line-height="4.5mm">Seguro Cr�dito Salud</fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">SEGUN DETALLE</fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block >
			     <xsl:variable name="primBrutaSegCredSal" select="IncorporacionSeguros/primaBrutaSeguroCreditoSalud" />
			     <fo:block    font-family="Helvetica" font-size="11pt" text-align="right" line-height="4.5mm"><fo:inline font-weight="bold">
			     <xsl:if  test="$primBrutaSegCredSal &gt; 0">
			     <xsl:value-of select='format-number(IncorporacionSeguros/primaBrutaSeguroCreditoSalud, "###.###.##0,####","decimal")'/>
			     </xsl:if>
			     </fo:inline></fo:block>
                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left"  margin-left="1mm" line-height="4.5mm"></fo:block></fo:block> 
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm"></fo:block>
	                  <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" line-height="4.5mm"></fo:block>
	               </fo:table-cell>
	            </fo:table-row>
	         </fo:table-body>
	      </fo:table>
	                    
               	<!--  Credito Vida-->
               	<fo:table border-collapse="collapse" text-align="left">
               		<fo:table-column column-width="1.8mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
               		<fo:table-column column-width="0.42cm"  border-top="0.5pt solid black"  border-right="0.5pt solid black" border-left="0.5pt solid black"/>
               		<fo:table-column column-width="83.475mm" border-top="0.5pt solid black"  />
               		<fo:table-column column-width="71.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
               		<fo:table-column column-width="34.95mm"  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" />
               		<fo:table-column column-width="1mm" border-top="0.5pt solid black"  />
               		<fo:table-body>
               			<fo:table-row>
               				<fo:table-cell >
               					<fo:block font-family="Helvetica" font-size="11pt" text-align="justify" line-height="4.5mm"></fo:block>
               				</fo:table-cell>
               				<fo:table-cell >
               					<xsl:variable name="primBrutaSeguroVida" select="IncorporacionSeguros/primaBrutaSeguroVida" />
               					<fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">
               						<xsl:if  test="$primBrutaSeguroVida &gt; 0">X</xsl:if>
               					</fo:block>
               					<fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" line-height="4.5mm"></fo:block>
               				</fo:table-cell>
               				<fo:table-cell >
               					<fo:block  font-family="Helvetica" font-size="11pt"   text-align="justify" margin-left="1mm" line-height="4.5mm">Seguro Cr�dito Vida</fo:block>
               				</fo:table-cell>
               				<fo:table-cell >
               					<fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">UF 1000 </fo:block>
               				</fo:table-cell>
               				<fo:table-cell >
               					<fo:block >
               						<xsl:variable name="primBrutaSeguroVida" select="IncorporacionSeguros/primaBrutaSeguroVida" />
               						<fo:block    font-family="Helvetica" font-size="11pt" text-align="right" line-height="4.5mm"><fo:inline font-weight="bold">
               							<xsl:if  test="$primBrutaSeguroVida &gt; 0">
               								<xsl:value-of select='format-number(IncorporacionSeguros/primaBrutaSeguroVida, "###.###.##0,####","decimal")'/>
               							</xsl:if>
               						</fo:inline></fo:block>
               						<fo:block   font-family="Helvetica" font-size="11pt"   text-align="left"  margin-left="1mm" line-height="4.5mm"></fo:block></fo:block> 
               				</fo:table-cell>
               				<fo:table-cell >
               					<fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm"></fo:block>
               					<fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" line-height="4.5mm"></fo:block>
               				</fo:table-cell>
               			</fo:table-row>
               		</fo:table-body>
               	</fo:table>
               	
        
              <fo:table border-collapse="collapse" text-align="left">
	      	 <fo:table-column column-width="1.8mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
	      	 <fo:table-column column-width="0.42cm"  border-top="0.5pt solid black"  border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	      	 <fo:table-column column-width="83.475mm" border-top="0.5pt solid black"  />
                 <fo:table-column column-width="71.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                 <fo:table-column column-width="34.95mm"  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" />
	      	      <fo:table-column column-width="1mm" border-top="0.5pt solid black"  />
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" line-height="4.5mm"></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	      	  <fo:block >
			     <xsl:variable name="primBrutaSegInfoProt" select="IncorporacionSeguros/primaBrutaSeguroInfoProtegida" />
			     <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/>
			     <xsl:if  test="$primBrutaSegInfoProt &gt; 0">X</xsl:if>
			     </fo:block>
			     <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" line-height="4.5mm"></fo:block>
                          </fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block  font-family="Helvetica" font-size="11pt"   text-align="justify" margin-left="1mm" line-height="4.5mm">Seguro Info Protegida</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">SEGUN DETALLE</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block>
		             <xsl:variable name="primBrutaSegInfoProt" select="IncorporacionSeguros/primaBrutaSeguroInfoProtegida" />
		             <fo:block    font-family="Helvetica" font-size="11pt"   text-align="right" line-height="4.5mm"><fo:inline font-weight="bold">
		             <xsl:if  test="$primBrutaSegInfoProt &gt; 0">
		             <xsl:value-of select='format-number(IncorporacionSeguros/primaBrutaSeguroInfoProtegida, "###.###.##0,####","decimal")'/>
		             </xsl:if>
		             </fo:inline></fo:block>
                     <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left"  margin-left="1mm" line-height="4.5mm"></fo:block></fo:block>       	          
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm"></fo:block>
	      	          <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" line-height="4.5mm"></fo:block>
	      	       </fo:table-cell>
	      	    </fo:table-row>
	      	 </fo:table-body>
	     </fo:table>
	      	                    
            
             <fo:table border-collapse="collapse" text-align="left">
	     	<fo:table-column column-width="1.8mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
	     	<fo:table-column column-width="0.42cm"  border-top="0.5pt solid black"  border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	     	<fo:table-column column-width="83.475mm" border-top="0.5pt solid black"  />
                 <fo:table-column column-width="71.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                 <fo:table-column column-width="34.95mm"  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" />
	     	      	     <fo:table-column column-width="1mm" border-top="0.5pt solid black"  /> 
	     	<fo:table-body>
	     	   <fo:table-row>
	     	      <fo:table-cell >
	     	      	 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" line-height="4.5mm"></fo:block>
	     	      </fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block >
			    <xsl:variable name="primBrutaSegAsisTot" select="IncorporacionSeguros/primaBrutaSeguroAsistenciaTotal" />
			    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/>
			    <xsl:if  test="$primBrutaSegAsisTot &gt; 0">X</xsl:if>
			    </fo:block>
			    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" line-height="4.5mm"></fo:block>
                         </fo:block>
	     	      </fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block  font-family="Helvetica" font-size="11pt"   text-align="justify" margin-left="1mm" line-height="4.5mm">Seguro Asistencia Total</fo:block>
	     	      </fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">SEGUN DETALLE</fo:block>
	     	      </fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block>
			    <xsl:variable name="primBrutaSegAsisTot" select="IncorporacionSeguros/primaBrutaSeguroAsistenciaTotal" />
			    <fo:block  font-family="Helvetica" font-size="11pt"   text-align="right"  line-height="4.5mm"><fo:inline font-weight="bold">
			    <xsl:if test="$primBrutaSegAsisTot  &gt; 0">
			    <xsl:value-of select='format-number(IncorporacionSeguros/primaBrutaSeguroAsistenciaTotal, "###.###.##0,####","decimal")'/>
			    </xsl:if></fo:inline></fo:block>
			    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left"  margin-left="1mm" line-height="4.5mm"></fo:block>
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
	     	<fo:table-column column-width="1.8mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
	     	<fo:table-column column-width="0.42cm"  border-top="0.5pt solid black"  border-right="0.5pt solid black" border-left="0.5pt solid black"/>
	     	<fo:table-column column-width="83.475mm" border-top="0.5pt solid black"  />
                <fo:table-column column-width="6mm" border-top="0.5pt solid black" border-left="0.5pt solid black"  />
	     	<fo:table-column column-width="65.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black"  />
                <fo:table-column column-width="34.95mm"  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" />
<fo:table-column column-width="1mm" border-top="0.5pt solid black"  />
            <xsl:variable name="tRespCivEmp" select="IncorporacionSeguros/tipoRespCivilEmpresa" />     	      
	     	<fo:table-body>
	     	   <fo:table-row>
	     	      <fo:table-cell >
	     	      	 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" line-height="4.5mm"></fo:block>
	     	      </fo:table-cell>
	     	      <fo:table-cell ><fo:block> </fo:block></fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block  font-family="Helvetica" font-size="11pt"   text-align="justify" margin-left="1mm" line-height="4.5mm"></fo:block>
	     	      </fo:table-cell>
                  <fo:table-cell >
                    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="justify" font-weight="bold" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/>
                    <xsl:if  test="$tRespCivEmp = 'CR1FLT'">X</xsl:if>
                    </fo:block>                  
                  </fo:table-cell>                  
	     	   	<fo:table-cell border-top="0.5pt solid black">
	     	      	 <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm"> UF 100</fo:block>
	     	      </fo:table-cell>
	     	      <fo:table-cell ><fo:block> </fo:block></fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm"></fo:block>
	     	      	 <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" line-height="4.5mm"></fo:block>
	     	      </fo:table-cell>
	     	   </fo:table-row>
	     	   
	     	   	     	
	     	   <fo:table-row>
	     	      <fo:table-cell >
	     	      	 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" line-height="4.5mm"></fo:block>
	     	      </fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block >
			    <xsl:variable name="primBrutaSegRespCivEmp" select="IncorporacionSeguros/primaBrutaSeguroRespCivilEmpresa" />
			    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/>
			    <xsl:if  test="$primBrutaSegRespCivEmp &gt; 0">X</xsl:if>
			    </fo:block>
			    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" line-height="4.5mm"></fo:block>
                         </fo:block>
	     	      </fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block  font-family="Helvetica" font-size="11pt"   text-align="justify" margin-left="1mm" line-height="4.5mm">Responsabilidad Civil Empresas</fo:block>
	     	      </fo:table-cell>
                  <fo:table-cell border-top="0.5pt solid black">
                    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="justify" font-weight="bold" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/>
                    <xsl:if  test="$tRespCivEmp = 'CR2FLT'">X</xsl:if>
                    </fo:block> 
                  </fo:table-cell>                  
	     	      <fo:table-cell border-top="0.5pt solid black">
	     	      	 <fo:block font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm"> UF 500</fo:block>
	     	      </fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block>
			    <xsl:variable name="primBrutaSegRespCivEmp" select="IncorporacionSeguros/primaBrutaSeguroRespCivilEmpresa" />
			    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="right"  line-height="4.5mm"><fo:inline font-weight="bold">
			    <xsl:if test="$primBrutaSegRespCivEmp  &gt; 0">
			    <xsl:value-of select='format-number(IncorporacionSeguros/primaBrutaSeguroRespCivilEmpresa, "###.###.##0,####","decimal")'/>
			    </xsl:if></fo:inline></fo:block>
			    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left"  margin-left="1mm" line-height="4.5mm"></fo:block>
                         </fo:block>
                      </fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm"></fo:block>
	     	      	 <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" line-height="4.5mm"></fo:block>
	     	      </fo:table-cell>
	     	   </fo:table-row>

	     	   <fo:table-row>
	     	      <fo:table-cell >
	     	      	 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" line-height="4.5mm"></fo:block>
	     	      </fo:table-cell>
	     	      <fo:table-cell ><fo:block> </fo:block></fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block  font-family="Helvetica" font-size="11pt"   text-align="justify" margin-left="1mm" line-height="4.5mm"></fo:block>
	     	      </fo:table-cell>
                  <fo:table-cell border-top="0.5pt solid black">
                    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="justify" font-weight="bold" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/>
                    <xsl:if  test="$tRespCivEmp = 'CR3FLT'">X</xsl:if>
                    </fo:block> 
                  </fo:table-cell>                  
	     	      <fo:table-cell border-top="0.5pt solid black" >
	     	      	 <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm"> UF 1.000</fo:block>
	     	      </fo:table-cell>
	     	      <fo:table-cell ><fo:block> </fo:block></fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm"></fo:block>
	     	      	 <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" line-height="4.5mm"></fo:block>
	     	      </fo:table-cell>
	     	   </fo:table-row>
	     	   	     	   
	     	</fo:table-body>
	     </fo:table>           
              
     
                                              
               <fo:table border-collapse="collapse" text-align="left">
                 <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block   font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm" />VIGENCIA DE LOS SEGUROS</fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                 <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Desde el momento de la aceptaci�n de la presente solicitud por parte de la compa��a de seguros hasta el d�a en que se produzca  una cualquiera de las dos circunstancias siguientes:1) que el asegurado  cumpla la edad l�mite de permanencia  para  cada cobertura, 2) que se extinga el cr�dito que dio origen al seguro.</fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>

            <xsl:variable name="primBrutaSegRespCivEmp" select="IncorporacionSeguros/primaBrutaSeguroRespCivilEmpresa" />              
            <xsl:variable name="primBrutaSegAsisTot" select="IncorporacionSeguros/primaBrutaSeguroAsistenciaTotal" />
            <xsl:variable name="primBrutaSegInfoProt" select="IncorporacionSeguros/primaBrutaSeguroInfoProtegida" /> 
            <xsl:variable name="tipoDeCliente" select="IncorporacionSeguros/tipoCliente" /> 
                        
            <xsl:if test="$tipoDeCliente = 'Persona Juridica'">                                 
            <xsl:if test="$primBrutaSegInfoProt  &gt; 0 or $primBrutaSegAsisTot  &gt; 0 or $primBrutaSegRespCivEmp  &gt; 0">  
              <fo:table border-collapse="collapse" text-align="left">
                 <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Antecedentes del riesgo asegurado:</fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Materia Asegurada:</fo:block>
                       </fo:table-cell>
                    </fo:table-row>    
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">RUT:</fo:block>
                       </fo:table-cell>
                    </fo:table-row>  
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Direcci�n Casa Matriz o Oficina Central de la Empresa:</fo:block>
                       </fo:table-cell>
                    </fo:table-row>                 
                 </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                 <fo:table-column  column-width="60mm" border-bottom="0.5pt solid black"  border-left="0.5pt solid black"/>
                 <fo:table-column  column-width="135.9mm" border-bottom="0.5pt solid black"  border-right="0.5pt solid black"/>

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block   font-family="Helvetica" font-size="11pt"  text-align="left"><fo:leader leader-pattern="space" leader-length="1mm" />Comuna</fo:block>
                       </fo:table-cell >
                       <fo:table-cell >
                          <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Ciudad</fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>
            </xsl:if>    
          </xsl:if>    
          
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
                 <fo:table-column  border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Autorizo que el monto de las primas correspondientes a los seguros elegidos, sean cargados en el pago del cr�dito solicitado, bajo el Nro. de Operaci�n <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="IncorporacionSeguros/numeroCredito" />  </fo:inline></fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table> 
              
              <fo:block  line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
              
              <fo:table border-collapse="collapse">
                 <fo:table-column  column-width="10mm"/>
                 <fo:table-column  column-width="140.9mm"/>
                 <fo:table-column  column-width="33mm"/>
                 <fo:table-column  column-width="12mm"/>

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block><fo:leader leader-pattern="space" leader-length="1mm" /></fo:block>
                       </fo:table-cell >                     
                       <fo:table-cell>
                          <fo:block   font-family="Helvetica" space-before="10mm" font-size="12pt" vertical-align="middle" text-align="left"><fo:leader leader-pattern="space" leader-length="1mm" /><xsl:value-of select="IncorporacionSeguros/fechaSuscripcion"/></fo:block>
                       </fo:table-cell >
                       <fo:table-cell >
                          <fo:block   line-height="4.5mm" margin-left="1mm">
                           <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="IncorporacionSeguros/firmaCorredoresSeguros"/>
                                            </xsl:attribute>
                                     </fo:external-graphic>
                          </fo:block>
                       </fo:table-cell>
                       <fo:table-cell >
                          <fo:block><fo:leader leader-pattern="space" leader-length="1mm" /></fo:block>
                       </fo:table-cell >                       
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" >
                 <fo:table-column />
                 <fo:table-column />
                 <fo:table-column />                 
                 <fo:table-column />

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                         <fo:block line-height="4.5mm" text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="12mm"/>Fecha</fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                         <fo:block line-height="4.5mm" text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm">Firma del asegurable</fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                         <fo:block line-height="4.5mm" text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm">Firma del Titular</fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                         <fo:block line-height="4.5mm" text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="5mm"/>Firma del Corredor</fo:block>
                      </fo:table-cell>
                   </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:table border-collapse="collapse">
	      	 <fo:table-column/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" text-align="right" font-weight="bold" vertical-align="middle" line-height="4.5mm" font-size="9pt">CONTIN�A EN P�GINA SIGUIENTE</fo:block>
	      	       </fo:table-cell>
	      	    </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
              
        </fo:flow>
     </fo:page-sequence>
	       
	       
	             	 
	<fo:page-sequence master-reference="paginaPrincipal">
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
      					        <xsl:value-of select="IncorporacionSeguros/logoBciSeguros"/>
                                       		</xsl:attribute>
                                     </fo:external-graphic>
	                  </fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACI�N</fo:block>
	                  <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SEGUROS COLOCACIONES PARA CREDITO COMERCIAL</fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block >
				     <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
                                                <xsl:attribute name="src">
                                       		<xsl:value-of select="IncorporacionSeguros/logoBciCorredoresSeguros"/>
                                       		</xsl:attribute>
                                     </fo:external-graphic>
	                  </fo:block>
	               </fo:table-cell>
	            </fo:table-row>
	         </fo:table-body>
             </fo:table>

 	   <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
		
	   <fo:table border-collapse="collapse">
	    <fo:table-column/>	   
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>MANDATO</fo:block>		    
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>
		
		
	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Por   el   presente    instrumento,   solicito   como   asegurable   mi   incorporaci�n   a   la(s)   p�liza(s)   colectiva(s)    respectiva(s)de   BCI   Seguros   de   Vida   S.A.  seg�n   producto(s)   identificado(s)   precedentemente.  Con   este   objeto   otorgo   mandato   al   Banco   de  Cr�dito   e  Inversiones,   en   adelante  "el  Mandatario",  para   que   contrate  y/o  renueve  con  BCI Seguros   Vida   S.A.,   uno   o    m�s   Seguros   para   el  asegurable,   intermediados   por   Bci   Corredores   de   Seguros  S.A.. Desde   ya,  acepto   como   asegurable   todas   las   condiciones   de   la  contrataci�n  del   o   de   los   seguro(s),   entre   �stas, su   vigencia,   la   cobertura   del   o    de   los    mismos    y   el   cargo   de   la(s)   prima(s)   y   de   cualesquiera   otros    gastos generados    con     ocasi�n    del    o     de     los    mismos,    en     cualquiera    de    mis    Cuentas    Corrientes,   o    la    rebaja correspondiente   del    o   de   los   cr�ditos   que  se   me  concediere(n),  de  la(s)  prima(s),   impuestos,   comisiones   y   otros gastos   derivados    de    su    contrataci�n   y   renovaci�n   en   su   caso,   en   las   oportunidades  y   con   la   frecuencia   que corresponde     a     los     respectivos     vencimientos.     As�      tambi�n,     acepto     las      condiciones     de      procedencia   o improcedencia   del   pago   del   o   de   los   seguros  pactados  en  la  Compa��a  de  Seguros  y   el   monto  de   cobertura  sin que   al    Banco   corresponda    responsabilidad   alguna,   para   el   evento   que    el(los)   seguro(s)   no   fuese(n)   pagado(s), no   fuere(n)   contratado(s),   no  fuese(n)   renovado(s),   o   no   cumplan   los   requisitos   de   asegurabilidad  exigidos.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>		 
	      </fo:table-body>
	   </fo:table>	
		
	<fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>

		
	   <fo:table border-collapse="collapse">
	    <fo:table-column/>	   
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>SEGURO DESGRAVAMEN</fo:block>		    
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>

	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>

	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
	      	
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Compa��a Aseguradora: </fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">BCI Seguros Vida S.A.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>
	   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Cobertura: </fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">Desgravamen  (POL 2 05 040 )</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>
	   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Monto Asegurado:  </fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">El monto  asegurado  corresponde  saldo  insoluto  del  cr�dito al  cierre  del mes  anterior  al  del  fallecimiento, m�s  los  intereses  devengados  al cierre  del  mes  inmediatamente  anterior, menos las cuotas  atrasadas por  m�s de 30 d�as, las anterior cuotas en cartera vencida y/o castigada, las cuotas prepagadas no aplicadas en el saldo insoluto del cr�dito al cierre del mes al  del  fallecimiento,  las  indemnizaciones  pagadas  por  Renta por  Hospitalizaci�n  y/o  Enfermedades  Graves  no  rebajadas  del  Saldo insoluto del cr�dito al cierre del mes anterior al del fallecimiento. </fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>

	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	
	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Vigencia:</fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">La cobertura  regir� desde  la fecha  en que el banco otorga efectivamente el cr�dito y la Compa��a  Aseguradora acepta asumir el riesgo, hasta el vencimiento del cr�dito.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	   	   

	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>

	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Beneficiario:</fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">Banco de Cr�dito e Inversiones </fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	
	   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Edad l�mite de ingreso y permanencia:</fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">75  a�os  0  d�as  para  desgravamen  y  65 a�os  0 d�as  para la  cobertura de Invalidez permanente.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	   
	   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">PRINCIPALES EXCLUSIONES </fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	

	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Las exclusiones  del seguro se encuentran  contenidas en la p�liza depositada en el registro de la S.V.S. bajo el c�digo POL 2 05 040 entre las principales se cuenta: </fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">a) Suicidio, automutilaci�n, o  autolesi�n, b) Pena  de  muerte o por  participaci�n  del  Asegurado en  cualquier  acto  delictivo, c) Acto delictivo  cometido,  en  calidad  de  autor o  c�mplice, por quien  pudiere  verse  beneficiado  por el  pago  de la  cantidad  asegurada, d)  Participaci�n  activa  del  Asegurado  en  guerra  internacional, en  guerra  civil o  en mot�n o  conmoci�n  contra  el  orden  p�blico dentro  o  fuera  del  pa�s; o  hechos  que  las  leyes  califican  como  delitos contra  la  seguridad  interior  del  Estado, e) Participaci�n activa  del  Asegurado en  acto  terrorista, f) Participaci�n del Asegurado en actos temerarios o en  cualquier  maniobra,  experimento, exhibici�n,  desaf�o  o  actividad  notoriamente  peligrosa, entendiendo  por  tales  aquellas  en las  cuales  se  pone  en  grave  peligro la vida e integridad  f�sica de  la s personas, g) Realizaci�n o participaci�n en una actividad o deporte riesgoso, consider�ndose como tales  aquellos  que  objetivamente  constituyan  una  flagrante  agravaci�n  del  riesgo  o  se  requiera  de  medidas  de  protecci�n  o seguridad  para realizarlos.  A v�a de ejemplo y sin que la enumeraci�n sea taxativa o restrictiva sino que meramente enunciativa, se considera  actividad  o  deporte  riesgoso  el  manejo  de explosivos, miner�a  subterr�nea, trabajos en  altura o  l�neas de  alta tensi�n, inmersi�n  submarina,  piloto  civil,  paracaidismo,  monta�ismo,  alas  delta,  benji, parapente, carreras  de  auto  y  moto, entre otros, h) Situaciones o enfermedades  preexistentes, entendi�ndose por tales las  definidas en el  art�culo 2� de la s Condiciones Generales, i) Fisi�n o fusi�n  nuclear o contaminaci�n  radioactiva, j) Una infecci�n  oportun�stica, o un  neoplasma  maligno, si al  momento  de la muerte  o  enfermedad  el  asegurado  sufr�a  del  S�ndrome  de  Inmunodeficiencia  Adquirida, k) Todas  las  exclusiones  contenidas en el condicionado general.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>		 
	      </fo:table-body>
	   </fo:table>	
   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
   	   
	   	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">PROCEDIMIENTO EN CASO DE SINIESTRO: </fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	

	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">1. Declaraci�n o denuncio del siniestro.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">2. Certificado original de defunci�n del asegurado. </fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">3. Fotocopia de la c�dula de identidad del fallecido por ambos lados.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>		 		 
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">4. En caso de muerte accidental debe adjuntar Parte Policial o Dictamen de la Justicia.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>		 		 

	      </fo:table-body>
	   </fo:table>		    		   	   
	   
       <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	   <fo:block   line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>	   	   	   	   

	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column   />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica"   font-weight="bold" text-align="right" vertical-align="middle" line-height="4.5mm" font-size="9pt">CONTIN�A EN P�GINA SIGUIENTE</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	 
     </fo:flow>
    </fo:page-sequence>

     <xsl:variable name="primBrutaSegCredSal" select="IncorporacionSeguros/primaBrutaSeguroCreditoSalud" />    
     <xsl:if  test="$primBrutaSegCredSal &gt; 0"> 

    <fo:page-sequence master-reference="paginaPrincipal">
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
                                <xsl:value-of select="IncorporacionSeguros/logoBciSeguros"/>
                                            </xsl:attribute>
                                     </fo:external-graphic>
                      </fo:block>
                   </fo:table-cell>
                   <fo:table-cell >
                      <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACI�N</fo:block>
                      <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SEGUROS COLOCACIONES PARA CREDITO COMERCIAL</fo:block>
                   </fo:table-cell>
                   <fo:table-cell >
                      <fo:block >
                     <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
                                                <xsl:attribute name="src">
                                            <xsl:value-of select="IncorporacionSeguros/logoBciCorredoresSeguros"/>
                                            </xsl:attribute>
                                     </fo:external-graphic>
                      </fo:block>
                   </fo:table-cell>
                </fo:table-row>
             </fo:table-body>
             </fo:table>

       <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

	   <fo:table border-collapse="collapse">
	      <fo:table-column  />	   	   
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>SEGURO CREDITO SALUD:</fo:block>		    		    
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>
	   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Compa��a Aseguradora:</fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">BCI Seguros Vida S.A.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	
           
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
           
	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Vigencia: </fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">La cobertura regir�  desde la fecha en que el  banco otorga  efectivamente el cr�dito y la Compa��a Aseguradora  acepta asumir el riesgo, hasta el vencimiento del cr�dito, con un plazo m�nimo de 12 meses.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	
	   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
        
	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Coberturas:</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">a)  Enfermedades Graves (CAD 3 07 093)</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>
	           
	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Monto Asegurado: 20% sobre el monto inicial del cr�dito, con un tope m�ximo de UF 2.000.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Cobertura: La  compa��a  pagar�  al  Beneficiario  y/o   Asegurado el  monto  �nico,  correspondiente  al  por  �nica  vez  el  20%  del monto  del  cr�dito,  en el  evento de  diagnostic�rsele  algunas  de las  siguientes  enfermedades: infarto agudo al miocardio, derrame o hemorragia  e  infarto cerebral,  c�ncer,  insuficiencia renal, y par�lisis; o bien la pr�ctica de alguna de las  siguientes intervenciones quir�rgicas: cirug�a arterio-coronaria y trasplante durante la vigencia de esta p�liza.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Limitaciones  de  la  cobertura: Esta  cobertura  tendr� un per�odo  de  carencia  de 15 d�as  y el pago  estipulado  en  las  condiciones particulares, se  efectuar�  por  una  sola  vez,  independiente  del n�mero  de enfermedades  graves  que  sufra el  asegurado, luego de lo cual terminar� la cobertura.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>		 		 
	      </fo:table-body>
	   </fo:table>		   
	   	              
	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">b) Renta Diaria por Hospitalizaci�n (POL 3 97 014)</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	   
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Monto Asegurado: 0.5% sobre el  monto inicial del cr�dito por d�a de hospitalizaci�n, con un  tope m�ximo por d�a de UF 25 por un per�odo de 60 d�as.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Limitaciones  de la cobertura: Esta cobertura se  pagar� a partir del cuarto d�a consecutivo de hospitalizaci�n y por un per�odo m�ximo de  60  d�as  consecutivos de  hospitalizaci�n. Esta cobertura tendr�  un   per�odo de  carencia  de 15 d�as, salvo  las hospitalizaciones producto de un accidente.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>		
	   	 
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	    
	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Requisitos de Asegurabilidad:</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	   
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Edad  m�xima  de  ingreso de  64  a�os  364 d�as. Edad m�xima de  permanencia  de  65  a�os 364 d�as.Constituye requisito esencial que el asegurado tenga aceptada y vigente la cobertura de fallecimiento del seguro de desgravamen.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>		
	   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	    	
	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Beneficiario:</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	   
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">El beneficiario  ser�  el  Banco. El monto  asegurado ser�  entregado al banco como  beneficiario y  acreedor  del  cr�dito origino la  contrataci�n  de esta  cobertura  hasta su inter�s en el  capital, superado el l�mite de inter�s en el capital por parte del banco, el remanente del monto asegurado ser� entregado directamente al asegurado.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>		
	   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">L�mites de Cobertura:</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	   
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Rige l�mite �nico y combinado de UF 2.000 para el conjunto de coberturas.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>		
	   
       <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>       	   
		   
	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Condicion Especial:</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	   
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Para la contrataci�n del Seguro Cr�dito Salud, deber� tener aprobado el Seguro de Desgravamen. En caso de ser aceptada con recargo m�dico la cobertura desgravamen,se rechazar� la solicitud de incorporaci�n a estas coberturas adicionales.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>		
		   
       <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>

	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Exclusiones:</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	   
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Las  exclusiones  del  seguro  se  encuentran  contenidas  en  la  p�liza  depositada  en  el  registro  de  la  S.V.S. bajo el  c�digo  POL  XXXX  Y  CAD XXXXX  entre  las  principales  se  cuenta: 1)  Guerra,  invasi�n,   actos   cometidos  por  un  enemigo extranjero,   hostilidades,   guerra   civil,  rebeli�n,  revoluci�n,  insurrecci�n,  o  poder  militar,  o  usurpado,  o  las  que  ocurran  como consecuencia   directa  o  indirecta  de   la  prestaci�n  del  servicio   militar  en  cualquiera  de  las  Fuerzas   Armadas   nacionales  o extranjeras, en tiempo  de paz  o  guerra, 2)  Hospitalizaci�n  para el  tratamiento a la  adicci�n a  las  drogas,  alcoholismo,  cualquier tipo de enfermedad mental  o cirug�a  pl�stica o  cosm�tica, 3) Hospitalizaci�n del  asegurado  si �ste es un  residente  fuera  de Chile al  momento  de  su  ingreso  a  un  hospital, 4) Curas de  Reposo, 5) Embarazo,  parto,  aborto  provocado  o  cualquier  enfermedad relacionada  a  los  �rganos  de  reproducci�n  femeninos, 6) Hospitalizaci�n  realizada  dentro  del  per�odo  de carencia, 7) Anomal�as cong�nitas ,  y   los   trastornos   que   sobrevengan   por  tales   anomal�as,  o  se  relacione  directamente  con  ellas. 8)  Condiciones  m�dicas  preexistentes de  acuerdo  a  definici�n  establecida  en  el. Art�culo 2�,  letra j) .9)  Ex�menes  m�dicos  de rutina 10) Intento de  suicidio  o lesiones  intencionalmente  infligidas  a  si  mismo  por  el  asegurado,  est�  o  no  en  su  sano  juicio,  o  cualquier  acto relacionado  con  tales sucesos, 11)  Las  enfermedades  directas  o  denominadas  oportunistas  o  lesiones secundarias al s�ndrome de inmunodeficiencia  adquirida  (SIDA). 12) Cualquier diagn�stico realizado  por un acupunturista,  home�pata,  u  otra  persona  que no sea m�dico legalmente habilitado para ejercer la profesi�n.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>		

	   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	   
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Documentaci�n exigida para  la acreditaci�n  de  un siniestro  Renta  Diaria  por  Hospitalizaci�n:</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	   
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Dentro  de  los  30 d�as siguientes al diagn�stico o la pr�ctica de la intervenci�n se debe presentar.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">1.- Fotocopia  del  carn�  de identidad  o  certificado de nacimiento. 2.- Certificado del m�dico tratante que indique el diagn�stico y su fecha.3.- Documento  de la instituci�n de salud   donde  se  haya   internado  el   asegurado   indicando  el    n�mero   de  d�as  de su  hospitalizaci�n  y  los  motivos   de   la misma. 4.- Certificado de saldo  de  la deuda, emitido  por la entidad contratante a la fecha de fallecimiento del deudor, de acuerdo a lo indicado en el Art�culo Nro. 6. 5.-Tabla de desarrollo del cr�dito que  debe  indicar el estado  del  servicio  de   la  deuda. 6.- Fotocopia  del  pagar�,  7.-  Mandato   Original.  Otros  antecedentes  que  se  estimen  conveniente y  necesario para la evaluaci�n del siniestro.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>		
	   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Documentaci�n exigida para la acreditaci�n de un  siniestro  de Enfermedades Graves:</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	   
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Dentro de los 30 d�as siguientes al diagn�stico o  la  pr�ctica  de  la  intervenci�n  se  debe  presentar:</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">1) Fotocopia del  carn� de identidad � certificado de  nacimiento, 2)  Certificado del m�dico tratante que indique el diagn�stico y su fecha 3) Certificado de saldo de la deuda,  emitido  por la  entidad contratante a la fecha de fallecimiento del deudor,de acuerdo a lo indicado en el Art�culo Nro. 6.4)Tabla de desarrollo del cr�dito que debe  indicar el estado del servicio de la deuda 5)  Fotocopia del pagar�, 6)  Mandato original, 7) Otros antecedentes que se estimen conveniente y necesario para la evaluaci�n del siniestro.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>		
	   
	   
    
      <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	   <fo:block   line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>	   	   	   	   

	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column   />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica"   font-weight="bold" text-align="right" vertical-align="middle" line-height="4.5mm" font-size="9pt">CONTIN�A EN P�GINA SIGUIENTE</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	 

     </fo:flow>
    </fo:page-sequence>

    <fo:page-sequence master-reference="paginaPrincipal">
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
                                <xsl:value-of select="IncorporacionSeguros/logoBciSeguros"/>
                                            </xsl:attribute>
                                     </fo:external-graphic>
                      </fo:block>
                   </fo:table-cell>
                   <fo:table-cell >
                      <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACI�N</fo:block>
                      <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SEGUROS COLOCACIONES PARA CREDITO COMERCIAL</fo:block>
                   </fo:table-cell>
                   <fo:table-cell >
                      <fo:block >
                     <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
                                                <xsl:attribute name="src">
                                            <xsl:value-of select="IncorporacionSeguros/logoBciCorredoresSeguros"/>
                                            </xsl:attribute>
                                     </fo:external-graphic>
                      </fo:block>
                   </fo:table-cell>
                </fo:table-row>
             </fo:table-body>
             </fo:table>

       <fo:table border-collapse="collapse">
          <fo:table-column  />         
          <fo:table-body>
         <fo:table-row>
            <fo:table-cell >
               <fo:block border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>CONDICIONES DE ASEGURAMIENTO PARA CREDITOS SUPERIORES A UF 2.000  (favor contestar los siguientes cuestionarios)</fo:block>                     
            </fo:table-cell>
         </fo:table-row>
          </fo:table-body>
       </fo:table>
       
               
       <fo:table border-collapse="collapse">
          <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
          <fo:table-body>
             <fo:table-row>
                <fo:table-cell >
                   <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Declaro conocer y aceptar que la falta de entrega o entrega de informaci�n inexacta a la fecha de curse de esta operaci�n crediticia,  relativa al estado de salud, capacidades funcionales, realizaci�n de ocupaciones, actividades y/o deportes riesgosos, puede influir en la correcta apreciaci�n y evaluaci�n de esta solicitud y por lo tanto acepto informar a la Compa��a Aseguradora: </fo:block>
                </fo:table-cell>
             </fo:table-row>
             <fo:table-row>
                <fo:table-cell >
                   <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">a) de cualquier enfermedad y/o p�rdida total, f�sica o funcional de �rganos mediante la Declaraci�n Personal de Salud (D.P.S.) registrada a continuaci�n, y me obligo a aportar los antecedentes necesarios para que la Compa��a de Seguros realice la evaluaci�n correspondiente b) de cualquier ocupaci�n, actividad y/o deporte que realice, aunque sea en forma espor�dica, mediante la Declaraci�n de Deportes y Actividades y/o Declaraci�n de Ocupaci�n registradas a continuaci�n: </fo:block>
                </fo:table-cell>
             </fo:table-row>             
         </fo:table-body>
       </fo:table>         
                  
       <fo:table border-collapse="collapse">
          <fo:table-column  />         
          <fo:table-body>
         <fo:table-row>
            <fo:table-cell >
               <fo:block border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>DECLARACI�N PERSONAL DE SALUD</fo:block>                       
            </fo:table-cell>
         </fo:table-row>
          </fo:table-body>
       </fo:table>                  
                      

       <fo:table border-collapse="collapse">
          <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
          <fo:table-body>
         <fo:table-row>
            <fo:table-cell >
               <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">�Ha padecido, se le ha diagnosticado, o tiene conocimiento de sufrir alguna de las siguientes enfermedades: Diabetes, 
enfermedades al ri��n, enfermedades de los huesos o m�sculos, enfermedades cardiacas, bypass, hipertensi�n arterial, 
enfermedades coronarias, soplos cardiacos, arritmias, sobrepeso u obesidad, enfermedades del sistema respiratorio, c�ncer, 
hepatitis (excepto tipo A), enfermedades gastrointestinales como cirrosis hep�tica, �lcera g�strica, colitis ulcerosa, 
enfermedades hematol�gicas como leucemia, linfoma o anemia (excepto la falta de fierro), desordenes nerviosos o mentales, 
sida, HIV positivo, enfermedades neurol�gicas como accidente vascular cerebral, epilepsia, enfermedad de alzheimer, 
alcoholismo o drogadicci�n?. </fo:block>
            </fo:table-cell>
         </fo:table-row>
          </fo:table-body>
       </fo:table>      
       
          <fo:table border-collapse="collapse" text-align="left">
              <fo:table-column column-width="1.5mm"   border-left="0.5pt solid black" />
              <fo:table-column column-width="6.4mm"   border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" />
              <fo:table-column column-width="23.7mm"  border-left="0.5pt solid black" />
              <fo:table-column column-width="6.4mm"   border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" />
              <fo:table-column column-width="17mm"    border-left="0.5pt solid black"/>
              <fo:table-column column-width="140.9mm" border-right="0.5pt solid black"/>

              <fo:table-body>
                  <fo:table-row>

                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="1mm"/>NO</fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/>SI</fo:block>
                        </fo:table-cell>                            
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm"   border-right="0.5pt solid black">Especifique: enfermedad, fecha diagn�stico, m�dico tratante</fo:block>
                        </fo:table-cell>

                  </fo:table-row>
            </fo:table-body>
          </fo:table>         
       
          <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
          <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>                                     
       
          <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
       
       <fo:table border-collapse="collapse">
          <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
          <fo:table-body>
         <fo:table-row>
            <fo:table-cell >
               <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">�Ha padecido, se le ha diagnosticado, o tiene conocimiento de sufrir alguna enfermedad no mencionada en la pregunta anterior?.</fo:block>
            </fo:table-cell>
         </fo:table-row>
          </fo:table-body>
       </fo:table>   
           
         <fo:table border-collapse="collapse" text-align="left">
              <fo:table-column column-width="1.5mm"   border-left="0.5pt solid black" />
              <fo:table-column column-width="6.4mm"   border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" />
              <fo:table-column column-width="23.7mm"  border-left="0.5pt solid black" />
              <fo:table-column column-width="6.4mm"   border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" />
              <fo:table-column column-width="17mm"    border-left="0.5pt solid black"/>
              <fo:table-column column-width="140.9mm" border-right="0.5pt solid black"/>

              <fo:table-body>
                  <fo:table-row>

                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="1mm"/>NO</fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/>SI</fo:block>
                        </fo:table-cell>                            
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm"   border-right="0.5pt solid black">Especifique: enfermedad, fecha diagn�stico, m�dico tratante:</fo:block>
                        </fo:table-cell>

                  </fo:table-row>
            </fo:table-body>
          </fo:table>         
       
          <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
          <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>              
                          
       
          <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
         
          <fo:table border-collapse="collapse" text-align="left">
              <fo:table-column column-width="1.5mm"   border-left="0.5pt solid black" />
              <fo:table-column column-width="12.4mm"    />
              <fo:table-column column-width="17.7mm"  border-bottom="0.5pt solid black" />
              <fo:table-column column-width="13.4mm"   />
              <fo:table-column column-width="18mm"    />
              <fo:table-column column-width="19mm"    border-bottom="0.5pt solid black"/>              
              <fo:table-column column-width="113.9mm" border-right="0.5pt solid black"/>

              <fo:table-body>
                  <fo:table-row>

                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm" ></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left">Peso:</fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm"></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Kgs.</fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Estatura:</fo:block>
                        </fo:table-cell>   
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm"></fo:block>
                        </fo:table-cell>                                                 
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm"   border-right="0.5pt solid black">cms </fo:block>
                        </fo:table-cell>

                  </fo:table-row>
            </fo:table-body>
          </fo:table>  
          
       <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
      
       <fo:table border-collapse="collapse">
          <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
          <fo:table-body>
         <fo:table-row>
            <fo:table-cell >
               <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">�Ha estado bajo alg�n tratamiento m�dico en los �ltimos 5 a�os?</fo:block>
            </fo:table-cell>
         </fo:table-row>
          </fo:table-body>
       </fo:table>   
                   
       <fo:table border-collapse="collapse" text-align="left">
              <fo:table-column column-width="1.5mm"   border-left="0.5pt solid black" />
              <fo:table-column column-width="6.4mm"   border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" />
              <fo:table-column column-width="23.7mm"  border-left="0.5pt solid black" />
              <fo:table-column column-width="6.4mm"   border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" />
              <fo:table-column column-width="17mm"    border-left="0.5pt solid black"/>
              <fo:table-column column-width="140.9mm" border-right="0.5pt solid black"/>

              <fo:table-body>
                  <fo:table-row>

                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="1mm"/>NO</fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/>SI</fo:block>
                        </fo:table-cell>                            
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm"   border-right="0.5pt solid black">�Diagn�stico, m�dico tratante?:</fo:block>
                        </fo:table-cell>

                  </fo:table-row>
            </fo:table-body>
          </fo:table>         
       
          <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
          <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>                                        
       
          <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
       
       <fo:table border-collapse="collapse">
          <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
          <fo:table-body>
         <fo:table-row>
            <fo:table-cell >
               <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">�Ha sido sometido a intervenciones quir�rgicas en los �ltimos 5 a�os o tiene indicada alguna? </fo:block>
            </fo:table-cell>
         </fo:table-row>
          </fo:table-body>
       </fo:table>   
                      
       <fo:table border-collapse="collapse" text-align="left">
              <fo:table-column column-width="1.5mm"   border-left="0.5pt solid black" />
              <fo:table-column column-width="6.4mm"   border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" />
              <fo:table-column column-width="23.7mm"  border-left="0.5pt solid black" />
              <fo:table-column column-width="6.4mm"   border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" />
              <fo:table-column column-width="17mm"    border-left="0.5pt solid black"/>
              <fo:table-column column-width="140.9mm" border-right="0.5pt solid black"/>

              <fo:table-body>
                  <fo:table-row>

                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="1mm"/>NO</fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/>SI</fo:block>
                        </fo:table-cell>                            
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm"   border-right="0.5pt solid black">� Diagn�stico, fecha diagn�stico, m�dico tratante?</fo:block>
                        </fo:table-cell>

                  </fo:table-row>
            </fo:table-body>
          </fo:table>         
       
          <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
          <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>              
    
       
          <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
       
       <fo:table border-collapse="collapse">
          <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
          <fo:table-body>
         <fo:table-row>
            <fo:table-cell >
               <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">�Ha estado hospitalizado en los �ltimos 5 a�os?</fo:block>
            </fo:table-cell>
         </fo:table-row>
          </fo:table-body>
       </fo:table>   
                  
       <fo:table border-collapse="collapse" text-align="left">
              <fo:table-column column-width="1.5mm"   border-left="0.5pt solid black" />
              <fo:table-column column-width="6.4mm"   border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" />
              <fo:table-column column-width="23.7mm"  border-left="0.5pt solid black" />
              <fo:table-column column-width="6.4mm"   border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" />
              <fo:table-column column-width="17mm"    border-left="0.5pt solid black"/>
              <fo:table-column column-width="140.9mm" border-right="0.5pt solid black"/>

              <fo:table-body>
                  <fo:table-row>

                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="1mm"/>NO</fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/>SI</fo:block>
                        </fo:table-cell>                            
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm"   border-right="0.5pt solid black">�Motivo, fecha hospitalizaci�n?:</fo:block>
                        </fo:table-cell>

                  </fo:table-row>
            </fo:table-body>
          </fo:table>         
       
          <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
          <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>              
      
       
          <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
       
       <fo:table border-collapse="collapse">
          <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
          <fo:table-body>
         <fo:table-row>
            <fo:table-cell >
               <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">�Ingiere alg�n tipo de medicamento en forma habitual?</fo:block>
            </fo:table-cell>
         </fo:table-row>
          </fo:table-body>
       </fo:table> 
                    
       <fo:table border-collapse="collapse" text-align="left">
              <fo:table-column column-width="1.5mm"   border-left="0.5pt solid black" />
              <fo:table-column column-width="6.4mm"   border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" />
              <fo:table-column column-width="23.7mm"  border-left="0.5pt solid black" />
              <fo:table-column column-width="6.4mm"   border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" />
              <fo:table-column column-width="17mm"    border-left="0.5pt solid black"/>
              <fo:table-column column-width="20mm"   />              
              <fo:table-column column-width="118.9mm"  border-bottom="0.5pt solid black" />
              <fo:table-column column-width="2mm"   border-right="0.5pt solid black"/>              

              <fo:table-body>
                  <fo:table-row>

                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="1mm"/>NO</fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/>SI</fo:block>
                        </fo:table-cell>   
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/>�Cu�les?</fo:block>
                        </fo:table-cell>                                                   
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm"   border-right="0.5pt solid black"></fo:block>
                        </fo:table-cell>

                  </fo:table-row>
            </fo:table-body>
          </fo:table>  
    
          <fo:table border-collapse="collapse">
              <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
              <fo:table-body>
             <fo:table-row>
                <fo:table-cell >
                   <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Declaro que estoy en conocimiento y acepto que ninguno de los seguros solicitados otorgar�n cobertura por enfermedades preexistentes (indicadas o no en esta declaraci�n) a la fecha de suscripci�n de esta solicitud.</fo:block>
                </fo:table-cell>
             </fo:table-row>
              </fo:table-body>
          </fo:table>           
                                                  
       <fo:table border-collapse="collapse">
          <fo:table-column  />         
          <fo:table-body>
         <fo:table-row>
            <fo:table-cell >
               <fo:block border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>DECLARACI�N DE DEPORTES Y ACTIVIDADES</fo:block>                       
            </fo:table-cell>
         </fo:table-row>
          </fo:table-body>
       </fo:table>                  
                      

       <fo:table border-collapse="collapse">
          <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
          <fo:table-body>
         <fo:table-row>
            <fo:table-cell >
               <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Declaro como asegurable aceptar que los seguros solicitados no otorgar�n cobertura si el siniestro ocurre durante la realizaci�n 
de los siguientes deportes o actividades aunque los practique en forma ocasional y/o espor�dica: inmersiones subacu�ticas, 
alas delta, parapente, paracaidismo, bengi, monta�ismo, boxeo, carreras de velocidad (auto, moto, embarcaciones acu�ticas, 
bicicleta, ski de nieve); esqu� en helic�ptero, carreras de caballo, rodeo, bombero, piloto o pasajero de aviaci�n civil, pasajero 
en aviaci�n comercial en vuelos no regulares o de itinerario no establecido. </fo:block>
            </fo:table-cell>
         </fo:table-row>
          </fo:table-body>
       </fo:table>      
                
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="91.5mm"   border-left="0.5pt solid black" />
                  <fo:table-column column-width="6.4mm"   border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="18.7mm"  border-left="0.5pt solid black" />
                  <fo:table-column column-width="6.4mm"   border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="17mm"    border-left="0.5pt solid black"/>
                  <fo:table-column column-width="55.9mm" border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm" >�Practica otros deportes o actividades riesgosas?</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="1mm"/>NO</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/>SI</fo:block>
                            </fo:table-cell>                            
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm"   border-right="0.5pt solid black">�Cu�les?:</fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
              </fo:table>  
              
              <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
              <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>              
                            
              <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
                       
       <fo:table border-collapse="collapse">
          <fo:table-column  />         
          <fo:table-body>
         <fo:table-row>
            <fo:table-cell >
               <fo:block border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>DECLARACI�N DE OCUPACI�N</fo:block>                       
            </fo:table-cell>
         </fo:table-row>
          </fo:table-body>
       </fo:table>                  
                      
      <fo:table border-collapse="collapse" text-align="left">
         <fo:table-column  column-width="1mm" border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
         <fo:table-column  column-width="114.9mm" border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-right="0.5pt solid black"/>
         <fo:table-column  column-width="80mm"    border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-right="0.5pt solid black"/>

         <fo:table-body>
            <fo:table-row>
               <fo:table-cell >
                  <fo:block   font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left"><fo:leader leader-pattern="space" leader-length="1mm" /></fo:block>
               </fo:table-cell >
               <fo:table-cell >
                  <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="left" margin-left="1mm">Profesi�n o actividad:</fo:block>
               </fo:table-cell>
               <fo:table-cell >
                  <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="left" margin-left="1mm">Cargo que ocupa:</fo:block>
               </fo:table-cell>               
            </fo:table-row>
         </fo:table-body>
      </fo:table>
            
      <fo:table border-collapse="collapse" text-align="left">
         <fo:table-column  column-width="1mm" border-bottom="0.5pt solid black" border-left="0.5pt solid black"/>
         <fo:table-column  column-width="194.9mm"    border-bottom="0.5pt solid black" border-right="0.5pt solid black"/>

         <fo:table-body>
            <fo:table-row>
               <fo:table-cell >
                  <fo:block   font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left"><fo:leader leader-pattern="space" leader-length="1mm" /></fo:block>
               </fo:table-cell >
               <fo:table-cell >
                  <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="left" margin-left="1mm">Indique lugar donde desarrolla su actividad:</fo:block>
               </fo:table-cell>
            </fo:table-row>
         </fo:table-body>
      </fo:table>              
              
       <fo:table border-collapse="collapse">
          <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black"  />
          <fo:table-body>
         <fo:table-row>
            <fo:table-cell >
               <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">�En su actividad usted tiene que: levantar o mover objetos de gran peso, realizar trabajos bajo tierra o a gran altura, manejar 
sustancias: corrosivas, t�xicas, �cidos,  pesticidas, petr�leos; entrar en contacto con sustancias radioactivas o equipos con 
elementos radioactivos, trabajar con o en proximidad a materiales explosivos, realizar trabajos con elementos de mediana o 
alta tensi�n, manejar maquinaria o implementos de corte en general, portar arma,  realizar faenas de pesca en alta mar, 
extinguir incendios, transportar caudales o sumas importantes de dinero, realizar viajes al extranjero a zonas en conflicto, 
utilizar (como piloto o pasajero) aviones o helic�pteros privados o en vuelos no regulares o de itinerario no establecido? </fo:block>
            </fo:table-cell>
         </fo:table-row>
          </fo:table-body>
       </fo:table> 
               
          <fo:table border-collapse="collapse" text-align="left">
              <fo:table-column column-width="1.5mm"   border-left="0.5pt solid black" />
              <fo:table-column column-width="6.4mm"   border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" />
              <fo:table-column column-width="23.7mm"  border-left="0.5pt solid black" />
              <fo:table-column column-width="6.4mm"   border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" />
              <fo:table-column column-width="17mm"    border-left="0.5pt solid black"/>
              <fo:table-column column-width="140.9mm" border-right="0.5pt solid black"/>

              <fo:table-body>
                  <fo:table-row>

                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="1mm"/>NO</fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt" text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/>SI</fo:block>
                        </fo:table-cell>                            
                        <fo:table-cell >
                                <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm"   border-right="0.5pt solid black">En caso afirmativo especifique:</fo:block>
                        </fo:table-cell>

                  </fo:table-row>
            </fo:table-body>
          </fo:table>  
          
          <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
          <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>              
                

              <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
              
              <fo:table border-collapse="collapse" text-align="left">
                 <fo:table-column  column-width="1mm" border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
                 <fo:table-column  column-width="194.9mm" border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-right="0.5pt solid black"/>

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block   font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left"><fo:leader leader-pattern="space" leader-length="1mm" /></fo:block>
                       </fo:table-cell >
                       <fo:table-cell >
                          <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Nota: Queda entendido y convenido por las partes,  que el contenido de las anteriores declaraciones del asegurable representa �ntegra y fielmente su voluntad </fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>              
              
       
     <fo:block  line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
              
              <fo:table border-collapse="collapse">
                 <fo:table-column  column-width="15mm"/>
                 <fo:table-column  column-width="135.9mm"/>
                 <fo:table-column  column-width="28mm"/>
                 <fo:table-column  column-width="17mm"/>

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block><fo:leader leader-pattern="space" leader-length="1mm" /></fo:block>
                       </fo:table-cell >                     
                       <fo:table-cell>
                          <fo:block   font-family="Helvetica" space-before="10mm" font-size="12pt" vertical-align="middle" text-align="left"><fo:leader leader-pattern="space" leader-length="1mm" /><xsl:value-of select="IncorporacionSeguros/fechaSuscripcion"/></fo:block>
                       </fo:table-cell >
                       <fo:table-cell >
                          <fo:block   line-height="4.5mm" margin-left="1mm">
                           <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="IncorporacionSeguros/firmaCorredoresSeguros"/>
                                            </xsl:attribute>
                                     </fo:external-graphic>
                          </fo:block>
                       </fo:table-cell>
                       <fo:table-cell >
                          <fo:block><fo:leader leader-pattern="space" leader-length="1mm" /></fo:block>
                       </fo:table-cell >                       
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" >
                 <fo:table-column column-width="50mm"/>
                 <fo:table-column column-width="100.9mm"/>                
                 <fo:table-column column-width="45mm"/>

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                         <fo:block line-height="3mm" text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="11pt" line-height="3.5mm"><fo:leader leader-pattern="space" leader-length="20mm"/>Fecha</fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                         <fo:block line-height="3mm" text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="3.5mm">Firma del asegurable</fo:block>
                      </fo:table-cell>

                      <fo:table-cell >
                         <fo:block line-height="3mm" text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="11pt" line-height="3.5mm" ><fo:leader leader-pattern="space" leader-length="5mm"/>Firma del Corredor</fo:block>
                      </fo:table-cell>
                   </fo:table-row>
                </fo:table-body>
              </fo:table>
              
     </fo:flow>
    </fo:page-sequence>

     </xsl:if>
        	
        	     	
<!-- CREDITO DE VIDA -->
        	<xsl:variable name="primBrutaSeguroVida" select="IncorporacionSeguros/primaBrutaSeguroVida" />
        	<xsl:if  test="$primBrutaSeguroVida &gt; 0">          
        		<fo:page-sequence master-reference="paginaPrincipal">
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
        											<xsl:value-of select="IncorporacionSeguros/logoBciSeguros"/>
        										</xsl:attribute>
        									</fo:external-graphic>
        								</fo:block>
        							</fo:table-cell>
        							<fo:table-cell >
        								<fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACI�N</fo:block>
        								<fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SEGUROS COLOCACIONES PARA CREDITO COMERCIAL</fo:block>
        							</fo:table-cell>
        							<fo:table-cell >
        								<fo:block >
        									<fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
        										<xsl:attribute name="src">
        											<xsl:value-of select="IncorporacionSeguros/logoBciCorredoresSeguros"/>
        										</xsl:attribute>
        									</fo:external-graphic>
        								</fo:block>
        							</fo:table-cell>
        						</fo:table-row>
        					</fo:table-body>
        				</fo:table>

        				<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
        				<!--  SEGURO DE CREDITO VIDA -->
        				<fo:table border-collapse="collapse">
        					<fo:table-column/>	   
        					<fo:table-body>
        						<fo:table-row>
        							<fo:table-cell >
        								<fo:block border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>SEGURO CREDITO VIDA:</fo:block>		    
        							</fo:table-cell>
        						</fo:table-row>
        					</fo:table-body>
        				</fo:table>
        				  
        				  
        				  
        				<fo:table table-layout="fixed" column-width="195.9mm"   border-top = "0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid">
        					<fo:table-column />
        					<fo:table-body> 
        						<fo:table-row >
        							<fo:table-cell>
        								<fo:block font-size="11pt" text-align="justify" padding-top="2mm" padding-bottom="0mm" color="#000000"> <fo:inline font-weight="bold">Compa��a Aseguradora: </fo:inline> BCI Seguros Vida S.A.</fo:block>
        								<fo:block padding-top="2mm" padding-bottom="0mm" text-align="justify"  font-size="11pt" color="#000000">A) Cobertura Vida (POL 2 09 109): La compa��a pagar� a los beneficiarios designados por el asegurado legales, despu�s del fallecimiento del asegurado el monto del capital de acuerdo al plan contratado.</fo:block>
        								<fo:block padding-top="2mm" padding-bottom="0mm" text-align="justify"  font-size="11pt" color="#000000">B) Cobertura Invalidez Permanente 2/3 (CAD 2 09 115): En caso de verificarse la Invalidez se pagar� al asegurado  el  monto del  capital seg�n  plan  contratado. Para  los efectos de  esta  Cl�usula  Adicional se entiende por Invalidez  Permanente Dos </fo:block>
        								<fo:block padding-top="2mm" padding-bottom="0mm" text-align="justify"  font-size="11pt" color="#000000">Tercios:La p�rdida irreversible y definitiva,a consecuencia de enfermedad, accidente o debilitamiento de sus fuerzas f�sicas o intelectuales, de a lo menos dos tercios (2/3) de la capacidad de trabajo, evaluado
        									conforme a las "Normas para la evaluaci�n y calificaci�n del grado de invalidez de los trabajadores afiliados al nuevo sistema de pensiones", regulado por el D.L. Nro. 3.500 de 1980.</fo:block> 
        								<fo:block padding-top="2mm" padding-bottom="0mm" text-align="justify"  font-size="11pt" color="#000000"><fo:inline font-weight="bold">Beneficiario: </fo:inline> Los beneficiarios ser�n los designados por el asegurado en el caso de fallecimiento o sus herederos legales  y
        									para la cobertura Incapacidad Total y Permanente ser� el propio asegurado.</fo:block>
        								<fo:block padding-top="2mm" padding-bottom="0mm" text-align="justify"  font-size="11pt" color="#000000"><fo:inline font-weight="bold">Capital Asegurado: </fo:inline>Corresponder� por  la cobertura de fallecimiento UF 1.000 y por la cobertura de Invalidez Permanente 2/3 UF 1.000.</fo:block>
        								<fo:block padding-top="2mm" padding-bottom="0mm" text-align="justify"  font-size="11pt" color="#000000"><fo:inline font-weight="bold">Requisitos de Asegurabilidad: </fo:inline></fo:block>
        								<fo:block padding-top="2mm" padding-bottom="0mm" text-align="justify"  font-size="11pt" color="#000000"><fo:inline text-decoration="underline" >Cobertura Fallecimiento: </fo:inline> Constituyen requisitos esenciales para la cobertura</fo:block>
        								<fo:block padding-top="2mm" padding-bottom="0mm" text-align="justify"  font-size="11pt" color="#000000">- Que el asegurado haya solicitado el Seguro Cr�dito Vida. </fo:block>
        								<fo:block padding-top="2mm" padding-bottom="0mm" text-align="justify"  font-size="11pt" color="#000000">- Que el asegurado tenga aceptada y vigente la cobertura de fallecimiento del Seguro Desgravamen.</fo:block>
        								<fo:block padding-top="2mm" padding-bottom="0mm" text-align="justify"  font-size="11pt" color="#000000">- Edad m�xima de ingreso de 64 a�os 364 d�as. Edad m�xima de permanencia de 65 a�os 364 d�as. </fo:block>
        								<fo:block padding-top="2mm" padding-bottom="0mm" text-align="justify"  font-size="11pt" color="#000000"><fo:inline text-decoration="underline" >Cobertura Invalidez permanente 2/3:</fo:inline> Constituyen requisitos esenciales para la cobertura de este adicional </fo:block>
        								<fo:block padding-top="2mm" padding-bottom="0mm" text-align="justify"  font-size="11pt" color="#000000">- Que el asegurado tenga aceptada y vigente la cobertura de fallecimiento del Seguro Cr�dito Vida.</fo:block>
        								<fo:block padding-top="2mm" padding-bottom="0mm" text-align="justify"  font-size="11pt" color="#000000">- La Edad Tope de Cobertura: 65 a�os 0 d�as.</fo:block>
        								<fo:block padding-top="2mm" padding-bottom="0mm" text-align="justify"  font-size="11pt" color="#000000"><fo:inline font-weight="bold">Condici�n Especial:</fo:inline> Para la contrataci�n del Seguro Vida Salud, deber� tener aprobado el Seguro de Desgravamen. En caso 
        									de ser aceptada con recargo m�dico la cobertura  desgravamen, se rechazar� la solicitud de incorporaci�n a estas coberturas adicionales.</fo:block>
        								<fo:block padding-top="2mm" padding-bottom="0mm" text-align="justify"  font-size="11pt" color="#000000"><fo:inline font-weight="bold">PRIMAS:</fo:inline> La prima �nica se obtiene multiplicando la prima total correspondiente al capital contratado por el n�mero de d�as de vigencia del cr�dito comercial. </fo:block>
        							</fo:table-cell>
        						</fo:table-row>
        					</fo:table-body>
        				</fo:table>
        				        				  
         					<fo:table table-layout="fixed" column-width="195.9mm"   border-top = "0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid">
        						<fo:table-column column-width="48.8mm" border-left="0.25pt solid" />
        						<fo:table-column column-width="48.8mm" border-left="0.25pt solid" />
        						<fo:table-column column-width="48.9mm" border-left="0.25pt solid" />
        						<fo:table-column border-left="0.25pt solid" />
        						<fo:table-body>
        							<fo:table-row background-color="#CCCCCC"   >
        								<fo:table-cell border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid"  ><fo:block padding-top="2mm" padding-bottom="0mm" text-align="center"  font-size="11pt" color="#000000"  >Cobertura</fo:block></fo:table-cell>
        								<fo:table-cell border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" ><fo:block padding-top="2mm" padding-bottom="0mm" text-align="center"  font-size="11pt" color="#000000">Capital Asegurado</fo:block></fo:table-cell>
        								<fo:table-cell border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" ><fo:block padding-top="2mm" padding-bottom="0mm" text-align="center"  font-size="11pt" color="#000000">Prima Neta Diaria UF</fo:block></fo:table-cell>
        								<fo:table-cell border-top="0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" ><fo:block padding-top="2mm" padding-bottom="0mm" text-align="center"  font-size="11pt" color="#000000">Prima Bruta Diaria UF</fo:block></fo:table-cell>
        							</fo:table-row>
        							<fo:table-row>
        								<fo:table-cell border-top="0.25pt solid" border-bottom="0.25pt solid"><fo:block padding-top="2mm" padding-bottom="0mm" text-align="center"  font-size="11pt" color="#000000">MUERTE NATURAL</fo:block></fo:table-cell>
        								<fo:table-cell border-top="0.25pt solid" border-bottom="0.25pt solid"><fo:block padding-top="2mm" padding-bottom="0mm" text-align="center"  font-size="11pt" color="#000000">UF 1000</fo:block></fo:table-cell>
        								<fo:table-cell border-top="0.25pt solid" border-bottom="0.25pt solid"><fo:block padding-top="2mm" padding-bottom="0mm" text-align="center"  font-size="11pt" color="#000000"></fo:block></fo:table-cell>
        								<fo:table-cell border-top="0.25pt solid" border-bottom="0.25pt solid"><fo:block padding-top="2mm" padding-bottom="0mm" text-align="center"  font-size="11pt" color="#000000"></fo:block></fo:table-cell>
        							</fo:table-row>
        							<fo:table-row >
        								<fo:table-cell border-top="0.25pt solid" border-bottom="0.25pt solid"><fo:block padding-top="2mm" padding-bottom="0mm" text-align="center"  font-size="11pt" color="#000000">Invalidez Permanente 2/3</fo:block></fo:table-cell>
        								<fo:table-cell border-top="0.25pt solid" border-bottom="0.25pt solid"><fo:block padding-top="2mm" padding-bottom="0mm" text-align="center"  font-size="11pt" color="#000000">UF 1000</fo:block></fo:table-cell>
        								<fo:table-cell border-top="0.25pt solid" border-bottom="0.25pt solid"><fo:block padding-top="2mm" padding-bottom="0mm" text-align="center"  font-size="11pt" color="#000000"></fo:block></fo:table-cell>
        								<fo:table-cell border-top="0.25pt solid" border-bottom="0.25pt solid"><fo:block padding-top="2mm" padding-bottom="0mm" text-align="center"  font-size="11pt" color="#000000"></fo:block></fo:table-cell>
        							</fo:table-row>
        							<fo:table-row >
        								<fo:table-cell border-top="0.25pt solid" border-bottom="0.25pt solid"><fo:block padding-top="2mm" padding-bottom="0mm" text-align="center"  font-size="11pt" color="#000000">Total Prima Diaria</fo:block></fo:table-cell>
        								<fo:table-cell border-top="0.25pt solid" border-bottom="0.25pt solid"><fo:block padding-top="2mm" padding-bottom="0mm" text-align="center"  font-size="11pt" color="#000000"></fo:block></fo:table-cell>
        								<fo:table-cell border-top="0.25pt solid" border-bottom="0.25pt solid"><fo:block padding-top="2mm" padding-bottom="0mm" text-align="center"  font-size="11pt" color="#000000">0,020</fo:block></fo:table-cell>
        								<fo:table-cell border-top="0.25pt solid" border-bottom="0.25pt solid"><fo:block padding-top="2mm" padding-bottom="0mm" text-align="center"  font-size="11pt" color="#000000">UF 0,021</fo:block></fo:table-cell>
        							</fo:table-row>
        						</fo:table-body>        						
        					</fo:table>    
        				
        				<fo:table table-layout="fixed" column-width="195.9mm"   border-top = "0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid">
        				<fo:table-column border-left="0.25pt solid" />	
        				<fo:table-body>
						<fo:table-row>
        				<fo:table-cell>
        									<fo:block padding-top="2mm" padding-bottom="0mm" text-align="left" font-weight="bold" font-size="11pt" color="#000000">EXCLUSIONES:</fo:block>
        									<fo:block padding-top="2mm" padding-bottom="0mm" text-align="justify" font-size="11pt" color="#000000">Este seguro no cubre el riesgo de muerte si el fallecimiento del asegurado fuere causado por:
        										a) Suicidio, automutilaci�n, o autolesi�n, a menos que de acuerdo al N� 7 del art�culo 556 del C�digo de Comercio se acredite 
        										que el asegurado actu� totalmente privado de la raz�n, correspondiendo, en todo caso, a la compa��a acreditar el hecho del 
        										suicidio. No obstante, la compa��a aseguradora pagar� el capital asegurado a los beneficiarios, si el fallecimiento ocurriera 
        										como consecuencia de suicidio, siempre que hubieran transcurrido dos (2) a�os completos e ininterrumpidos desde la fecha de 
        										contrataci�n del seguro, desde su rehabilitaci�n o desde el aumento de capital asegurado.  En �ste �ltimo caso, el plazo se 
        										considerar� s�lo para el pago del incremento del capital asegurado. b) Pena de muerte o por participaci�n en cualquier acto 
        										delictivo. c) Acto delictivo cometido, en calidad de autor o c�mplice, por un beneficiario o quien pudiere reclamar la cantidad 
        										asegurada o la indemnizaci�n. d) Guerra, invasi�n, actos de enemigos extranjeros, hostilidades u operaciones b�licas, sea que 
        										haya habido o no declaraci�n de guerra, guerra civil, insurrecci�n, sublevaci�n, rebeli�n, sedici�n, mot�n o hechos que las leyes
        										califican como delitos contra la seguridad interior del Estado. e) Participaci�n activa del asegurado en acto terrorista, 
        										entendi�ndose por acto terrorista toda conducta calificada como tal por la ley, as� como el uso de fuerza o violencia o la amenaza
        										de �sta, por parte de cualquier persona o grupo, motivado por causas pol�ticas, religiosas, ideol�gicas o similares, con la intenci�n 
        										de ejercer influencia sobre cualquier gobierno o de atemorizar a la poblaci�n, o a 
        									</fo:block>
					        				</fo:table-cell>
											</fo:table-row>	
					        				</fo:table-body>
					        				</fo:table>	
        		
        			
        				<fo:table border-collapse="collapse">
        					<fo:table-column   />
        					<fo:table-body>
        						<fo:table-row>
        							<fo:table-cell >
        								<fo:block font-family="Helvetica"   font-weight="bold" text-align="right" vertical-align="middle" line-height="4.5mm" font-size="9pt"> </fo:block>
        							</fo:table-cell>
        						</fo:table-row>     
        						<fo:table-row>
        							<fo:table-cell >
        								<fo:block font-family="Helvetica"   font-weight="bold" text-align="right" vertical-align="middle" line-height="4.5mm" font-size="9pt">CONTIN�A EN P�GINA SIGUIENTE</fo:block>
        							</fo:table-cell>
        						</fo:table-row>
        					</fo:table-body>
        				</fo:table>
        				
        			</fo:flow>
        		</fo:page-sequence>

        		<fo:page-sequence master-reference="paginaPrincipal">
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
        											<xsl:value-of select="IncorporacionSeguros/logoBciSeguros"/>
        										</xsl:attribute>
        									</fo:external-graphic>
        								</fo:block>
        							</fo:table-cell>
        							<fo:table-cell >
        								<fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACI�N</fo:block>
        								<fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SEGUROS COLOCACIONES PARA CREDITO COMERCIAL</fo:block>
        							</fo:table-cell>
        							<fo:table-cell >
        								<fo:block >
        									<fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
        										<xsl:attribute name="src">
        											<xsl:value-of select="IncorporacionSeguros/logoBciCorredoresSeguros"/>
        										</xsl:attribute>
        									</fo:external-graphic>
        								</fo:block>
        							</fo:table-cell>
        						</fo:table-row>
        					</fo:table-body>
        				</fo:table>
        				
        		
        										
        				<fo:table table-layout="fixed" column-width="195.9mm"   border-top = "0.25pt solid" border-bottom="0.25pt solid" border-left="0.25pt solid" border-right="0.25pt solid">
        					<fo:table-column border-left="0.25pt solid" />	
        					<fo:table-body>
        						<fo:table-row>
        							<fo:table-cell>        								
        								<fo:block padding-top="2mm" padding-bottom="0mm" text-align="justify" font-size="11pt" color="#000000">	
        										cualquier segmento de la misma. f) Participaci�n 
        										del asegurado en actos temerarios o en cualquier maniobra, experimento, exhibici�n, desaf�o o actividad notoriamente peligrosa, 
        										entendiendo por tales aquellas donde se pone en grave peligro la vida e integridad f�sica de las personas. g) Realizaci�n o 
        										participaci�n en una actividad o deporte riesgoso, consider�ndose como tales aquellos que objetivamente constituyan una 
        										flagrante agravaci�n del riesgo y/o se requiera de medidas de protecci�n y/o seguridad para realizarlos. h) Situaci�n o enfermedad 
        										preexistente, entendi�ndose por tales cualesquiera enfermedad, patolog�a, incapacidad, lesi�n o dolencia que afecte al 
        										asegurado, conocida o diagnosticada con anterioridad a la fecha de incorporaci�n a la p�liza. Para los efectos de la aplicaci�n de 
        										esta exclusi�n, al momento de la contrataci�n la Compa��a Aseguradora deber� consultar al Asegurable acerca de todas aquellas 
        										situaciones o enfermedades preexistentes que pueden importar una limitaci�n o exclusi�n de cobertura.   j) Una infecci�n 
        										oportunista o neoplasma maligno causado o que resulte como consecuencia que, a la fecha del siniestro, el asegurado estuviere 
        										afecto o fuere portador del S�ndrome de Inmunodeficiencia Adquirida.  Con tal prop�sito, se entender� por: "S�ndrome de 
        										Inmunodeficiencia Adquirida o SIDA", lo dispuesto para tal efecto por la Organizaci�n Mundial de la Salud., S�ndrome de 
        										Inmunodeficiencia Adquirida incluir� encefalopat�a, demencia por Virus de la Inmunodeficiencia Humana, V.I.H., y s�ndrome de 
        										desgaste por Virus de Inmunodeficiencia Humana, V.I.H., Infecci�n Oportunista incluye, pero no debe limitarse a, neumon�a 
        										causada por pneumocystis carinii, organismo de enteritis cr�nica, infecci�n v�rica o infecci�n microbacteriana diseminada, 
        										Neoplasma Maligno incluye, pero no debe limitarse, al sarcoma de Kaposi, al linfoma del sistema nervioso central o a otras 
        										afecciones malignas ya conocidas o que puedan conocerse como causas inmediatas de muerte en presencia de una 
        										inmunodeficiencia adquirida.
        									</fo:block>
        									<fo:block>De ocurrir el fallecimiento del asegurado debido a alguno de los hechos o circunstancias antes se�aladas, se producir� el 
        										t�rmino del seguro, no existiendo obligaci�n de indemnizaci�n alguna por parte de la Compa��a
        									</fo:block>
        									<fo:block padding-top="2mm" padding-bottom="0mm" text-align="left" font-weight="bold" font-size="11pt" color="#000000"> PROCEDIMIENTO DE SINIESTROS </fo:block>
        									<fo:block padding-top="2mm" padding-bottom="0mm" text-align="justify" font-size="11pt" color="#000000">
        										En todos los casos la compa��a se reserva el derecho de pedir mayores antecedentes para la liquidaci�n del siniestro. En todas  
        										las denuncias deber� dejarse constancia del nombre, direcci�n y tel�fono de la persona denunciante para posteriores contactos 
        										que sean necesarios.
        									</fo:block>
        									<fo:block padding-top="2mm" padding-bottom="0mm" text-align="justify" font-size="11pt" color="#000000">En caso de fallecimiento natural, los beneficiarios deber�n presentar a la compa��a la siguiente documentaci�n:</fo:block>
        									<fo:block padding-top="2mm" padding-bottom="0mm" text-align="justify" font-size="11pt" color="#000000">1) Formulario de denuncia del siniestro completo. 2) Fotocopia de la c�dula de identidad del afiliado. 3) Certificado de defunci�n </fo:block>
        									<fo:block padding-top="2mm" padding-bottom="0mm" text-align="justify" font-size="11pt" color="#000000">1) original. 4) Certificado de prueba de muerte. 5) En caso de muerte accidental, deber� adjuntarse adem�s: El parte policial o dictamen de la justicia en caso de presunta muerte en conformidad a la ley. </fo:block>
        								</fo:table-cell>
										</fo:table-row>
        					</fo:table-body>
        				</fo:table>
        				
        				<fo:table border-collapse="collapse">
        					<fo:table-column/>
        					<fo:table-body>
        						<fo:table-row>
        							<fo:table-cell >
        								<fo:block font-family="Helvetica"   font-weight="bold" text-align="right" vertical-align="middle" line-height="4.5mm" font-size="9pt">  </fo:block>
        							</fo:table-cell>
        						</fo:table-row>        							
        						<fo:table-row>
        							<fo:table-cell >
        								<fo:block font-family="Helvetica"   font-weight="bold" text-align="right" vertical-align="middle" line-height="4.5mm" font-size="9pt">CONTIN�A EN P�GINA SIGUIENTE</fo:block>
        							</fo:table-cell>
        						</fo:table-row>
        					</fo:table-body>
        				</fo:table>
        				
        			</fo:flow>
        		</fo:page-sequence>
        	</xsl:if>
<!--  -->        	
          
    <xsl:variable name="primBrutaSegInfoProt" select="IncorporacionSeguros/primaBrutaSeguroInfoProtegida" />
    <xsl:if  test="$primBrutaSegInfoProt &gt; 0">          
	<fo:page-sequence master-reference="paginaPrincipal">
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
      					        <xsl:value-of select="IncorporacionSeguros/logoBciSeguros"/>
                                       		</xsl:attribute>
                                     </fo:external-graphic>
	                  </fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACI�N</fo:block>
	                  <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SEGUROS COLOCACIONES PARA CREDITO COMERCIAL</fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block >
				     <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
                                                <xsl:attribute name="src">
                                       		<xsl:value-of select="IncorporacionSeguros/logoBciCorredoresSeguros"/>
                                       		</xsl:attribute>
                                     </fo:external-graphic>
	                  </fo:block>
	               </fo:table-cell>
	            </fo:table-row>
	         </fo:table-body>
             </fo:table>

 	   <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
		<!--  SEGURO DE INFO PROTEGIDA -->
	   <fo:table border-collapse="collapse">
	    <fo:table-column/>	   
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>SEGURO INFO PROTEGIDA:</fo:block>		    
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>

	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>

	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
	      	
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Compa��a Aseguradora: </fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">BCI Seguros Generales S.A.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>
   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Materia Asegurada:</fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">Corresponde al contenido depositado en la direcci�n del riesgo individualizada en la presente Solicitud de Incorporaci�n.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>
	   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Vigencia:</fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">La cobertura regir� desde la fecha en que el banco otorga efectivamente el cr�dito y la compa�ia Aseguradora acepta asumir el riesgo, hasta el vencimiento del cr�dito.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>

	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	
	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Beneficiario:</fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">Corresponde al asegurado individualizado en la presente Solicitud de Incorporaci�n.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	   	   
	   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Cobertura:</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	

           	<!--  Incendio Contenido  (POL 1 90 006) hasta UF-->
        <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Incendio Contenido  (POL 1 90 006) hasta UF 50</fo:block>
		    </fo:table-cell>
		 </fo:table-row>		 
	      </fo:table-body>
	   </fo:table>	
   

	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column border-left="0.5pt solid black" border-right="0.5pt solid black"  />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Servicios Adicionales:</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	
	   
   	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">a) Asistencia Telef�nica:</fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">En caso de requerir soluci�n de problemas relativos al uso del PC, a nivel de navegaci�n por Internet, la empresa de asistencia apoyara telef�nicamente al beneficiario frente a las siguientes dificultades:</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="5mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="190.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Problemas de arranque del computador, causas de virus, p�rdida de archivos de arranque del sistema operativo</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Problemas de des configuraci�n del computador, no reconocimiento de dispositivos, discos duros, cdrom etc.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>	
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Problemas del sistema operativo (lentitud). Se queda colgado.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Problemas de configuraciones de acceso a Internet.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Problemas de funcionamiento de software adicional, por virus, programas esp�as, troyanos.  Ej. Office.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Problemas de funcionamiento por falla de partes y piezas del computador.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Problemas de mala configuraci�n de los drivers para los dispositivos.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Problemas de mala configuraci�n de correos electr�nicos, entrante o saliente.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Problemas de teclado y mouse, que no funcionan por falta de mantenci�n, teclas se pegan y mouse no corre.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Problemas de video por instalaci�n de juegos que cambian la configuraci�n original de las tarjetas. Pantalla negra.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Problema de funcionamiento por cables mal instalados.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Coordinaci�n para la compra de insumos computacionales</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Limitaciones del servicio: M�ximo de 3 eventos por mes.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>		 		 		 		 		 		 		 		 		 		 		 	 		 
	      </fo:table-body>
	   </fo:table>	
	   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>

   	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">b) Env�o de un T�cnico:</fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">en el caso de no poder solucionar la dificultad telef�nicamente, el beneficiario podr� solicitar la visita de un t�cnico a su domicilio. El costo de la visita ser� de cargo del beneficiario.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	

	 <fo:table border-collapse="collapse">
	      <fo:table-column column-width="5mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="190.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Limitaciones del servicio: Carencia de 15 d�as a partir de la fecha de suscripci�n del producto.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>	   
	      </fo:table-body>
	   </fo:table>		   	   

   	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">c) Servicio de Recuperaci�n de Datos:</fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">Este servicio incluye recuperaci�n de datos en Discos Duros tipo PATA / SATA de 1,8" a 5,25", Flash Drive: Tarjetas de memoria extra�bles (MMC, CF, SD, Memory Stick), pendrives / thumbdrives USB y similares.  </fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	

	 <fo:table border-collapse="collapse">
	      <fo:table-column column-width="5mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="190.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Se cubre la recuperaci�n de datos por Error humano, Corrupci�n de Software, Ataque de virus, Falla de hardware, Sabotaje, Desastres naturales, Problemas de lectura Informaci�n ilegible</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Servicio incluye la evaluaci�n, recuperaci�n y env�o de datos de respaldo en medio de respaldo.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Limitaciones del servicio: L�mite M�ximo por evento UF 10, con m�ximo de 1 eventos / per�odo. Carencia de 15 d�as a partir de la fecha de suscripci�n del producto.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>		 		 	   
	      </fo:table-body>
	   </fo:table>	
	   	   	   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>

   	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Comisi�n de Intermediaci�n:</fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">30 % de la prima neta</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	
	   	
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	   <fo:block line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>	   	   	   	   
	  
	   <fo:table border-collapse="collapse">
	      <fo:table-column   />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica"   font-weight="bold" text-align="right" vertical-align="middle" line-height="4.5mm" font-size="9pt">CONTIN�A EN P�GINA SIGUIENTE</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	 

      </fo:flow>
     </fo:page-sequence>  
    </xsl:if>
      
    <xsl:variable name="primBrutaSegAsisTot" select="IncorporacionSeguros/primaBrutaSeguroAsistenciaTotal" />               
    <xsl:if  test="$primBrutaSegAsisTot &gt; 0"> 
	<fo:page-sequence master-reference="paginaPrincipal">
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
      					        <xsl:value-of select="IncorporacionSeguros/logoBciSeguros"/>
                                       		</xsl:attribute>
                                     </fo:external-graphic>
	                  </fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACI�N</fo:block>
	                  <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SEGUROS COLOCACIONES PARA CREDITO COMERCIAL</fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block >
				     <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
                                                <xsl:attribute name="src">
                                       		<xsl:value-of select="IncorporacionSeguros/logoBciCorredoresSeguros"/>
                                       		</xsl:attribute>
                                     </fo:external-graphic>
	                  </fo:block>
	               </fo:table-cell>
	            </fo:table-row>
	         </fo:table-body>
             </fo:table>

 	   <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
		
	   <fo:table border-collapse="collapse">
	    <fo:table-column/>	   
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>SEGURO ASISTENCIA TOTAL:</fo:block>		    
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>

	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="1mm"><fo:leader leader-pattern="space" /></fo:block>

	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
	      	
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Compa��a Aseguradora: </fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">BCI Seguros Generales S.A.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>
   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="1mm"><fo:leader leader-pattern="space" /></fo:block>
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Materia Asegurada:</fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">Corresponde a la direcci�n del riesgo individualizada en la presente Solicitud de Incorporaci�n. </fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>
	   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="1mm"><fo:leader leader-pattern="space" /></fo:block>
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Vigencia:</fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">La cobertura regir� desde la fecha en que el banco otorga efectivamente el cr�dito y la Compa��a Aseguradora acepta asumir el riesgo, hasta el vencimiento del cr�dito.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>

	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="1mm"><fo:leader leader-pattern="space" /></fo:block>
	
	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Beneficiario:</fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">Corresponde al asegurado individualizado en la presente Solicitud de Incorporaci�n.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	   	   
	   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="1mm"><fo:leader leader-pattern="space" /></fo:block>
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column border-left="0.5pt solid black" border-right="0.5pt solid black"  />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Cobertura:</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	
	   
   	   <fo:table border-collapse="collapse">
	      <fo:table-column   border-left="0.5pt solid black" border-right="0.5pt solid black"  />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Asistencia Oficinas y Peque�os Locales Comerciales (POL 1 96 017)</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-right="0.5pt solid black"  border-left="0.5pt solid black"  />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">El presente seguro se extiende a cubrir los servicios de asistencia domiciliaria de urgencia que requiera la vivienda o inmueble asegurado, siempre que se relacionen con alguno de los siguientes eventos que origine la necesidad de reparar la rotura o aver�a en forma inmediata:</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Gasfiter�a: l�mite m�ximo por evento UF1,5 ;  m�ximo 3 eventos / per�odo.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>	
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Electricidad: l�mite m�ximo por evento UF1,5;  m�ximo 3 eventos / per�odo.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Cerrajer�a: l�mite m�ximo por evento UF1,5 ;  m�ximo 3 eventos / per�odo.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Vidrier�a: l�mite m�ximo por evento UF 2 ;  m�ximo 2 eventos / per�odo.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Coordinaci�n: para los casos que no correspondan a una prestaci�n de servicios de urgencia, a solicitud del beneficiario, la empresa de asistencia enviar� un proveedor a su domicilio con el objeto de realizar un presupuesto. La reparaci�n que se realice en estos casos ser� de cargo del beneficiario.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Los servicios estar�n garantizados hasta por 90 d�as posteriores a la firma de la conformidad en la entrega del servicio por parte del asegurado.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	

	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="1mm"><fo:leader leader-pattern="space" /></fo:block>
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column border-left="0.5pt solid black" border-right="0.5pt solid black"  />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Servicios Adicionales:</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	
	   
   	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">a) Asistencia Operativa:</fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">servicio de recepci�n y conserjer�a en caso de licencia m�dica de la secretaria y/o junior, ambos con contrato de duraci�n indefinida vigente. Con un tope m�ximo de dos licencias por colaborador / per�odo (dos por la secretaria, dos por el junior)</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	
	   
	  <fo:table border-collapse="collapse">
	      <fo:table-column  border-right="0.5pt solid black"  border-left="0.5pt solid black"  />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Este servicio incluye:</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">-Recepci�n recados, programaci�n de reuniones. Ilimitado.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>	
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">-Reserva de taxi, autom�vil, billete de avi�n y hotel. Ilimitado.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">-Servicio de Junior para:</fo:block>
		    </fo:table-cell>
		 </fo:table-row>	 
	      </fo:table-body>
	   </fo:table>	
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="5mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="190.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Pago de cuentas de servicios, al d�a. M�ximo cuentas correspondientes a 1 mes.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Temas Sanitarios para la obtenci�n de permisos sanitarios. M�ximo 2  eventos, 1 d�a por tr�mite.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Tr�mites municipales para la obtenci�n de permisos y patentes municipales. M�ximo 2 eventos, 1 d�a por tr�mite.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Tr�mites varios en notar�as o con clientes. M�ximo 2 eventos, 1 d�a por evento.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>	   		 	   
	      </fo:table-body>
	   </fo:table>
	   
   	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">b) Asistencia Jur�dica: </fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">Este servicio incluye:</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	
	   
	  <fo:table border-collapse="collapse">
	      <fo:table-column  border-right="0.5pt solid black"  border-left="0.5pt solid black"  />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">1.- Asistencia por robo, hurto o extrav�o de la documentaci�n contable de la empresa. Consecuencias Legales, Denuncio, avisos y tr�mites en SII, formulario 3238, plazos, Reconstituci�n de documentaci�n contable</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">2.- Asistencia por robo, hurto o extrav�o de la documentaci�n financiera de la empresa. Denuncio en carabineros y tr�mites de orden de no pago, Informaci�n de tr�mites para la aclaraci�n de protestos en el bolet�n de informaciones comerciales.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>	
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">3.- Asistencia a la empresa por las responsabilidades legales del profesional contable de la empresa. (SII y organismos de  previsi�n social). Consecuencias legales y tr�mites en el SII y organismos de previsi�n social.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>	
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">4.- Asistencia en temas laborales. Contrataciones y desvinculaciones</fo:block>
		    </fo:table-cell>
		 </fo:table-row>	
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">5.- Asistencia en temas sanitarios</fo:block>
		    </fo:table-cell>
		 </fo:table-row>	
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">6.- Tr�mites en municipalidades</fo:block>
		    </fo:table-cell>
		 </fo:table-row>	
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">7.- Servicios de Bloqueo y Publicaci�n de Documentaci�n Financiera: Bloqueo preventivo en Dicom de chequera o cheques y tarjeta de cr�dito de la Empresa, Costos de publicaci�n de ordenes de NO pago y bloqueos de chequera y/o cheques cuyo bloqueo preventivo haya sido tramitado a trav�s de AXA ASSISTANCE,</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">8.-Honorarios de Abogado:</fo:block>
		    </fo:table-cell>
		 </fo:table-row>	 
	      </fo:table-body>
	   </fo:table>	
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="5mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="190.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Documentaci�n Contable: representaci�n judicial en presentaci�n de querellas contra quienes resulten responsables del robo o hurto, representaci�n judicial en presentaci�n de querellas contra quienes resulten responsables del mal uso de la documentaci�n.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Documentaci�n Financiera: representaci�n simple por cobranzas extrajudiciales, presentaci�n y representaci�n en querellas, redacci�n de mandatos o poderes, representaci�n judicial en procedimientos de reconstituci�n judicial de t�tulos de cr�dito.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Responsabilidad Legal por acciones del profesional contable: representaci�n extrajudicial en negociaciones, representaci�n en la solicitud de documentaci�n que deba restituir el profesional contable, representaci�n en querellas criminales contra el profesional contable.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Temas Laborales: Contratos Laborales, Desvinculaciones, Representaci�n en juicios laborales.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>	   		 	   
	      </fo:table-body>
	   </fo:table>	   
	   	   	
	   <fo:table border-collapse="collapse">
	      <fo:table-column border-left="0.5pt solid black" border-right="0.5pt solid black"  />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Limitaciones del servicio:</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	
	   	   	   
	  <fo:table border-collapse="collapse">
	      <fo:table-column  border-right="0.5pt solid black"  border-left="0.5pt solid black"  />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Servicios de Orientaci�n e Informaci�n : Ilimitado</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Servicios de Bloqueo y Publicaci�n: m�ximo de 4 eventos por per�odo.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">- Honorarios de Abogado: m�ximo de 2 eventos por per�odo, con un tope de UF 50 de cobertura por evento.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>		
	   
   	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Comisi�n de Intermediaci�n:</fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">30 % de la prima neta</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	
	   	   	 	   	   	   	   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black" line-height="1mm"><fo:leader leader-pattern="space" /></fo:block>
	   	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column   />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica"   font-weight="bold" text-align="right" vertical-align="middle" line-height="4.5mm" font-size="9pt">CONTIN�A EN P�GINA SIGUIENTE</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	 

           </fo:flow>
        </fo:page-sequence> 
    </xsl:if>
    
    <xsl:variable name="primBrutaSegRespCivEmp" select="IncorporacionSeguros/primaBrutaSeguroRespCivilEmpresa" />
    <xsl:if  test="$primBrutaSegRespCivEmp &gt; 0">              	          
	<fo:page-sequence master-reference="paginaPrincipal">
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
      					        <xsl:value-of select="IncorporacionSeguros/logoBciSeguros"/>
                                       		</xsl:attribute>
                                     </fo:external-graphic>
	                  </fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACI�N</fo:block>
	                  <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SEGUROS COLOCACIONES PARA CREDITO COMERCIAL</fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block >
				     <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
                                                <xsl:attribute name="src">
                                       		<xsl:value-of select="IncorporacionSeguros/logoBciCorredoresSeguros"/>
                                       		</xsl:attribute>
                                     </fo:external-graphic>
	                  </fo:block>
	               </fo:table-cell>
	            </fo:table-row>
	         </fo:table-body>
             </fo:table>

 	   <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
		
	   <fo:table border-collapse="collapse">
	    <fo:table-column/>	   
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block border-top="0.5pt solid black" border-bottom="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>SEGURO RESPONSABILIDAD CIVIL EMPRESAS:</fo:block>		    
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>

	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>

	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
	      	
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Compa��a Aseguradora: </fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">BCI Seguros Generales S.A.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>
	   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Materia Asegurada: </fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">Cubre la responsabilidad civil extracontractual de Empresa, por da�os materiales y/o corporales que pudieran afectar a terceros, derivados de su actividad.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>
	   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Vigencia: </fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">Anual a partir de la fecha en que el banco otorga efectivamente el cr�dito</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>

	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	
	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Beneficiario: </fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">Corresponde al asegurado individualizado en la presente Solicitud de Incorporaci�n.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	   	   
	   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Cobertura:</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	

	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Responsabilidad Civil General (POL 1 02 030), incluyendo los siguientes  adicionales:</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	
   
	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="5mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="190.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">-Cl�usula de Responsabilidad Civil de Inmueble    (CAD 1 02 036)</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell ><fo:block> </fo:block></fo:table-cell>		 
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">-Cl�usula de Responsabilidad Civil de Empresa     (CAD 1 02 037)</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>		
	   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Monto Asegurado: </fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">El monto asegurado corresponde al l�mite �nico y combinado para la totalidad de las indemnizaciones y gastos acumulados durante la vigencia del seguro.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	  	   
	   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Deducibles: </fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">10% de la p�rdida, con un m�nimo de UF 10, en toda y cada p�rdida.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	 	   
	   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Condiciones Particulares:</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	

	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Dado que las partes no han pactado per�odo alguno de cobertura anterior a la vigencia de la presente p�liza, la compa��a no tendr� responsabilidad alguna por hechos ocurridos con anterioridad a la se�alada vigencia, a�n cuando estos hallan sido reclamados durante dicho per�odo.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Una vez transcurrido el per�odo de vigencia de la presente p�liza, el asegurado dispondr� de un plazo adicional de 30 d�as para la presentaci�n a la compa��a de cualquier denuncio de siniestro que se funde en hechos ocurridos antes del se�alado per�odo de t�rmino original de la vigencia. La compa��a no tendr� responsabilidad alguna por siniestros presentados con posterioridad al se�alado plazo adicional, a menos que medie indicaci�n escrita en contrario.</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>		   
	   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Riesgos no cubiertos:</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	

	   <fo:table border-collapse="collapse">
	      <fo:table-column  border-left="0.5pt solid black" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Responsabilidad Civil de veh�culos y equipo m�vil; perdidas financieras puras; da�os patrimoniales puros; transporte de inflamables, explosivos, corrosivos y cualquier tipo de sustancias peligrosas; extracci�n y explotaci�n de minerales; cualquier da�o y/o p�rdida por poluci�n y/o contaminaci�n ambiental, da�os al medio ambiente, pruebas y/o experimentaci�n; da�os directos y/o indirectos por virus transmitidos por medios electromagn�ticos, Internet, correos electr�nicos y otros medios de transmisi�n; cualquier da�o directo y/o indirecto, perdida, demanda, reclamaci�n o acci�n judicial cuya causa o fundamento tenga su origen o se relacione de cualquier manera con el asbesto o con materiales que contengan asbesto, actos dolosos y/o malintencionados efectuados por parte del asegurado y/o sus dependientes; da�o moral y/o consecuencial puros; Exclusi�n de terrorismo CUG 3 01 019; Exclusi�n Datos electr�nicos CUG 1 02 074</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	
	   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column column-width="60mm"    border-left="0.5pt solid black"  />
	      <fo:table-column column-width="135.9mm" border-right="0.5pt solid black" />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" font-size="11pt">Comisi�n de Intermediaci�n:</fo:block>
		    </fo:table-cell>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt">15 % de la prima neta</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	   
	   	   
	   <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black" line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
	   <fo:block line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>	   	   	   	   

	   
	   <fo:table border-collapse="collapse">
	      <fo:table-column   />
	      <fo:table-body>
		 <fo:table-row>
		    <fo:table-cell >
		       <fo:block font-family="Helvetica"   font-weight="bold" text-align="right" vertical-align="middle" line-height="4.5mm" font-size="9pt">CONTIN�A EN P�GINA SIGUIENTE</fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	      </fo:table-body>
	   </fo:table>	 

           </fo:flow>
        </fo:page-sequence>
    </xsl:if>        	             	            	      
	<fo:page-sequence master-reference="paginaPrincipal">
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
      					        <xsl:value-of select="IncorporacionSeguros/logoBciSeguros"/>
                                       		</xsl:attribute>
                                     </fo:external-graphic>
	                  </fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACI�N</fo:block>
	                  <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SEGUROS COLOCACIONES PARA CREDITO COMERCIAL</fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block >
				     <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
                                                <xsl:attribute name="src">
                                       		<xsl:value-of select="IncorporacionSeguros/logoBciCorredoresSeguros"/>
                                       		</xsl:attribute>
                                     </fo:external-graphic>
	                  </fo:block>
	               </fo:table-cell>
	            </fo:table-row>
	         </fo:table-body>
             </fo:table>

   
   
   
   
              <fo:table border-collapse="collapse">
                 <fo:table-column />
                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block font-family="Helvetica" border-top="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black"  text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt" margin-left="1mm" margin-right="2mm">Declaro recibir en el acto un duplicado del documento individualizado y acepto las condiciones de asegurabilidad descritas.</fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block font-family="Helvetica" border-right="0.5pt solid black" border-left="0.5pt solid black" border-bottom="0.5pt solid black" text-align="justify" vertical-align="middle" line-height="4.5mm" font-size="11pt" margin-left="1mm" margin-right="2mm">La presente solicitud de incorporaci�n ser� aceptada por BCI Seguros de Vida S.A. y/o Bci Seguros Generales S.A. en forma inmediata con las exclusiones antes se�aladas y otorgar� cobertura, una vez que la operaci�n crediticia  individualizada sea cursada por el Banco de Cr�dito e Inversiones.</fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>
   
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
   
              <fo:table border-collapse="collapse">
                 <fo:table-column />
                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block font-family="Helvetica" border-top="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black" border-bottom="0.5pt solid black" text-align="center" font-weight="bold" vertical-align="middle" line-height="4.5mm" font-size="11pt" background-color="#BDBDBD">INFORMACION ART. 57 Y 58 DEL DL N� 251.</fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse">
                 <fo:table-column   border-right="0.5pt solid black" border-left="0.5pt solid black" border-bottom="0.5pt solid black" />
                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block font-family="Helvetica" text-align="justify" margin-left="1mm" margin-right="2mm" vertical-align="middle" line-height="4.5mm" font-size="11pt">Bci Corredores de Seguros S.A. , Rut 78.951.950-1 , en mi calidad de Corredor de seguros y en cumplimiento a la ley , informo que durante el a�o calendario anterior intermedi� contratos de seguros con las siguientes Compa��as de seguros .</fo:block>
                       </fo:table-cell>
                    </fo:table-row>
					
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block font-family="Helvetica" text-align="justify" margin-left="1mm" margin-right="2mm" vertical-align="middle" line-height="4.5mm" font-size="11pt"><fo:inline font-weight="bold">En Seguros Generales:</fo:inline> El 79,28 % en BCI Seguros Generales S.A., el 7,40 % con la Compa��a de Seguros Generales Cardif  S.A., el 3,28 % con Aseguradora Magallanes S.A., el 3,24 % con Liberty Compa��a de Seguros Generales S.A., el 2,45 % con Royal Sun alliance Seguros S.A., el 1,83 % con Mapfre Seguros Generales SA., el 1,10 % con C.S.G. Penta Security S.A. , el 0,75 % con Consorcio Nacional  de Seguros Generales S.A.  y otras 1,42 % . <fo:inline font-weight="bold">En Seguros de Vida:</fo:inline> El 65,69 % con Bci Seguros de Vida S.A., el 24,71 % con la Compa��a de Seguros de Vida Cardif  S.A , el 5,66 % con Chilena Consolidada Seguros de Vida S.A., el 2,02 % en la Interamericana Compa��a de Seguros de Vida S.A. , el 1,03 % con Euroamerica Vida S.A, el 0,42 % con Consorcio Nacional Vida  y otras 0,47 %. <fo:inline font-weight="bold">En Renta Vitalicia:</fo:inline> El 25,62 % con Principal Compa��a de Seguros de Vida Chile S.A., el 23,50 % con Met Life Chile  Seguros de Vida S.A., el 11,25% con Compa��a de Seguros de Vida Corp S.A. , el 8,25% con ING Vida S.A., el 6,92 % con Cruz del Sur Vida S.A.,.el 6,57% con Penta Vida Compa��a de Seguros de Vida S.A., el 5,78 % con C.S.V Consorcio Nacional de Seguros S.A , el   4,08 % con Bci Seguros Vida S.A. , el 2,54 % con Renta Vida S.A. , el 2,07% con Euroamerica Seguros de Vida S.A. y otras  3,43 %.</fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block font-family="Helvetica" text-align="justify" margin-left="1mm" margin-right="2mm" vertical-align="middle" line-height="4.5mm" font-size="11pt">Para responder del correcto y cabal cumplimiento de todas mis obligaciones emanadas de la actividad de Corredor de Seguros y en especial de los perjuicios que pueda ocasionar a los asegurados que contraten seguros por mi intermedio se ha emitido P�liza de Responsabilidad  Civil  N� 4282810 y P�liza de Garant�a N� 10009577 en Consorcio Nacional de Seguros  S.A.</fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>
              
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

            <fo:block line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
              
              <fo:table border-collapse="collapse">
                 <fo:table-column  column-width="15mm"/>
                 <fo:table-column  column-width="135.9mm"/>
                 <fo:table-column  column-width="28mm"/>
                 <fo:table-column  column-width="17mm"/>

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block><fo:leader leader-pattern="space" leader-length="1mm" /></fo:block>
                       </fo:table-cell >                     
                       <fo:table-cell>
                          <fo:block   font-family="Helvetica" space-before="10mm" font-size="12pt" vertical-align="middle" text-align="left"><fo:leader leader-pattern="space" leader-length="1mm" /><xsl:value-of select="IncorporacionSeguros/fechaSuscripcion"/></fo:block>
                       </fo:table-cell >
                       <fo:table-cell >
                          <fo:block   line-height="4.5mm" margin-left="1mm">
                           <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="IncorporacionSeguros/firmaCorredoresSeguros"/>
                                            </xsl:attribute>
                                     </fo:external-graphic>
                          </fo:block>
                       </fo:table-cell>
                       <fo:table-cell >
                          <fo:block><fo:leader leader-pattern="space" leader-length="1mm" /></fo:block>
                       </fo:table-cell >                       
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>
			  
              <fo:table border-collapse="collapse" >
                 <fo:table-column column-width="50mm"/>
                 <fo:table-column column-width="50.9mm"/>                
                 <fo:table-column column-width="45mm"/>
                 <fo:table-column column-width="50mm"/>                

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                         <fo:block line-height="4.5mm" text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="20mm"/>Fecha</fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                         <fo:block line-height="4.5mm" text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm">Firma del Asegurable</fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                         <fo:block line-height="4.5mm" text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm">Firma del Titular</fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                         <fo:block line-height="4.5mm" text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="5mm"/>Firma del Corredor</fo:block>
                      </fo:table-cell>
                   </fo:table-row>
                </fo:table-body>
              </fo:table>

           </fo:flow>
        </fo:page-sequence>


<fo:page-sequence master-reference="paginaPrincipal">
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
      					        <xsl:value-of select="IncorporacionSeguros/logoBciSeguros"/>
                                       		</xsl:attribute>
                                     </fo:external-graphic>
	                  </fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACI�N</fo:block>
	                  <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SEGUROS COLOCACIONES PARA CREDITO COMERCIAL</fo:block>
	               </fo:table-cell>
	               <fo:table-cell >
	                  <fo:block >
				     <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
                                                <xsl:attribute name="src">
                                       		<xsl:value-of select="IncorporacionSeguros/logoBciCorredoresSeguros"/>
                                       		</xsl:attribute>
                                     </fo:external-graphic>
	                  </fo:block>
	               </fo:table-cell>
	            </fo:table-row>
	         </fo:table-body>
             </fo:table>

   
   
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
   
              <fo:table border-collapse="collapse">
                 <fo:table-column />
                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block font-family="Helvetica" border-top="0.5pt solid black" border-right="0.5pt solid black" border-left="0.5pt solid black" border-bottom="0.5pt solid black" text-align="center" font-weight="bold" vertical-align="middle" line-height="4.5mm" font-size="11pt" background-color="#BDBDBD">ANEXO:  DETALLE DE COMISIONES</fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>

	      <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black"  ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	      
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="5.95mm"  border-left="0.5pt solid black" />
                  <fo:table-column column-width="92mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="92mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="5.95mm"  border-left="0.5pt solid black" border-right="0.5pt solid black" />

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">PRODUCTO</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">COMISI�N DE INTERMEDIACI�N</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            
                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="5.95mm"  border-left="0.5pt solid black" />
                  <fo:table-column column-width="92mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="92mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="5.95mm"  border-left="0.5pt solid black" border-right="0.5pt solid black" />

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left"  margin-left="1mm" line-height="4.5mm">Desgravamen</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center"  margin-left="1mm" line-height="4.5mm">25%</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            
                      </fo:table-row>
                </fo:table-body>
              </fo:table>        
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="5.95mm"  border-left="0.5pt solid black" />
                  <fo:table-column column-width="92mm"    border-left="0.5pt solid black" />
                  <fo:table-column column-width="92mm"    border-left="0.5pt solid black" />
                  <fo:table-column column-width="5.95mm"  border-left="0.5pt solid black" border-right="0.5pt solid black" />

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left"  margin-left="1mm" line-height="4.5mm">Seguro Cr�dito Salud</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center"  margin-left="1mm" line-height="4.5mm">30%</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            
                      </fo:table-row>
                </fo:table-body>
              </fo:table>                     
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="5.95mm"  border-left="0.5pt solid black" />
                  <fo:table-column column-width="92mm"    border-left="0.5pt solid black" />
                  <fo:table-column column-width="92mm"    border-left="0.5pt solid black" />
                  <fo:table-column column-width="5.95mm"  border-left="0.5pt solid black" border-right="0.5pt solid black" />

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left"  margin-left="1mm" line-height="4.5mm">Seguro Info Protegida</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center"  margin-left="1mm" line-height="4.5mm">30%</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            
                      </fo:table-row>
                </fo:table-body>
              </fo:table>  
              
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="5.95mm"  border-left="0.5pt solid black" />
                  <fo:table-column column-width="92mm"    border-left="0.5pt solid black" />
                  <fo:table-column column-width="92mm"    border-left="0.5pt solid black" />
                  <fo:table-column column-width="5.95mm"  border-left="0.5pt solid black" border-right="0.5pt solid black" />

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left"  margin-left="1mm" line-height="4.5mm">Seguro Asistencia Total</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center"  margin-left="1mm" line-height="4.5mm">30%</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            
                      </fo:table-row>
                </fo:table-body>
              </fo:table>  
              
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="5.95mm"  border-left="0.5pt solid black" />
                  <fo:table-column column-width="92mm"    border-left="0.5pt solid black" />
                  <fo:table-column column-width="92mm"    border-left="0.5pt solid black" />
                  <fo:table-column column-width="5.95mm"  border-left="0.5pt solid black" border-right="0.5pt solid black" />

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left"  margin-left="1mm" line-height="4.5mm">Responsabilidad Civil Empresas</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center"  margin-left="1mm" line-height="4.5mm">15%</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            
                      </fo:table-row>
                </fo:table-body>
              </fo:table>  
              
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="5.95mm"  border-left="0.5pt solid black" />
                  <fo:table-column column-width="92mm"    border-left="0.5pt solid black" border-bottom="0.5pt solid black" />
                  <fo:table-column column-width="92mm"    border-left="0.5pt solid black" border-bottom="0.5pt solid black" />
                  <fo:table-column column-width="5.95mm"  border-left="0.5pt solid black" border-right="0.5pt solid black" />

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left"  margin-left="1mm" line-height="4.5mm">Seguro Cr�dito Vida</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center"  margin-left="1mm" line-height="4.5mm">30%</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            
                      </fo:table-row>
                </fo:table-body>
              </fo:table>  
              

                                                                      
	      <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black"  ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	    
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="5.95mm"  border-left="0.5pt solid black" />
                  <fo:table-column column-width="92mm"    />
                  <fo:table-column column-width="92mm"    />
                  <fo:table-column column-width="5.95mm"  border-right="0.5pt solid black" />

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">Comisi�n de Recaudaci�n (Receptor Banco BCI): </fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">UF 0,03 + IVA por recaudaci�n</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            
                      </fo:table-row>
                </fo:table-body>
              </fo:table>	

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="5.95mm"  border-left="0.5pt solid black" />
                  <fo:table-column column-width="92mm"    />
                  <fo:table-column column-width="92mm"    />
                  <fo:table-column column-width="5.95mm"  border-right="0.5pt solid black" />

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">Valija documentos (Receptor Banco BCI): </fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">$ 400 + IVA por seguro </fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            
                      </fo:table-row>
                </fo:table-body>
              </fo:table>                  
	    
	      <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black" ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

            <fo:block line-height="2mm"><fo:leader leader-pattern="space" /></fo:block>
              
              <fo:table border-collapse="collapse">
                 <fo:table-column  column-width="15mm"/>
                 <fo:table-column  column-width="135.9mm"/>
                 <fo:table-column  column-width="28mm"/>
                 <fo:table-column  column-width="17mm"/>

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block><fo:leader leader-pattern="space" leader-length="1mm" /></fo:block>
                       </fo:table-cell >                     
                       <fo:table-cell>
                          <fo:block   font-family="Helvetica" space-before="10mm" font-size="12pt" vertical-align="middle" text-align="left"><fo:leader leader-pattern="space" leader-length="1mm" /><xsl:value-of select="IncorporacionSeguros/fechaSuscripcion"/></fo:block>
                       </fo:table-cell >
                       <fo:table-cell >
                          <fo:block   line-height="4.5mm" margin-left="1mm">
                           <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="IncorporacionSeguros/firmaCorredoresSeguros"/>
                                            </xsl:attribute>
                                     </fo:external-graphic>
                          </fo:block>
                       </fo:table-cell>
                       <fo:table-cell >
                          <fo:block><fo:leader leader-pattern="space" leader-length="1mm" /></fo:block>
                       </fo:table-cell >                       
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>
			  
              <fo:table border-collapse="collapse" >
                 <fo:table-column column-width="50mm"/>
                 <fo:table-column column-width="50.9mm"/>                
                 <fo:table-column column-width="45mm"/>
                 <fo:table-column column-width="50mm"/>                

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                         <fo:block line-height="4.5mm" text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="20mm"/>Fecha</fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                         <fo:block line-height="4.5mm" text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm">Firma del Asegurable</fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                         <fo:block line-height="4.5mm" text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm">Firma del Titular</fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                         <fo:block line-height="4.5mm" text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="5mm"/>Firma del Corredor</fo:block>
                      </fo:table-cell>
                   </fo:table-row>
                </fo:table-body>
              </fo:table>

           </fo:flow>
        </fo:page-sequence>

        </fo:root>
    </xsl:template>
</xsl:stylesheet>
<!-- Stylus Studio meta-information - (c) 2004-2009. Progress Software Corporation. All rights reserved.

<metaInformation>
	<scenarios>
		<scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="no" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline=""
		          additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="">
			<advancedProp name="sInitialMode" value=""/>
			<advancedProp name="bXsltOneIsOkay" value="true"/>
			<advancedProp name="bSchemaAware" value="false"/>
			<advancedProp name="bXml11" value="false"/>
			<advancedProp name="iValidation" value="0"/>
			<advancedProp name="bExtensions" value="true"/>
			<advancedProp name="iWhitespace" value="0"/>
			<advancedProp name="sInitialTemplate" value=""/>
			<advancedProp name="bTinyTree" value="true"/>
			<advancedProp name="bWarnings" value="true"/>
			<advancedProp name="bUseDTD" value="false"/>
			<advancedProp name="iErrorHandling" value="fatal"/>
		</scenario>
	</scenarios>
	<MapperMetaTag>
		<MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no">
			<SourceSchema srcSchemaPath="IncorporacionSeguros.xml" srcSchemaRoot="IncorporacionSeguros" AssociatedInstance="" loaderFunction="document" loaderFunctionUsesURI="no"/>
		</MapperInfo>
		<MapperBlockPosition>
			<template match="IncorporacionSeguros"></template>
		</MapperBlockPosition>
		<TemplateContext></TemplateContext>
		<MapperFilter side="source"></MapperFilter>
	</MapperMetaTag>
</metaInformation>
-->