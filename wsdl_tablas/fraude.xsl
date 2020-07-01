<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
    <xsl:decimal-format name="european" decimal-separator=',' grouping-separator='.' />
    <xsl:template match="fraude">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
          

            <fo:layout-master-set>
                <fo:simple-page-master master-name="first" page-height="28.4cm" page-width="22.1cm"
                    margin-top="1cm" margin-bottom="0.5cm" margin-left="1.5cm" margin-right="1.5cm"
                     background-image="'images/header.jpg'" background-repeat="no-repeat" border="thick solid red">
                    <fo:region-body margin-top="0.5cm" margin-bottom="1.3cm" />
                    <fo:region-before extent="1.5cm" />
                    <fo:region-after extent="2cm" />
                </fo:simple-page-master>
                <fo:simple-page-master master-name="rest" page-height="27.9cm" page-width="21.6cm"
                    margin-top="1cm" margin-bottom="0.5cm" margin-left="2cm" margin-right="2.5cm"
                    border="thick solid red">
                    <fo:region-body margin-top="3cm" margin-bottom="2.3cm" />
                    <fo:region-before extent="3.5cm" />
                    <fo:region-after extent="2cm" />
                </fo:simple-page-master>
                <fo:page-sequence-master master-name="basicPSM">
                    <fo:repeatable-page-master-alternatives>
                        <fo:conditional-page-master-reference master-reference="first" page-position="first" />
                        <fo:conditional-page-master-reference master-reference="rest" page-position="rest" />
                        <fo:conditional-page-master-reference master-reference="rest" />
                    </fo:repeatable-page-master-alternatives>
                </fo:page-sequence-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="basicPSM">
                        
                <fo:flow flow-name="xsl-region-body">
                    <fo:block>  
                        <fo:table>
                            <xsl:if test="documento/@type='liquidado'">
                               <fo:table-column  column-width="19cm"/>
                           </xsl:if>

                            <xsl:if test="documento/@type='tituloConFolio'">
                               <fo:table-column  column-width="14cm"/>
                               <fo:table-column  column-width="5cm"/>
                           </xsl:if>
                            <fo:table-header>
                              <fo:table-row>
                               
                                <xsl:if test="documento/@type='liquidado'">
                                <fo:table-cell padding-top="5px">
                                <fo:block text-align="center" font-size="14pt" font-weight="700" color="#00b0f0">
                                  CASO LIQUIDADO Y ABONADO  POR LA COMPAÑÍA DE SEGUROS                             
                                </fo:block>
                                </fo:table-cell>
                                </xsl:if>
                                
                                <xsl:if test="documento/@type='tituloConFolio'">
                                    <fo:table-cell padding-top="5px">
                                    <fo:block text-align="left" font-size="14pt" font-weight="700" color="#00b0f0">
                                    RESOLUCIÓN 
                                    <xsl:if test="tipo/@type='favorable'">
                                        FAVORABLE                                        
                                    </xsl:if>
                                    <xsl:if test="tipo/@type='desfavorable'">
                                        DESFAVORABLE                                        
                                    </xsl:if> PARA CLIENTE 
                                    <xsl:if test="categoria/@type='cheque'">(CHEQUE)</xsl:if>    
                                    <xsl:if test="categoria/@type='dap'">(DAP)</xsl:if>
                                    <xsl:if test="categoria/@type='debito'">(DÉBITO)</xsl:if>
                                    <xsl:if test="categoria/@type='ffmm'">(FFMM)</xsl:if> 
                                    <xsl:if test="categoria/@type='odp'">(ODP)</xsl:if>
                                    <xsl:if test="categoria/@type='vv'">(VALE VISTA)</xsl:if>
                                    <xsl:if test="categoria/@type='web'">(WEB)</xsl:if>                  
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-top="5px">
                                <fo:block text-align="center" font-size="14pt" font-weight="700" color="#000">
                                  N° EVENTO: <xsl:value-of select="folio" />                           
                                </fo:block>       
                                </fo:table-cell>
                            </xsl:if>
                              </fo:table-row>
                           </fo:table-header>
                           <fo:table-body></fo:table-body>
                        </fo:table>

                        <fo:table>
                          <fo:table-column  column-width="19cm" />
                           <fo:table-header> 
                              <fo:table-row> 
                                <fo:table-cell> 
                                 <fo:block padding-top="15px" padding-bottom="5px" padding-left="5px"> 
                                </fo:block>
                                   </fo:table-cell>
                                 </fo:table-row>
                           </fo:table-header>
                           <fo:table-body></fo:table-body>
                         </fo:table>

                        <fo:table>
                           <fo:table-column  column-width="19cm"/>
                            <fo:table-header>
                              <fo:table-row>
                               <fo:table-cell padding-top="5px">
                                <fo:block text-align="left" font-size="14pt" font-weight="600" color="#000">
                                  “Documento de uso interno y confidencial”                               
                                </fo:block>       
                                </fo:table-cell>
                              </fo:table-row>
                           </fo:table-header>
                           <fo:table-body></fo:table-body>
                        </fo:table>

                        <fo:table>
                          <fo:table-column  column-width="19cm" />
                           <fo:table-header> 
                              <fo:table-row> 
                                <fo:table-cell> 
                                 <fo:block padding-top="15px" padding-bottom="5px" padding-left="5px"> 
                                </fo:block>
                                   </fo:table-cell>
                                 </fo:table-row>
                           </fo:table-header>
                           <fo:table-body></fo:table-body>
                         </fo:table>

                        <fo:table>
                           <fo:table-column  column-width="7cm"/>
                           <fo:table-column  column-width="12cm"/>
                            <fo:table-header>

                              <fo:table-row>
                               <fo:table-cell padding-top="5px">
                                <fo:block text-align="left" font-size="11pt" font-weight="600" color="#000">
                                    Nombre    
                                </fo:block>     
                                </fo:table-cell>
                                <fo:table-cell padding-top="5px">
                                    <fo:block text-align="left" font-size="11pt" font-weight="700" color="#000">
                                    <xsl:value-of select="nombre" />   
                                </fo:block>
                                </fo:table-cell>
                              </fo:table-row>

                              <fo:table-row>
                               <fo:table-cell padding-top="5px">
                                <fo:block text-align="left" font-size="11pt" font-weight="600" color="#000">
                                    Rut    
                                </fo:block>     
                                </fo:table-cell>
                                <fo:table-cell padding-top="5px">
                                    <fo:block text-align="left" font-size="11pt" font-weight="700" color="#000">
                                    <xsl:value-of select="rut"/>    
                                </fo:block>
                                </fo:table-cell>
                              </fo:table-row>

                              <fo:table-row>
                               <fo:table-cell padding-top="5px">
                                <fo:block text-align="left" font-size="11pt" font-weight="600" color="#000">
                                    Nombre ejecutivo    
                                </fo:block>     
                                </fo:table-cell>
                                <fo:table-cell padding-top="5px">
                                    <fo:block text-align="left" font-size="11pt" font-weight="700" color="#000">
                                    <xsl:value-of select="nombreEjecutivo"/>    
                                </fo:block>
                                </fo:table-cell>
                              </fo:table-row>

                              <fo:table-row>
                               <fo:table-cell padding-top="5px">
                                <fo:block text-align="left" font-size="11pt" font-weight="600" color="#000">
                                    Cuenta   
                                </fo:block>     
                                </fo:table-cell>
                                <fo:table-cell padding-top="5px">
                                    <fo:block text-align="left" font-size="11pt" font-weight="700" color="#000">
                                    <xsl:value-of select="cuentaUnica"/>    
                                </fo:block>
                                </fo:table-cell>
                              </fo:table-row>

							  <xsl:if test="(categoria/@type='debito')">
                              <fo:table-row>
                               <fo:table-cell padding-top="5px">
                                <fo:block text-align="left" font-size="11pt" font-weight="600" color="#000">
                                    Número de tarjeta   
                                </fo:block>     
                                </fo:table-cell>
                                <fo:table-cell padding-top="5px">
                                    <fo:block text-align="left" font-size="11pt" font-weight="700" color="#000">
                                    <xsl:value-of select="numTarjetaUnica"/>    
                                </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
							  </xsl:if>
                              
                              <xsl:if test="documento/@type='tituloConFolio'">
                              
                                <xsl:if test="(categoria/@type='debito') or (categoria/@type='web')">
                                  <fo:table-row>
                                   <fo:table-cell padding-top="5px">
                                    <fo:block text-align="left" font-size="11pt" font-weight="600" color="#000">
                                        Seguro   
                                    </fo:block>     
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="5px">
                                        <fo:block text-align="left" font-size="11pt" font-weight="700" color="#000">
                                        <xsl:value-of select="seguro"/>    
                                    </fo:block>
                                    </fo:table-cell>
                                  </fo:table-row>
                                 </xsl:if>
                             </xsl:if>

                              <fo:table-row>
                               <fo:table-cell padding-top="5px">
                                <fo:block text-align="left" font-size="11pt" font-weight="600" color="#000">
                                     Abono provisorio  
                                </fo:block>     
                                </fo:table-cell>
                                <fo:table-cell padding-top="5px">
                                    <fo:block text-align="left" font-size="11pt" font-weight="700" color="#000">
                                    <xsl:value-of select="abonoProvisorio"/>    
                                </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
							  <fo:table-row>
                               <fo:table-cell padding-top="5px">
                                <fo:block text-align="left" font-size="11pt" font-weight="600" color="#000">
                                     SubProducto 
                                </fo:block>     
                                </fo:table-cell>
                                <fo:table-cell padding-top="5px">
                                    <fo:block text-align="left" font-size="11pt" font-weight="700" color="#000">
                                    <xsl:value-of select="subProducto"/>    
                                </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <xsl:if test="documento/@type='tituloConFolio'">
                                <xsl:if test="categoria/@type='web'">

                              <fo:table-row>
                               <fo:table-cell padding-top="5px">
                                <fo:block text-align="left" font-size="11pt" font-weight="600" color="#000">
                                    Tarjeta de crédito   
                                </fo:block>     
                                </fo:table-cell>
                                <fo:table-cell padding-top="5px">
                                    <fo:block text-align="left" font-size="11pt" font-weight="700" color="#000">
                                    <xsl:value-of select="tarjetaDeCredito"/>    
                                </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                                </xsl:if>
                            </xsl:if>

                              <fo:table-row>
                               <fo:table-cell padding-top="5px">
                                <fo:block text-align="left" font-size="11pt" font-weight="600" color="#000">
                                    Fecha de inicio investigación   
                                </fo:block>     
                                </fo:table-cell>
                                <fo:table-cell padding-top="5px">
                                    <fo:block text-align="left" font-size="11pt" font-weight="700" color="#000">
                                    <xsl:value-of select="fechaInicio"/>    
                                </fo:block>
                                </fo:table-cell>
                              </fo:table-row>

                              <fo:table-row>
                               <fo:table-cell padding-top="5px">
                                <fo:block text-align="left" font-size="11pt" font-weight="600" color="#000">
                                    Fecha de término investigación   
                                </fo:block>     
                                </fo:table-cell>
                                <fo:table-cell padding-top="5px">
                                    <fo:block text-align="left" font-size="11pt" font-weight="700" color="#000">
                                    <xsl:value-of select="fechaTermino"/>    
                                </fo:block>
                                </fo:table-cell>
                              </fo:table-row>



                           </fo:table-header>
                           <fo:table-body></fo:table-body>
                        </fo:table>


                        <fo:table>
                          <fo:table-column  column-width="19cm" />
                           <fo:table-header> 
                              <fo:table-row> 
                                <fo:table-cell> 
                                 <fo:block padding-top="15px" padding-bottom="5px" padding-left="5px"> 
                                </fo:block>
                                   </fo:table-cell>
                                 </fo:table-row>
                           </fo:table-header>
                           <fo:table-body></fo:table-body>
                         </fo:table>


                         <xsl:if test="documento/@type='liquidado'">

                        <fo:table border="1px solid #000">
                           <fo:table-column  column-width="5cm"/>
                           <fo:table-column  column-width="14cm"/>
                            <fo:table-header>

                              <fo:table-row>
                               <fo:table-cell border-bottom="1px solid #000" border-right="1px solid #000" padding-top="5px" padding-left="3px">
                                <fo:block text-align="left" font-size="10pt" font-weight="700" color="#000">
                                    N° SINIESTRO    
                                </fo:block>     
                                </fo:table-cell>
                                <fo:table-cell border-bottom="1px solid #000" padding-top="5px" padding-left="3px">
                                    <fo:block text-align="left" font-size="10pt" font-weight="600" color="#000">
                                    <xsl:value-of select="nombre" />   
                                </fo:block>
                                </fo:table-cell>
                              </fo:table-row>

                              <fo:table-row>
                               <fo:table-cell border-bottom="1px solid #000" border-right="1px solid #000" padding-top="5px" padding-left="3px">
                                <fo:block text-align="left" font-size="10pt" font-weight="700" color="#000">
                                    LIQUIDADOR
                                </fo:block>     
                                </fo:table-cell>
                                <fo:table-cell border-bottom="1px solid #000" padding-top="5px" padding-left="3px">
                                    <fo:block text-align="left" font-size="10pt" font-weight="600" color="#000">
                                    <xsl:value-of select="rut"/>    
                                </fo:block>
                                </fo:table-cell>
                              </fo:table-row>

                              <fo:table-row>
                               <fo:table-cell border-bottom="1px solid #000" border-right="1px solid #000" padding-top="5px" padding-left="3px">
                                <fo:block text-align="left" font-size="10pt" font-weight="700" color="#000">
                                    MONTO ABONADO <xsl:value-of select="tipoMoneda"/>     
                                </fo:block>     
                                </fo:table-cell>
                                <fo:table-cell border-bottom="1px solid #000" padding-top="5px" padding-left="3px">
                                    <fo:block text-align="left" font-size="10pt" font-weight="600" color="#000">
                                    <xsl:value-of select="nombreEjecutivo"/>    
                                </fo:block>
                                </fo:table-cell>
                              </fo:table-row>

                              <fo:table-row>
                               <fo:table-cell border-right="1px solid #000" padding-top="5px" padding-left="3px">
                                <fo:block text-align="left" font-size="10pt" font-weight="700" color="#000">
                                    FECHA DEL ABONO
                                </fo:block>     
                                </fo:table-cell>
                                <fo:table-cell padding-top="5px" padding-left="3px">
                                    <fo:block text-align="left" font-size="10pt" font-weight="600" color="#000">
                                    <xsl:value-of select="fecha"/>    
                                </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                           </fo:table-header>
                           <fo:table-body></fo:table-body>
                        </fo:table>
                        </xsl:if>
                        

                        <xsl:if test="documento/@type='tituloConFolio'">

                        <fo:table>
                           <fo:table-column  column-width="19cm"/>
                            <fo:table-header>
                              <fo:table-row>
                               <fo:table-cell padding-top="5px" padding-left="10px" padding-bottom="5px">
                                <fo:block text-align="left" font-size="12pt" font-weight="900" color="#000">
                                  Detalle de cargos                              
                                </fo:block>       
                                </fo:table-cell>
                              </fo:table-row>
                           </fo:table-header>
                           <fo:table-body></fo:table-body>
                        </fo:table>


                        <xsl:if test="categoria/@type='cheque'">
                        <fo:table text-align="center" border-top="1px solid #000" font-size="11pt" font-weight="600">
                          <fo:table-column  column-width="3cm" />
                          <fo:table-column  column-width="4cm" />
                          <fo:table-column  column-width="4cm" />
                          <fo:table-column  column-width="4cm" />
                          <fo:table-column  column-width="4cm" />
                           <fo:table-header>
                              <fo:table-row font-weight="700"> 
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-left="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        RUT
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        N° CUENTA
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        N° DOCUMENTO
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        N° CHEQUE
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        MONTO <xsl:value-of select="tipoMoneda"/> 
                                    </fo:block>
                                </fo:table-cell>
                                 </fo:table-row>

                                 <fo:table-row> 
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-left="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        <xsl:value-of select="rut"/> 
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        <xsl:value-of select="cuenta"/> 
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        <xsl:value-of select="numDocumento"/> 
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        <xsl:value-of select="numCheque"/> 
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        <xsl:value-of select="monto"/> 
                                    </fo:block>
                                </fo:table-cell>
                                 </fo:table-row>                                
                                 <fo:table-row> 
                                <fo:table-cell padding-left="3px"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                         
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell font-weight="700" padding-left="3px" border="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                         TOTAL
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell background-color="#eeeeee" padding-left="3px" border="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                         <xsl:value-of select="monto"/> 
                                    </fo:block>
                                </fo:table-cell>
                                 </fo:table-row>
                           </fo:table-header>
                           <fo:table-body></fo:table-body>
                         </fo:table>
                         </xsl:if>


                         <xsl:if test="categoria/@type='dap'">

                        <fo:table text-align="center" border-top="1px solid #000" font-size="11pt" font-weight="600">
                          <fo:table-column  column-width="3cm" />
                          <fo:table-column  column-width="4cm" />
                          <fo:table-column  column-width="4cm" />

                          <fo:table-column  column-width="4cm" />
                           <fo:table-header>

                              <fo:table-row font-weight="700"> 
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-left="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                       N° CUENTA
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        N° DAP
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        N° DOCUMENTO
                                    </fo:block>
                                </fo:table-cell>

                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        MONTO <xsl:value-of select="tipoMoneda"/> 
                                    </fo:block>
                                </fo:table-cell>
                                 </fo:table-row>

                                 <fo:table-row> 
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-left="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        <xsl:value-of select="cuenta"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        <xsl:value-of select="dap"/> 
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        <xsl:value-of select="numDocumento"/> 
                                    </fo:block>
                                </fo:table-cell>
								
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        <xsl:value-of select="monto"/> 
                                    </fo:block>
                                </fo:table-cell>
                                 </fo:table-row>
                                
                                 <fo:table-row> 
                                <fo:table-cell padding-left="3px"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                         TOTAL
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell font-weight="700" padding-left="3px" background-color="#eeeeee" border="1px solid #000" > 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                         <xsl:value-of select="monto"/> 
                                    </fo:block>
                                </fo:table-cell>
                                 </fo:table-row>
                           </fo:table-header>
                           <fo:table-body></fo:table-body>
                         </fo:table>
                         </xsl:if>



                         <xsl:if test="categoria/@type='debito'">

                        <fo:table text-align="center" border-top="1px solid #000" font-size="11pt" font-weight="600">
                          <fo:table-column  column-width="4cm" />
                          <fo:table-column  column-width="3cm" />
                          <fo:table-column  column-width="8cm" />
                          <fo:table-column  column-width="4cm" />
                           <fo:table-header>

                              <fo:table-row font-weight="700"> 
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-left="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                       FECHA
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        HORA
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        UBICACIÓN
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        MONTO <xsl:value-of select="tipoMoneda"/> 
                                    </fo:block>
                                </fo:table-cell>
                                 </fo:table-row>

                                 <xsl:for-each select="transacciones/transaccion">
									  <fo:table-row border="double" height="7mm" border-width="1pt">                         
										 <fo:table-cell column-number="1" border="solid">                            
											<fo:block text-align="center"> <xsl:value-of disable-output-escaping="no" select="fecha"/> </fo:block>
										 </fo:table-cell>
										 <fo:table-cell column-number="2" border="solid">                            
											<fo:block text-align="center"> <xsl:value-of disable-output-escaping="no" select="hora"/> </fo:block>
										 </fo:table-cell>                         
										 <fo:table-cell column-number="3" border="solid"> 
											<fo:block text-align="center"> <xsl:value-of disable-output-escaping="no" select="ubicacion"/> </fo:block>                        
										 </fo:table-cell>
										 <fo:table-cell column-number="4" border="solid"> 
											<fo:block text-align="center"> <xsl:value-of disable-output-escaping="no" select="monto"/> </fo:block>                       
										 </fo:table-cell>
									  </fo:table-row>
								  </xsl:for-each>
                               
                                 <fo:table-row> 
                                <fo:table-cell padding-left="3px"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                         TOTAL
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell background-color="#eeeeee" padding-left="3px" border="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                         <xsl:value-of disable-output-escaping="no" select="total_transaccion"/>
                                    </fo:block>
                                </fo:table-cell>
                                 </fo:table-row>
                           </fo:table-header>
                           <fo:table-body></fo:table-body>
                         </fo:table>
                         </xsl:if>


                         <xsl:if test="categoria/@type='ffmm'">
						 
                        <fo:table text-align="center" border-top="1px solid #000" font-size="11pt" font-weight="700">
                          <fo:table-column  column-width="3cm" />
                          <fo:table-column  column-width="4cm" />
                          <fo:table-column  column-width="4cm" />
                          <fo:table-column  column-width="4cm" />
						  
                           <fo:table-header>

                              <fo:table-row> 
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-left="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                       RUT
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        FECHA RESCATE
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        OF.ABONO CUENTA/EMISION VALE VISTA
                                    </fo:block>
                                </fo:table-cell>

								<fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        MONTO <xsl:value-of select="tipoMoneda"/> 
                                    </fo:block>
                                </fo:table-cell>
                                 </fo:table-row>


                                 <fo:table-row font-weight="600"> 
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-left="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        <xsl:value-of select="rut"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        <xsl:value-of select="fechaRescate"/> 
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        <xsl:value-of select="abonoValeVista"/> 
                                    </fo:block>
                                </fo:table-cell>

								<fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        <xsl:value-of select="monto"/> 
                                    </fo:block>
                                </fo:table-cell>
                                 </fo:table-row>

                                 <fo:table-row> 
                                <fo:table-cell padding-left="3px"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border="1px solid #000"> 
                                    <fo:block text-align="center" padding-top="5px" padding-bottom="5px">
                                         TOTAL
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" background-color="#eeeeee" border="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                         <xsl:value-of select="monto"/> 
                                    </fo:block>
                                </fo:table-cell>
                                 </fo:table-row>
                           </fo:table-header>
                           <fo:table-body></fo:table-body>
                         </fo:table>
                         </xsl:if>


                         <xsl:if test="categoria/@type='odp'">

                        <fo:table text-align="center" border-top="1px solid #000" font-size="10pt" font-weight="700">
                          <fo:table-column  column-width="3cm" />
                          <fo:table-column  column-width="4cm" />
                          <fo:table-column  column-width="4cm" />
                          <fo:table-column  column-width="4cm" />
                           <fo:table-header>

                              <fo:table-row> 
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-left="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                       FECHA CARGO EN CTA. CTE
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        FECHA ENVÍO
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        PAIS DESTINO
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        MONTO <xsl:value-of select="tipoMoneda"/> 
                                    </fo:block>
                                </fo:table-cell>
                                 </fo:table-row>


                                 <fo:table-row font-weight="600"> 
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-left="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        <xsl:value-of select="fechaCargoCtaCte"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        <xsl:value-of select="fechaRescate"/> 
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        <xsl:value-of select="paisDestino"/> 
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        <xsl:value-of select="monto"/> 
                                    </fo:block>
                                </fo:table-cell>
                                 </fo:table-row>
                                
                                 <fo:table-row> 
                                <fo:table-cell padding-left="3px"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                         TOTAL
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell background-color="#eeeeee" padding-left="3px" border="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                         <xsl:value-of select="monto"/> 
                                    </fo:block>
                                </fo:table-cell>
                                 </fo:table-row>
                           </fo:table-header>
                           <fo:table-body></fo:table-body>
                         </fo:table>
                         </xsl:if>


                         <xsl:if test="categoria/@type='vv'">

                        <fo:table text-align="center" border-top="1px solid #000" font-size="11pt" font-weight="700">
                          <fo:table-column  column-width="5cm" />
                          <fo:table-column  column-width="5cm" />
                          <fo:table-column  column-width="4.5cm" />
                          <fo:table-column  column-width="4.5cm" />
                           <fo:table-header>

                              <fo:table-row> 
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-left="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                       MODALIDAD DE EMISIÓN CAJA/CARGO CTA. CTE
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        FECHA EMISIÓN ENTREGA
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        FECHA DE COBRO
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        MONTO <xsl:value-of select="tipoMoneda"/> 
                                    </fo:block>
                                </fo:table-cell>
                                 </fo:table-row>

                                 <fo:table-row font-weight="600"> 
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-left="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        <xsl:value-of select="modalidadCajaCtaCte"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        <xsl:value-of select="fechaEmisionEntrega"/> 
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        <xsl:value-of select="fechaDeCobro"/> 
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        <xsl:value-of select="monto"/> 
                                    </fo:block>
                                </fo:table-cell>
                                 </fo:table-row>
                                 
                                 <fo:table-row> 
                                <fo:table-cell padding-left="3px"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px"  border="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                         TOTAL
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell background-color="#eeeeee" padding-left="3px" border="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                         <xsl:value-of select="monto"/> 
                                    </fo:block>
                                </fo:table-cell>
                                 </fo:table-row>
                           </fo:table-header>
                           <fo:table-body></fo:table-body>
                         </fo:table>
                         </xsl:if>


                         <xsl:if test="categoria/@type='web'">

                        <fo:table text-align="center" border-top="1px solid #000" font-size="11pt" font-weight="600">
                          <fo:table-column  column-width="4cm" />
                          <fo:table-column  column-width="4cm" />

                          <fo:table-column  column-width="4cm" />

                           <fo:table-header>

                              <fo:table-row font-weight="700"> 
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-left="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                       FECHA
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        IP
                                    </fo:block>
                                </fo:table-cell>

                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        MONTO <xsl:value-of select="tipoMoneda"/> 
                                    </fo:block>
                                </fo:table-cell>

                                 </fo:table-row>


                                 <fo:table-row> 
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-left="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        <xsl:value-of select="fecha"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        <xsl:value-of select="ip"/> 
                                    </fo:block>
                                </fo:table-cell>

                                <fo:table-cell padding-left="3px" border-bottom="1px solid #000" border-right="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        <xsl:value-of select="monto"/> 
                                    </fo:block>
                                </fo:table-cell>

                                 </fo:table-row>
                                

                                 <fo:table-row> 
                                <fo:table-cell padding-left="3px"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                        
                                    </fo:block>
                                </fo:table-cell>

                                <fo:table-cell font-weight="700"  padding-left="3px" border="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                         TOTAL
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell background-color="#eeeeee" padding-left="3px" border="1px solid #000"> 
                                    <fo:block padding-top="5px" padding-bottom="5px">
                                         <xsl:value-of select="monto"/> 
                                    </fo:block>
                                </fo:table-cell>
                                 </fo:table-row>
                           </fo:table-header>
                           <fo:table-body></fo:table-body>
                         </fo:table>
                         </xsl:if>

                        </xsl:if>

                        <fo:table>
                          <fo:table-column  column-width="19cm" />
                           <fo:table-header> 
                              <fo:table-row> 
                                <fo:table-cell> 
                                 <fo:block padding-top="5px" padding-bottom="5px" padding-left="5px"> 
                                </fo:block>
                                   </fo:table-cell>
                                 </fo:table-row>
                           </fo:table-header>
                           <fo:table-body></fo:table-body>
                         </fo:table>
                        

                        <fo:table>
                          <fo:table-column  column-width="19cm" />
                           <fo:table-header>
                            <fo:table-row> 
                                <fo:table-cell> 
                                 <fo:block font-size="11pt" font-weight="700" text-align="justify" padding-top="5px" padding-bottom="5px" padding-left="5px">
                                        Comentarios
                                </fo:block>
                                   </fo:table-cell>
                                 </fo:table-row>
                              <fo:table-row> 
                                <fo:table-cell> 
                                 <fo:block font-size="11pt" font-weight="600" text-align="justify" padding-top="5px" padding-bottom="5px" padding-left="5px">
                                        <xsl:value-of select="comentarios"/>
                                </fo:block>
                                   </fo:table-cell>
                                 </fo:table-row>
                           </fo:table-header>
                           <fo:table-body></fo:table-body>
                         </fo:table>



                    </fo:block>

                </fo:flow>
            </fo:page-sequence>

        </fo:root>
    </xsl:template>
</xsl:stylesheet>
                