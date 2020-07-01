<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2006/08/23 12:15 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />
    <xsl:param name="IMG_URL"/>

    <xsl:template match="mega_pagare">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="30mm" margin-left="10mm" margin-right="10mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

                <fo:page-sequence master-reference="miCarta">
                    <fo:flow flow-name="xsl-region-body">
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="center" >PAGARE</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="center" >(SIN PROTESTO)</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                            <fo:table border-collapse="collapse" font-family="Courier" font-size="10pt" text-align="left">
                                <fo:table-column />
                                <fo:table-column />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >N° de Operación<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="12pt" text-align="right" >Hoja : 1 - 3</fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>



                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" >Debo y pagaré a la orden del BANCO DE CREDITO E INVERSIONES, en su domicilio ubicado en Avenida El Golf N° 125, Comuna de Las Condes, Santiago, o en cualquiera de sus Sucursales, la cantidad de $ <fo:inline font-weight="bold"><xsl:value-of select='format-number(OperacionCredito/montoCredito, "###.###.###,000","decimal")' /><!--<xsl:value-of select="OperacionCredito/montoPagare"/>--></fo:inline><!--<fo:leader leader-length="8.38cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--><fo:leader leader-pattern="space" leader-length="2mm"/><fo:inline font-weight="bold">(<xsl:value-of select="OperacionCredito/montoCreditoManoEscrita"/><!--<fo:leader leader-length="8cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--><fo:leader leader-pattern="space" leader-length="2mm"/>pesos</fo:inline>)</fo:block>
                            <!-- <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ><fo:leader leader-length="17.9cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="2mm"/>pesos)</fo:block> -->
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" >moneda legal chilena y en cuyo importe se encuentran incorporados los intereses pactados. El vencimiento de esta obligación será el día <fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/diaVencimiento" /></fo:inline> <!--<fo:leader leader-length="2cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/> -->de

                            <xsl:variable name="mes" select="OperacionCredito/mes" />
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

                            <!--<fo:leader leader-length="3.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/> --> <fo:leader leader-pattern="space" leader-length="2mm"/>de<fo:leader leader-pattern="space" leader-length="2mm"/> <fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/anio" /></fo:inline> <!--<fo:leader leader-length="2.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" >En caso de mora o simple retardo, el monto total adeudado a esa fecha se considerará de plazo vencido y dará derecho al acreedor a hacer exigible de inmediato el monto total del saldo insoluto adeudado a esa fecha, devengando el interés máximo que la ley permita estipular para operaciones de esa naturaleza que rija durante la mora o el simple retardo.</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" >Se deja expresamente establecido que el ejercicio de este derecho constituye una sanción al suscriptor por el no pago de la deuda e importa una mera facultad establecida en beneficio exclusivo del acreedor, que no altera en caso alguno la fecha de vencimiento del pagaré originalmente pactada, ni la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos los plazos pendientes por el sólo hecho de constituirse en mora o de habérsele protestado al deudor o al aval, por falta de pago, cualquier documento, pagaré, letra de cambio o cheque, aceptado, suscrito, girado o avalado por él.</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" >Además, el deudor pagará los gastos, impuestos y costas personales y procesales que correspondan. Se deja expresamente establecido que corresponderá al (los) deudor(es) acreditar el pago de las sumas que correspondan al presente instrumento, en caso de cobro judicial. Todas las obligaciones que emanen de este Pagaré serán solidarias para el suscriptor, avalista(s), y demás obligados al pago y serán indivisibles para sus herederos conforme a los Artículos 1.526 Nº 4 y 1.528 del Código Civil.</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" >Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía.</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" >Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" >Se deja constancia que el impuesto de timbres y estampillas que graba este documento ha sido pagado por ingresos mensuales de dinero en Tesorería según lo establece el Decreto Ley Nº 3.475.</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" >Libero al Banco de la obligación de protesto.</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify">En<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/ciudadContrato" /></fo:inline>, a <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/dia" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                            <xsl:variable name="mes" select="OperacionCredito/mes" />
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

                            <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/anio" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                            <fo:table border-collapse="collapse" font-family="Courier" font-size="10pt" text-align="left">
                                <fo:table-column />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell >
                                            <fo:block font-family="Helvetica" font-size="12pt" text-align="center" ><fo:leader leader-length="9cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                            <fo:block font-family="Helvetica" font-size="12pt" text-align="center" >Firma del Suscriptor</fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>

                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>


            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="58mm" />
                <fo:table-column column-width="97mm"  />
                <fo:table-column column-width="10mm"  />
                <fo:table-column column-width="30mm"  />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm">NOMBRE O RAZON SOCIAL</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select='format-number(OperacionCredito/rutCliente, "###.###.###","rut")' />-<xsl:value-of select="OperacionCredito/dvCliente" /></fo:inline></fo:block>
                          </fo:table-cell>

                    </fo:table-row>
              </fo:table-body>
              </fo:table>
            <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->


            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL -->
              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="58mm" />
                <fo:table-column column-width="97mm"  />
                <fo:table-column column-width="10mm"  />
                <fo:table-column column-width="30mm"  />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm">REPRESENTANTE LEGAL</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><!--<xsl:value-of select="../OperacionCredito/nombreRepresentanteLegal" />--></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><!--<xsl:value-of select='format-number(../OperacionCredito/rutRepresentanteLegal, "###.###.###","rut")' />-<xsl:value-of select="../OperacionCredito/dvRepresentanteLegal" />--></fo:inline></fo:block>
                          </fo:table-cell>

                    </fo:table-row>
              </fo:table-body>
              </fo:table>
            <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL -->

            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL -->
              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="58mm" />
                <fo:table-column column-width="97mm"  />
                <fo:table-column column-width="10mm"  />
                <fo:table-column column-width="30mm"  />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm">REPRESENTANTE LEGAL</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><!--<xsl:value-of select="../OperacionCredito/nombreRepresentanteLegal" />--></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><!--<xsl:value-of select='format-number(../OperacionCredito/rutRepresentanteLegal, "###.###.###","rut")' />-<xsl:value-of select="../OperacionCredito/dvRepresentanteLegal" />--></fo:inline></fo:block>
                          </fo:table-cell>

                    </fo:table-row>
              </fo:table-body>
              </fo:table>
            <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL -->



            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="25mm" />
                <fo:table-column column-width="80mm"  />
                <fo:table-column column-width="22mm"  />
                <fo:table-column column-width="28mm"  />
                <fo:table-column column-width="20mm"  />
                <fo:table-column column-width="20mm"  />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm">DOMICILIO</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(DireccionAvalBci/direccion,0,32)" /></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm">COMUNA</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(DireccionAvalBci/comuna,0,20)" /></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm">CIUDAD</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(DireccionAvalBci/comuna,21,40)" /></fo:inline></fo:block>
                          </fo:table-cell>


                    </fo:table-row>
              </fo:table-body>
              </fo:table>
            <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->




                    </fo:flow>
                </fo:page-sequence>

                <fo:page-sequence master-reference="miCarta">
                    <fo:flow flow-name="xsl-region-body">
                            <!--<fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="5mm"/>   :<fo:leader leader-pattern="space" leader-length="3mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/fechaSuscripcion" />   </fo:inline></fo:block>-->



                            <fo:block font-family="Helvetica" line-height="4.5mm" font-size="12pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="6mm"/>:<fo:leader leader-pattern="space" leader-length="3mm"/>
                            <fo:inline font-weight="bold"><xsl:value-of select="substring(OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
                            <xsl:variable name="mes" select="substring(OperacionCredito/fechaSuscripcion,4,2)" />
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
                            <fo:inline font-weight="bold"><xsl:value-of select="substring(OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
                            </fo:block>




                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Monto               <fo:leader leader-pattern="space" leader-length="33.1mm"/>:<fo:leader leader-pattern="space" leader-length="3mm"/><fo:inline font-weight="bold"><!--<xsl:value-of select="OperacionCredito/montoCredito" />--> <xsl:value-of select='format-number(OperacionCredito/montoCredito, "###.###.###,000","decimal")' />  </fo:inline><!--<fo:leader leader-length="5.6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--> </fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Deudor              <fo:leader leader-pattern="space" leader-length="31.1mm"/>:<fo:leader leader-pattern="space" leader-length="3mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nombreCompletoCliente" />       </fo:inline><!--<fo:leader leader-length="14.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >RUT                 <fo:leader leader-pattern="space" leader-length="36.1mm"/>:<fo:leader leader-pattern="space" leader-length="3mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(OperacionCredito/rutCliente, "###.###.###","rut")' /><!--<xsl:value-of select="OperacionCredito/rutCliente" />-->-<xsl:value-of select="OperacionCredito/dvCliente" />          </fo:inline><!--<fo:leader leader-length="5.6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--> </fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Hoja                <fo:leader leader-pattern="space" leader-length="36.1mm"/>:<fo:leader leader-pattern="space" leader-length="4mm"/>2 - 3</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="center" >POR AVALES</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" >En mi calidad de aval del presente instrumento, me constituyo en codeudor solidario del suscriptor, y acepto desde luego las eventuales prórrogas o renegociaciones, reprogramaciones y repactaciones de cualquier naturaleza que, con o sin protesto y con o sin abonos o esperas pudieren convenirse entre el deudor y el Banco de Crédito e Inversiones o quien sus derechos represente, quedando subsistente mi responsabilidad solidaria en el carácter de indivisible hasta el pago efectivo, pudiendo exigirse el cumplimiento de esta obligación a cualquiera de mis herederos y/o sucesores, en conformidad al Artículo 1.526 y 1.528 del Código Civil y fijando domicilio en esta ciudad. Convengo asimismo, en que la falta de protesto en tiempo y forma no perjudicará mi calidad de aval y codeudor solidario del suscriptor del presente documento.</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >NOMBRE O RAZON SOCIAL <fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="9.11cm"  leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>RUT<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="3.29cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >DOMICILIO             <fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="7.5cm"   leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>CIUDAD<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="2.69cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>FONO<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="3.29cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >NOMBRE CONYUGUE       <fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="10.26cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>RUT<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="3.29cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >DOMICILIO             <fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="7.5cm"   leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>CIUDAD<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="2.69cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>FONO<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="3.29cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>

                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify">En<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>, a<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="1.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="4.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="1.8cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                            <fo:table border-collapse="collapse" font-family="Courier" font-size="10pt" text-align="left">
                                <fo:table-column />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell >
                                            <fo:block font-family="Helvetica" font-size="12pt" text-align="center" ><fo:leader leader-length="7.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                            <fo:block font-family="Helvetica" font-size="12pt" text-align="center" >Firma del Avalista</fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>

                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >NOMBRE O RAZON SOCIAL<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="9.11cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>RUT<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="3.29cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >DOMICILIO<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="7.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>CIUDAD<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="2.69cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>FONO<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="3.29cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >NOMBRE CONYUGUE<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="10.26cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>RUT<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="3.29cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >DOMICILIO<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="7.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>CIUDAD<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="2.69cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>FONO<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="3.29cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>

                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify">En<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>, a<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="1.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="4.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="1.8cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                            <fo:table border-collapse="collapse" font-family="Courier" font-size="10pt" text-align="left">
                                <fo:table-column />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell >
                                            <fo:block font-family="Helvetica" font-size="12pt" text-align="center" ><fo:leader leader-length="7.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                            <fo:block font-family="Helvetica" font-size="12pt" text-align="center" >Firma del Avalista</fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>

                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" >En mi condición de cónyuge del aval y para efectos de lo dispuesto en el Artículo 1.749 del Código Civil, y con el objeto de que queden obligados los bienes sociales de la sociedad conyugal, autorizo expresamente a mi cónyuge, debidamente individualizado, para que actúe como aval y codeudor solidario de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="17cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" >RUT<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="4.8cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>, por la obligación de que da cuenta este instrumento.</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" >La presente autorización se confiere en los mismos términos en que mi cónyuge presta su aval; por lo tanto incluye, eventuales prórrogas o renegociaciones, reprogamaciones y repactaciones de cualquier naturaleza, que con o sin protesto y esperas, con o sin abonos pudieren convenirse entre el deudor y el Banco de Crédito e Inversiones o quien sus derechos represente. Lo autorizo asimismo, para impartir las instrucciones consignadas en este mismo título.</fo:block>

                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:table border-collapse="collapse" font-family="Courier" font-size="10pt" text-align="left">
                                <fo:table-column />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell >
                                            <fo:block font-family="Helvetica" font-size="12pt" text-align="center" ><fo:leader leader-length="7.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                            <fo:block font-family="Helvetica" font-size="12pt" text-align="center" >Firma del Conyugue del Aval</fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                    </fo:flow>
                </fo:page-sequence>


                <fo:page-sequence master-reference="miCarta">
                    <fo:flow flow-name="xsl-region-body">

                            <fo:block font-family="Helvetica" line-height="4.5mm" font-size="12pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="6mm"/>:<fo:leader leader-pattern="space" leader-length="3mm"/>
                            <fo:inline font-weight="bold"><xsl:value-of select="substring(OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
                            <xsl:variable name="mes" select="substring(OperacionCredito/fechaSuscripcion,4,2)" />
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
                            <fo:inline font-weight="bold"><xsl:value-of select="substring(OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
                            </fo:block>


                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Monto               <fo:leader leader-pattern="space" leader-length="33.1mm"/>:<fo:leader leader-pattern="space" leader-length="3mm"/><fo:inline font-weight="bold"><!--<xsl:value-of select="OperacionCredito/montoCredito" />--> <xsl:value-of select='format-number(OperacionCredito/montoCredito, "###.###.###,000","decimal")' />  </fo:inline><!--<fo:leader leader-length="5.6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--> </fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Deudor              <fo:leader leader-pattern="space" leader-length="31.1mm"/>:<fo:leader leader-pattern="space" leader-length="3mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nombreCompletoCliente" />      </fo:inline><!--<fo:leader leader-length="14.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >RUT                 <fo:leader leader-pattern="space" leader-length="36.1mm"/>:<fo:leader leader-pattern="space" leader-length="3mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(OperacionCredito/rutCliente, "###.###.###","rut")' /><!--<xsl:value-of select="OperacionCredito/rutCliente" />-->-<xsl:value-of select="OperacionCredito/dvCliente" /></fo:inline><!--<fo:leader leader-length="5.6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--> </fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Hoja<fo:leader leader-pattern="space" leader-length="37.1mm"/>:<fo:leader leader-pattern="space" leader-length="4mm"/>3 - 3</fo:block>

                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left"  ><fo:inline font-weight="bold">Autorizo las firmas estampadas en este instrumento, como deudor:</fo:inline></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Don<fo:leader leader-pattern="space" leader-length="3mm"/>:<fo:leader leader-pattern="space" leader-length="3mm"/><fo:leader leader-length="13.17cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="3mm"/>RUT<fo:leader leader-pattern="space" leader-length="3mm"/><fo:leader leader-length="3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Don<fo:leader leader-pattern="space" leader-length="3mm"/>:<fo:leader leader-pattern="space" leader-length="3mm"/><fo:leader leader-length="13.17cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="3mm"/>RUT<fo:leader leader-pattern="space" leader-length="3mm"/><fo:leader leader-length="3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                            <!--<fo:block font-family="Helvetica" font-size="12pt" text-align="left" >quienes lo hacen en representación de</fo:block>-->
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >quienes lo hacen en representación de <fo:leader leader-length="12cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left"  ><fo:inline font-weight="bold">Como Avalistas:</fo:inline></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Don<fo:leader leader-pattern="space" leader-length="3mm"/>:<fo:leader leader-pattern="space" leader-length="3mm"/><fo:leader leader-length="13.17cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="3mm"/>RUT<fo:leader leader-pattern="space" leader-length="3mm"/><fo:leader leader-length="3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Don<fo:leader leader-pattern="space" leader-length="3mm"/>:<fo:leader leader-pattern="space" leader-length="3mm"/><fo:leader leader-length="13.17cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="3mm"/>RUT<fo:leader leader-pattern="space" leader-length="3mm"/><fo:leader leader-length="3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                            <!--<fo:block font-family="Helvetica" font-size="12pt" text-align="left" >quienes lo hacen en representación de</fo:block>-->
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >quienes lo hacen en representación de <fo:leader leader-length="12cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>

                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left"  ><fo:inline font-weight="bold">Como cónyuge de los avalistas, respectivamente, en los casos que corresponda:</fo:inline></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Don<fo:leader leader-pattern="space" leader-length="3mm"/>:<fo:leader leader-pattern="space" leader-length="3mm"/><fo:leader leader-length="13.17cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="3mm"/>RUT<fo:leader leader-pattern="space" leader-length="3mm"/><fo:leader leader-length="3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Don<fo:leader leader-pattern="space" leader-length="3mm"/>:<fo:leader leader-pattern="space" leader-length="3mm"/><fo:leader leader-length="13.17cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="3mm"/>RUT<fo:leader leader-pattern="space" leader-length="3mm"/><fo:leader leader-length="3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                            <!--<fo:block font-family="Helvetica" font-size="12pt" text-align="left" >quienes lo hacen en representación de</fo:block>-->
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >quienes lo hacen en representación de <fo:leader leader-length="12cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>

                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify">En<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>, a<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="1.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="4.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="1.8cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                            <fo:table border-collapse="collapse" font-family="Courier" font-size="10pt" text-align="left">
                                <fo:table-column />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell >
                                            <fo:block font-family="Helvetica" font-size="12pt" text-align="center" ><fo:leader leader-length="7.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                            <fo:block font-family="Helvetica" font-size="12pt" text-align="center" ><fo:inline font-weight="bold">NOTARIO</fo:inline></fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>

                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >&quot;Este documento consta de 1 hoja&quot;</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="center" font-weight="bold" >INSTRUCCIONES</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" >Según lo dispuesto en el Art. 11 de la ley 18.092 sobre Letra de Cambio y Pagaré instruimos al Banco de Crédito e Inversiones, para que incorpore la cantidad adeudada, la fecha de vencimiento del presente pagaré y cualquier otra enunciación de aquellas previstas en el artículo 102 de la Ley 18.092.</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" >El monto con que sea llenado este pagaré por el Banco corresponde al monto total del saldo deudor que registre a la fecha del ejercicio de ésta facultad, incluyendo sus correspondientes intereses, comisiones, primas de seguros, impuestos y demás gastos estipulados en los respectivos contratos y Condiciones Generales.</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" >La presente instrucción por interesar al mandatario, tiene carácter de revocable de conformidad al Artículo 241 del Código de Comercio, liberándose al Banco de la obligación de rendir cuenta de este cometido.</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" >Para efectos prescritos en los Artículos Nº 102, Nº3 y Nº105, de la Ley 18.092, el suscriptor declara que el pagaré que ha suscrito con esta fecha debe ser considerado pagadero a plazo, por lo que no es aplicable la norma contenida en el Articuló 49 de la citada Ley.</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify">En<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>, a<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="1.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="4.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="1.8cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left"><fo:leader leader-pattern="space" leader-length="25.4mm"/>Lugar<fo:leader leader-pattern="space" leader-length="31mm"/>día<fo:leader leader-pattern="space" leader-length="30mm"/>mes<fo:leader leader-pattern="space" leader-length="32mm"/>año</fo:block>

                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>



