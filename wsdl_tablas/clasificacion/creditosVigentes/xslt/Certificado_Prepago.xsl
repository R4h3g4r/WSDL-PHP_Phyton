<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2011/02/15 12:00 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />

   <!-- <xsl:param name="IMG_URL"/> -->

    <xsl:template match="Certificado_Prepago">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-height="11.000in" page-width="8.500in" margin-top="20.000px" margin-bottom="50.000px" margin-right="5.000px" margin-left="5.000px">
                <fo:region-before region-name="xsl-region-before" display-align="after" extent="0.700in" padding-top="6.000pt" padding-left="0.700in" padding-right="2.700in" padding-bottom="6.000pt" border-style="none" border-width="0.000px"  background-repeat="no-repeat" background-position-horizontal="0.000px" background-position-vertical="0.000px" reference-orientation="0"/>
                <fo:region-after region-name="xsl-region-after" display-align="before" extent="0.500in" padding-top="6.000pt" padding-left="0.700in" padding-right="2.700in" padding-bottom="6.000pt" border-style="none" border-width="0.000px"  background-repeat="no-repeat" background-position-horizontal="0.000px" background-position-vertical="0.000px" reference-orientation="0"/>
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="miCarta" font-size="9pt" font-family="Helvetica" initial-page-number="1" force-page-count="no-force" >
                 <fo:static-content flow-name="xsl-region-before" border-bottom-style="solid" border-bottom-width="3pt" border-bottom-color="rgb(192,192,192)" font-size="10pt" font-family="Helvetica">
               </fo:static-content>
               
               <fo:static-content flow-name="xsl-region-after" padding-top="2pt" border-top-style="solid" border-top-width="1pt" border-top-color="rgb(192,192,192)" font-size="10pt" font-family="Helvetica">
                    <fo:table table-layout="fixed" width="100%">
                        <fo:table-column column-width="proportional-column-width(4)"/>
                        <fo:table-column column-width="proportional-column-width(1)"/>
                        <fo:table-body>
                          <fo:table-row>
                            <fo:table-cell>
                              <fo:block text-align="left"  font-size="10pt" font-family="Arial, Helvetica, sans-serif" line-height="1em + 2pt">
                                   Copia Cliente
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
               <fo:block text-align="right" font-size="10pt" font-family="Arial, Helvetica, sans-serif" line-height="1em + 2pt">
                  Pagina  <fo:page-number/> / <fo:page-number-citation ref-id="theEnd"/>
               </fo:block>  
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell>
                              <fo:block color="rgb(105,105,105)">
                                Todos los derechos reservados por Banco de Crédito e Inversiones.
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                </fo:static-content>

                <fo:flow flow-name="xsl-region-body" font-size="10pt" font-family="Helvetica">
                <xsl:call-template name="bodySolicitud"/>
                <fo:block id="theEnd"/>
                </fo:flow>

            </fo:page-sequence>

            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-height="11.000in" page-width="8.500in" margin-top="20.000px" margin-bottom="50.000px" margin-right="5.000px" margin-left="5.000px">
                <fo:region-before region-name="xsl-region-before" display-align="after" extent="0.700in" padding-top="6.000pt" padding-left="0.700in" padding-right="2.700in" padding-bottom="6.000pt" border-style="none" border-width="0.000px"  background-repeat="no-repeat" background-position-horizontal="0.000px" background-position-vertical="0.000px" reference-orientation="0"/>
                <fo:region-after region-name="xsl-region-after" display-align="before" extent="0.500in" padding-top="6.000pt" padding-left="0.700in" padding-right="2.700in" padding-bottom="6.000pt" border-style="none" border-width="0.000px"  background-repeat="no-repeat" background-position-horizontal="0.000px" background-position-vertical="0.000px" reference-orientation="0"/>
                <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="miCarta" font-size="9pt" font-family="Helvetica" initial-page-number="1" force-page-count="no-force">
                <fo:static-content flow-name="xsl-region-before" border-bottom-style="solid" border-bottom-width="3pt" border-bottom-color="rgb(192,192,192)" font-size="10pt" font-family="Helvetica">
                </fo:static-content>
    
                <fo:static-content flow-name="xsl-region-after" padding-top="2pt" border-top-style="solid" border-top-width="1pt" border-top-color="rgb(192,192,192)" font-size="10pt" font-family="Helvetica">
    <fo:table table-layout="fixed" width="100%">
        <fo:table-column column-width="proportional-column-width(4)"/>
        <fo:table-column column-width="proportional-column-width(1)"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell>
                              <fo:block text-align="left"  font-size="10pt" font-family="Arial, Helvetica, sans-serif" line-height="1em + 2pt">
                                   Copia Banco
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                              <fo:block text-align="right" font-size="10pt" font-family="Arial, Helvetica, sans-serif" line-height="1em + 2pt">
                                Pagina  <fo:page-number/> / <fo:page-number-citation ref-id="end"/>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell>
              <fo:block color="rgb(105,105,105)">
                Todos los derechos reservados por Banco de Crédito e Inversiones.
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
    </fo:static-content>

              <fo:flow flow-name="xsl-region-body" font-size="10pt" font-family="Helvetica">
                <xsl:call-template name="bodySolicitud"/>
                <fo:block id="end"/>
                </fo:flow>

            </fo:page-sequence>
      </fo:root>
    </xsl:template>

    <xsl:template name="bodySolicitud">

              <fo:table border-collapse="collapse">
              <fo:table-body>
                        <fo:table-row>
                <fo:table-cell>
                   <fo:block vertical-align="middle">
                             <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
                                <xsl:attribute name="src">
                                   <xsl:value-of select="rutaImagen"/>
                                </xsl:attribute>
                         </fo:external-graphic>                                  
                   </fo:block>                                  
                </fo:table-cell>
               </fo:table-row>                                    
               </fo:table-body>
              </fo:table>
                
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>              
              
