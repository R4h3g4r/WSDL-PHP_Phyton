<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2006/08/23 12:15 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />

    <xsl:param name="IMG_URL"/>

    <xsl:template match="vinculado_aval">
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
                                  
                                    </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACION</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SEGUROS COLOCACIONES PARA CREDITO DE CONSUMO</fo:block>
                            </fo:table-cell>


                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="OperacionCredito/logoBciCorredoresSeguros"/>
                                        </xsl:attribute>
                                      </fo:external-graphic>
                                    </fo:block>
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
                </fo:table>


              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="96.95mm"/>
                  <fo:table-column column-width="96.95mm"/>
                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio Nº<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
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
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm">Sucursal/Oficina:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/sucursal" /></fo:inline></fo:block>
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
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm" margin-left="1mm">Ejecutivo:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/ejecutivo" />  </fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm" margin-left="1mm">Jefe Sucursal/Oficina:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><!--<xsl:value-of select="OperacionCredito/jefeOficina" />--></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>


              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" line-height="4.5mm" margin-left="1mm">ASEGURABLE (Sólo personas naturales)</fo:block>
                            </fo:table-cell>
                      </fo:table-row>

                </fo:table-body>
               </fo:table>


              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="48.9775mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
                  <fo:table-column column-width="48.9775mm" border-top="0.5pt solid black" />
                  <fo:table-column column-width="48.9775mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>                  
                  <fo:table-column column-width="48.9775mm" border-top="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block line-height="6mm"  font-family="Helvetica" font-size="11pt" margin-left="1mm" text-align="left" >DEUDOR DIRECTO</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block line-height="6mm" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" >



										  <fo:table border-collapse="collapse" text-align="left">
											  <fo:table-column column-width="7mm" margin-left="1mm" margin-right="1mm" margin-top="1mm" margin-bottom="1mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.0pt solid black"/>
											  <fo:table-body>
												  <fo:table-row>
														<fo:table-cell >
																<fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" margin-left="1mm" margin-right="1mm" margin-top="1mm" margin-bottom="1mm">
																<fo:leader leader-pattern="space" leader-length="17cm"/>
																</fo:block>
														</fo:table-cell>                     
												  </fo:table-row>
							
											</fo:table-body>
										   </fo:table>

                                    
                                    </fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"  text-align="left" line-height="6mm" margin-left="1mm">AVAL</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" line-height="6mm">
										  <fo:table border-collapse="collapse" text-align="left">
											  <fo:table-column column-width="7mm" margin-left="1mm" margin-right="1mm" margin-top="1mm" margin-bottom="1mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.0pt solid black"/>
											  <fo:table-body>
												  <fo:table-row>
														<fo:table-cell >
																<fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" margin-left="1mm" margin-right="1mm" margin-top="1mm" margin-bottom="1mm">
																X
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
               
               

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="138.9mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="57mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Nombre Completo:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nombreCompletoAval" /></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Rut:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(OperacionCredito/rutAval, "###.###.###","rut")' /><!--<xsl:value-of select="OperacionCredito/rutAval" />-->-<xsl:value-of select="OperacionCredito/dvAval" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>


              <xsl:variable name="sexoClienteTmp" select="OperacionCredito/sexoAval" />
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="18mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
                  <fo:table-column column-width="10mm" border-top="0.5pt solid black" />
                  <fo:table-column column-width="40mm" border-top="0.5pt solid black" />                  
                  <fo:table-column column-width="10mm" border-top="0.5pt solid black" />
                  <fo:table-column column-width="117.91mm" border-top="0.5pt solid black" border-right="0.5pt solid black"/>                  
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block line-height="6mm"  font-family="Helvetica" font-size="11pt" margin-left="1mm" text-align="left" >Sexo:</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block line-height="6mm" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" >



										  <fo:table border-collapse="collapse" text-align="left">
											  <fo:table-column column-width="7mm" margin-left="1mm" margin-right="1mm" margin-top="1mm" margin-bottom="1mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.0pt solid black"/>
											  <fo:table-body>
												  <fo:table-row>
														<fo:table-cell >
																<fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" margin-left="1mm" margin-right="1mm" margin-top="1mm" margin-bottom="1mm" line-height="5mm" >
																<xsl:if test="$sexoClienteTmp = 'Masculino'">X</xsl:if>
																<xsl:if test="$sexoClienteTmp != 'Masculino'"><fo:leader leader-pattern="space" leader-length="2cm"/></xsl:if>
																</fo:block>
														</fo:table-cell>                     
												  </fo:table-row>
							
											</fo:table-body>
										   </fo:table>

                                    
                                    </fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"  text-align="left" line-height="6mm" margin-left="1mm">Masculino</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" line-height="6mm">
										  <fo:table border-collapse="collapse" text-align="left">
											  <fo:table-column column-width="7mm" margin-left="1mm" margin-right="1mm" margin-top="1mm" margin-bottom="1mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.0pt solid black"/>
											  <fo:table-body>
												  <fo:table-row>
														<fo:table-cell >
																<fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" margin-left="1mm" margin-right="1mm" margin-top="1mm" margin-bottom="1mm"   line-height="5mm">
																<xsl:if test="$sexoClienteTmp = 'Femenino'">X</xsl:if>
																 <xsl:if test="$sexoClienteTmp != 'Femenino'"><fo:leader leader-pattern="space" leader-length="2cm"/></xsl:if>																
																</fo:block>
														</fo:table-cell>                     
												  </fo:table-row>
							
											</fo:table-body>
										   </fo:table>                                    
                                    </fo:block>
                            </fo:table-cell>                 
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"  text-align="left" line-height="6mm" margin-left="1mm">Femenino</fo:block>
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
                                    <fo:inline font-weight="bold"><xsl:value-of select="substring(OperacionCredito/fechaNacAval,0,4)" /></fo:inline>
                                    <xsl:variable name="mes" select="substring(OperacionCredito/fechaNacAval,4,2)" />
                                    <fo:inline font-weight="bold">
                                        <xsl:if test="$mes = 01">Enero</xsl:if>
                                        <xsl:if test="$mes = 02">Febrero</xsl:if>
                                        <xsl:if test="$mes = 03">Marzo</xsl:if>
                                        <xsl:if test="$mes = 04">Abril</xsl:if>
                                        <xsl:if test="$mes = 05">Mayo</xsl:if>
                                        <xsl:if test="$mes = 06">Junio</xsl:if>
                                        <xsl:if test="$mes = 07">Julio</xsl:if>
                                        <xsl:if test="$mes = 08">Agosto</xsl:if>
                                        <xsl:if test="$mes = 09">Septiembre</xsl:if>
                                        <xsl:if test="$mes = 10">Octubre</xsl:if>
                                        <xsl:if test="$mes = 11">Noviembre</xsl:if>
                                        <xsl:if test="$mes = 12">Diciembre</xsl:if>
                                    </fo:inline>
                                    <fo:inline font-weight="bold"><xsl:value-of select="substring(OperacionCredito/fechaNacAval,6,5)" /></fo:inline>
                                    </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Estado Civil:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/estadoCivilAval" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"  text-align="left" margin-left="1mm" line-height="4.5mm">Domicilio:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(DireccionAvalBci/direccion,0,32)" /></fo:inline></fo:block>
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
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Comuna:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(DireccionAvalBci/comuna,0,20)" /></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Ciudad:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(DireccionAvalBci/comuna,21,40)" /></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Teléfono:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="DireccionAvalBci/telefonoAval" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>


              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="195.9mm" margin-top="2mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>

                      <fo:table-row>
                            <fo:table-cell number-columns-spanned="3">
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm"   line-height="4.5mm">[<fo:leader leader-pattern="space" leader-length="4mm"/>] <fo:leader leader-pattern="space" leader-length="4mm"/>El asegurado faculta expresamente a  la compañía, para que le envíe copia de su certificado de cobertura y los  demás documentos que forman parte integrante de la póliza, a la  dirección de correo electrónico individualizada por el asegurado y/o  contratante en este instrumento, con lo cual el suscrito se entenderá por recibido, comunicado y/o notificado de la información pertinente como si fuera en soporte papel. En todo caso el  asegurado podrá siempre solicitar una copia del mismo en el domicilio de la  Compañía, debiendo la última hacer entrega de ella en el plazo máximo de  cinco días.</fo:block>
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
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Nro. Operación:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Moneda:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/glosaMoneda" /></fo:inline></fo:block>
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

                                    <xsl:variable name="moneda" select="OperacionCredito/moneda" />
                                      <xsl:choose>

                                        <xsl:when test="$moneda = 'UF'">
                                           <xsl:value-of select='format-number(OperacionCredito/montoCredito, "###.###.##0,0000","decimal")'/>
                                        </xsl:when>


                                        <xsl:when test="$moneda = '$'">
                                          <xsl:value-of select='format-number(OperacionCredito/montoCredito, "###.###.##0","decimal")' />
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
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" margin-left="1mm">Vigencia Operación: Desde <fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/vigenciaOperacionDesde" /></fo:inline></fo:block>
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" ></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" ></fo:block>
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" ></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm">Hasta <fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/vigenciaOperacionHasta" /></fo:inline></fo:block>
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm"></fo:block>
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm"></fo:block>
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
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" font-weight="bold" margin-left="1mm" background-color="#BDBDBD">IMPORTANTE</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" line-height="4.5mm" margin-right="1mm">Usted se está incorporando como asegurado a una póliza o contrato de seguro colectivo cuyas condiciones han sido convenidas por Banco de Crédito e Inversiones, directamente con la compañía de seguros.</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-left="1mm" line-height="4.5mm" margin-right="1mm">Por el presente instrumento, solicito la incorporación a la póliza Colectiva respectiva, según producto identificado a continuación:</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>
                                          
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" font-weight="bold" margin-left="1mm" background-color="#BDBDBD">SEGUROS CONTRATADOS</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>


              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="120,95mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="33.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="41.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">PRODUCTO</fo:block>
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
                  <fo:table-column column-width="6mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="114,95mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <!--<fo:table-column column-width="56.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />-->
                  <fo:table-column column-width="33.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="41.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" />

                  <fo:table-body>

                      <fo:table-row>

                            <fo:table-cell >
                                 <fo:block >
                                      <xsl:variable name="primBrutaSegDesgravamen" select="OperacionCredito/primaBrutaSeguroDesgravamenAval" />
                                      <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">
                                          <xsl:if  test="$primBrutaSegDesgravamen &gt; 0">X</xsl:if>
                                      </fo:block>
                                      <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" line-height="4.5mm">
                                      </fo:block>
                                  </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Desgravamen / Invalidez 2/3    (POL 2 09 128/ CAD 2 09 130)</fo:block>
                            </fo:table-cell>


                            <fo:table-cell >
                                    <fo:block >
                                        <xsl:variable name="primBrutaSegDesgravamen" select="OperacionCredito/primaBrutaSeguroDesgravamenAval" />
                                          <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">UF <fo:inline font-weight="bold">
                                              <xsl:if  test="$primBrutaSegDesgravamen &gt; 0">
                                              <xsl:value-of select='format-number(OperacionCredito/primaBrutaSeguroDesgravamenAval, "###.###.##0,0000","decimal")'/>
                                              </xsl:if>
                                        </fo:inline></fo:block>
                                         <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm"></fo:block>
                                    </fo:block>
                            </fo:table-cell>


                            <fo:table-cell >
                                    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">25 %</fo:block>
                                    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" line-height="4.5mm"></fo:block>
                            </fo:table-cell>

                      </fo:table-row>

                      <fo:table-row>

                            <fo:table-cell >
                                 <fo:block >
                                      <xsl:variable name="primBrutaSegDobleCap" select="OperacionCredito/primaBrutaSeguroDobleCapital" />
                                      <fo:block   border-top="0.5pt solid black"   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="0mm" line-height="4.5mm">
                                          <xsl:if  test="$primBrutaSegDobleCap &gt; 0">X</xsl:if>
                                      </fo:block>
                                      <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" line-height="4.5mm">
                                      </fo:block>
                                  </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block   border-top="0.5pt solid black"   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="0mm" line-height="4.5mm">Doble Capital (POL 2 09 109 / CAD 2 09 115)</fo:block>
                            </fo:table-cell>


                            <fo:table-cell >
                                    <fo:block >
                                        <xsl:variable name="primBrutaSegDobleCap" select="OperacionCredito/primaBrutaSeguroDobleCapital" />
                                          <fo:block  border-top="0.5pt solid black"    font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="0mm" line-height="4.5mm">UF <fo:inline font-weight="bold">
                                              <xsl:if  test="$primBrutaSegDobleCap &gt; 0">
                                              <xsl:value-of select='format-number(OperacionCredito/primaBrutaSeguroDobleCapital, "###.###.##0,0000","decimal")'/>
                                              </xsl:if>
                                        </fo:inline></fo:block>
                                         <fo:block   border-top="0.5pt solid black"   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm"></fo:block>
                                    </fo:block>
                            </fo:table-cell>


                            <fo:table-cell >
                                    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="0mm" line-height="4.5mm" border-top="0.5pt solid black" >44 %</fo:block>
                                    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" line-height="4.5mm"></fo:block>
                            </fo:table-cell>

                      </fo:table-row>

                      <fo:table-row>

                            <fo:table-cell >
                                <fo:block >
                                    <xsl:variable name="primBrutaSegRentaPorHospit" select="OperacionCredito/primaBrutaSeguroRentaPorHospitalizacion" />
                                      <fo:block   border-top="0.5pt solid black"   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="0mm" line-height="4.5mm">
                                        <xsl:if  test="$primBrutaSegRentaPorHospit &gt; 0">X</xsl:if>
                                      </fo:block>
                                      <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" line-height="4.5mm"></fo:block>
                                </fo:block>
                            </fo:table-cell>


                            <fo:table-cell >
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt"   text-align="left"  margin-left="0mm" line-height="4.5mm">Renta por Hospitalización (CAD 2 09 129)</fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block>
                                        <xsl:variable name="primBrutaSegRentaPorHospit" select="OperacionCredito/primaBrutaSeguroRentaPorHospitalizacion" />
                                        <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left"  margin-left="0mm" line-height="4.5mm">UF <fo:inline font-weight="bold">
                                            <xsl:if  test="$primBrutaSegRentaPorHospit &gt; 0">
                                             <xsl:value-of select='format-number(OperacionCredito/primaBrutaSeguroRentaPorHospitalizacion, "###.###.##0,0000","decimal")'/>
                                            </xsl:if>
                                        </fo:inline></fo:block>
                                        <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm"></fo:block>
                                    </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt"   text-align="center"  margin-left="0mm" line-height="4.5mm">30 %</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm"></fo:block>
                            </fo:table-cell>

                      </fo:table-row>

                      <fo:table-row>

                            <fo:table-cell >
                                <fo:block >
                                    <xsl:variable name="primBrutaSegEnferGrves" select="OperacionCredito/primaBrutaSeguroEnfermedadesGarves" />
                                      <fo:block   border-top="0.5pt solid black"   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="0mm" line-height="4.5mm">
                                        <xsl:if  test="$primBrutaSegEnferGrves &gt; 0">X</xsl:if>
                                      </fo:block>
                                      <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" line-height="4.5mm"></fo:block>
                                </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt"   text-align="left"  margin-left="0mm" line-height="4.5mm">Enfermedades Graves (CAD 3 09 148)</fo:block>
                            
                            </fo:table-cell>

                            <fo:table-cell >
                                <fo:block>
                                      <xsl:variable name="primBrutaSegEnferGrves" select="OperacionCredito/primaBrutaSeguroEnfermedadesGarves" />
                                      <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt"   text-align="left"  margin-left="0mm" line-height="4.5mm">UF <fo:inline font-weight="bold">
                                            <xsl:if test="$primBrutaSegEnferGrves  &gt; 0">
                                                <xsl:value-of select='format-number(OperacionCredito/primaBrutaSeguroEnfermedadesGarves, "###.###.##0,0000","decimal")'/>
                                            </xsl:if>
                                      </fo:inline>
                                      </fo:block>
                                      <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left"  margin-left="1mm" line-height="4.5mm"></fo:block>
                                </fo:block>
                            </fo:table-cell>



                            <fo:table-cell >
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt"   text-align="center"  margin-left="0mm" line-height="4.5mm">30 %</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm"></fo:block>
                            </fo:table-cell>

                      </fo:table-row>

                      <fo:table-row>

                            <fo:table-cell >
                                 <fo:block >
                                      <xsl:variable name="primBrutaSegCesantia" select="OperacionCredito/primaBrutaCesantiaInvoluntaria" />
                                      <fo:block   border-top="0.5pt solid black"   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="0mm" line-height="4.5mm">
                                          <xsl:if  test="$primBrutaSegCesantia &gt; 0">X</xsl:if>
                                      </fo:block>
                                      <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" line-height="4.5mm">
                                      </fo:block>
                                  </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black"  font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="0mm" line-height="4.5mm">Cesantía Involuntaria  (POL 1 09 116)</fo:block>
                            </fo:table-cell>


                            <fo:table-cell >
                                    <fo:block >
                                        <xsl:variable name="primBrutaSegCesantia" select="OperacionCredito/primaBrutaCesantiaInvoluntaria" />
                                          <fo:block   border-top="0.5pt solid black"   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="0mm" line-height="4.5mm">UF <fo:inline font-weight="bold">
                                              <xsl:if  test="$primBrutaSegCesantia &gt; 0">
                                              <xsl:value-of select='format-number(OperacionCredito/primaBrutaSeguroDesgravamen, "###.###.##0,0000","decimal")'/>
                                              </xsl:if>
                                        </fo:inline></fo:block>
                                         <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm"></fo:block>
                                    </fo:block>
                            </fo:table-cell>


                            <fo:table-cell >
                                    <fo:block  border-top="0.5pt solid black"    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="0mm" line-height="4.5mm">23 %</fo:block>
                                    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" line-height="4.5mm"></fo:block>
                            </fo:table-cell>

                      </fo:table-row>


                      <fo:table-row>

                            <fo:table-cell >
                                <fo:block >
                                    <xsl:variable name="primBrutaSegAccidente" select="OperacionCredito/primaBrutaSeguroAccidentesPersonalesAval" />
                                      <fo:block  border-top="0.5pt solid black"    font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="0mm" line-height="4.5mm">
                                        <xsl:if  test="$primBrutaSegAccidente &gt; 0">X</xsl:if>
                                      </fo:block>
                                      <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" line-height="4.5mm"></fo:block>
                                </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt"   text-align="left"  margin-left="0mm" line-height="4.5mm">Accidentes Personales (POL 3 09 118 Letra A POL 3 09 118 Letra B) b.1 y b.2 y Letra C)</fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                <fo:block>
                                      <xsl:variable name="primBrutaSegAccidente" select="OperacionCredito/primaBrutaSeguroAccidentesPersonalesAval" />
                                      <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt"   text-align="left"  margin-left="0mm" line-height="4.5mm">UF <fo:inline font-weight="bold">
                                            <xsl:if test="$primBrutaSegAccidente  &gt; 0">
                                                <xsl:value-of select='format-number(OperacionCredito/primaBrutaSeguroAccidentesPersonalesAval, "###.###.##0,0000","decimal")'/>
                                            </xsl:if>
                                      </fo:inline>
                                      </fo:block>
                                      <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left"  margin-left="1mm" line-height="4.5mm"></fo:block>
                                </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt"   text-align="center"  margin-left="0mm" line-height="4.5mm">30 %</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm"></fo:block>
                            </fo:table-cell>

                      </fo:table-row>

                </fo:table-body>
              </fo:table>


			  <xsl:variable name="primBrutaSegDobleCap" select="OperacionCredito/primaBrutaSeguroDobleCapital" />
			  <xsl:if  test="$primBrutaSegDobleCap &gt; 0">
                                          
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" background-color="#BDBDBD">BENEFICIARIOS SEGURO DOBLE CAPITAL</fo:block>
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
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">Rut</fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="right" font-weight="bold" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="right" font-weight="bold" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="right" font-weight="bold" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">Nombre completo o Razón Social</fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica"  font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">% Distribución</fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica"  font-size="11pt" text-align="right" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica"  font-size="11pt" text-align="right" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica"  font-size="11pt" text-align="right" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              </xsl:if>
              
                      <xsl:variable name="primBrutaSegAccidente" select="OperacionCredito/primaBrutaSeguroAccidentesPersonalesAval" />
			  <xsl:if  test="$primBrutaSegAccidente &gt; 0">
                                          
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" background-color="#BDBDBD">BENEFICIARIOS SEGURO ACCIDENTES PERSONALES</fo:block>
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
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">Rut</fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="right" font-weight="bold" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="right" font-weight="bold" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="right" font-weight="bold" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">Nombre completo o Razón Social</fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>                               
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica"  font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">% Distribución</fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica"  font-size="11pt" text-align="right" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica"  font-size="11pt" text-align="right" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica"  font-size="11pt" text-align="right" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>                                    
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">En caso que el asegurado no designe beneficiarios, éstos serán los herederos legales</fo:block>
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              </xsl:if>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" margin-left="1mm" background-color="#BDBDBD">FORMA DE PAGO</fo:block>
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
              </fo:table>



              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-bottom="0.5pt solid black"  border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Autorizo que el monto de las primas correspondientes a los seguros elegidos, sean cargados en el pago del crédito solicitado, bajo el Nro. de Operación <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" />  </fo:inline></fo:block>
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <fo:table border-collapse="collapse" >
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />

                  <fo:table-body>
                      <fo:table-row>


                            <fo:table-cell >
                                      <fo:block-container width="125mm"   height="125mm" background-repeat="no-repeat" >

                                        <fo:block line-height="4.5mm" space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block line-height="4.5mm" space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="10mm" /><xsl:value-of select="OperacionCredito/fechaSuscripcion"/></fo:block>
                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="12mm"/>Fecha</fo:block>
                                      </fo:block-container>
                            </fo:table-cell>

                            <fo:table-cell >
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block line-height="4.5mm"     text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                        <fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm">Firma del Asegurable</fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block line-height="4.5mm"     text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                        <fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm">Firma del Titular</fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                      <fo:block-container width="125mm"   height="125mm" background-repeat="no-repeat" >
                                                  <xsl:attribute name="background-image">
                                                  <xsl:value-of select="OperacionCredito/logoFirmaCorredor"/>
                                                  </xsl:attribute>
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" >Firma del Corredor</fo:block>
                                      </fo:block-container>
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
                                  
                                    </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACION</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SEGUROS COLOCACIONES PARA CREDITO DE CONSUMO</fo:block>
                            </fo:table-cell>


                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="OperacionCredito/logoBciCorredoresSeguros"/>
                                        </xsl:attribute>
                                      </fo:external-graphic>
                                    </fo:block>
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
                </fo:table>

              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="96.95mm"/>
                  <fo:table-column column-width="96.95mm"/>
                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio Nº<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>



              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" margin-left="1mm" background-color="#BDBDBD">MANDATO</fo:block>
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Por el presente instrumento, solicito como asegurable mi incorporación a la(s) póliza(s) colectiva(s) respectiva(s) de BCI Seguros de Vida S.A. según producto(s) identificado(s) precedentemente. Con este objeto otorgo mandato al Banco de Crédito e Inversiones, en adelante "el Mandatario", para que contrate y/o renueve con BCI Seguros Vida S.A., uno o más Seguros para el asegurable, intermediados por Bci Corredores de Seguros S.A..Desde ya, acepto como asegurable todas las condiciones de la contratación del o de los seguro(s), entre éstas, su vigencia, la cobertura del o de los mismos y el cargo de la(s) prima(s) y de cualesquiera otros gastos generados con ocasión del o de los mismos, en cualquiera de mis Cuentas Corrientes, o la rebaja correspondiente del o de los créditos que se me concediere(n), de la(s) prima(s), impuestos, comisiones y otros gastos derivados de su contratación y renovación en su caso, en las oportunidades y con la frecuencia que corresponde a los respectivos vencimientos. Así también, acepto las condiciones de procedencia o improcedencia del pago del o de los seguros pactados en la Compañía de Seguros y el monto de cobertura sin que al Banco corresponda responsabilidad alguna, para el evento que el(los) seguro(s) no fuese(n) pagado(s), no fuere(n) contratado(s), no fuese(n) renovado(s), o no cumplan los requisitos de asegurabilidad exigidos.</fo:block>
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
                                  
                                    </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACION</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SEGUROS COLOCACIONES PARA CREDITO DE CONSUMO</fo:block>
                            </fo:table-cell>


                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="OperacionCredito/logoBciCorredoresSeguros"/>
                                        </xsl:attribute>
                                      </fo:external-graphic>
                                    </fo:block>
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
                </fo:table>

              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="96.95mm"/>
                  <fo:table-column column-width="96.95mm"/>
                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio Nº<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>


              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" margin-left="1mm"   background-color="#BDBDBD">SEGURO DESGRAVAMEN</fo:block>
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
              </fo:table>


              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Compañía Aseguradora: </fo:inline> BCI Seguros Vida S.A.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Cobertura:</fo:inline> Desgravamen (POL 2 09 128), Invalidez Permanente dos Tercios (CAD 2 09 130)</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold">Monto Asegurado:</fo:inline> El monto asegurado corresponderá al saldo insoluto del crédito al cierre del mes anterior al del fallecimiento o de la resolución de invalidez, más los intereses devengados al cierre del mes inmediatamente anterior, menos las cuotas atrasadas por más de 30 días ,las cuotas en cartera vencida y/o castigada, las cuotas prepagadas no aplicadas en el saldo insoluto del crédito al cierre del mes anterior al del fallecimiento o de la resolución de invalidez.- 
