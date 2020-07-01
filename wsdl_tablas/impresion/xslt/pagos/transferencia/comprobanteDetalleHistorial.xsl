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
            
<fo:page-sequence master-reference="default-page" initial-page-number="1" format="1" >
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
                               url('<xsl:value-of select="DetalleTransferencia/empresas/rutaLogoCabecera" />')
                               </xsl:attribute>
                             </fo:external-graphic>
                       </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:external-graphic width="100pt">
                                            <xsl:attribute name="src">
                                               url('<xsl:value-of select="DetalleTransferencia/empresas/rutaLogoSelloAgua" />')
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
                 <fo:block    background-position="center"  margin-left="117mm"  > 
                  <fo:block space-before="2cm" font-size="10pt"  margin-left="1.4cm" >
                          Estimado Cliente, los datos del historial/Bitacora de la Transferencia es la siguiente:
                    </fo:block>
                    
                
                 <fo:block  margin-left="117mm"  width="200pt" height="200pt" space-before="1cm" >
                        <fo:block>
                         <fo:block space-before="0.5cm" font-size="12pt"  margin-left="1.4cm" font-weight="bold">
                            Datos Transferencia
                    	</fo:block>
                        <fo:table width="20cm" space-after="5mm">
                        <fo:table-column column-width="8cm"/>
                        <fo:table-column column-width="12cm"/>
                        
                          <fo:table-body>
								<fo:table-row>
									<fo:table-cell>
								        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
											ID Transferencia &#160;
										</fo:block>
										<fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm" >
                                                    <xsl:value-of select="DetalleTransferencia/empresas/idTransferencia" />
                                         </fo:block>
									</fo:table-cell>
									<fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
                                             Fecha Ingreso  &#160;
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm" >
                                            <xsl:value-of select="DetalleTransferencia/empresas/fechaIngreso" />
                                        </fo:block>
                                    </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
                                            Monto &#160;
                                            
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm">
                                           $         <xsl:value-of select="DetalleTransferencia/empresas/monto" />
                                         </fo:block>
                                    </fo:table-cell>
									<fo:table-cell>
										<fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold" >
											Tipo de Pago &#160;
										</fo:block>
										<fo:block font-size="10pt" margin-left="1.4cm" >
                                            <xsl:value-of select="DetalleTransferencia/empresas/tipoPago" />
                                        </fo:block>
									</fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
                                            Estado  &#160;
                                            
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm">
                                              <xsl:value-of select="DetalleTransferencia/empresas/estado" />
                                         </fo:block>
                                 </fo:table-cell>
                                 <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
                                            Tipo Transferencia  &#160;
                                            
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm">
                                              <xsl:value-of select="DetalleTransferencia/empresas/tipoTrf" />
                                         </fo:block>
                                    </fo:table-cell>
                                 </fo:table-row>  
                                 <xsl:if test="DetalleTransferencia/empresas/codigoTipoPago = 'PRV'">
                                  <fo:table-row>
                                	<fo:table-cell>
										<fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold" >
											N° de Factura &#160;
										</fo:block>
										<fo:block font-size="10pt" margin-left="1.4cm">
                                            <xsl:value-of select="DetalleTransferencia/empresas/numFactura" />
                                        </fo:block>
									</fo:table-cell>
									<fo:table-cell>
								        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
											Orden de Compra &#160;
										</fo:block>
										<fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm">
                                                    <xsl:value-of select="DetalleTransferencia/empresas/ordenCompra" />
                                         </fo:block>
									</fo:table-cell>
                                 </fo:table-row>  
                                 </xsl:if>
                                 <fo:table-row>
                                <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
                                            Mensaje a destinatario  &#160;
                                            
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm" hyphenate="true">
                                              <xsl:value-of select="DetalleTransferencia/empresas/msjeDest"  />
                                         </fo:block>
                                 </fo:table-cell>
                                 <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
                                            Fecha de Pago  &#160;
                                            
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm">
                                              <xsl:value-of select="DetalleTransferencia/empresas/fechaPago" />
                                         </fo:block>
                                    </fo:table-cell>
                                 </fo:table-row>  
							</fo:table-body>
                       </fo:table>
                        <fo:table width="16cm" space-after="1cm">
                        <fo:table-column column-number="1" column-width="30%"/>
                        <fo:table-column column-number="2" column-width="70%"/>
                        
                          <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
                                            Rut Destinatario &#160;
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm" >
                                                    <xsl:value-of select="DetalleTransferencia/empresas/rutDest" />
                                         </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                       <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
                                             Nombre Destinatario &#160;
                                        </fo:block>
                                        <fo:block  space-before="0cm" font-size="10pt" margin-left="1.4cm" hyphenate="true">
                                            <xsl:value-of select="DetalleTransferencia/empresas/nombreDest" />
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
                                            Cuenta Destino &#160;
                                            
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm">
                                           <xsl:value-of select="DetalleTransferencia/empresas/ctaDestino" />
                                         </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold" >
                                            Banco Destino &#160;
                                        </fo:block>
                                        <fo:block font-size="10pt" margin-left="1.4cm" >
                                            <xsl:value-of select="DetalleTransferencia/empresas/bancoDest" />
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
                                            Cuenta Origen  &#160;
                                            
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm">
                                              <xsl:value-of select="DetalleTransferencia/empresas/ctaOrigen" />
                                         </fo:block>
                                 </fo:table-cell>
                                 <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
                                            Nombre Transferencia  &#160;
                                            
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm" hyphenate="true">
                                              <xsl:value-of select="DetalleTransferencia/empresas/nomTransferencia" />
                                         </fo:block>
                                    </fo:table-cell>
                                 </fo:table-row>  
                            </fo:table-body>
                       </fo:table>
                        
                        
                    </fo:block>
                    
                    
                    <fo:block background-position="center"  margin-left="117mm"  background-repeat="no-repeat"> 
                 <fo:block margin-left="40mm"  width="200pt" height="100pt" >
                        <fo:block>
                        <fo:table width="50cm" space-after="0.5cm" >
                        <fo:table-column column-width="25cm"/>
                        <fo:table-column column-width="25cm"/>
                          <fo:table-body>
                             <fo:table-row>
                                <fo:table-cell>
                                      <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">Bitácora</fo:block>    
                               </fo:table-cell>
                             </fo:table-row>
                        </fo:table-body>
                       </fo:table>
                    </fo:block>
                    </fo:block>
                      <fo:block font-size="5pt" space-after="0.5cm" space-before="1cm">
                            <fo:table width="16cm" >
                                <fo:table-column column-width="1cm"/>
                                <fo:table-column column-width="2cm"/>
                                <fo:table-column column-width="4cm"/>
                                <fo:table-column column-width="4cm"/>
                                <fo:table-body>
                                    <fo:table-row>
                                    <fo:table-cell number-rows-spanned="1">
                                            <fo:block font-weight="bold" font-size="8pt" font-family="Arial" text-align="left" font-stretch="condensed" space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell number-rows-spanned="1" border="0.5pt solid {$lineas}" background-color="{$sombreadoTablas}">
                                            <fo:block font-weight="bold" font-size="8pt" text-align="center" font-stretch="condensed" space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                Evento
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell number-rows-spanned="1" border="0.5pt solid {$lineas}" background-color="{$sombreadoTablas}">
                                            <fo:block font-weight="bold" font-size="9pt" text-align="center" font-stretch="condensed" space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                Usuario
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell number-rows-spanned="1" border="0.5pt solid {$lineas}" background-color="{$sombreadoTablas}">
                                            <fo:block font-weight="bold" font-size="9pt" text-align="center" font-stretch="condensed" space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                Glosa
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <xsl:for-each select="DetalleTransferencia/empresas/historial/datosListaEventos">
                                        <fo:table-row>
                                        <fo:table-cell number-columns-spanned="1">
                                                <fo:block font-size="8pt" text-align="left" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                </fo:block>
                                            </fo:table-cell>
                                         <fo:table-cell border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
                                                <fo:block font-size="8pt" text-align="left" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="5mm">
                                                    <xsl:value-of select="evento"/>
                                                </fo:block>
                                            </fo:table-cell>
                                             <fo:table-cell border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
                                                <fo:block font-size="8pt" text-align="left" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="5mm">
                                                    <xsl:value-of select="usuario"/>
                                                 </fo:block>
                                            </fo:table-cell>
                                              <fo:table-cell border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
                                               <fo:block font-size="8pt" text-align="left" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="5mm">
                                                    <xsl:value-of select="glosa"/>
                                               </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                    </xsl:for-each>
                                </fo:table-body>
                            </fo:table>
                        </fo:block>
                    <fo:block>
                    </fo:block>
                    <fo:block> 
                    </fo:block>
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