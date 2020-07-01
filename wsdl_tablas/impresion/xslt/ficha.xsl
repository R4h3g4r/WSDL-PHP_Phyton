<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2006/11/21 11:20 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>

    <xsl:param name="IMG_URL"/>
    
    <xsl:template match="fichacliente">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="279.4mm" margin-top="10mm" margin-bottom="10mm" margin-left="20mm" margin-right="20mm">
                    <fo:region-body/>
                    <!-- <fo:region-before extent="3cm"/> -->
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="miCarta">
                <fo:flow flow-name="xsl-region-body">
                    <!-- border="1pt solid black" -->
                    <!--
          <fo:block text-align="left">
            <fo:external-graphic src="C:/BEE/fop-0.20.5/normaliza.jpg"/>
          </fo:block>
                    -->
                    <fo:block text-align="left">
                        <fo:external-graphic src="url({$IMG_URL}/img_webcorp_normaliza.gif)"/>
                    </fo:block>                    
                    <fo:block font-family="Times" text-align="center" font-size="18pt" font-weight="bold">
                            Ficha de Cobranza Prejudicial Externa
                    </fo:block>

          <xsl:for-each select="deudores/directos">
            <fo:block font-family="Times" text-align="left" font-size="9pt" line-height="4mm" space-before="5mm">

              <fo:block font-weight="bold">
                ANTECEDENTES DEUDOR DIRECTO
              </fo:block>
              <fo:table table-layout="fixed" width="175.9mm">
                <fo:table-column column-width="25mm"/>
                <fo:table-column column-width="90.9mm"/>
                <fo:table-column column-width="30mm"/>
                <fo:table-column column-width="30mm"/>

                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block>
                      Nombre
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                        : <xsl:value-of select="nombreCliente"/>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
												Rut: <xsl:value-of select="idPCliente"/>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                        Preaprobado: <xsl:value-of select="preaprobado"/>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block>
                      Nº Cta. Cte.
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
												: <xsl:value-of select="ctacte"/>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                        banca: <xsl:value-of select="banca"/>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
												Convenio Alianza: <xsl:value-of select="convenioAlianza"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block font-weight="bold">
												Dicom
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block>
												
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block>
												
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block>
												
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block>
												Mora: <xsl:value-of select="dicomMora"/>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
												Protestos: <xsl:value-of select="dicomProtestos"/>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
												Castigos: <xsl:value-of select="dicomCastigos"/>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
												Vencida: <xsl:value-of select="dicomVencida"/>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>

                <fo:block space-before="5mm">
                  <fo:block text-align="left" font-weight="bold">
                    Direcciones
                  </fo:block>
									<fo:table table-layout="fixed" width="175.9mm">
									<fo:table-column/>
                    <fo:table-body>
									    
                                        <xsl:for-each select="direccionesDirecto/domicilio">
                      <fo:table-row>
                        <fo:table-cell>
                          <fo:block>
													DIRECCIÓN DOMICILIO : <xsl:value-of select="dircom"/>
                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>
                                        </xsl:for-each>

                                        <xsl:for-each select="direccionesDirecto/comercial">
                      <fo:table-row>
                        <fo:table-cell>
                          <fo:block>
    													DIRECCIÓN COMERCIAL : <xsl:value-of select="dircom"/>
                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>
                                        </xsl:for-each>                                        

									</fo:table-body>
								</fo:table>
                          </fo:block>
                            
							<fo:block space-before="5mm">
								<fo:block text-align="left" font-weight="bold">
									Teléfonos 
								</fo:block>
								<fo:table table-layout="fixed" width="175.9mm">
									<fo:table-column/>
									<fo:table-body>
									    
                                        <xsl:for-each select="direccionesDirecto/domicilio">
										<fo:table-row>
											<fo:table-cell>
												<fo:block>
    													DOMICILIO : <xsl:value-of select="telefono"/>
												</fo:block>
											</fo:table-cell>
                                            </fo:table-row>
                                            </xsl:for-each>

                                        <xsl:for-each select="direccionesDirecto/comercial">
										<fo:table-row>
											<fo:table-cell>
												<fo:block>
    													COMERCIAL : <xsl:value-of select="telefono"/>
    												</fo:block>
    											</fo:table-cell>
                                            </fo:table-row>
                                            </xsl:for-each>
                                        
                                        <xsl:for-each select="direccionesDirecto/celular">
										<fo:table-row>
											<fo:table-cell>
												<fo:block>
    													CELULAR : <xsl:value-of select="telefono"/>
    												</fo:block>
    											</fo:table-cell>
                                            </fo:table-row>
                                            </xsl:for-each>
                                        
									</fo:table-body>
								</fo:table>
							</fo:block>                            

							<xsl:for-each select="sociedadesDirecto/element">
                <fo:table table-layout="fixed" width="175.9mm">
                  <fo:table-column/>
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell>
                        <fo:block>
                          Sociedades
                        </fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>
                          : <xsl:value-of select="nombre"/>
                        </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </xsl:for-each>

            </fo:block>
          </xsl:for-each>

          <xsl:for-each select="deudores/indirectos">
            <fo:block font-family="Times" text-align="left" font-size="9pt" line-height="4mm" space-before="5mm">

              <fo:block font-weight="bold">
                ANTECEDENTES DEUDOR INDIRECTO
              </fo:block>
              <fo:table table-layout="fixed" width="175.9mm">
                <fo:table-column column-width="25mm"/>
                <fo:table-column column-width="90.9mm"/>
                <fo:table-column column-width="30mm"/>
                <fo:table-column column-width="30mm"/>

                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block>
                      Nombre
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                        : <xsl:value-of select="nombreCliente"/>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
												Rut: <xsl:value-of select="idPCliente"/>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                        Preaprobado: <xsl:value-of select="preaprobado"/>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block>
                      Nº Cta. Cte.
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                        : DEFINIR
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                        banca: <xsl:value-of select="banca"/>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                        convenioAlianza: <xsl:value-of select="convenioAlianza"/>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block>
                        dicomMora: <xsl:value-of select="dicomMora"/>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                        dicomProtestos: <xsl:value-of select="dicomProtestos"/>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                        dicomCastigos: <xsl:value-of select="dicomCastigos"/>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                        dicomVencida: <xsl:value-of select="dicomVencida"/>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>

                <fo:block space-before="5mm">
                  <fo:block text-align="left" font-weight="bold">
                    Direcciones
                  </fo:block>
                  <fo:table table-layout="fixed" width="175.9mm">
                    <fo:table-column column-width="40mm"/>
                    <fo:table-column column-width="135.9mm"/>
                    <fo:table-body>
									    
                                        <xsl:for-each select="direccionesIndirecto/domicilio">
                      <fo:table-row>
                        <fo:table-cell>
                          <fo:block>
    													DIRECCIÓN DOMICILIO : <xsl:value-of select="dircom"/>
                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>
                                        </xsl:for-each>

                                        <xsl:for-each select="direccionesIndirecto/comercial">
                      <fo:table-row>
                        <fo:table-cell>
                          <fo:block>
    													DIRECCIÓN COMERCIAL : <xsl:value-of select="dircom"/>
                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>
                                        </xsl:for-each>                                        

									</fo:table-body>
								</fo:table>
                          </fo:block>
                            
							<fo:block space-before="5mm">
								<fo:block text-align="left" font-weight="bold">
									Teléfonos 
								</fo:block>
								<fo:table table-layout="fixed" width="175.9mm">
									<fo:table-column column-width="40mm"/>
									<fo:table-column column-width="135.9mm"/>
									<fo:table-body>
									    
                                       <xsl:for-each select="direccionesIndirecto/domicilio">
										<fo:table-row>
											<fo:table-cell>
												<fo:block>
    													DOMICILIO : <xsl:value-of select="telefono"/>
    												</fo:block>
    											</fo:table-cell>
                                            </fo:table-row>
                                            </xsl:for-each>
                                        
                                        <xsl:for-each select="direccionesIndirecto/comercial">
										<fo:table-row>
											<fo:table-cell>
												<fo:block>
    													COMERCIAL : <xsl:value-of select="telefono"/>
    												</fo:block>
    											</fo:table-cell>
                                            </fo:table-row>
                                            </xsl:for-each>
                                        
                                        <xsl:for-each select="direccionesIndirecto/celular">
										<fo:table-row>
											<fo:table-cell>
												<fo:block>
    													CELULAR : <xsl:value-of select="telefono"/>
    												</fo:block>
    											</fo:table-cell>
                                            </fo:table-row>
                                            </xsl:for-each>
                                        
									</fo:table-body>
								</fo:table>
							</fo:block>  
							
							<xsl:for-each select="sociedadesIndirecto/element">
                <fo:table table-layout="fixed" width="175.9mm">
                  <fo:table-column/>
                  <fo:table-column/>
                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell>
                        <fo:block>
                          Sociedades
                        </fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>
                          : <xsl:value-of select="nombre"/>
                        </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </xsl:for-each>

            </fo:block>
          </xsl:for-each>

          <xsl:for-each select="antecedentesOperacion/element">
            <fo:block font-family="Times" text-align="left" font-size="9pt" line-height="4mm" space-before="5mm">
              <fo:block font-weight="bold">
                ANTECEDENTES DE LA OPERACIÓN
              </fo:block>
              <fo:table table-layout="fixed" width="175.9mm">
                <fo:table-column/>
                <fo:table-column/>
                <fo:table-column/>
                <fo:table-column/>
                <fo:table-column/>
                <fo:table-column/>

                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block>
                      Nº Operación
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                        : <xsl:value-of select="numeroOperacion"/>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                      Tipo Operación
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                        : <xsl:value-of select="tipoOperacion"/>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                      Sit. Contable
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                        : <xsl:value-of select="situacionContable"/>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block>
                      Oficina
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                        : <xsl:value-of select="oficina"/>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                      Ejecutivo
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                        : <xsl:value-of select="ejecutivo"/>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                      Anexo
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                        : <xsl:value-of select="anexo"/>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:block space-before="5mm">
                <fo:block text-align="left" font-weight="bold">
                  Deuda
                </fo:block>

                <fo:table table-layout="fixed" width="175.9mm">
                  <fo:table-column/>
                  <fo:table-column/>
                  <fo:table-column/>
                  <fo:table-column/>
                  <fo:table-column/>
                  <fo:table-column/>

                  <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell>
                        <fo:block>
                        Moneda
                        </fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>
                          : <xsl:value-of select="moneda"/>
                        </fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>
                        Vencimiento
                        </fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>
                          : <xsl:value-of select="vencimiento"/>
                        </fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>
                        Ultimo Pago
                        </fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>
                          : <xsl:value-of select="ultimoPago"/>
                        </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell>
                        <fo:block>
                        Saldo Insoluto
                        </fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>
                          : <xsl:value-of select="saldoInsoluto"/>
                        </fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>
                        Capital Mora
                        </fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>
                          : <xsl:value-of select="capitalMora"/>
                        </fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>
                        Interés Mora
                        </fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>
                          : <xsl:value-of select="interesMora"/>
                        </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell>
                        <fo:block>
                        Saldo en Mora
                        </fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>
                          : <xsl:value-of select="saldoMora"/>
                        </fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>
                        Cuotas Mora
                        </fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>
                          : <xsl:value-of select="cuotasMora"/>
                        </fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>
                        Días Mora
                        </fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>
                          : <xsl:value-of select="diasMora"/>
                        </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <xsl:for-each select="antecedentesOperacion/element/garantiasEspecificas/element">
                      <fo:table-row>
                        <fo:table-cell>
                          <fo:block>
                          Garantías
                          </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                          <fo:block>
                            : <xsl:value-of select="garantia"/>
                          </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                          <fo:block>
                          Ubicación
                          </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                          <fo:block>
                            : <xsl:value-of select="ubicacion"/>
                          </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                          <fo:block>

                          </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                          <fo:block>

                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>
                    </xsl:for-each>

                  </fo:table-body>
                </fo:table>
              </fo:block>

            </fo:block>
          </xsl:for-each>

          <fo:block font-family="Times" text-align="left" font-size="9pt" line-height="4mm" space-before="5mm">
            <fo:block font-weight="bold">
              GESTIONES DE COBRANZA
            </fo:block>
            <fo:table table-layout="fixed" width="175.9mm" border="1pt solid black">
              <fo:table-column/>
              <fo:table-column/>
              <fo:table-column/>
              <fo:table-column/>
              <fo:table-column/>
              <fo:table-column/>
              <fo:table-column/>
              <fo:table-body>
                <fo:table-row>
                  <fo:table-cell>
                    <fo:block font-weight="bold">
                      Fecha
                    </fo:block>
                  </fo:table-cell>
                  <fo:table-cell>
                    <fo:block font-weight="bold">
                      Hora
                    </fo:block>
                  </fo:table-cell>
                  <fo:table-cell>
                    <fo:block font-weight="bold">
                      Gestor
                    </fo:block>
                  </fo:table-cell>
                  <fo:table-cell>
                    <fo:block font-weight="bold">
                      Gestión
                    </fo:block>
                  </fo:table-cell>
                  <fo:table-cell>
                    <fo:block font-weight="bold">
                      Contacto
                    </fo:block>
                  </fo:table-cell>
                  <fo:table-cell>
                    <fo:block font-weight="bold">
                      Respuesta
                    </fo:block>
                  </fo:table-cell>
                  <fo:table-cell>
                    <fo:block font-weight="bold">
                      Observaciones
                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
                <xsl:for-each select="gestionesCobranza/element">
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block>
                        <xsl:value-of select="fecha"/>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                        <xsl:value-of select="hora"/>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                        <xsl:value-of select="gestor"/>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                        <xsl:value-of select="gestion"/>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                        <xsl:value-of select="contacto"/>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                        <xsl:value-of select="respuestagestion"/>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>
                        <xsl:value-of select="observaciones"/>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </xsl:for-each>
              </fo:table-body>
            </fo:table>
          </fo:block>




                    <!-- Separador -->
                    <!--
                    <fo:block space-after="10mm">
                        <fo:leader leader-alignment="center" leader-pattern="dots" leader-length="17cm"/>
                    </fo:block>
                    -->

                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
