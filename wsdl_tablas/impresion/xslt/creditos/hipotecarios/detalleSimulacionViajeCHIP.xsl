<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:svg="http://www.w3.org/2000/svg" version="1.0">
   <xsl:variable name="txt">#CCCCCC</xsl:variable>
   <xsl:variable name="lineas">#CCCCCC</xsl:variable>
   <xsl:template match="simulacion">
      <fo:root>
         <!-- layout for the first page -->
         <fo:layout-master-set>
            <!-- layout for the first page -->
            <fo:simple-page-master master-name="first" page-height="29.7cm" page-width="19cm" border="thick solid red">
               <fo:region-body margin-top="1cm" margin-left="1cm" margin-right="1cm" />
               <fo:region-before extent="10cm" />
               <fo:region-after extent="1cm" />
            </fo:simple-page-master>
            <fo:page-sequence-master master-name="basicPSM">
               <fo:repeatable-page-master-alternatives>
                  <fo:conditional-page-master-reference master-reference="first" page-position="first" />
				  </fo:repeatable-page-master-alternatives>
            </fo:page-sequence-master>
         </fo:layout-master-set>
         <fo:page-sequence master-reference="basicPSM">
            <fo:static-content flow-name="xsl-region-before">
               <!-- imagen bci -->
               <fo:table>
                  <fo:table-column column-width="190mm" />
                  <fo:table-body>
                     <fo:table-row>
                        <fo:table-cell>
                           <fo:external-graphic scaling="uniform" text-align="left" width="100%">
                              <xsl:attribute name="src">tablas/impresion/imagenes/hipotecario/barraColoresBCI.jpg</xsl:attribute>
                           </fo:external-graphic>
                        </fo:table-cell>
                     </fo:table-row>
                     <fo:table-row>
                        <fo:table-cell padding-top="7mm" padding-left="9mm">
                           <fo:external-graphic scaling="uniform" height="50pt" width="93px">
                              <xsl:attribute name="src">tablas/impresion/imagenes/hipotecario/logoBCI.jpg</xsl:attribute>
                           </fo:external-graphic>
                        </fo:table-cell>
                     </fo:table-row>
                  </fo:table-body>
               </fo:table>
            </fo:static-content>
            <fo:static-content flow-name="xsl-region-after">
               <fo:block font-size="10pt" text-align="center" color="#ababab">
                  Página
                  <fo:page-number />
                  de
                  <fo:page-number-citation ref-id="TheVeryLastPage" />
               </fo:block>
            </fo:static-content>
            <fo:flow flow-name="xsl-region-body">
               <fo:table font-family="Arial,Verdana,Helvetica" padding-top="3pt">
                  <fo:table-column column-width="60mm" />
                  <fo:table-column column-width="130mm" />
                  <fo:table-body>
                     <fo:table-row>
                        <fo:table-cell padding-top="1mm" padding-bottom="1mm" />
                        <fo:table-cell padding-top="1mm" padding-bottom="1mm" padding-right="2cm">
                           <fo:block text-align="right" color="#00a24a" font-size="25pt" font-weight="100">Resultado de simulación</fo:block>
                        </fo:table-cell>
                     </fo:table-row>
                     <fo:table-row>
                        <fo:table-cell padding-bottom="1mm">
                           <fo:block text-align="left" font-size="10pt" padding-bottom="3pt">
                              <!-- ESPACIO -->
                           </fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding-bottom="1mm" padding-right="2cm">
                           <fo:block text-align="right" color="#bcbcc0" font-size="10pt" font-weight="bold">

							     <xsl:value-of select="fechaSimulacion" />

							   </fo:block>
                        </fo:table-cell>
                     </fo:table-row>
                  </fo:table-body>
               </fo:table>

			   <fo:table font-family="Arial,Verdana,Helvetica" padding-top="15pt">
				  <fo:table-column column-width="190mm" />
                  <fo:table-body>
                     <fo:table-row>
                        <fo:table-cell padding-top="1mm" padding-bottom="1mm" padding-right="2cm">
                           <fo:block text-align="left" color="#5c5b5c" font-size="16.5pt" font-weight="100">
						        Simulación para
								 <fo:inline font-weight="bold">
                                 <xsl:value-of select="nombre" /> <xsl:text>&#xA0;</xsl:text> <xsl:value-of select="apellido" />   (<xsl:value-of select="rutCliente" /> )
                              </fo:inline>

							</fo:block>
                        </fo:table-cell>
                     </fo:table-row>
                  </fo:table-body>
               </fo:table>


               <fo:table font-family="Arial,Verdana,Helvetica" padding-top="25pt">
                  <fo:table-column column-width="52.5mm" />
                  <fo:table-column column-width="7,5mm" />
                  <fo:table-column column-width="52.5mm" />
                  <fo:table-column column-width="32.5mm" />
                  <fo:table-body>
                     <fo:table-row>
                        <fo:table-cell padding-top="1mm" number-columns-spanned="2">
                           <fo:block text-align="left" padding-bottom="3mm" color="#03ab73" font-size="16.5pt" font-weight="100">Tus condiciones</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding-top="1mm" padding-left="0.5cm" number-columns-spanned="2">
                           <fo:block text-align="left" padding-bottom="3mm" color="#03ab73" font-size="16.5pt" font-weight="100">Tu simulación</fo:block>
                        </fo:table-cell>
                     </fo:table-row>
                     <fo:table-row>
                        <fo:table-cell>
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#929292" font-size="10pt" font-weight="100">Propósito de crédito</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding-right="0.5cm">
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#5e6276" font-size="10pt" font-weight="bold">
                              <xsl:value-of select="destino" />
                           </fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding-left="0.5cm">
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#929292" font-size="10pt" font-weight="100">Dividendo mensual</fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#5e6276" font-size="10pt" font-weight="bold">
                              UF
                              <xsl:value-of select="detalle/producto/total_dividendo" />
                           </fo:block>
                        </fo:table-cell>
                     </fo:table-row>
                     <fo:table-row>
                        <fo:table-cell>
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#929292" font-size="10pt" font-weight="100">Condición de propiedad</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding-right="0.5cm">
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#5e6276" font-size="10pt" font-weight="bold">
                              <xsl:value-of select="detalle/producto/descripcion" />
                           </fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding-left="0.5cm">
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#929292" font-size="10pt" font-weight="100">Tasa anual en UF</fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#5e6276" font-size="10pt" font-weight="bold">
                              <xsl:value-of select="tasa_interes" />
                              %
                           </fo:block>
                        </fo:table-cell>
                     </fo:table-row>
                     <fo:table-row>
                        <fo:table-cell>
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#929292" font-size="10pt" font-weight="100">Tipo de propiedad</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding-right="0.5cm">
							<fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#5e6276" font-size="10pt" font-weight="bold">
                              <xsl:value-of select="tipo_propiedad" />
                           </fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding-left="0.5cm">
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#929292" font-size="10pt" font-weight="100">CAE</fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#5e6276" font-size="10pt" font-weight="bold">
                              <xsl:value-of select="cae/cae" />
                              %
                           </fo:block>
                        </fo:table-cell>
                     </fo:table-row>
                     <fo:table-row>
                        <fo:table-cell>
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#929292" font-size="10pt" font-weight="100">Valor de propiedad</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding-right="0.5cm">
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#5e6276" font-size="10pt" font-weight="bold">
                              UF
                              <xsl:value-of select="valor_propiedad" />
                           </fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding-left="0.5cm">
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#929292" font-size="10pt" font-weight="100">Plazo</fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#5e6276" font-size="10pt" font-weight="bold">
                              <xsl:value-of select="plazo" />
                              años
                           </fo:block>
                        </fo:table-cell>
                     </fo:table-row>
                     <fo:table-row>
                        <fo:table-cell>
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#929292" font-size="10pt" font-weight="100">Monto de pie</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding-right="0.5cm">
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#5e6276" font-size="10pt" font-weight="bold">
                              UF
                              <xsl:value-of select="pieUF" />
                                 </fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding-left="0.5cm">
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#929292" font-size="10pt" font-weight="100">Dividendo sin seguros</fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#5e6276" font-size="10pt" font-weight="bold">
                              UF
                              <xsl:value-of select="detalle/producto/dividendo_neto" />
                           </fo:block>
                        </fo:table-cell>
                     </fo:table-row>
                     <fo:table-row>
                        <fo:table-cell>
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#929292" font-size="10pt" font-weight="100">Monto total de crédito</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding-right="0.5cm">
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#5e6276" font-size="10pt" font-weight="bold">
                              UF
                              <xsl:value-of select="valor_credito" />
                           </fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding-left="0.5cm">
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#929292" font-size="10pt" font-weight="100">Seguro desgravamen</fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#5e6276" font-size="10pt" font-weight="bold">
                              UF
                              <xsl:value-of select="detalle/producto/seguro_monto_desgravamen" />
                           </fo:block>
                        </fo:table-cell>
                     </fo:table-row>
                     <fo:table-row>
                        <fo:table-cell>
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#929292" font-size="10pt" font-weight="100">Porcentaje de financiamiento</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding-right="0.5cm">
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#5e6276" font-size="10pt" font-weight="bold">
                              <xsl:value-of select="porc_financiamiento" />
                              %
                           </fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding-left="0.5cm">
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#929292" font-size="10pt" font-weight="100">Seguro incendio-sismo</fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#5e6276" font-size="10pt" font-weight="bold">
                              UF
                              <xsl:value-of select="detalle/producto/seguro_monto_incendio_sismo" />
                           </fo:block>
                        </fo:table-cell>
                     </fo:table-row>
                     <fo:table-row>
                        <fo:table-cell>
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#929292" font-size="10pt" font-weight="100">Plazo</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding-right="0.5cm">
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#5e6276" font-size="10pt" font-weight="bold">
                              <xsl:value-of select="plazo" />
                              años
                           </fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding-left="0.5cm">
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #49494a" color="#929292" font-size="10pt" font-weight="100">Gastos operacionales</fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #49494a" color="#5e6276" font-size="10pt" font-weight="bold">
                              $
                              <xsl:value-of select="gasto_operacional/total" />
                           </fo:block>
                        </fo:table-cell>
                     </fo:table-row>
                     <fo:table-row>
                        <fo:table-cell>
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" color="#929292" font-size="10pt" font-weight="100">Meses de gracia</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding-right="0.5cm">
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" color="#5e6276" font-size="10pt" font-weight="bold">
                              <xsl:variable name="variableGracia" select="gracia" />
                              <xsl:choose>
                                 <xsl:when test="$variableGracia = '0'">NO</xsl:when>
                              </xsl:choose>
                              <xsl:choose>
                                 <xsl:when test="$variableGracia != '0'">
                                    <xsl:value-of select="gracia" />
                                 </xsl:when>
                              </xsl:choose>
                           </fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding-left="0.5cm">
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" color="#929292" font-size="10pt" font-weight="bold">Costo total de crédito</fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                           <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" color="#5e6276" font-size="10pt" font-weight="bold">
                              UF
                              <xsl:value-of select="cae/total" />
                           </fo:block>
                        </fo:table-cell>
                     </fo:table-row>
                  </fo:table-body>
               </fo:table>
               <fo:table font-family="Arial,Verdana,Helvetica" padding-top="55pt">
                  <fo:table-column column-width="85mm" />
                  <fo:table-column column-width="85mm" />
                  <fo:table-body>
                     <fo:table-row>
                        <fo:table-cell padding-top="1mm" height="5cm">
                           <fo:table padding-top="5mm">
                              <fo:table-column column-width="52.5mm" />
                              <fo:table-column column-width="32,5mm" />
                              <fo:table-body>
                                 <fo:table-row>
                                    <fo:table-cell number-columns-spanned="2">
                                       <fo:block text-align="left" font-size="16.5pt" color="#00a24a" font-weight="100">Detalle de gastos operacionales</fo:block>
                                    </fo:table-cell>
                                 </fo:table-row>
                                 <fo:table-row>
                                    <fo:table-cell>
                                       <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#929292" font-size="10pt" font-weight="100">Tasación</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding-right="0.5cm">
                                       <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#5e6276" font-size="10pt" font-weight="bold">
                                          $
                                          <xsl:value-of select="gasto_operacional/tasacion" />
                                       </fo:block>
                                    </fo:table-cell>
                                 </fo:table-row>
                                 <fo:table-row>
                                    <fo:table-cell>
                                       <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#929292" font-size="10pt" font-weight="100">Estudio de título</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding-right="0.5cm">
                                       <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#5e6276" font-size="10pt" font-weight="bold">
                                          $
                                          <xsl:value-of select="gasto_operacional/estudio_titulos" />
                                       </fo:block>
                                    </fo:table-cell>
                                 </fo:table-row>
                                 <fo:table-row>
                                    <fo:table-cell>
                                       <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#929292" font-size="10pt" font-weight="100">Borrador de escritura</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding-right="0.5cm">
                                       <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#5e6276" font-size="10pt" font-weight="bold">
                                          $
                                          <xsl:value-of select="gasto_operacional/borrador_escritura" />
                                       </fo:block>
                                    </fo:table-cell>
                                 </fo:table-row>
                                 <fo:table-row>
                                    <fo:table-cell>
                                       <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#929292" font-size="10pt" font-weight="100">Gastos notariales</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding-right="0.5cm">
                                       <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#5e6276" font-size="10pt" font-weight="bold">
                                          $
                                          <xsl:value-of select="gasto_operacional/notaria" />
                                       </fo:block>
                                    </fo:table-cell>
                                 </fo:table-row>
                                 <fo:table-row>
                                    <fo:table-cell>
                                       <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#929292" font-size="10pt" font-weight="100">Impuestos</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding-right="0.5cm">
                                       <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #e5e5e5" color="#5e6276" font-size="10pt" font-weight="bold">
                                          $
                                          <xsl:value-of select="gasto_operacional/impuesto" />
                                       </fo:block>
                                    </fo:table-cell>
                                 </fo:table-row>
                                 <fo:table-row>
                                    <fo:table-cell>
                                       <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #49494a" color="#929292" font-size="10pt" font-weight="100">Conservador bienes raíces</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding-right="0.5cm">
                                       <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" border-bottom="0.4mm solid #49494a" color="#5e6276" font-size="10pt" font-weight="bold">
                                          $
                                          <xsl:value-of select="gasto_operacional/conservador" />
                                       </fo:block>
                                    </fo:table-cell>
                                 </fo:table-row>
                                 <fo:table-row>
                                    <fo:table-cell>
                                       <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" color="#929292" font-size="10pt" font-weight="bold">Total</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding-right="0.5cm">
                                       <fo:block text-align="left" padding-top="2mm" padding-bottom="2mm" color="#5e6276" font-size="10pt" font-weight="bold">
                                          $
                                          <xsl:value-of select="gasto_operacional/total" />
                                       </fo:block>
                                    </fo:table-cell>
                                 </fo:table-row>
                              </fo:table-body>
                           </fo:table>
                        </fo:table-cell>
                        <fo:table-cell padding-left="0.5cm" padding-top="1mm" padding-bottom="mm">
                           <fo:table padding-top="5mm" background-color="#f1f1f1">
                              <fo:table-column column-width="80mm" />
                              <fo:table-body>
                                 <fo:table-row>
                                    <fo:table-cell padding-top="5mm">
                                       <fo:block text-align="left" margin-left="3mm" color="#8b8a8a" font-weight="100">Estás más cerca de tu nuevo hogar, te invitamos a ser parte de Hipotecario Bci.</fo:block>
                                    </fo:table-cell>
                                 </fo:table-row>
                                 <fo:table-row padding-bottom="5cm">
                                    <fo:table-cell padding-top="5mm" padding-bottom="25mm">
                                       <fo:block text-align="left" margin-left="3mm" color="#8b8a8a" font-weight="100">Visita www.bci.cl o acércate a cualquier sucursal Bci.</fo:block>
                                    </fo:table-cell>
                                 </fo:table-row>
                              </fo:table-body>
                           </fo:table>
                        </fo:table-cell>
                     </fo:table-row>
                  </fo:table-body>
               </fo:table>
               <!-- SALTO DE PAGINA -->
               <fo:block break-after="page" page-break-after="auto">
                  <fo:leader leader-pattern="space" />
               </fo:block>
               <fo:table font-family="Verdana,Helvetica" padding-top="45pt">
                  <fo:table-column column-width="170mm" />
                  <fo:table-body>
                     <fo:table-row>
                        <fo:table-cell padding-top="1mm" padding-bottom="1mm">
                           <fo:block text-align="left" color="#24ae64" font-size="16pt" padding-bottom="3pt" font-weight="100">                           Términos y Condiciones para la contratación
                           </fo:block>
                        </fo:table-cell>
                     </fo:table-row>
                     <fo:table-row>
                        <fo:table-cell color="#5c5b5c" padding-top="1mm" padding-bottom="1mm">
                           <fo:block text-align="left" font-size="10pt" padding-bottom="3pt" font-weight="100">                           <fo:inline font-weight="bold">1. </fo:inline>
                           Esta simulación es referencial y no constituye aprobación del crédito, sólo representa una propuesta de condiciones del crédito hipotecario que no obliga al Banco, sino desde que sea aceptada la solicitud por éste. Los dividendos, tasas y primas de seguros son referenciales a esta fecha y están sujetas a variaciones dependiendo de la fecha en que se firme la escritura, las condiciones definitivas del crédito, la normativa y políticas comerciales vigentes.
                           </fo:block>
                        </fo:table-cell>
                     </fo:table-row>
                     <fo:table-row>
                        <fo:table-cell color="#5c5b5c" padding-top="1mm" >
                           <fo:block text-align="left" font-size="10pt" padding-bottom="3pt" font-weight="100">
						   <fo:block linefeed-treatment="preserve" font-weight="bold">2. Gastos Operacionales.-</fo:block>
                           <fo:block linefeed-treatment="preserve" padding-top="1mm">Los derechos notariales y aranceles del Conservador de Bienes Raíces (CBR) son estimativos y su valor final es fijado por cada entidad dependiendo del lugar en que se firma la escritura y/o la ubicación del inmueble.</fo:block>
                              <fo:block linefeed-treatment="preserve" padding-top="1mm">La tasa de impuesto al mutuo está fijada de acuerdo al Decreto Ley Nº 3475 y será rebajada si la operación está acogida a DFL2.</fo:block>
                              <fo:block linefeed-treatment="preserve" padding-top="1mm">El valor del servicio de tasación es aproximado, pudiendo variar según las características de la propiedad y su ubicación geográfica.</fo:block>
                              <fo:block linefeed-treatment="preserve" padding-top="1mm">En caso que por cualquier motivo no se finalice el curse del crédito hipotecario, el cliente deberá cancelar los gastos efectivamente incurridos.</fo:block>
                           </fo:block>
                        </fo:table-cell>
                     </fo:table-row>
                     <fo:table-row>
                        <fo:table-cell color="#5c5b5c" padding-top="1mm">
                           <fo:block text-align="left" font-size="10pt" padding-bottom="3pt" font-weight="100">
                              <fo:block linefeed-treatment="preserve" font-weight="bold">3. Seguros.-</fo:block>
                              <fo:block linefeed-treatment="preserve" padding-top="1mm">El valor del dividendo incluye el seguro de desgravamen, de incendio y de sismo, si han sido contratados, con primas que se devengan y cargan a partir de la fecha de suscripción de la escritura pública correspondiente por el asegurado.</fo:block>
                              <fo:block linefeed-treatment="preserve" padding-top="1mm">La edad del cliente más el plazo del crédito Hipotecario no puede exceder los 80 años. La edad máxima de Ingreso es de 74 años y 364 días y la edad máxima de cobertura es de 80 años.</fo:block>
                              <fo:block linefeed-treatment="preserve" padding-top="1mm">El valor mensual de los seguros incluidos en esta simulación es referencial, podrá variar en el caso del seguro de Incendio dependiendo del valor de la tasación de la propiedad y, en el caso del seguro de desgravamen colectivo según el monto del crédito.</fo:block>
                              <fo:block linefeed-treatment="preserve" padding-top="1mm">El asegurado podrá contratar los seguros, con las compañías y/o corredores de seguros de su elección, debiendo cumplir con las coberturas y condiciones mínimas exigidas por Bci.</fo:block>
							  </fo:block>
                        </fo:table-cell>
                     </fo:table-row>
                     <fo:table-row>
                        <fo:table-cell color="#5c5b5c" padding-top="1mm">
                           <fo:block text-align="left" font-size="10pt" padding-bottom="3pt" font-weight="100">
                              <fo:block linefeed-treatment="preserve">Pólizas colectivas de Incendio/Incendio y sismo para riesgos habitacionales y oficinas profesionales vigentes entre el 01 de julio de 2017 y el 01 de julio de 2019 emitidas por Bci seguros Generales S.A. intermediadas por Bci Corredores de Seguros S.A. bajo las siguientes condiciones generales: POL 120131490, CAD 120130070, CAD 120130071, CAD 120130077, CAD 120130598, según corresponda.</fo:block>
							  <fo:block linefeed-treatment="preserve">Póliza colectiva de desgravamen vigente entre el 1 de septiembre de 2017 y el 31 de Agosto de 2019 emitida por Bice Vida Compañía de Seguros S.A., intermediada por BCI Corredores de Seguros S.A. Bajo las siguientes condiciones generales Pol 220130678.</fo:block>
							  <fo:block linefeed-treatment="preserve">El detalle de las exclusiones que aplican a cada cobertura se encuentra en las condiciones generales correspondientes, y que se encuentran disponibles en la sección depósito de pólizas del sitio web de la superintendencia de valores y seguros: www.svs.cl.</fo:block>
							  <fo:block linefeed-treatment="preserve">No podrán ser asegurados bajo las cláusulas adicionales de sismo aquellos inmuebles que fueran edificaciones construidas total o parcialmente con material de adobe.</fo:block>