</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Beneficiario:</fo:inline> Banco de Crédito e Inversiones </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold">Edad límite de ingreso y permanencia:</fo:inline> 75 años 0 días para desgravamen y 65 años 0 días para la cobertura de Invalidez permanente.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold">Principales Exclusiones:</fo:inline> Las exclusiones del seguro se encuentran contenidas en la póliza depositada en el registro de la S.V.S. bajo el código POL 2 09 128, y CAD 2 09 130. Entre las principales se cuenta: a) Automutilación, o autolesión, b) Pena de muerte o por participación del Asegurado en cualquier acto delictivo, c) Por quien pudiere verse beneficiado por el pago de la cantidad asegurada, mediante su participación como autor o cómplice en un acto que sea calificado por la ley como delito, d) La participación activa del Asegurado en guerra internacional, sea que Chile tenga o no intervención en ella; en guerra civil, dentro o fuera de Chile; o en motín o conmoción contra el orden público dentro o fuera del país; o hechos que las leyes califican como delitos contra la seguridad interior del Estado, e) La participación activa del Asegurado en acto terrorista, f) La participación del Asegurado en actos temerarios o en cualquier maniobra, experimento, exhibición, desafío o actividad notoriamente peligrosa, entendiendo por tales aquellas en las cuales se pone en grave peligro la vida e integridad física de las personas, g) La realización o participación en una actividad o deporte riesgoso, considerándose como tales aquellos que objetivamente constituyan una flagrante agravación del riesgo o se requiera de medidas de protección o seguridad para realizarlos.  A vía de ejemplo y sin que la enumeración sea taxativa o restrictiva sino que meramente enunciativa, se considera actividad o deporte riesgoso el manejo de explosivos, minería subterránea, trabajos en altura o líneas de alta tensión, inmersión submarina, piloto civil, paracaidismo, montañismo, alas delta, benji, parapente, carreras de auto y moto, entre otros, h) Situaciones o Enfermedades preexistentes, entendiéndose por tales las definidas en el artículo 2° de estas Condiciones Generales. Para los efectos de la aplicación de esta exclusión, al momento de la contratación la Compañía Aseguradora deberá consultar al Asegurable acerca de todas aquellas situaciones o enfermedades preexistentes que pueden importar una limitación o exclusión de cobertura, i) Fisión o fusión nuclear o contaminación radioactiva, j) Una infección oportunística, o un neoplasma maligno, si al momento de la muerte o enfermedad el asegurado sufría del Síndrome de Inmunodeficiencia Adquirida.</fo:block>                
                      <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Para la cobertura de Invalidez Permanente dos Tercios se excluye adicionalmente si esta se produce a consecuencia de la conducción de cualquier vehículo por parte del asegurado, encontrándose éste en estado de ebriedad. </fo:block>                      
                      <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">PROCEDIMIENTO PARA EL PAGO DE SINIESTRO</fo:inline></fo:block>
                      <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Producido el fallecimiento o la invalidez dos tercios del asegurado, el asegurado o los beneficiarios según corresponda deberán comunicarlo por escrito a la compañía dentro de un plazo de noventa (90) días. El cumplimiento extemporáneo de está obligación hará perder el derecho a la indemnización establecida en la presente cláusula adicional, salvo en caso de fuerza mayor.</fo:block>
                     <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">En caso de fallecimiento los antecedentes a entregar son: Declaración o denuncio del siniestro, Certificado original de defunción del asegurado, Fotocopia de la cédula de identidad del fallecido por ambos lados, En caso de muerte accidental debe adjuntar Parte Policial o Dictamen de la Justicia.</fo:block>
                     <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Producida la invalidez permanente dos tercios del asegurado, se deberá presentar al asegurador los siguientes antecedentes:</fo:block>
                     <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="8mm" margin-right="1mm">a)	Formulario de Denuncio de Siniestros, b) Fotocopia del Carné de Identidad o Certificado de Nacimiento, c) Dictamen ejecutoriado en conformidad a las "Normas para la evaluación y calificación del grado de invalidez de los trabajadores afiliados al nuevo sistema de pensiones".  Para las personas afiliadas al antiguo sistema previsional deberá presentarse el dictamen definitivo de invalidez otorgado por el Compin. En caso de trabajadores independientes no cotizantes se deberá acreditar la invalidez a través de informes y antecedentes médicos emitidos por el o los profesionales que dictaminaron su incapacidad. La compañía aseguradora, si así lo determina necesario, podrá solicitar a su costo los peritajes médicos necesarios para la apreciación y evaluación de la incapacidad permanente 2/3, d) Tabla de desarrollo del crédito que debe indicar el estado del servicio de la deuda, emitido por la Entidad Contratante a la fecha en que se produjo dicha Invalidez  permanente dos tercios, e)Certificado de Saldo de la deuda, f) Fotocopia del Pagaré, g) Solicitud de incorporación Original, h) Otros antecedentes que se estimen convenientes y necesario para la evaluación del siniestro, i) Si en el proceso de evaluación de Fallecimiento y/o ITP 2/3, el asegurado proporcionó información a través de fax, u otro medio escrito, el asegurador exigirá junto con el formulario denuncio de siniestro, que se presenten los documentos originales para evaluar el Siniestro</fo:block>                                                                                                                                                                         
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
              </fo:table>


             </fo:flow>
              </fo:page-sequence>


			  <xsl:variable name="primBrutaSegDobleCap" select="OperacionCredito/primaBrutaSeguroDobleCapital" />
			  <xsl:if  test="$primBrutaSegDobleCap &gt; 0">

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
                                  
                                    </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACION</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SEGUROS COLOCACIONES PARA CREDITO DE CONSUMO</fo:block>
                            </fo:table-cell>


                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="OperacionCredito/logoBciCorredoresSeguros"/>
                                        </xsl:attribute>
                                      </fo:external-graphic>
                                    </fo:block>
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
                </fo:table>

              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="96.95mm"/>
                  <fo:table-column column-width="96.95mm"/>
                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio Nº<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>
			  
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" margin-left="1mm"  background-color="#BDBDBD">SEGURO DOBLE CAPITAL</fo:block>
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                            
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Compañía Aseguradora: </fo:inline> BCI Seguros Vida S.A.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Cobertura:</fo:inline>Doble Capital (POL  2 09 109 / CAD 2 09 115)</fo:block>                            
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold" margin-right="1mm">Monto Asegurado:</fo:inline> Saldo insoluto del crédito al cierre del mes anterior al del fallecimiento o de la resolución de invalidez más los intereses devengados al cierre del mes inmediatamente anterior, menos las cuotas atrasadas por más de 30 días las cuotas en cartera vencida y/o castigada, las cuotas prepagadas no aplicadas en el saldo insoluto del crédito al cierre del mes anterior al del fallecimiento o de la resolución de invalidez.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Beneficiario:</fo:inline> Serán los Designados por el Asegurado. </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold" margin-right="1mm">Edad límite de ingreso y permanencia:</fo:inline> 75 años 0 días para cobertura de fallecimiento y 65 años 0 días para la cobertura de Incapacidad Total y Permanente dos tercios </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Principales Exclusiones:</fo:inline> Que ocurran a consecuencia de:</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">a)  Automutilación, o autolesión,     b)Pena de muerte o por participación en cualquier acto delictivo,   c) 	Acto delictivo cometido, en calidad de autor o cómplice, por un beneficiario o quien pudiere reclamar la cantidad asegurada o la indemnización, d) Guerra, invasión, actos de enemigos extranjeros, hostilidades u operaciones bélicas, sea que haya habido o no declaración de guerra, guerra civil, insurrección, sublevación, rebelión, sedición, motín o hechos que las leyes califican como delitos contra la seguridad interior del Estado, e) Participación activa del asegurado en acto terrorista, f) Participación del asegurado en actos temerarios o en cualquier maniobra, experimento, exhibición, desafío o actividad notoriamente peligrosa, entendiendo por tales aquellas donde se pone en grave peligro la vida e integridad física de las personas, g)Realización o participación en una actividad o deporte riesgoso, considerándose como tales aquellos que objetivamente constituyan una flagrante agravación del riesgo y/o se requiera de medidas de protección y/o seguridad para realizarlos.  A vía de ejemplo y sin ser restrictivos en su enumeración, se considera riesgoso el manejo de explosivos, minería subterránea, trabajos en altura o líneas de alta tensión, inmersión submarina, paracaidismo, montañismo, alas delta, benji, parapente, carreras de auto y moto, etc., h)Situación o enfermedad preexistente, entendiéndose por tales cualesquiera enfermedad, patología, incapacidad, lesión o dolencia que afecte al asegurado, conocida o diagnosticada con anterioridad a la fecha de incorporación a la póliza, i)Fisión o fusión nuclear o contaminación radioactiva, j)Una infección oportunista o neoplasma maligno causado o que resulte como consecuencia que, a la fecha del siniestro, el asegurado estuviere afecto o fuere portador del Síndrome de Inmunodeficiencia Adquirida.  </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Para la cobertura de invalidez permanente dos tercios se excluye adicionalmente: a) Intento de suicidio, cualquiera sea la época en que ocurra o por lesiones inferidas al asegurado por si mismo o por terceros con su consentimiento, b)Que el asegurado se encuentre bajo los efectos de drogas o alucinógenos, c)La práctica de deportes riesgosos; o el desempeño de alguna actividad, profesión u oficio claramente riesgoso, expresamente indicados en las Condiciones Particulares, d) Viaje o vuelo en vehículo aéreo de cualquier clase, excepto como pasajero en uno operado por una empresa de transporte aéreo comercial, sobre una ruta establecida para el transporte de pasajeros sujeto a itinerario.</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" border-bottom="0.5pt solid black"></fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" font-weight="bold">PROCEDIMIENTO PARA EL PAGO DEL SINIESTRO:</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">En caso de fallecimiento los antecedentes a entregar son:</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">1.	Certificado original de defunción del asegurado</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">2.	Fotocopia de la cédula de identidad del fallecido por ambos lados.</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">3.	Fotocopia de la cédula de identidad del beneficiario </fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">4.	En caso de muerte accidental debe adjuntar Parte Policial o Dictamen de la Justicia</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">En caso de producida la invalidez permanente dos tercios del asegurado, cualquier persona deberá comunicarlo por escrito a la compañía dentro un plazo de noventa (90) días. El cumplimiento extemporáneo de está obligación hará perder el derecho a la indemnización establecida en la presente cláusula adicional, salvo en caso de fuerza mayor. Será obligación del asegurado, proporcionar a la compañía todos los antecedentes médicos y exámenes que obren en su poder, autorizar a la compañía para requerir de sus médicos tratantes todos los antecedentes que ellos posean, y dar las facilidades y someterse a los exámenes y pruebas que la compañía solicite para efectos de determinar y verificar la efectividad de la invalidez permanente dos tercios. El costo de estos será de cargo de la compañía aseguradora.</fo:block>                                                                                                                                                                                                    
                           </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
              </fo:table>

             </fo:flow>
              </fo:page-sequence>
              
              </xsl:if>



			  <xsl:variable name="primBrutaSegRentaH" select="OperacionCredito/primaBrutaSeguroRentaPorHospitalizacion" />
			  <xsl:if  test="$primBrutaSegRentaH &gt; 0">
			  
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
                                  
                                    </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACION</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SEGUROS COLOCACIONES PARA CREDITO DE CONSUMO</fo:block>
                            </fo:table-cell>


                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="OperacionCredito/logoBciCorredoresSeguros"/>
                                        </xsl:attribute>
                                      </fo:external-graphic>
                                    </fo:block>
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
                </fo:table>

              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="96.95mm"/>
                  <fo:table-column column-width="96.95mm"/>
                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio Nº<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>
			  
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" margin-left="1mm"  background-color="#BDBDBD">SEGURO RENTA POR HOSPITALIZACIÓN</fo:block>
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                            
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Compañía Aseguradora: </fo:inline> BCI Seguros Vida S.A.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Cobertura:</fo:inline>Renta por Hospitalización  (CAD 2 09 129)</fo:block>                            
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold" margin-right="1mm">Monto Asegurado:</fo:inline> El monto asegurado corresponderá al valor de la cuota pactada, con un máximo de seis cuotas con un tope de UF 50 por cuota durante toda la vigencia del crédito. Los límites de indemnización se definen de acuerdo al período de hospitalización siguiente:  de 4 a 30 días  1 cuota; de 31 a 60 días 2 cuotas; de 61 a 90 días 3 cuotas; de 91 a 120 días 4 cuotas; de 121 a 150 días 5 cuotas; de 151 a 180 días 6 cuotas.-</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Beneficiario:</fo:inline> Banco de Crédito e Inversiones </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold" margin-right="1mm">Edad límite de ingreso y permanencia:</fo:inline>75 años 0 días. </fo:block>                                         
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Carencia:</fo:inline> 60 días contados desde la fecha de curse del crédito de consumo asociado al seguro.   </fo:block>
                               
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Principales Exclusiones:</fo:inline> Que ocurran a consecuencia de:</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">a) Cualquiera de las exclusiones establecidas en el condicionado general principal, b)Situaciones o enfermedades preexistentes, entendiéndose por tales cualquiera enfermedad, patología, incapacidad, lesión, dolencia, padecimiento o problema de salud en general que afecte al Asegurado y que haya sido conocido o diagnosticado, con anterioridad a la fecha de contratación de la cobertura de esta Cláusula Adicional. Para los efectos de la aplicación de esta exclusión, al momento de la contratación la Compañía Aseguradora deberá consultar al Asegurable acerca de todas aquellas situaciones o enfermedades preexistentes que pueden importar una limitación o exclusión de cobertura, c) Intoxicación o encontrarse el asegurado en estado de ebriedad, o bajo los efectos de cualquier narcótico a menos que hubiese sido administrado por prescripción médica, d) Hernias y sus consecuencias, sea cual fuere la causa de que provengan, e) Hospitalización a consecuencia de embarazo o maternidad, alumbramiento o la pérdida que resulte del mismo, f) Exámenes médicos de rutina, g) Cirugía plástica o cosmética, h) Cualquier tipo de enfermedad mental o nerviosa, i) Curas de reposo. </fo:block>

                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" border-bottom="0.5pt solid black"></fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" font-weight="bold">PROCEDIMIENTO PARA EL PAGO DEL SINIESTRO:</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Producida un accidente o enfermedad que requiere de hospitalización del asegurado, el asegurado o alguna persona por él designada, deberán comunicarlo por escrito a la compañía dentro de un plazo de treinta (30) días contado desde su ocurrencia. El cumplimiento extemporáneo de está obligación hará perder el derecho a la indemnización establecida en la presente cláusula adicional, salvo en caso de fuerza mayor.</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">1.	Fotocopia del Carnet de Identidad por ambos lados</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">2.	Certificado médico con diagnóstico, fecha respectiva y motivo de la hospitalización</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">3.	Factura o pre-factura de la clínica y/o hospital.</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">4.	Tabla de desarrollo del crédito que debe indicar el estado del servicio de la deuda, emitido por la Entidad Contratante a la fecha en que se produjo dicha Invalidez  permanente dos tercios.</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">5.	Certificado de Saldo.</fo:block>                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">6.	Fotocopia del Pagaré.</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">7.	Solicitud de incorporación Original.</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Otros antecedentes que se estimen convenientes y necesario para la evaluación del siniestro.</fo:block>                                                                                                                                                                                                                                                            
                           </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
              </fo:table>

             </fo:flow>
              </fo:page-sequence>
              
              </xsl:if>


			  <xsl:variable name="primBrutaSegEnfermedadesG" select="OperacionCredito/primaBrutaSeguroEnfermedadesGarves" />
			  <xsl:if  test="$primBrutaSegEnfermedadesG &gt; 0">


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
                                  
                                    </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACION</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SEGUROS COLOCACIONES PARA CREDITO DE CONSUMO</fo:block>
                            </fo:table-cell>


                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="OperacionCredito/logoBciCorredoresSeguros"/>
                                        </xsl:attribute>
                                      </fo:external-graphic>
                                    </fo:block>
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
                </fo:table>

              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="96.95mm"/>
                  <fo:table-column column-width="96.95mm"/>
                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio Nº<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>


              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" margin-left="1mm"  background-color="#BDBDBD">SEGURO ENFERMEDADES GRAVES</fo:block>
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                            
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Compañía Aseguradora: </fo:inline> BCI Seguros Vida S.A.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Cobertura:</fo:inline>Enfermedades Graves(CAD 3 09 148)La compañía pagara al asegurado bajo esta cláusula adicional</fo:block>                            
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">al identificado en las condiciones particulares, por una sola vez, si el asegurado sobrevive 90 días al diagnostico</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">de una de las siguientes enfermedades: a)infarto agudo al miocardio, b)derrame o hemorragia e infarto cerebral,</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">c) cáncer, d) insuficiencia renal y e) parálisis; o ala practica de alguna de las siguientes intervenciones: </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">a) cirugía arterio-coronaria y b) transplante.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold">Monto Asegurado:</fo:inline> El monto asegurado corresponderá al valor de la cuota pactada, con un máximo de seis cuotas con un tope de UF 50 por cuota durante toda la vigencia del crédito.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Beneficiario:</fo:inline> Banco de Crédito e Inversiones </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Edad límite de ingreso y permanencia:</fo:inline>75 años 0 días</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold">Carencia: </fo:inline>60 días contados desde la fecha de curse del crédito de consumo asociado al seguro. </fo:block>                                    
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Principales Exclusiones:</fo:inline> Que ocurran a consecuencia de:</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">las enfermedades o intervenciones que resulten o sean consecuencia de a) Cualquiera de las exclusiones establecidas en el condicionado general principal, b) Enfermedades en conexión con infección por el Virus de Inmunodeficiencia Humana (HIV), c) Leucemia linfocítica crónica; d) Suicidio, tentativa de suicidio o enfermedad intencionalmente causada o lesiones auto inflingidas, ya sea en estado de cordura o demencia; e) Riñas o alborotos populares en los que hubiere intervenido el asegurado; f)   Riesgos nucleares; g) Padecimientos congénitos; h) Trasplantes que sean procedimientos de investigación; i) Adicción al alcohol o a las drogas, j) Situaciones o Enfermedades preexistentes. Para los efectos de la aplicación de esta exclusión, al momento de la contratación la Compañía Aseguradora deberá consultar al Asegurable acerca de todas aquellas situaciones o enfermedades preexistentes que pueden importar una limitación o exclusión de cobertura.</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" ></fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" font-weight="bold">PROCEDIMIENTO PARA EL PAGO DEL SINIESTRO:</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Producido el diagnóstico o la práctica de la intervención del asegurado, el asegurado o alguna persona por él designada deberán comunicarlo por escrito a la compañía dentro de un plazo de ciento veinte (120) días. El cumplimiento extemporáneo de está obligación hará perder el derecho a la indemnización establecida en la presente cláusula adicional, salvo en caso de fuerza mayor.</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">1.	Fotocopia del Carnet de Identidad</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">2.	Ficha clínica ambulatoria y/o hospitalaria.</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">3.	Certificados, informes y exámenes médicos que acrediten la enfermedad o realización de intervenciones cubiertas.</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">4.	Tabla de desarrollo del crédito que debe indicar el estado del servicio de la deuda, emitido por la Entidad    Contratante a la fecha en que se produjo dicha Invalidez  permanente dos tercios.</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">5.	Certificado de Saldo.</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">6.	Fotocopia del Pagaré.</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">7.	Solicitud de incorporación Original.</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">8.	Otros antecedentes que se estimen convenientes y necesario para la evaluación del siniestro.</fo:block>                                                                                                                
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">El costo de estas pruebas no será de cargo de la compañía.</fo:block>                                                                                                                                                                                                    
                           </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
              </fo:table>


             </fo:flow>
              </fo:page-sequence>

              </xsl:if>

			  <xsl:variable name="primBrutaSegAccidente" select="OperacionCredito/primaBrutaSeguroAccidentesPersonalesAval" />
			  <xsl:if  test="$primBrutaSegAccidente &gt; 0">



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
                                  
                                    </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACION</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SEGUROS COLOCACIONES PARA CREDITO DE CONSUMO</fo:block>
                            </fo:table-cell>


                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="OperacionCredito/logoBciCorredoresSeguros"/>
                                        </xsl:attribute>
                                      </fo:external-graphic>
                                    </fo:block>
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
                </fo:table>

              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="96.95mm"/>
                  <fo:table-column column-width="96.95mm"/>
                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio Nº<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" margin-left="1mm"  background-color="#BDBDBD">SEGURO ACCIDENTES PERSONALES</fo:block>
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                            
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Compañía Aseguradora: </fo:inline> BCI Seguros Vida S.A.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Beneficiario:</fo:inline>El beneficiario será los designados por el asegurado.</fo:block>                            
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold" margin-right="1mm">Vigencia:</fo:inline> La cobertura regirá desde la fecha en que el banco otorga efectivamente el crédito y la Compañía Aseguradora acepta asumir el riesgo, hasta el vencimiento del crédito.-</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold" margin-right="1mm">Edad límite de ingreso y permanencia:</fo:inline>75 años 0 días. </fo:block>                                                                             
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Coberturas</fo:inline></fo:block>                               
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">A)	Muerte Accidental: (POL 3 09 118 Letra A)</fo:inline> En caso de fallecimiento accidental del asegurado, el capital asegurado será pagado por la compañía aseguradora a los beneficiarios una vez recibidas y aprobadas las pruebas de que el fallecimiento del asegurado se produjo durante la vigencia de esta cobertura como consecuencia directa e inmediata de un accidente.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Capital Asegurado UF 200</fo:inline></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">B) Desmembramiento e Incapacidad Total Y Permanente Por Accidente (POL 3 09 118 Letra B) b.1 y b.2):</fo:inline>Esta cobertura contempla las coberturas de Desmembramiento y la Incapacidad Total y Permanente, de acuerdo a lo siguiente:</fo:block>                            
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold" margin-right="1mm">B.1Desmembramiento:</fo:inline> En virtud de esta cobertura y cuando la lesión sufrida a consecuencia de un accidente no ocasione el fallecimiento del asegurado, sino que produzca alguna de las pérdidas que a continuación se indican, y siempre que éstas se manifiesten antes de los noventa (90) días contados desde su ocurrencia y siempre haya tenido lugar durante la vigencia de esta cobertura, la compañía aseguradora indemnizará al asegurado los siguientes porcentajes del monto asegurado indicado en las condiciones particulares de la póliza para esta cobertura:</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">-	100% en caso de pérdida total de los dos ojos, o de ambos miembros superiores (brazos), o de las dos manos, o de ambos miembros inferiores (piernas), o de los dos pies, o de un miembro inferior (pierna) y de una mano o un brazo;</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">-	50% por la pérdida de uno de los miembros superiores (brazos), o uno de los miembros inferiores (pierna), o de una mano o por la sordera completa de ambos oídos, por la ceguera total de un ojo en caso de que el asegurado ya hubiera tenido ceguera total del otro antes de contratar este seguro;</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">-	40% por pérdida de un pie;</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">-	35% por la ceguera total de un ojo;</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">-	25% por la sordera completa de un oído en caso de que el asegurado ya hubiera tenido sordera completa de otro, antes de contratar este seguro;</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">-	20% por la pérdida de un pulgar;</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">-	15% por la pérdida total del índice derecho e izquierdo.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">-	13% por la sordera completa de un oído;</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">-	5%   por la pérdida total de cualquiera de los demás dedos de la mano;</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">-	3%   por la pérdida total de un dedo del pie;</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">En el caso de ocurrir más de un siniestro cubierto por la póliza durante la vigencia de ésta, los porcentajes a indemnizar se calcularán sobre la base del monto asegurado y no al saldo de éste, después de haber efectuado otros pagos. Sin embargo, el total de indemnizaciones provenientes de desmembramientos por uno o más accidentes cubiertos por la póliza, no podrá,en ningún caso, exceder del 100% del monto asegurado.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold" margin-right="1mm">B.2.Incapacidad total y permanente:</fo:inline> En virtud de esta cobertura y cuando como resultado de lesiones producto de un accidente cubierto por la póliza en los términos señalados en el artículo 1° de las condiciones generales, el asegurado se encontrare dentro de los noventa días contados desde la fecha del accidente,  total y permanentemente incapacitado e impedido de desempeñar cualquier ocupación o de emprender cualquier trabajo o negocio lucrativo, la compañía aseguradora pagará, previa determinación que dicha incapacidad sea total, continua y permanente, el porcentaje de la suma asegurada bajo esta cobertura, menos cualquier otra suma pagada o pagadera bajo los términos de esta cobertura y el saldo mientras el asegurado esté vivo.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Para efectos de esta cobertura, y se tendrá como fecha de declaración de la invalidez total y permanente la fecha en que se notificó a la Compañía la ocurrencia del accidente cubierto por esta póliza.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold" margin-right="1mm">Capital Asegurado UF 200:</fo:inline> la compañía pagará el capital de ITP accidental al asegurado siempre que la invalidez sea causada por un accidente ocurrido durante la vigencia de la póliza. Al ser la indemnización de esta cobertura siempre igual al monto principal (de la cobertura de muerte accidental) a indemnizar el pago al asegurado producirá la terminación inmediata de la póliza principal.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold" margin-right="1mm">C)  Renta Mensual Por Accidente Cónyuge (POL 3 09 118 Letra C)</fo:inline></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">En virtud de esta cobertura, la compañía aseguradora pagará al cónyuge como beneficiario de esta cobertura, el monto mensual establecido y durante el plazo establecido en las condiciones particulares, inmediatamente después de recibidas y aprobadas las pruebas de que el fallecimiento del asegurado titular se produjo como consecuencia directa e inmediata de un accidente cubierto por esta póliza en los términos descritos en el artículo 1° de las condiciones generales.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold" margin-right="1mm">Capital Asegurado UF 30:</fo:inline> la compañía aseguradora reembolsará al cónyuge una renta de  UF 5 por mes con un límite hasta 6 meses.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Queda expresamente establecido que el accidente a que de lugar a alguna de las coberturas del presente seguro, necesariamente debe haber ocurrido durante la vigencia de ésta.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Se entenderá como fallecimiento inmediato aquel que ocurra a más tardar dentro de los sesenta (60) días siguientes de ocurrido el accidente.</fo:block>
                            
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Monto y Prima Bruta (UF): </fo:inline> La prima fija mensual.</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="0mm" margin-right="0mm">                             
								  <fo:table border-collapse="collapse" text-align="left" >							  
																		  <fo:table-column column-width="80mm" border-top="0.5pt solid black"  border-right="0.5pt solid black" />
																		  <fo:table-column column-width="40mm" border-top="0.5pt solid black"  border-right="0.5pt solid black" />
																		  <fo:table-column column-width="55mm" border-top="0.5pt solid black"  border-right="0.5pt solid black" />
									  <fo:table-body>
										  <fo:table-row>
												<fo:table-cell >
																							<fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm" margin-left="0mm" border-left="0.5pt solid black" border-bottom="0.5pt solid black"><fo:inline font-weight="bold">Cobertura</fo:inline></fo:block>
												</fo:table-cell>
												<fo:table-cell >
																							<fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm" margin-left="0mm" border-left="0.5pt solid black" border-bottom="0.5pt solid black"><fo:inline font-weight="bold">Plan Individual</fo:inline></fo:block>
												</fo:table-cell>
												<fo:table-cell >
																							<fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm" margin-left="0mm" border-left="0.5pt solid black" border-bottom="0.5pt solid black"><fo:inline font-weight="bold">Prima Bruta Mensual (UF)</fo:inline></fo:block>
												</fo:table-cell>
										  </fo:table-row>
										  
										  <fo:table-row>
												<fo:table-cell >
																							<fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm" margin-left="0mm" border-bottom="0.5pt solid black">Muerte Accidental</fo:block>
												</fo:table-cell>
												<fo:table-cell >
																							<fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm" margin-left="0mm" border-bottom="0.5pt solid black">UF 200</fo:block>
												</fo:table-cell>

										  </fo:table-row>
										  
										  <fo:table-row>
												<fo:table-cell >
																							<fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm" margin-left="0mm" border-bottom="0.5pt solid black">Desmembramiento e Invalidez Total y Parcial</fo:block>
																			</fo:table-cell>
																			<fo:table-cell >
																							<fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm" margin-left="0mm" border-bottom="0.5pt solid black">UF 200</fo:block>
												</fo:table-cell>
												<fo:table-cell >
																							<fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm" margin-left="0mm" border-bottom="0.5pt solid white">0,049</fo:block>
												</fo:table-cell>
										  </fo:table-row>
										  <fo:table-row>
												<fo:table-cell >
																							<fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm" margin-left="0mm" border-bottom="0.5pt solid black">Renta Mensual por Accidente Cónyuge</fo:block>
																			</fo:table-cell>
																			<fo:table-cell >
																							<fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm" margin-left="0mm" border-bottom="0.5pt solid black">UF 5 Por 6 meses</fo:block>
												</fo:table-cell>
												<fo:table-cell >
																							<fo:block text-align="left" line-height="4.5mm" margin-left="0mm" border-bottom="0.5pt solid black">.</fo:block>
												</fo:table-cell>
										  </fo:table-row>										  
										  										  
									</fo:table-body>
								  </fo:table>                            
                                                                   
							</fo:block>     

                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Extensión de cobertura:</fo:inline></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">No obstante lo indicado en el Art. 4 letra j); k); m) y n) de las exclusiones de las condiciones generales, se extiende la cobertura</fo:inline></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">cuando el fallecimiento, lesiones, por accidente, cuando éste se haya originado, se asocie o sea consecuencia de: Realización o participación en una actividad o deporte riesgoso, considerándose como tales aquellos que objetivamente constituyan una flagrante agravación del riesgo o se requiera de medidas de protección o seguridad para realizarlos. A vía de ejemplo y sin que la enumeración sea taxativa o restrictiva sino que meramente enunciativa, se considera actividad o deporte riesgoso el manejo de explosivos, minería subterránea, trabajos en altura o líneas de alta tensión, inmersión submarina, piloto civil, paracaidismo, montañismo, alas delta, benji, parapente, carreras de auto y moto, entre otros.</fo:block>                                                                       
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- Cuando el fallecimiento sea por, lesiones, por accidente, cuando éste se haya originado, se asocie o sea consecuencia de: Desempeñarse el asegurado como piloto o tripulante de aviones civiles o comerciales.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- Cuando el fallecimiento sea por negligencia o imprudencia o culpa grave del asegurado.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- Cuando el fallecimiento se produce en vuelos CHARTER</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold" margin-right="1mm">EXCLUSIONES</fo:inline></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">No se pagará el monto asegurado para cada cobertura asociada a esta póliza cuando el fallecimiento, lesiones, cirugía u hospitalizaciones por accidente, cuando éste se haya originado, se asocie o sea consecuencia de:</fo:block>                                    
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">a)	Efectos de guerra, declarada o no declarada, invasión, acción de un enemigo extranjero, hostilidades u operaciones bélicas, ya sea con o sin declaración de guerra, así como tampoco ningún ejercicio o práctica de guerra.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">b)	Peleas o riñas, salvo en aquellos casos en que se establezca judicialmente que se ha tratado de legítima defensa.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">c)	Comisión de actos que puedan ser calificados como delito, así como la participación activa en rebelión, revolución, sublevación, asonadas, motín, conmoción civil, subversión y terrorismo.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">d)	Suicidio, intento de suicidio, o heridas autoinflingidas, ya sea que el asegurado haya estado en su pleno juicio o enajenado mentalmente.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">e)	Prestación de servicios del asegurado en las Fuerzas Armadas o funciones policiales de cualquier tipo. Para todos los efectos de esta póliza las funciones de policía incluyen además las funciones de policía civil y gendarmería.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">f)	Participación en carreras, apuestas, competencias y desafíos que sean remunerados o sean la ocupación principal del asegurado.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">g)	Intoxicación o encontrarse el asegurado bajo los efectos de cualquier narcótico o droga a menos que hubiese sido administrado por prescripción médica. Dicha circunstancia se acreditará mediante la documentación expedida por los organismos correspondientes.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">h)	La conducción de cualquier vehículo por parte del asegurado, encontrándose éste en estado de ebriedad. Dicha circunstancia se acreditará mediante la documentación expedida por los organismos correspondientes. Para los efectos de la presente exclusión, se considerará que el asegurado se encontraba en estado de ebriedad, cuando la concentración de alcohol en la sangre sea igual o superior a 1,00 gramo de alcohol por litro de sangre.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">i)	Negligencia o imprudencia o culpa grave del asegurado.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">j)	Cuando el fallecimiento, lesiones, por accidente, cuando éste se haya originado, se asocie o sea consecuencia de: Realización o participación en una actividad o deporte riesgoso, considerándose como tales aquellos que objetivamente constituyan una flagrante agravación del riesgo o se requiera de medidas de protección o seguridad para realizarlos. A vía de ejemplo y sin que la enumeración sea taxativa o restrictiva sino que meramente enunciativa, se considera actividad o deporte riesgoso el manejo de explosivos, minería subterránea, trabajos en altura o líneas de alta tensión, inmersión submarina, piloto civil, paracaidismo, montañismo, alas delta, benji, parapente, carreras de auto y moto, entre otros.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">k)	Desempeñarse el asegurado como piloto o tripulante de aviones civiles o comerciales a menos que expresa y específicamente se prevea y acepte su cobertura por la compañía aseguradora.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">l)	Riesgos nucleares o atómicos.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">m)	Movimientos sísmicos desde el grado 8 inclusive en la escala de Mercalli, determinado por el Servicio Sismológico del Departamento de Geofísica de la Universidad de Chile o del servicio que en el futuro lo reemplace.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">n)	Viaje o vuelo en vehículo aéreo de cualquier clase, excepto como pasajero en uno sujeto a itinerario, operado por una empresa de transporte aéreo comercial, sobre una ruta establecida para el transporte de pasajeros.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Documentación a Presentar</fo:inline></fo:block>  
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">En caso de fallecimiento , los beneficiarios deberán presentar a la compañía la siguiente documentación:</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">1.-Formulario de denuncio de siniestros- 2.-Fotocopia de Cédula de Identidad. 3.-Certificado original de defunción o fotocopia legalizada del asegurado. 4.- Copia del Parte policial o certificado de atención de urgencia.5.-El parte policial o dictamen de la justicia en caso de presunta muerte en conformidad a la ley.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Cobertura de Invalidez Accidental</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">1.-Formulario de denuncio de siniestros. 2. Fotocopia de Cédula de Identidad. 3. Certificados, exámenes e informes médicos comprobatorios de la Incapacidad.</fo:block>                                                               
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Nota:</fo:inline> La Compañía se reserva el derecho de pedir cualquier otro antecedente que se estime conveniente para poder realizar esta liquidación.</fo:block>
                                                                                                                                   
                           </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

             </fo:flow>
              </fo:page-sequence>
			</xsl:if>

			  <xsl:variable name="primBrutaSegCesantia" select="OperacionCredito/primaBrutaCesantiaInvoluntaria" />
			  <xsl:if  test="$primBrutaSegCesantia &gt; 0">

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
                                  
                                    </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACION</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SEGUROS COLOCACIONES PARA CREDITO DE CONSUMO</fo:block>
                            </fo:table-cell>


                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="OperacionCredito/logoBciCorredoresSeguros"/>
                                        </xsl:attribute>
                                      </fo:external-graphic>
                                    </fo:block>
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
                </fo:table>

              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="96.95mm"/>
                  <fo:table-column column-width="96.95mm"/>
                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio Nº<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>

			              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" margin-left="1mm"  background-color="#BDBDBD">SEGURO CESANTÍA</fo:block>
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                            
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Compañía Aseguradora: </fo:inline> BCI Seguros Vida S.A.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Cobertura:</fo:inline>(POL 1 09 116) </fo:block>                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">a)Trabajadores Dependientes cesantía involuntaria por alguna de las causales de los números 1 y 6 del artículo 159 o el inciso 1 del artículo 161, ambos del Código del Trabajo. En presencia de la situación prevista en el artículo 159 nro. 1, será necesario acreditar en el finiquito respectivo el pago de al menos 2/3 (dos tercios) de la indemnización que hubiese correspondido en caso de haberse imputado la causal establecida en el inciso 1 del artículo 161 del mismo código</fo:block>        
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">b)Trabajadores Independientes incapacidad temporal producida por una enfermedad de origen infeccioso o accidente que cause el otorgamiento de una licencia médica de reposo superior a 30 días.</fo:block>                                                             
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold">Monto Asegurado:</fo:inline> Para trabajador dependiente corresponderá al valor de la cuota pactada, con un máximo de cuatro durante toda la vigencia del crédito, tope UF 62,5 por cuota a contar de la fecha de ocurrencia del siniestro. Para trabajador independiente el número de cuotas a indemnizar se regirá de acuerdo al tiempo de reposo: De 31 a 60 días 1 cuota, de 61 a 90 días 2 cuotas, de 91 a 120 días 3  cuotas y más de 121 días 4  cuotas.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold">Beneficiario:</fo:inline> Banco de Crédito e Inversiones </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold">Edad límite de ingreso y permanencia:</fo:inline>65 años 364 días</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold">Carencia: </fo:inline>60 días contados desde la fecha de curse del crédito de consumo asociado al seguro. </fo:block>                    
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold">Periodo de actividad mínima para invocar al seguro: </fo:inline>6 meses con contrato indefinido con  un mismo empleador.</fo:block> 
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold">Plazo Máximo de presentación de antecedentes: </fo:inline>Para la acreditación inicial del siniestro, en caso de trabajadores dependientes el plazo será 180 días corridos contados desde la fecha de término de la relación laboral o fecha de inicio de licencia médica para trabajadores independientes. Posteriormente, para cobrar las cuotas siguientes el plazo es de 45 días corridos posteriores a la fecha de facturación de cada cuota reclamada. </fo:block>                                                                                         
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold">Principales Exclusiones:</fo:inline> Para la cobertura de Desempleo se excluyen las causas distintas de las señaladas en el Artículo 2 letra A de estas Condiciones Generales, por entenderse de esta forma excluidas de cobertura</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Para la cobertura de Incapacidad Temporal se excluye la situación de incapacidad sea producto de alguna de las siguientes causales y que su origen sea dentro del período de vigencia de la póliza: 1) Reposo o licencia a causa de embarazo o cualquier enfermedad producida con motivo del  embarazo ocurridos dentro de la vigencia de esta póliza, 2) Las Incapacidades de origen nervioso o psíquicos (incluyendo depresión) y enfermedades a la espalda que ocurran dentro de la vigencia de esta póliza, 3) Participación del Asegurado en actos temerarios o deportes notoriamente peligrosos o riesgosos, entendiendo por tales aquellas en las cuales se pone en grave peligro la vida e integridad física de las personas.</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" border-bottom="0.5pt solid black"></fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" font-weight="bold">Antecedentes requeridos para la acreditación del siniestro y el pago de cuotas:</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">a)En caso de Trabajador Dependiente: Copia de finiquito firmado en  original ante notario , certificado de cotizaciones de la AFP o INP con las doce  ultimas cotizaciones ( posterior al  20 del  mes  a  cobrar), inscripción  en  el   registro municipal de cesantes y/o solicitud de pago del subsidio de cesantía. Por cada una de las cuotas en que se solicite el pago   del seguro, se debe presentar el Certificado de la AFP o INP  señalado anteriormente, última colilla del pago de subsidio de cesantía. </fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">b)En caso de trabajador independiente: licencia médica con el número de días de reposo, copia de la documentación presentada al sistema de salud previsional, declaración jurada simple de su estado de salud. No se cubrirán las licencias médicas curativas extendidas con anterioridad a la contratación de la cobertura o derivadas de continuación de tratamiento, tampoco se cubren licencias médicas maternales ni licencias medicas por complicaciones de embarazos y tampoco por enfermedad de hijos menores de 1 año. </fo:block>

						 </fo:table-cell >
                                                                  

                      </fo:table-row>
                </fo:table-body>
              </fo:table>


             </fo:flow>
              </fo:page-sequence>


			</xsl:if>



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
                                  
                                    </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACION</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SEGUROS COLOCACIONES PARA CREDITO DE CONSUMO</fo:block>
                            </fo:table-cell>


                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="OperacionCredito/logoBciCorredoresSeguros"/>
                                        </xsl:attribute>
                                      </fo:external-graphic>
                                    </fo:block>
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
                </fo:table>

              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="96.95mm"/>
                  <fo:table-column column-width="96.95mm"/>
                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio Nº<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>
              <fo:table border-collapse="collapse" text-align="left">
              
              
              <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >

              
                                                                                
                                                                  
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black" border-bottom="0.5pt solid black" font-weight="bold">EL  ASEGURABLE DECLARA ESTAR EN CONOCIMIENTO:</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">a)	Que esta solicitud de incorporación, no otorga cobertura hasta haber sido aceptada por Bci Seguros Vida S.A.</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">b)	La presente Solicitud de Incorporación a estos seguros se hace a petición del suscrito y en ningún caso ha sido considerada como condición para el otorgamiento del (de los) crédito(s) ofrecido(s) o solicitado(s); y además declaro estar en pleno conocimiento de toda la información contenida en la presente Solicitud.</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">c)	Del derecho a decidir sobre la contratación de los seguros y a la libre elección del intermediario y   compañía  aseguradora.</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">d)	Estar dispuesto a someterme a pruebas médicas por cuenta de la Compañía, asimismo autorizo a los médicos, hospital, clínica u otra institución o persona que tenga mis registros personales para que entregue o proporcione la información solicitada por BCI Seguros Vida S.A. A su vez faculto a esta última para que solicite o retire copia de tales antecedentes patológicos, incluso en caso de muerte, conforme a lo dispuesto en la ley número 19.628, artículo 127 del Código Sanitario.</fo:block>                                                   
                            
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black" border-bottom="0.5pt solid black"   background-color="#BDBDBD" font-weight="bold">AUTORIZACIÓN:</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Autorizo al Banco para remitir a Bci Seguros Vida S.A., Bci Seguros Generales S.A. y/o Bci Corredores de Seguros S.A. la información pertinente a los montos de los créditos; sus condiciones, estados de servicios de las deudas, montos o saldos insolutos adeudados y demás que fuere menester para dichas operaciones, según lo solicitaren dichas compañías. </fo:block>                                           

                            
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black" border-bottom="0.5pt solid black"   background-color="#BDBDBD" font-weight="bold">DERECHO A  RETRACTACIÓN:</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">El Asegurado tiene derecho de retractación de los seguros contratados en la presente solicitud de incorporación, dentro de un plazo de 5 días hábiles contados desde que el crédito es cursado, o desde la suscripción del seguro, según lo que sea posterior.</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"  border-top="0.5pt solid black" >En caso de extinción o disminución de deuda por prepago o renegociación del crédito, BCI Seguros devolverá al deudor asegurado la prima que no se hubiere devengado por la extinción de los riesgos menos un 15% de gastos administrativos, si ello se hubiera producido dentro de los 45 días siguientes al inicio de la cobertura o dentro de un término correspondiente a la décima parte del período de cobertura efectiva del seguro, si ello fuera superior (Circular 1762 de la Superintendencia de Valores y Seguros). </fo:block>                            
                                                                                                                       

                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black" border-bottom="0.5pt solid black"   background-color="#BDBDBD" font-weight="bold">CONSULTAS, RECLAMOS Y DENUNCIAS DE SINIESTRO:</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">En caso de consultas, reclamos y denuncias de siniestro, el asegurado se deberá comunicar con Bci Corredores de Seguros al teléfono (02) 5404953 o al e-mail: siniestrosbci@bci.cl., al teléfono del CRI de la Compañía de Seguros 6006000292 - desde celular 02 - 6799700  o en cualquiera de las oficinas de Bci Seguros</fo:block>
                            
                                                                                                                                                                                                          
                           </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
              </fo:table>


              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column   border-top="0.5pt solid black"  />

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                            
									  <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                            
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Declaro recibir en el acto un duplicado del documento individualizado y acepto las condiciones de asegurabilidad descritas</fo:block>
   <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                       
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">En caso que la Declaración Personal de Salud queda aceptada con o sin exclusión, la presente solicitud de incorporación será aceptada por BCI Seguros de Vida  S.A. y/o Bci Seguros Generales S.A. en forma inmediata con las exclusiones antes señaladas y otorgará cobertura, una vez que la operación crediticia individualizada sea cursada por el Banco de Crédito e Inversiones.</fo:block>
				   <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">En caso que la Declaración Personal de Salud se encuentre en estado pendiente, los seguros asociados a esta operación se encuentran en proceso de evaluación por parte de la Compañía de Seguros, por lo cual el asegurado no tendrá cobertura hasta que sea aceptada por BCI Seguros de Vida  S.A. y/o Bci Seguros Generales S.A.</fo:block>
                              
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
                                  
                                    </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SOLICITUD DE INCORPORACION</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >SEGUROS COLOCACIONES PARA CREDITO DE CONSUMO</fo:block>
                            </fo:table-cell>


                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="OperacionCredito/logoBciCorredoresSeguros"/>
                                        </xsl:attribute>
                                      </fo:external-graphic>
                                    </fo:block>
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
                </fo:table>

              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="96.95mm"/>
                  <fo:table-column column-width="96.95mm"/>
                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio Nº<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" margin-left="1mm"  background-color="#BDBDBD">INFORMACION ART. 57 Y 58 DEL DL N° 251.</fo:block>
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
              </fo:table>
                                                        
                                                        

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                            
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">BCI Corredores de Seguros S.A., Rut 78.951.950-1, en calidad de Corredor de seguros y, en cumplimiento a la ley, informo que durante el año calendario anterior intermedié contratos de seguros con las siguientes Compañías de Seguros.</fo:block>                 
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold"> En Seguros Generales:</fo:inline> el 82.7% en BCI Seguros Generales S.A., el 5.5% con la Compañía de Seguros Generales Cardif  S.A., el 3.2% con Liberty Cia. de Seguros Generales S.A., el 2.4% con RSA  Seguros Chile , el 1,6% con C.S.G. Penta Security S.A , el 1,2% con Aseguradora Magallanes S.A., el 1.1% con Mapfre Seguros generales  y otras 2.2%.  <fo:inline font-weight="bold">En Seguros de Vida:</fo:inline>  el 74.3% con BCI Seguros de Vida S.A., el 15.5% con la Compañía de Seguros de Vida Cardif S.A., el 3.7% con MetLife Chile Seg. de Vida S.A., el 1,9% con Chilena Consolidada Vida S.A.,  el 1,9% con Euroamerica Vida S.A., el 1,7% con Bice Vida Compañía de Seguros de Vida S.A y otras 1,1%. </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"> Para responder del correcto y cabal cumplimiento de todas mis obligaciones emanadas de la actividad de Corredor de Seguros y, en especial, de los perjuicios que pueda ocasionar a los asegurados que contraten seguros por mi intermedio, se ha emitido Póliza de Responsabilidad Civil N° 10019736 en Consorcio Nacional de Seguros S.A. y Póliza de Garantía N° 10019734 en Consorcio Nacional de Seguros S.A</fo:block>
                              
                           </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" background-color="#BDBDBD" border-right="0.5pt solid black" border-left="0.5pt solid black" border-bottom="0.5pt solid black">ANEXO:  DETALLE DE COMISIONES</fo:block>
									<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                                    
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
              </fo:table>              
                                                                      
                                                                      

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="120,95mm" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-bottom="0.5pt solid black"/>
                  <fo:table-column column-width="74,95mm" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">PRODUCTO</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" line-height="4.5mm"  border-bottom="0.5pt solid black"><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">COMISION DE</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm"  border-bottom="0.5pt solid black">INTERMEDIACION</fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                      
                                            
                </fo:table-body>
              </fo:table>
                                                                      
			   <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="120,95mm" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-bottom="0.5pt solid black"/>
                  <fo:table-column column-width="74,95mm" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm" border-top="0.5pt solid black" border-right="0.5pt solid black" >Desgravamen   (POL 2 09 128 CAD 2 09 130)</fo:block>

                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" padding-left="1mm" line-height="4.5mm" border-top="0.5pt solid black" border-right="0.5pt solid black" >25%</fo:block>
                            </fo:table-cell>

                      </fo:table-row>              
                                            
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm" border-top="0.5pt solid black" border-right="0.5pt solid black" >Doble Capital   (POL 2 09 109 CAD 2 09 115)</fo:block>

                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" padding-left="1mm" line-height="4.5mm" border-top="0.5pt solid black" border-right="0.5pt solid black" >44%</fo:block>
                            </fo:table-cell>

                      </fo:table-row>       
                      
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm" border-top="0.5pt solid black" border-right="0.5pt solid black" >Renta por Hospitalización (CAD 2 09 129)</fo:block>

                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" padding-left="1mm" line-height="4.5mm" border-top="0.5pt solid black" border-right="0.5pt solid black" >30%</fo:block>
                            </fo:table-cell>

                      </fo:table-row>       
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm" border-top="0.5pt solid black" border-right="0.5pt solid black" >Enfermedades Graves (CAD 3 09 148)</fo:block>

                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" padding-left="1mm" line-height="4.5mm" border-top="0.5pt solid black" border-right="0.5pt solid black" >30%</fo:block>
                            </fo:table-cell>

                      </fo:table-row>       

                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm" border-top="0.5pt solid black" border-right="0.5pt solid black" >Cesantía Involuntaria  (POL 1 09 116)</fo:block>

                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" padding-left="1mm" line-height="4.5mm" border-top="0.5pt solid black" border-right="0.5pt solid black" >23%</fo:block>
                            </fo:table-cell>

                      </fo:table-row>       
                      
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm" border-top="0.5pt solid black" border-right="0.5pt solid black" >Accidentes Personales (POL 3 09 118 Letra A POL 3 09 118 Letra B) b.1 y b.2) y Letra C)</fo:block>

                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" padding-left="1mm" line-height="4.5mm" border-top="0.5pt solid black" border-right="0.5pt solid black" >30%</fo:block>
                            </fo:table-cell>

                      </fo:table-row>                                                                                                               
                                                                  
                </fo:table-body>
              </fo:table>                                                                
                                                              
                                                              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm" border-top="0.5pt solid black"  ><fo:inline font-weight="bold"> Comisión de Recaudación (Receptor Banco BCI):</fo:inline> UF 0,03 + IVA por recaudación </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" margin-right="1mm" line-height="4.5mm"  ><fo:inline font-weight="bold">Valija documentos (Receptor Banco BCI):</fo:inline> $ 400 + IVA por seguro </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" margin-right="1mm" line-height="4.5mm" border-bottom="0.5pt solid black" ><fo:inline font-weight="bold">Comisión por gestión de siniestros (Receptor Bci Corredores de Seguros):</fo:inline> 14% de la prima neta de cesantía + IVA</fo:block>                                    
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
              </fo:table>         
              
                                                                                    
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <fo:table border-collapse="collapse" >
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />

                  <fo:table-body>
                      <fo:table-row>


                            <fo:table-cell >
                                      <fo:block-container width="125mm"   height="125mm" background-repeat="no-repeat" >
                                        <fo:block line-height="4.5mm" space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block line-height="4.5mm" space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="10mm" /><xsl:value-of select="OperacionCredito/fechaSuscripcion"/></fo:block>
                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="12mm"/>Fecha</fo:block>
                                      </fo:block-container>
                            </fo:table-cell>

                            <fo:table-cell >
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block line-height="4.5mm"     text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                        <fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm">Firma del Asegurable</fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block line-height="4.5mm"     text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                        <fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm">Firma del Titular</fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                      <fo:block-container width="125mm"   height="125mm" background-repeat="no-repeat" >
                                                  <xsl:attribute name="background-image">
                                                  <xsl:value-of select="OperacionCredito/logoFirmaCorredor"/>
                                                  </xsl:attribute>
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" >Firma del Corredor</fo:block>
                                      </fo:block-container>
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
              </fo:table>





              </fo:flow>
              </fo:page-sequence>



        </fo:root>
    </xsl:template>
</xsl:stylesheet>