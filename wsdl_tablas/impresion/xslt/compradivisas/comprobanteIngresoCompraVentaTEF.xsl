<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="/">
        <xsl:variable name="titulos">
            #FFFFFF
        </xsl:variable>
        <xsl:variable name="lineas">
            #EBEBEB
        </xsl:variable>
        <xsl:variable name="txt">
            #000000
        </xsl:variable>
        <xsl:variable name="sombreadoTablas">
            #CFCFCF
        </xsl:variable>
        
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="all-pages" page-width="210mm" page-height="297mm" margin-top="30mm">
                    <fo:region-body padding="0" margin="0.7in" region-name="xsl-region-body" column-gap="0.25in"/>
                    <fo:region-before region-name="xsl-region-before" extent="7in"/>
                    <fo:region-after padding="0" region-name="xsl-region-after" display-align="before" extent="0.7in"/>
                </fo:simple-page-master>
                <fo:page-sequence-master master-name="default-page">
                    <fo:repeatable-page-master-reference master-reference="all-pages"/>
                </fo:page-sequence-master>
            </fo:layout-master-set>
            
<fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
              <fo:static-content flow-name="xsl-region-before" >
                        <fo:block >
                              <fo:table width="21cm" space-after="4mm">
                            <fo:table-column column-width="2cm" />  <!-- margen -->
                            <fo:table-column column-width="14cm" /> <!-- BCI -->
                            <fo:table-column />                     <!-- Sello Agua -->
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:external-graphic width="100pt" >
                               <xsl:attribute name="src">
                               url('<xsl:value-of select="CompraVentaConTef/rutaLogoCabecera" />')
                               </xsl:attribute>
                             </fo:external-graphic>
                       </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:external-graphic width="100pt">
                                            <xsl:attribute name="src">
                                               url('<xsl:value-of select="CompraVentaConTef/rutaLogoSelloAgua" />')
                                            </xsl:attribute>
                                        </fo:external-graphic>
                                    </fo:table-cell>
                                </fo:table-row>
                             </fo:table-body>
                        </fo:table>
                    </fo:block>
               </fo:static-content>
               <fo:static-content flow-name="xsl-region-after" margin-left="18.7cm" font-size="12pt" >
                      <fo:block font-weight="bold" font-size="8pt" color="{$txt}" >
                           Página                         <fo:page-number/>
                      </fo:block>
                 </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                 <fo:block margin-left="117mm"  > 
                  <fo:block space-before="1cm" font-size="10pt"  margin-left="1.4cm" >
                           Estimado Cliente,
                    </fo:block>
                     <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm" >
                          Se ha realizado correctamente el ingreso de la siguiente operación: 
                    </fo:block>
                    <fo:block  margin-left="117mm"  width="200pt" space-before="0.5cm" >
                        <fo:block>
                        <fo:table width="20cm" space-after="1cm" >
                        <fo:table-column column-width="8cm"/>
                        <fo:table-column column-width="12cm"/>
                        
                          <fo:table-body>
								<fo:table-row>
									<fo:table-cell>
								        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
											Monto a Comprar: &#160;
										</fo:block>
										<fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm" >
                                                    <xsl:value-of select="CompraVentaConTef/monedaCompra" />&#160;$<xsl:value-of select="CompraVentaConTef/montoCompra" />
                                         </fo:block>
									</fo:table-cell>
									<fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
                                             Monto a Pagar:  &#160;
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm" >
                                            <xsl:value-of select="CompraVentaConTef/monedaPago" />&#160;$<xsl:value-of select="CompraVentaConTef/montoPago" />
                                        </fo:block>
                                    </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
                                            Paridad: &#160;
                                            
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm">
                                           <xsl:value-of select="CompraVentaConTef/monedaCompra" />$1&#160;=&#160;<xsl:value-of select="CompraVentaConTef/monedaPago" />$<xsl:value-of select="CompraVentaConTef/tasa" />
                                         </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold" >
                                            Cuenta Cargo: &#160;
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm">
                                            <xsl:value-of select="CompraVentaConTef/cuentaCargo" />
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
							</fo:table-body>
                       </fo:table>
                    </fo:block>
                    </fo:block>
                 <fo:block  margin-left="117mm"  width="200pt" >
                        <fo:block>
                        <fo:block font-size="10pt"  margin-left="0.4cm" font-weight="bold">
                            Datos Beneficiario
                    	</fo:block>
                        <fo:table width="20cm" space-after="1cm" >
                        <fo:table-column column-width="8cm"/>
                        <fo:table-column column-width="12cm"/>
                        
                          <fo:table-body>
								<fo:table-row>
									<fo:table-cell>
								        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
											Destinatario: &#160;
										</fo:block>
										<fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm" >
                                                    <xsl:value-of select="CompraVentaConTef/nombreBeneficiario" />
                                         </fo:block>
									</fo:table-cell>
									<fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
                                             Correo:  &#160;
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm" >
                                            <xsl:value-of select="CompraVentaConTef/mailBeneficiario" />
                                        </fo:block>
                                    </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
								        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
											Moneda: &#160;
										</fo:block>
										<fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm" >
                                                    <xsl:value-of select="CompraVentaConTef/monedaCompra" />
                                         </fo:block>
									</fo:table-cell>
									<fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
                                             País de Residencia:  &#160;
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm" >
                                            <xsl:value-of select="CompraVentaConTef/nombrePaisBeneficiario" />
                                        </fo:block>
                                    </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
                                            Número de Cuenta / IBAN: &#160;
                                            
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm">
                                           <xsl:value-of select="CompraVentaConTef/numeroCuentaBeneficiario" />
                                         </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold" >
                                            	Referencia: &#160;
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm">
                                            <xsl:value-of select="CompraVentaConTef/idBeneficiario" />
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
                                            Dirección: &#160;
                                            
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm">
                                           <xsl:value-of select="CompraVentaConTef/direccionBeneficiario" />
                                         </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold" >
                                            	Ciudad: &#160;
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm">
                                            <xsl:value-of select="CompraVentaConTef/ciudadBeneficiario" />
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
									<fo:table-cell>
										<fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold" >
											Cont. nombre:&#160;
										</fo:block>
										<fo:block font-size="10pt" margin-left="1.4cm">
                                            <xsl:value-of select="CompraVentaConTef/informacionAdicional" />
                                        </fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
                       </fo:table>
                    </fo:block>
                    </fo:block>
                    <fo:block  margin-left="117mm"  width="200pt" >
                        <fo:block>
                        <fo:block font-size="10pt"  margin-left="0.4cm" font-weight="bold">
                            Datos Banco Beneficiario
                    	</fo:block>
                        <fo:table width="20cm" space-after="1cm" >
                        <fo:table-column column-width="8cm"/>
                        <fo:table-column column-width="12cm"/>
                        
                          <fo:table-body>
								<fo:table-row>
									<fo:table-cell>
								        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
											Código SWIFT: &#160;
										</fo:block>
										<fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm" >
                                                    <xsl:value-of select="CompraVentaConTef/swiftBcoBeneficiario" />
                                         </fo:block>
									</fo:table-cell>
									<fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
                                             ABA / BLZ:  &#160;
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm" >
                                            <xsl:value-of select="CompraVentaConTef/rutaBancoBeneficiario" />
                                        </fo:block>
                                    </fo:table-cell>
								</fo:table-row>
                                <fo:table-row>
									<fo:table-cell>
										<fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold" >
											Nombre/Dirección:&#160;
										</fo:block>
										<fo:block font-size="10pt" margin-left="1.4cm">
                                            <xsl:value-of select="CompraVentaConTef/direccionBancoBeneficiario" />
                                        </fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
                       </fo:table>
                    </fo:block>
                    </fo:block>
                     <fo:block  margin-left="117mm"  width="200pt" >
                        <fo:block>
                        <fo:block font-size="10pt"  margin-left="0.4cm" font-weight="bold">
                            Datos Banco Intermediario
                    	</fo:block>
                        <fo:table width="20cm" space-after="1cm" >
                        <fo:table-column column-width="8cm"/>
                        <fo:table-column column-width="12cm"/>
                        
                          <fo:table-body>
								<fo:table-row>
									<fo:table-cell>
								        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
											Código SWIFT: &#160;
										</fo:block>
										<fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm" >
                                                    <xsl:value-of select="CompraVentaConTef/swiftBcoIntermediario" />
                                         </fo:block>
									</fo:table-cell>
									<fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
                                             ABA / BLZ:  &#160;
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm" >
                                            <xsl:value-of select="CompraVentaConTef/rutaBancoIntermediario" />
                                        </fo:block>
                                    </fo:table-cell>
								</fo:table-row>
                                <fo:table-row>
									<fo:table-cell>
										<fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold" >
											Nombre/Dirección:&#160;
										</fo:block>
										<fo:block font-size="10pt" margin-left="1.4cm">
                                            <xsl:value-of select="CompraVentaConTef/direccionBancoIntermediario" />
                                        </fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
                       </fo:table>
                    </fo:block>
                    </fo:block>
                    
                   <fo:block  margin-left="117mm"  width="200pt" space-before="0.7cm">
                        <fo:block>
                        <fo:table width="20cm" space-after="1cm" >
                        <fo:table-column column-width="8cm"/>
                        <fo:table-column column-width="12cm"/>
                          <fo:table-body>
								<fo:table-row>
									<fo:table-cell>
								        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
											Código de cambio: &#160;
										</fo:block>
										<fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm" >
                                                    <xsl:value-of select="CompraVentaConTef/glosaCambioSeleccionado" />
                                         </fo:block>
									</fo:table-cell>
									<fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
                                             Valuta:  &#160;
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm" >
                                            <xsl:value-of select="CompraVentaConTef/glosaValutaSeleccionada" />
                                        </fo:block>
                                    </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold" >
											Motivo o detalle:&#160;
										</fo:block>
										<fo:block font-size="10pt" margin-left="1.4cm">
                                            <xsl:value-of select="CompraVentaConTef/motivoTransferencia" />
                                        </fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
                                            Gastos por cuenta de: &#160;
                                            
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm">
                                           <xsl:value-of select="CompraVentaConTef/gastosBancoSeleccionado" />
                                         </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold" >
                                            	Cargo comisiones: &#160;
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm">
                                            <xsl:value-of select="CompraVentaConTef/cuentaCargoComisiones" />
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
												Gastos corresponsal: &#160;
                                            
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm">
                                            <xsl:value-of select="CompraVentaConTef/monedaComision" />&#160;<xsl:value-of select="CompraVentaConTef/montoGatos" />
                                         </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold" >
                                            	Gastos swift: &#160;
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm">
                                            <xsl:value-of select="CompraVentaConTef/monedaComision" />&#160;<xsl:value-of select="CompraVentaConTef/montoGastosSwift" />
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                 <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
												Comisión: &#160;
                                            
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm">
                                           <xsl:value-of select="CompraVentaConTef/monedaComision" />&#160;<xsl:value-of select="CompraVentaConTef/montoGatos1" />
                                         </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold" >
                                            	Total Comisión: &#160;
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm">
                                            <xsl:value-of select="CompraVentaConTef/monedaComision" />&#160;<xsl:value-of select="CompraVentaConTef/totalComision" />
                                            <xsl:choose>
                                            <xsl:when test='CompraVentaConTef/totalComision > 0'>
                                            	+ IVA
                                            </xsl:when>
                                            </xsl:choose>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
									<fo:table-cell>
										<fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold" >
											Total monto a transferir:&#160;
										</fo:block>
										<fo:block font-size="10pt" margin-left="1.4cm">
                                            <xsl:value-of select="CompraVentaConTef/monedaCompra" />$<xsl:value-of select="CompraVentaConTef/montoCompra" />
                                        </fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
                       </fo:table>
                    </fo:block>
                    </fo:block>
                        <xsl:if test="position() = last()"> 
                         <fo:table space-after="7cm">
                        <fo:table-column column-width="0.5cm"/>
                        <fo:table-column column-width="2cm"/>
                            <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell  margin-left="16.7cm">
                                    <fo:block font-size="8pt" font-weight="bold">
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell margin-left="17.2cm">
                                    <fo:block font-size="8pt" font-weight="bold">
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                     </xsl:if>  
                       <xsl:if test="position() != last()"> 
                         <fo:table space-after="7cm">
                        <fo:table-column column-width="0.5cm"/>
                        <fo:table-column column-width="2cm"/>
                            <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell  margin-left="16.7cm">
                                    <fo:block font-size="8pt" font-weight="bold">
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell margin-left="17.2cm">
                                    <fo:block font-size="8pt" font-weight="bold">
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                     </xsl:if>  
                      
                   </fo:block> 
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