<fo:block linefeed-treatment="preserve" font-weight="bold">4. Definiciones.-</fo:block>
                              <fo:block linefeed-treatment="preserve" padding-top="1mm">Carga Anual Equivalente (CAE): Es el indicador que, expresado en forma de porcentaje, revela el costo de un Crédito Hipotecario en un período anual, cualquiera sea el plazo pactado para el pago de la obligación.</fo:block>
                              <fo:block linefeed-treatment="preserve" padding-top="1mm">La Carga Anual Equivalente incluye el capital, tasa de interés, el plazo del Crédito Hipotecario, todos los Seguros Asociados al Crédito Hipotecario y los Gastos o Cargos por Productos o Servicios Voluntariamente Contratados, si los hubiere.</fo:block>
                              <fo:block linefeed-treatment="preserve" padding-top="1mm">Costo Total de Crédito (CTC): Es el monto total que debe pagar el Consumidor, y que corresponde a la suma de todos los pagos periódicos definidos como dividendo en función del plazo acordado.</fo:block>
                           </fo:block>
                        </fo:table-cell>
                     </fo:table-row>
                     <fo:table-row>
                        <fo:table-cell color="#5c5b5c" padding-top="3mm">
                           <fo:block text-align="left" font-size="11pt" padding-bottom="3pt" font-weight="100">
                              <fo:block linefeed-treatment="preserve" font-weight="bold">El cliente declara estar en conocimiento que la información que proporciona es correcta, y será considerada como  condición esencial y determinante para el Banco.</fo:block>
                           </fo:block>
                        </fo:table-cell>
                     </fo:table-row>
                  </fo:table-body>
               </fo:table>
               <fo:block id="TheVeryLastPage" />
            </fo:flow>
         </fo:page-sequence>
      </fo:root>
   </xsl:template>
</xsl:stylesheet>
