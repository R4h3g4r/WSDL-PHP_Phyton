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
                               url('<xsl:value-of select="ComprobanteIngresoRegulacion/rutaLogoCabecera" />')
                               </xsl:attribute>
                             </fo:external-graphic>
                       </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:external-graphic width="100pt">
                                            <xsl:attribute name="src">
                                               url('<xsl:value-of select="ComprobanteIngresoRegulacion/rutaLogoSelloAgua" />')
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
                  <fo:block space-before="0.5cm" font-size="10pt"  margin-left="1.4cm" >
                           Estimado Colaborador:
                    </fo:block>
                     <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm" >
                          Hemos recepcionado su inteción de regularización.
                    </fo:block>
                 <fo:block  margin-left="117mm"  width="200pt" height="200pt" space-before="0.5cm" >
                        <fo:block>
                        <fo:table width="20cm" space-after="1cm" >
                        <fo:table-column column-width="8cm"/>
                        <fo:table-column column-width="12cm"/>
                        
                          <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold" >
                                            N° regularización &#160;
                                        </fo:block>
                                        <fo:block font-size="10pt" margin-left="1.4cm" >
                                            <xsl:value-of select="ComprobanteIngresoRegulacion/numeroRegularizacion" />
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
                                            Producto Afectado &#160;
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm" >
                                                    <xsl:value-of select="ComprobanteIngresoRegulacion/productoAfectado" />
                                         </fo:block>
                                    </fo:table-cell>
                                    </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
                                             Tipo de Regularización &#160;
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm" >
                                            <xsl:value-of select="ComprobanteIngresoRegulacion/tipoRegularizacion" />
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold">
                                            Fecha de Ingreso &#160;
                                            
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm">
                                           <xsl:value-of select="ComprobanteIngresoRegulacion/fechaIngreso" />
                                         </fo:block>
                                    </fo:table-cell>
                                 </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-before="5mm" font-size="10pt" margin-left="1.4cm" font-weight="bold" >
                                            Colaborador &#160;
                                        </fo:block>
                                        <fo:block space-before="0cm" font-size="10pt" margin-left="1.4cm">
                                            <xsl:value-of select="ComprobanteIngresoRegulacion/nombreColaborador" />
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                       </fo:table>
                    </fo:block>
                    </fo:block>
                    <fo:block space-before="2cm" font-size="9pt"  margin-left="1.4cm" >
                           Observación:
                    </fo:block>
                    <fo:block font-size="9pt"  margin-left="1.4cm" >
                           Se validarán los datos ingresados en su regularización. Este proceso puede tardar varios minutos.
                            Puede ver el estado a través de la sección de consultas.
                            Una vez que el archivo esté validado correctamente se deberá autorizar la regularización.
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