<fo:block>
<fo:inline color="rgb(0,0,128)" font-size="22pt"><fo:table table-layout="fixed" width="100%" border-collapse="collapse">
<fo:table-column column-width="proportional-column-width(12.858)" column-number="1"/>
<fo:table-column column-width="proportional-column-width(77.142)" column-number="2"/>
<fo:table-body>
<fo:table-row>
    <fo:table-cell>
      <fo:block text-align="center">
        <fo:external-graphic  width="1.352in"   height="0.624in" vertical-align="middle">
                <xsl:attribute name="src">
                        <xsl:value-of select="rutaImagen"/>
                </xsl:attribute>
        </fo:external-graphic>  
      </fo:block>
    </fo:table-cell>
<fo:table-cell>
    <fo:block> </fo:block>
    <fo:block text-align="left" font-size="18pt">&#x00A0;CERTIFICADO PARA LIQUIDACIÓN DE CRÉDITO</fo:block>
    </fo:table-cell>
</fo:table-row>
</fo:table-body>
</fo:table>
                    </fo:inline>
                </fo:block>
                                            
  <fo:block color="rgb(0,0,128)" text-align="center" margin-bottom="10pt" font-size="12pt" font-family="Helvetica"> <fo:block/><fo:block/> </fo:block>
      <fo:block>
        <fo:table>
          <fo:table-column column-width="proportional-column-width(3)"/>
          <fo:table-body>
            <fo:table-row display-align="auto" border-left-style="solid" border-left-width="2px" border-left-color="rgb(190,208,180)" border-top-left-radius="20px 20px" border-right-style="solid" border-right-width="2px" border-right-color="rgb(190,208,180)" border-bottom-right-radius="20px 20px" border-top-style="solid" border-top-width="2px" border-top-color="rgb(190,208,180)" border-top-right-radius="20px 20px" border-bottom-style="solid" border-bottom-width="2px" border-bottom-color="rgb(190,208,180)" border-bottom-left-radius="20px 20px" background-color="rgb(248,250,246)">
              <fo:table-cell text-align="center" padding-top="5pt" padding-left="15pt" padding-right="10pt" padding-bottom="15pt">
                <fo:block>
                                        
                                        <fo:table border-collapse="collapse">
                                            <fo:table-column column-width="70.7254%" column-number="1"/>
                                                <fo:table-column column-width="29.2746%" column-number="2"/>
                                                   <fo:table-body>
                                     <fo:table-row display-align="before">
                                         <fo:table-cell text-align="left" border-left-style="none" border-left-width="1pt" border-left-color="rgb(0,0,0)" border-right-style="none" border-right-width="1pt" border-right-color="rgb(0,0,0)" border-top-style="none" border-top-width="1pt" border-top-color="rgb(0,0,0)" border-bottom-style="none" border-bottom-width="1pt" border-bottom-color="rgb(0,0,0)" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt">
                                            
                                             <fo:block>
                                                  <fo:block color="rgb(0,0,128)" font-weight="bold"/>
                                                  <fo:block color="rgb(0,0,0)">
                                                       <fo:inline font-weight="bold">N° Operación:</fo:inline>
                                                       <fo:inline><xsl:value-of select="operacion"/></fo:inline>
                                                  </fo:block>
                                                  <fo:block text-align="left" color="rgb(0,0,0)">
                                                                       <fo:inline font-weight="bold">Nombre:</fo:inline>
                                                                         <fo:inline><xsl:value-of select="nombreCliente"/></fo:inline>
                                                                    </fo:block> 
                                                                    <fo:block color="rgb(0,0,0)">
                                                                        <fo:inline font-weight="bold">Rut:</fo:inline>
                                                                        <fo:inline><xsl:value-of select="rutCliente"/>-<xsl:value-of select="vrfCliente"/></fo:inline>
                                                                </fo:block> 
                                                                <fo:block color="rgb(0,0,0)">
                                                                    <fo:inline font-weight="bold">Fecha de Otorgamiento Original:</fo:inline>
                                                                      <fo:inline><xsl:value-of select="fechaCurse"/></fo:inline>
                                                                  </fo:block>
                                                                  <fo:block color="rgb(0,0,0)">
                                                                    <fo:inline font-weight="bold">Moneda de Origen:</fo:inline>
                                                                      <fo:inline><xsl:value-of select="glosaMoneda"/></fo:inline>
                                                                  </fo:block>
                                                                  <fo:block color="rgb(0,0,0)">
                                                                        <fo:inline font-weight="bold">Tasa de interés:</fo:inline>
                                                                        <fo:inline><xsl:value-of select="tasa"/>&#x00A0;%&#x00A0;<xsl:value-of select="glosaTasa"/></fo:inline>
                                                                    </fo:block>                                         
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell text-align="left" border-left-style="none" border-left-width="1pt" border-left-color="rgb(0,0,0)" border-right-style="none" border-right-width="1pt" border-right-color="rgb(0,0,0)" border-top-style="none" border-top-width="1pt" border-top-color="rgb(0,0,0)" border-bottom-style="none" border-bottom-width="1pt" border-bottom-color="rgb(0,0,0)" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt">
                                                                <fo:block color="rgb(0,0,128)" font-weight="bold"/>
                                                                <fo:block color="rgb(0,0,0)">
                                                                     <fo:inline font-weight="bold">Tipo de Crédito:</fo:inline>
                                                                     <fo:inline><xsl:value-of select="tipoCredito"/></fo:inline>
                                                                </fo:block>
                                                                <fo:block color="rgb(0,0,0)">
                                                                    <fo:inline font-weight="bold">Saldo del Capital Adeudado:</fo:inline>
                                                                    <fo:inline><xsl:value-of select="saldoCredito"/></fo:inline>
                                                                </fo:block>
                                                                <fo:block color="rgb(0,0,0)">
                                                                  <fo:inline font-weight="bold">Fecha último vencimiento:</fo:inline>
                                                                    <fo:inline><xsl:value-of select="fechaUltimoPago"/></fo:inline>
                                                                </fo:block>
                                                                <fo:block color="rgb(0,0,0)">
                                                                    <fo:inline font-weight="bold">Tipo de Prepago:</fo:inline>
                                                                    <fo:inline><xsl:value-of select="tipoCancelacion"/></fo:inline>
                                                                </fo:block> 
                                                                <fo:block color="rgb(0,0,0)">
                                                                    <fo:inline font-weight="bold">Número de Cuotas Originales:</fo:inline>
                                                                    <fo:inline><xsl:value-of select="cuotasOrigen"/></fo:inline>
                                                                </fo:block>     
                                                                <fo:block color="rgb(0,0,0)">
                                                                   <fo:inline font-weight="bold">Periodicidad de las cuotas:</fo:inline>
                                                                     <fo:inline><xsl:value-of select="periodicidadPago"/></fo:inline>
                                                                </fo:block>
                                                                <fo:block color="rgb(0,0,0)">
                                                                   <fo:inline font-weight="bold">&#x00A0;</fo:inline>
                                                                </fo:block>                                                             
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>                                             
                                                        
                  <fo:table border-collapse="collapse">
                    <fo:table-column column-width="50%" column-number="1"/>
                    <fo:table-column column-width="25%" column-number="2"/>
                    <fo:table-column column-width="25%" column-number="3"/>
                    <fo:table-column column-number="4"/>
                    <fo:table-body>
                      <fo:table-row>
                        <fo:table-cell number-columns-spanned="4">
                          <fo:table z-index="0" border-collapse="collapse" margin-top="20pt">
                            <fo:table-column column-width="100%" column-number="1"/>
                            <fo:table-header>
                                
                                <fo:table-row display-align="before" border-bottom-color="rgb(0,0,255)">
                                                <fo:table-cell text-align="left" border-left-style="none" border-left-width="1pt" border-left-color="rgb(0,0,0)" border-right-style="none" border-right-width="1pt" border-right-color="rgb(0,0,0)" border-top-style="none" border-top-width="1pt" border-top-color="rgb(0,0,0)" border-bottom-style="solid" border-bottom-width="3pt" border-bottom-color="rgb(51,51,153)" padding-top="2pt" padding-left="2pt" padding-right="2pt" padding-bottom="2pt">
                                                      <fo:block text-align="center" border-bottom-width="10pt"/>
                                                </fo:table-cell>
                                          </fo:table-row>
                                
                              <fo:table-row display-align="auto">
                                <fo:table-cell text-align="start" padding-top="5px" padding-left="10pt" padding-right="5px" padding-bottom="5px" font-size="11pt" font-weight="bold" background-color="rgb(206,218,196)">
                                  <fo:block font-size="11pt" font-family="Helvetica">Detalle de Pago</fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-header>
                            <fo:table-body>
                              <fo:table-row display-align="auto">
                                <fo:table-cell text-align="start">
                                  <fo:block>
                                    <fo:table>
                                      <fo:table-column column-width="25%" column-number="1"/>
                                      <fo:table-column column-width="18%" column-number="2"/>
                                      <fo:table-column column-width="29%" column-number="3"/>
                                      <fo:table-column column-width="14%" column-number="4"/>
                                      <fo:table-column column-width="14%" column-number="5"/>
                                      <fo:table-column column-width="14%" column-number="6"/>
                                      <fo:table-column column-width="14%" column-number="7"/>
                                      <fo:table-column column-width="14%" column-number="8"/>
                                      <fo:table-column column-width="14%" column-number="9"/>
                                      <fo:table-header>
                                        <fo:table-row text-align="center" border-top-style="solid" border-top-width="2px" border-top-color="rgb(255,255,255)" font-size="7pt" font-family="Helvetica" background-color="rgb(147,149,152)">
                                          <fo:table-cell color="rgb(255,255,255)" border-right-style="solid" border-right-width="3.5px" border-right-color="rgb(255,255,255)" padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px">
                                            <fo:block>
                                              Fecha Pago
                                            </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell color="rgb(255,255,255)" border-left-style="solid" border-left-width="3.5px" border-left-color="rgb(255,255,255)" border-right-style="solid" border-right-width="3.5px" border-right-color="rgb(255,255,255)" padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px">
                                            <fo:block>
                                              Capital Amortizado
                                            </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell color="rgb(255,255,255)" border-left-style="solid" border-left-width="3.5px" border-left-color="rgb(255,255,255)" border-right-style="solid" border-right-width="3.5px" border-right-color="rgb(255,255,255)" padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px">
                                            <fo:block>
                                              Interés
                                            </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell color="rgb(255,255,255)" border-left-style="solid" border-left-width="3.5px" border-left-color="rgb(255,255,255)" border-right-style="solid" border-right-width="3.5px" border-right-color="rgb(255,255,255)" padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px">
                                            <fo:block>
                                              Comisión Prepago
                                            </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell color="rgb(255,255,255)" border-left-style="solid" border-left-width="3.5px" border-left-color="rgb(255,255,255)" border-right-style="solid" border-right-width="3.5px" border-right-color="rgb(255,255,255)" padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px">
                                            <fo:block>
                                              Reajustes
                                            </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell color="rgb(255,255,255)" border-left-style="solid" border-left-width="3.5px" border-left-color="rgb(255,255,255)" border-right-style="solid" border-right-width="3.5px" border-right-color="rgb(255,255,255)" padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px">
                                            <fo:block>
                                              Cargos Mora
                                            </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell color="rgb(255,255,255)" border-left-style="solid" border-left-width="3.5px" border-left-color="rgb(255,255,255)" border-right-style="solid" border-right-width="3.5px" border-right-color="rgb(255,255,255)" padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px">
                                            <fo:block>
                                              Abono por Seguros
                                            </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell color="rgb(255,255,255)" border-left-style="solid" border-left-width="3.5px" border-left-color="rgb(255,255,255)" border-right-style="solid" border-right-width="3.5px" border-right-color="rgb(255,255,255)" padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px">
                                            <fo:block>
                                              Otras Comisiones
                                            </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell color="rgb(255,255,255)" border-left-style="solid" border-left-width="3.5px" border-left-color="rgb(255,255,255)" border-right-style="solid" border-right-width="3.5px" border-right-color="rgb(255,255,255)" padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px">
                                            <fo:block>
                                              Total a Pagar
                                            </fo:block>
                                          </fo:table-cell>
                                        </fo:table-row>
                                      </fo:table-header>                                      
                                    <xsl:for-each select="detallePrepagos/element">     
                                      <fo:table-body>
                                        <fo:table-row border-top-style="solid" border-top-width="2px" border-top-color="rgb(255,255,255)" font-size="6pt" font-weight="normal" background-color="rgb(233,233,234)">
                                          <fo:table-cell border-right-style="solid" border-right-width="3.5px" border-right-color="rgb(255,255,255)" padding-top="5px" padding-left="2pt" padding-right="2px" padding-bottom="5px" text-align="center">
                                            <fo:block>
                                              <fo:inline><xsl:value-of select="fechaPago"/></fo:inline> 
                                            </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell border-left-style="solid" border-left-width="3.5px" border-left-color="rgb(255,255,255)" border-right-style="solid" border-right-width="3.5px" border-right-color="rgb(255,255,255)" padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" text-align="center">
                                            <fo:block>
                                              <fo:inline>$&#x00A0;<xsl:value-of select="capitalPrepago"/></fo:inline> 
                                            </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell border-left-style="solid" border-left-width="3.5px" border-left-color="rgb(255,255,255)" border-right-style="solid" border-right-width="3.5px" border-right-color="rgb(255,255,255)" padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" text-align="center">
                                            <fo:block>
                                              <fo:inline>$&#x00A0;<xsl:value-of select="valorIntereses"/></fo:inline> 
                                            </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell border-left-style="solid" border-left-width="3.5px" border-left-color="rgb(255,255,255)" border-right-style="solid" border-right-width="3.5px" border-right-color="rgb(255,255,255)" padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" text-align="center" >
                                            <fo:block>
                                              <fo:inline>$&#x00A0;<xsl:value-of select="comision"/></fo:inline> 
                                            </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell border-left-style="solid" border-left-width="3.5px" border-left-color="rgb(255,255,255)" border-right-style="solid" border-right-width="3.5px" border-right-color="rgb(255,255,255)" padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" text-align="center">
                                            <fo:block>
                                              <fo:inline>$&#x00A0;<xsl:value-of select="reajustes"/></fo:inline> 
                                            </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell border-left-style="solid" border-left-width="3.5px" border-left-color="rgb(255,255,255)" border-right-style="solid" border-right-width="3.5px" border-right-color="rgb(255,255,255)" padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" text-align="center">
                                            <fo:block>
                                              <fo:inline>$&#x00A0;<xsl:value-of select="cargosMora"/></fo:inline> 
                                            </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell border-left-style="solid" border-left-width="3.5px" border-left-color="rgb(255,255,255)" border-right-style="solid" border-right-width="3.5px" border-right-color="rgb(255,255,255)" padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" text-align="center">
                                            <fo:block>
                                              <fo:inline>$&#x00A0;<xsl:value-of select="abonoPorSeguros"/></fo:inline> 
                                            </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell border-left-style="solid" border-left-width="3.5px" border-left-color="rgb(255,255,255)" border-right-style="solid" border-right-width="3.5px" border-right-color="rgb(255,255,255)" padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" text-align="center">
                                            <fo:block>
                                              <fo:inline>$&#x00A0;<xsl:value-of select="comisionFogape"/></fo:inline> 
                                            </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell border-left-style="solid" border-left-width="3.5px" border-left-color="rgb(255,255,255)" border-right-style="solid" border-right-width="3.5px" border-right-color="rgb(255,255,255)" padding-top="5px" padding-left="5pt" padding-right="5px" padding-bottom="5px" text-align="center">
                                            <fo:block>
                                              <fo:inline>$&#x00A0;<xsl:value-of select="totalPagos"/></fo:inline> 
                                            </fo:block>
                                          </fo:table-cell>
                                        </fo:table-row>
                                      </fo:table-body>
                                      
                                   </xsl:for-each>   
                                      
                                    </fo:table>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                        </fo:table-cell>
                        <fo:table-cell/>
                      </fo:table-row>
                    </fo:table-body>
                  </fo:table>
                  
                  <fo:block color="rgb(0,0,128)" text-align="center" margin-bottom="8pt" font-size="9pt" font-family="Helvetica"> <fo:block/><fo:block/> </fo:block>

                                    <fo:block text-align="left" color="rgb(0,0,0)">
                                       <fo:inline font-weight="bold"></fo:inline>
                                         <fo:inline><xsl:value-of select="glosa1"/></fo:inline>
                                    </fo:block>
                                    <fo:block text-align="left" color="rgb(0,0,0)">
                                       <fo:inline font-weight="bold">&#x00A0;</fo:inline>    
                                    </fo:block>
                                    <fo:block text-align="left" color="rgb(0,0,0)">
                                       <fo:inline font-weight="bold"></fo:inline>
                                         <fo:inline><xsl:value-of select="glosa2"/></fo:inline>
                                    </fo:block>
                                    <fo:block text-align="left" color="rgb(0,0,0)">
                                       <fo:inline font-weight="bold">&#x00A0;</fo:inline>    
                                    </fo:block>
                                    <fo:block text-align="left" color="rgb(0,0,0)">
                                       <fo:inline font-weight="bold"></fo:inline>
                                         <fo:inline><xsl:value-of select="glosa3"/></fo:inline>
                                    </fo:block>
                                    <fo:block text-align="left" color="rgb(0,0,0)">
				             <fo:inline font-weight="bold">&#x00A0;</fo:inline>    
				     </fo:block>
				     <fo:block text-align="left" color="rgb(0,0,0)">
				            <fo:inline font-weight="bold"></fo:inline>
				           <fo:inline><xsl:value-of select="leyenda"/></fo:inline>
                                    </fo:block>
                   <fo:block text-align="left" color="rgb(0,0,0)">
		       <fo:inline font-weight="bold">&#x00A0;</fo:inline>    
    	           </fo:block>
                   <fo:block text-align="left" color="rgb(0,0,0)">
		       <fo:inline font-weight="bold">&#x00A0;</fo:inline>    
      	           </fo:block>
                   <fo:block text-align="left" color="rgb(0,0,0)">
		             <fo:inline font-weight="bold">&#x00A0;</fo:inline>    
    	            </fo:block>
                    <fo:block text-align="left" color="rgb(0,0,0)">
		             <fo:inline font-weight="bold">&#x00A0;</fo:inline>    
    	            </fo:block>
                    <fo:block color="rgb(0,0,0)" text-align="justify" margin-bottom="8pt" font-size="9pt" font-family="Helvetica"> 
                        <fo:block text-align="left" color="rgb(0,0,0)">
                           <fo:inline><xsl:value-of select="textolegalarriba"/>:</fo:inline>
                        </fo:block>
                    </fo:block>
                    <xsl:for-each select="Seguros/element">     
                        <fo:block text-align="left" >
                          - <fo:inline><xsl:value-of select="glosaSeguro"/></fo:inline> 
                        </fo:block>
                    </xsl:for-each>   
                    <fo:block color="rgb(0,0,0)" text-align="justify" margin-bottom="8pt" font-size="9pt" font-family="Helvetica"> 
                        <fo:block text-align="left" color="rgb(0,0,0)">
                           <fo:inline><xsl:value-of select="textolegalabajo"/></fo:inline>
                        </fo:block>
                    </fo:block>
                     
                  
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
        </fo:table>
      </fo:block>       

    </xsl:template>

</xsl:stylesheet>