<!--                        <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >NOMBRE O RAZON SOCIAL<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="9.11cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>RUT<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="3.29cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >REPRESENTANTE LEGAL<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="9.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>RUT<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="3.28cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >REPRESENTANTE LEGAL<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="9.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>RUT<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="3.28cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >DOMICILIO<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="11cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>CIUDAD<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-length="4.01cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
-->

                          <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

                            <fo:table border-collapse="collapse" text-align="left">
                              <fo:table-column column-width="58mm" />
                              <fo:table-column column-width="97mm"  />
                              <fo:table-column column-width="10mm"  />
                              <fo:table-column column-width="30mm"  />
                              <fo:table-body>
                                  <fo:table-row>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm">NOMBRE O RAZON SOCIAL</fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select='format-number(OperacionCredito/rutCliente, "###.###.###","rut")' />-<xsl:value-of select="OperacionCredito/dvCliente" /></fo:inline></fo:block>
                                        </fo:table-cell>

                                  </fo:table-row>
                            </fo:table-body>
                            </fo:table>
                          <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->


                          <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL -->
                            <fo:table border-collapse="collapse" text-align="left">
                              <fo:table-column column-width="58mm" />
                              <fo:table-column column-width="97mm"  />
                              <fo:table-column column-width="10mm"  />
                              <fo:table-column column-width="30mm"  />
                              <fo:table-body>
                                  <fo:table-row>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm">REPRESENTANTE LEGAL</fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><!--<xsl:value-of select="../OperacionCredito/nombreRepresentanteLegal" />--></fo:inline></fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><!--<xsl:value-of select='format-number(../OperacionCredito/rutRepresentanteLegal, "###.###.###","rut")' />-<xsl:value-of select="../OperacionCredito/dvRepresentanteLegal" />--></fo:inline></fo:block>
                                        </fo:table-cell>

                                  </fo:table-row>
                            </fo:table-body>
                            </fo:table>
                          <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL -->

                          <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL -->
                            <fo:table border-collapse="collapse" text-align="left">
                              <fo:table-column column-width="58mm" />
                              <fo:table-column column-width="97mm"  />
                              <fo:table-column column-width="10mm"  />
                              <fo:table-column column-width="30mm"  />
                              <fo:table-body>
                                  <fo:table-row>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm">REPRESENTANTE LEGAL</fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><!--<xsl:value-of select="../OperacionCredito/nombreRepresentanteLegal" />--></fo:inline></fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><!--<xsl:value-of select='format-number(../OperacionCredito/rutRepresentanteLegal, "###.###.###","rut")' />-<xsl:value-of select="../OperacionCredito/dvRepresentanteLegal" />--></fo:inline></fo:block>
                                        </fo:table-cell>

                                  </fo:table-row>
                            </fo:table-body>
                            </fo:table>
                          <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL -->



                          <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                            <fo:table border-collapse="collapse" text-align="left">
                              <fo:table-column column-width="25mm" />
                              <fo:table-column column-width="80mm"  />
                              <fo:table-column column-width="22mm"  />
                              <fo:table-column column-width="28mm"  />
                              <fo:table-column column-width="20mm"  />
                              <fo:table-column column-width="20mm"  />
                              <fo:table-body>
                                  <fo:table-row>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm">DOMICILIO</fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(DireccionAvalBci/direccion,0,20)" /></fo:inline></fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm">COMUNA</fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(DireccionAvalBci/comuna,0,20)" /></fo:inline></fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm">CIUDAD</fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(DireccionAvalBci/comuna,21,40)" /></fo:inline></fo:block>
                                        </fo:table-cell>


                                  </fo:table-row>
                            </fo:table-body>
                            </fo:table>
                          <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->

                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                            <fo:table border-collapse="collapse" font-family="Courier" font-size="10pt" text-align="left">
                            <fo:table-column />
                            <fo:table-column />
                                <fo:table-body>
                                    <fo:table-row>

                                      <fo:table-cell >
                                      <fo:block font-family="Helvetica" font-size="12pt" text-align="center" ><fo:leader leader-length="7.8cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                      <fo:block font-family="Helvetica" font-size="12pt" text-align="center" >Firma del Suscriptor</fo:block>
                                      </fo:table-cell>

                                      <fo:table-cell >
                                      <fo:block font-family="Helvetica" font-size="12pt" text-align="center" ><fo:leader leader-length="7.8cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                      <fo:block font-family="Helvetica" font-size="12pt" text-align="center" >Firma del Avalista</fo:block>
                                      </fo:table-cell>

                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>


                    </fo:flow>
                </fo:page-sequence>

        </fo:root>
    </xsl:template>
</xsl:stylesheet>
